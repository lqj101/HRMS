unit DBGridToExcel;

interface

uses
  Winapi.Windows, System.Variants, Classes, SysUtils, Vcl.Forms, Data.DB,
  System.Win.ComObj, uExcel, Graphics, DBGridEh;

type
  TProcInfo = procedure(const Position: Integer) of object;

function DBGridToExcel_A(dgrSource: TDBGridEh; sFile, BatchInfo: string;
  UpAniInfo: TProcInfo = nil): Integer;
function DataSetToExcel(DataSet: TDataSet; sFile: string;
  UpAniInfo: TProcInfo = nil): Integer;
function CalacRowStr(const X: Integer): String;

implementation

const
  MAX_SHEET_ROWS = 65500;
  MAX_VAR_ONCE = 1000;

function CalacRowStr(const X: Integer): String;
var
  token, I, R: Integer;
begin
  Result := '';
  token := X;
  repeat
    I := token div 26;
    R := token mod 26;
    if R <> 0 then
    begin
      Result := Char(R + 64) + Result;
    end
    else if I > 0 then
    begin
      Result := 'Z' + Result;
      Dec(I);
    end;
    token := I;
  until I = 0;
end;

function DBGridToExcel_A(dgrSource: TDBGridEh; sFile, BatchInfo: string;
  UpAniInfo: TProcInfo = nil): Integer;
var
  MyExcel: TExcel;
  varCells: Variant;
  MyCells, Cell1, Cell2, Range: OleVariant;
  iRow, iCol, iRealCol, iSheetIdx, iVarCount, iCurRow, iFieldCount: Integer;
  CurPos: TBookmark;
  DataSet: TDataSet;
  sFieldName, sSheetName: string;
begin
  try
    DataSet := dgrSource.DataSource.DataSet;
    DataSet.DisableControls;
    CurPos := DataSet.GetBookmark;
    DataSet.First;

    MyExcel := TExcel.Create;
    MyExcel.CreateExcel;
    MyExcel.CreateNewBook(sFile);

    if DataSet.RecordCount <= MAX_VAR_ONCE then
      iVarCount := DataSet.RecordCount
    else
      iVarCount := MAX_VAR_ONCE;

    iFieldCount := dgrSource.Columns.Count;
    for iCol := 0 to dgrSource.Columns.Count - 1 do
      if not dgrSource.Columns[iCol].Visible then
        Dec(iFieldCount);

    varCells := VarArrayCreate([1, iVarCount, 1, iFieldCount], varVariant);
    iSheetIdx := 0;
    iRow := 0;
    Result := 0;

    MyExcel.RenSheetName(1, Format('Detail_%.2d', [1]));

    while not DataSet.Eof do
    begin
      if (iRow = 0) or (iRow > MAX_SHEET_ROWS + 1) then
      begin
        Inc(iSheetIdx);
        sSheetName := Format('Detail_%.2d', [iSheetIdx]);

        if not MyExcel.IsSheetNameExist(sSheetName) then
          MyExcel.AddNewSheetToLast(sSheetName);

        MyExcel.ActiveSheet := sSheetName;

        MyExcel.CellSel('A2');
        MyExcel.Pasts(BatchInfo);
        MyExcel.CellSel('A3');
        MyExcel.Pasts('ReportDate :' + FormatDateTime('YYYY-MM-DD', Now));

        MyExcel.MergeRange(Format('A1:%s1', [CalacRowStr(iFieldCount)]));
        MyExcel.MergeRange(Format('A2:%s2', [CalacRowStr(iFieldCount)]));
        MyExcel.MergeRange(Format('A3:%s3', [CalacRowStr(iFieldCount)]));

        iRow := 1;
        iRealCol := 0;

        for iCol := 1 to iFieldCount do
        begin
          MyExcel.fExcel.ActiveSheet.Cells[4, iCol].Font.Bold := True;

          while not dgrSource.Columns[iRealCol].Visible do
            Inc(iRealCol);

          MyExcel.fExcel.ActiveSheet.Cells[4, iCol] := dgrSource.Columns
            [iRealCol].Title.Caption;
          MyExcel.fExcel.ActiveSheet.Columns[iCol].ColumnWidth :=
            Integer(Round(dgrSource.Columns[iRealCol].Width * 2 /
            Abs(dgrSource.Font.Height)));
          sFieldName := dgrSource.Columns[iRealCol].FieldName;

          if (DataSet.FieldByName(sFieldName).DataType = ftString) or
            (DataSet.FieldByName(sFieldName).DataType = ftWideString) then
            MyExcel.fExcel.ActiveSheet.Columns[iCol].NumberFormatLocal := '@ ';

          if DataSet.FieldByName(sFieldName).DataType = ftDateTime then
            MyExcel.fExcel.ActiveSheet.Columns[iCol].NumberFormatLocal :=
              'yyyy-mm-dd';

          Inc(iRealCol);
        end;
        Inc(iRow);
      end;
      iCurRow := 1;

      while not DataSet.Eof do
      begin

        iRealCol := 0;
        for iCol := 1 to iFieldCount do
        begin
          while not dgrSource.Columns[iRealCol].Visible do
            Inc(iRealCol);
          sFieldName := dgrSource.Columns[iRealCol].FieldName;
          varCells[iCurRow, iCol] :=
            Trim(DataSet.FieldByName(sFieldName).AsString);
          Inc(iRealCol);
        end;
        Inc(iRow);
        Inc(iCurRow);
        Inc(Result);
        DataSet.Next;

        if (iCurRow > iVarCount) or (iRow > MAX_SHEET_ROWS + 1) then
        begin
          if Assigned(UpAniInfo) then
            UpAniInfo(Result); // 显示已导出条数
          Application.ProcessMessages;
          Break;
        end;
      end;
      Cell1 := MyExcel.fExcel.ActiveSheet.Cells.Item[iRow - iCurRow + 1 + 3, 1];
      // +3 留出3行显示BatchInfo
      Cell2 := MyExcel.fExcel.ActiveSheet.Cells.Item[iRow - 1 + 3, iFieldCount];

      Range := MyExcel.fExcel.ActiveSheet.Range[Cell1, Cell2];
      Range.Value := varCells;
      MyExcel.fExcel.ActiveSheet.Range[Cell1, Cell2].Font.Size := 9;
      MyExcel.fExcel.ActiveSheet.Range[Cell1, Cell2].HorizontalAlignment := '2';

      if (iRow > MAX_SHEET_ROWS + 1) then // 一个Sheet导出结束
      begin
        MyExcel.fExcel.ActiveSheet.Select;
        MyExcel.fExcel.ActiveSheet.Cells[1, 1].Select; // 使得每一Sheet均定位在第一格
      end;
      Cell1 := Unassigned;
      Cell2 := Unassigned;
      Range := Unassigned;
    end;

    MyCells := Unassigned;
    varCells := Unassigned;
    MyExcel.SaveBook();
    MyExcel.QuitExcel;
    FreeAndNIl(MyExcel);
    if Assigned(UpAniInfo) then
      UpAniInfo(0);
    if CurPos <> nil then
    begin
      DataSet.GotoBookmark(CurPos);
      DataSet.FreeBookmark(CurPos);
    end;
    DataSet.EnableControls;
  except
    begin
      if Assigned(UpAniInfo) then
        UpAniInfo(0);
      MyExcel.QuitExcel;
      FreeAndNIl(MyExcel);
      DataSet.EnableControls;
    end;
  end;
end;

function DataSetToExcel(DataSet: TDataSet; sFile: string; UpAniInfo: TProcInfo)
  : Integer; // 从DataSet导出到Excel(2005.8.23改进至可以导入几乎无限的数据)
var
  MyExcel, varCells: Variant;
  MySheet, MyCells, Cell1, Cell2, Range: OleVariant;
  iRow, iCol, iSheetIdx, iVarCount, iCurRow: Integer;
  CurPos: TBookmark;
begin
  DataSet.DisableControls;
  CurPos := DataSet.GetBookmark; // 返回导出记录条数
  DataSet.First;

  MyExcel := CreateOleObject('Excel.Application');
  MyExcel.WorkBooks.Add;
  MyExcel.Visible := False;

  if DataSet.RecordCount <= MAX_VAR_ONCE then
    iVarCount := DataSet.RecordCount
  else
    iVarCount := MAX_VAR_ONCE;
  varCells := VarArrayCreate([1, iVarCount, 1, DataSet.FieldCount], varVariant);
  iSheetIdx := 1;
  iRow := 0;
  Result := 0;
  while not DataSet.Eof do
  begin
    if (iRow = 0) or (iRow > MAX_SHEET_ROWS + 1) then
    begin // 新增一个Sheet
      if iSheetIdx <= MyExcel.WorkBooks[1].WorkSheets.Count then
        MySheet := MyExcel.WorkBooks[1].WorkSheets[iSheetIdx]
      else
        MySheet := MyExcel.WorkBooks[1].WorkSheets.Add(NULL, MySheet); // 加在后面
      MyCells := MySheet.Cells;
      Inc(iSheetIdx);
      iRow := 1;

      for iCol := 1 to DataSet.FieldCount do
      begin
        MySheet.Cells[1, iCol].Font.Bold := True;
        { MySheet.Select;
          MySheet.Cells[iRow,iCol].Select;
          MyExcel.Selection.Font.Bold := true; }// 这种方法也可(Sheet.Select不可少)
        MySheet.Cells[1, iCol] := DataSet.Fields[iCol - 1].DisplayName;
        MySheet.Columns[iCol].ColumnWidth := DataSet.Fields[iCol - 1]
          .DisplayWidth;
        if (DataSet.Fields[iCol - 1].DataType = ftString) or
          (DataSet.Fields[iCol - 1].DataType = ftWideString) then
        begin
          MySheet.Columns[iCol].NumberFormatLocal := '@ ';
        end;
      end;
      Inc(iRow);
    end;
    iCurRow := 1;
    while not DataSet.Eof do
    begin
      for iCol := 1 to DataSet.FieldCount do
      begin
        varCells[iCurRow, iCol] := DataSet.Fields[iCol - 1].AsString;
      end;
      Inc(iRow);
      Inc(iCurRow);
      Inc(Result);
      DataSet.Next;
      if (iCurRow > iVarCount) or (iRow > MAX_SHEET_ROWS + 1) then
      begin
        if Assigned(UpAniInfo) then
          UpAniInfo(Result);
        Application.ProcessMessages;
        Break;
      end;
    end;
    Cell1 := MyCells.Item[iRow - iCurRow + 1, 1];
    Cell2 := MyCells.Item[iRow - 1, DataSet.FieldCount];
    Range := MySheet.Range[Cell1, Cell2];
    Range.Value := varCells;
    if (iRow > MAX_SHEET_ROWS + 1) then
    begin
      MySheet.Select;
      MySheet.Cells[1, 1].Select;
    end;
    Cell1 := Unassigned;
    Cell2 := Unassigned;
    Range := Unassigned;
  end;

  MyCells := Unassigned;
  varCells := Unassigned;
  MyExcel.WorkBooks[1].WorkSheets[1].Select;
  MyExcel.WorkBooks[1].WorkSheets[1].Cells[1, 1].Select;
  MyExcel.Visible := True;
  MyExcel.WorkBooks[1].Saved := True;
  MyExcel := Unassigned;
  if CurPos <> nil then
  begin
    DataSet.GotoBookmark(CurPos);
    DataSet.FreeBookmark(CurPos);
  end;
  DataSet.EnableControls;
end;

end.

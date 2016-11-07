unit Msg;

interface

uses
  SysUtils, Classes, Windows, StrUtils;

resourcestring
  UI_Period = '工作周期:  ';
  UI_USerName = '用户:  ';

  ServerConnectError = '服务器连接失败，请检查设置或联系管理员！';
  ServerConnectOK = '服务器连接成功！';

  DeleteUserError = '删除用户错误！';
  DeleteUserOK = '删除用户成功！';
  UserDataError = '必须的用户数据缺失';
  DeleteUserWarning = '确认要删除此用户吗？';
  DeleteStaffWarning = '确认要删除此员工信息吗？';
  DeletePeriodWarning = '确认要删除此周期信息吗？';

  DepartDataError = '必须的部门数据缺失！';
  DeleteDepartWarning = '确认要删除此部门数据吗？';
  DeleteDepartError = '删除部门信息错误！';

  DeletSupplierWarning = '确定要删除此供应商信息吗？';
  DeleteSupplierInfo = '删除供应商信息成功！';
  DeletePeriodInfo = '确定要删除此周期信息吗？';
  DeleteLostInfo = '确定要删除此报表信息吗？';
  RecordCountShow = '共 %d 条记录';

  NotNull = '不能为空！';
  InformationMiss = '必要的信息缺失！';
  UserNameOrPsw = '用户名或密码';
  CloseDownError = '关账信息错误！';
  CloseDownSure = '确定要关账吗？';
  ReIdentityCard = '证件号码已经存在!';

  NewCardNotNull = '新卡号不能为空！';
  NewCardDateError = '新卡启用时间不能小于失效时间！';
  CardNoCanntSame = '新卡卡号不能与旧卡相同';
  CardNoIsExisit = '此卡暂时不能使用';

  identityCardError = '身份证长度不符合规范，要继续吗?';
  BirthdayError = '出生日期与证件不符！';
  leaveofficeDayError = '离职日期超出周期范围！';
  EntryWrkDayError = '入职日期超出周期范围！';
  AgeIsTooYoung = '员工不符合法定用工年龄';

  DatePeriodError = '时间周期错误!';

const
  OperateOKMsg: array [1 .. 3] of string = ('增加成功!', '删除成功!', '修改成功！');
  OperateFailMsg: array [1 .. 3] of string = ('增加失败!', '删除失败!', '修改失败！');

implementation

end.

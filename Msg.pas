unit Msg;

interface

uses
  SysUtils, Classes, Windows, StrUtils;

resourcestring
  UI_Period = '��������:  ';
  UI_USerName = '�û�:  ';

  ServerConnectError = '����������ʧ�ܣ��������û���ϵ����Ա��';
  ServerConnectOK = '���������ӳɹ���';

  DeleteUserError = 'ɾ���û�����';
  DeleteUserOK = 'ɾ���û��ɹ���';
  UserDataError = '������û�����ȱʧ';
  DeleteUserWarning = 'ȷ��Ҫɾ�����û���';
  DeleteStaffWarning = 'ȷ��Ҫɾ����Ա����Ϣ��';
  DeletePeriodWarning = 'ȷ��Ҫɾ����������Ϣ��';

  DepartDataError = '����Ĳ�������ȱʧ��';
  DeleteDepartWarning = 'ȷ��Ҫɾ���˲���������';
  DeleteDepartError = 'ɾ��������Ϣ����';

  DeletSupplierWarning = 'ȷ��Ҫɾ���˹�Ӧ����Ϣ��';
  DeleteSupplierInfo = 'ɾ����Ӧ����Ϣ�ɹ���';
  DeletePeriodInfo = 'ȷ��Ҫɾ����������Ϣ��';
  DeleteLostInfo = 'ȷ��Ҫɾ���˱�����Ϣ��';
  RecordCountShow = '�� %d ����¼';

  NotNull = '����Ϊ�գ�';
  InformationMiss = '��Ҫ����Ϣȱʧ��';
  UserNameOrPsw = '�û���������';
  CloseDownError = '������Ϣ����';
  CloseDownSure = 'ȷ��Ҫ������';
  ReIdentityCard = '֤�������Ѿ�����!';

  NewCardNotNull = '�¿��Ų���Ϊ�գ�';
  NewCardDateError = '�¿�����ʱ�䲻��С��ʧЧʱ�䣡';
  CardNoCanntSame = '�¿����Ų�����ɿ���ͬ';
  CardNoIsExisit = '�˿���ʱ����ʹ��';

  identityCardError = '���֤���Ȳ����Ϲ淶��Ҫ������?';
  BirthdayError = '����������֤��������';
  leaveofficeDayError = '��ְ���ڳ������ڷ�Χ��';
  EntryWrkDayError = '��ְ���ڳ������ڷ�Χ��';
  AgeIsTooYoung = 'Ա�������Ϸ����ù�����';

  DatePeriodError = 'ʱ�����ڴ���!';

const
  OperateOKMsg: array [1 .. 3] of string = ('���ӳɹ�!', 'ɾ���ɹ�!', '�޸ĳɹ���');
  OperateFailMsg: array [1 .. 3] of string = ('����ʧ��!', 'ɾ��ʧ��!', '�޸�ʧ�ܣ�');

implementation

end.

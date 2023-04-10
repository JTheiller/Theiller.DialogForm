unit Theiller.DialogForm.Intf;

interface

uses
  System.Classes,
  System.SysUtils,
  Theiller.DialogForm.Types;

type
  IDialogForm = interface ['{0E5EAF4E-21AD-41AB-A9DB-C41202271D62}']
    function SetType(const Value: TDialogType): IDialogForm;
    function SetSubject(const Value: String): IDialogForm;
    function SetMessage(const Value: String): IDialogForm;
    function SetMethodYES(const Value: TProc): IDialogForm;
    function SetMethodNO(const Value: TProc): IDialogForm;
    function Show: IDialogForm;
  end;


implementation

end.

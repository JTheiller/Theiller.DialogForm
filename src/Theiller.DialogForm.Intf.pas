unit Theiller.DialogForm.Intf;

interface

uses
  System.Classes,
  Theiller.DialogForm.Types;

type
  IDialogForm = interface ['{0E5EAF4E-21AD-41AB-A9DB-C41202271D62}']
    function SetType(const Value: TDialogType): IDialogForm;
    function SetIcon(const Value: DialogIcon): IDialogForm;
    function SetSubject(const Value: String): IDialogForm;
    function SetMessage(const Value: String): IDialogForm;
    function SetMethodYES(const Value: TThreadMethod): IDialogForm;
    function SetMethodNO(const Value: TThreadMethod): IDialogForm;
    function Show: IDialogForm;
  end;


implementation

end.

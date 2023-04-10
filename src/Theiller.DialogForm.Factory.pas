unit Theiller.DialogForm.Factory;

interface

uses
  classes,
  System.SysUtils,
  Theiller.DialogForm.Intf,
  Theiller.DialogForm.Consts,
  Theiller.DialogForm.Types,
  Theiller.DialogForm.Core;



type
  TDialogFactoy = class
  public
    class function NewInformation(const ASubject: String; AMessage: String): IDialogForm;
    class function NewError(const ASubject: String; AMessage: String): IDialogForm;
    class function NewQuestion(const ASubject: String; AMessage: String; AMethodYes, AMethodNo: TProc): IDialogForm;
  end;

implementation

{ TDialogFactoy }

class function TDialogFactoy.NewInformation(const ASubject: String;
  AMessage: String): IDialogForm;
begin
  Result := TDialogForm.New
              .SetType(dtInformation)
              .SetSubject(ASubject)
              .SetMessage(AMessage)
              .Show;
end;

class function TDialogFactoy.NewError(const ASubject: String; AMessage: String): IDialogForm;
begin
  Result := TDialogForm.New
              .SetType(dtError)
              .SetSubject(ASubject)
              .SetMessage(AMessage)
              .Show;
end;

class function TDialogFactoy.NewQuestion(const ASubject: String;
  AMessage: String; AMethodYes, AMethodNo: TProc): IDialogForm;
begin
  Result := TDialogForm.New
              .SetType(dtConfirmation)
              .SetSubject(ASubject)
              .SetMessage(AMessage)
              .SetMethodYES(AMethodYes)
              .SetMethodNO(AMethodNo)
              .Show;
end;

end.

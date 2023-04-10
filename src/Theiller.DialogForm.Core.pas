unit Theiller.DialogForm.Core;

interface

uses
  System.Classes, Winapi.Windows, Vcl.Controls,
  Theiller.DialogForm.Intf,
  Theiller.DialogForm.Types,
  Theiller.DialogForm.Consts;

type
  TDialogForm = class(TInterfacedObject, IDialogForm)
  private
    FType: TDialogType;
    FIcon: DialogIcon;
    FSubject: String;
    FMessage: String;
    FMethodYES: TThreadMethod;
    FMethodNO: TThreadMethod;
    procedure DoChangeType;
    procedure InstanceForm;
  public
    class function New: IDialogForm;
    function SetType(const Value: TDialogType): IDialogForm;
    function SetIcon(const Value: DialogIcon): IDialogForm;
    function SetSubject(const Value: String): IDialogForm;
    function SetMessage(const Value: String): IDialogForm;
    function SetMethodYES(const Value: TThreadMethod): IDialogForm;
    function SetMethodNO(const Value: TThreadMethod): IDialogForm;
    function Show: IDialogForm;
    property &Type: TDialogType read FType write FType;
end;

implementation

uses
  Theiller.DialogForm.View.Information,
  Theiller.DialogForm.View.Question;

{ TDialogForm }

class function TDialogForm.New: IDialogForm;
begin
  Result := TDialogForm.Create;
end;

procedure TDialogForm.DoChangeType;
begin
  case FType of
    dtWarning: SetIcon( diInformation );
    dtError: SetIcon( diInformation );
    dtInformation: SetIcon( diInformation );
    dtConfirmation: SetIcon( diQuestion );
    dtCustom: SetIcon( diInformation );
  end;
end;

procedure TDialogForm.InstanceForm;
begin
  case FType of
    dtWarning,
    dtError,
    dtInformation,
    dtCustom:
      begin
        with TDialogInformationView.Create(nil).SetType(FType) do
        begin
          Caption := FSubject;
          memoMessage.Text := FMessage;
          ShowModal;
        end;
      end;

    dtConfirmation:
    begin
      with TDialogQuestionView.Create(nil).SetType(FType) do
      begin
        Caption := FSubject;
        memoMessage.Text := FMessage;
        case ShowModal of
          mrYes : if Assigned(FMethodYES) then
                     FMethodYES;
        else
          begin
            if Assigned(FMethodNO) then
               FMethodNO;
          end;
        end;
      end;
    end;
  end;
end;

function TDialogForm.SetType(const Value: TDialogType): IDialogForm;
begin
  Result := Self;

  if FType <> Value then
  begin
    FType := Value;
    DoChangeType;
  end;
end;

function TDialogForm.Show: IDialogForm;
begin
  Result := Self;

  InstanceForm;
end;

function TDialogForm.SetIcon(const Value: DialogIcon): IDialogForm;
begin
  Result := Self;

  FIcon := Value;
end;

function TDialogForm.SetMessage(const Value: String): IDialogForm;
begin
  Result := Self;

  FMessage := Value;
end;

function TDialogForm.SetMethodYES(const Value: TThreadMethod): IDialogForm;
begin
  Result := Self;

  FMethodYES := Value;
end;

function TDialogForm.SetMethodNO(const Value: TThreadMethod): IDialogForm;
begin
  Result := Self;

  FMethodNO := Value;
end;

function TDialogForm.SetSubject(const Value: String): IDialogForm;
begin
  Result := Self;

  FSubject := Value;
end;

end.

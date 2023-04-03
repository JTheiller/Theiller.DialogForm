unit Theiller.DialogForm.Core;

interface

uses
  System.Classes, Winapi.Windows, Vcl.Controls,
  Theiller.DialogForm.Intf,
  Theiller.DialogForm.Types;

type
  TDialogForm = class(TInterfacedObject, IDialogForm)
  private
    FType: DialogType;
    FIcon: DialogIcon;
    FSubject: String;
    FMessage: String;
    FMethodYES: TThreadMethod;
    FMethodNO: TThreadMethod;
    procedure DoChangeType;
    procedure InstanceForm;
    function GetWindowsIcon: PChar;
  public
    class function New: IDialogForm;
    function SetType(const Value: DialogType): IDialogForm;
    function SetIcon(const Value: DialogIcon): IDialogForm;
    function SetSubject(const Value: String): IDialogForm;
    function SetMessage(const Value: String): IDialogForm;
    function SetMethodYES(const Value: TThreadMethod): IDialogForm;
    function SetMethodNO(const Value: TThreadMethod): IDialogForm;
    function Show: IDialogForm;
    property &Type: DialogType read FType write FType;
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
    dtInformation: SetIcon( diInformation );
    dtQuestion   : SetIcon( diQuestion );
  end;
end;

function TDialogForm.GetWindowsIcon: PChar;
begin
  case FIcon of
    diQuestion   : Result := IDI_QUESTION;
    diInformation: Result := IDI_INFORMATION;
    diExclamation: Result := IDI_EXCLAMATION;
    diError      : Result := IDI_ERROR;
  end;
end;

procedure TDialogForm.InstanceForm;
begin
  case FType of
    dtInformation: begin
                     with TDialogInformationView.Create(nil) do
                     begin
                       Image1.Picture.Icon.Handle := LoadImage( 0, GetWindowsIcon, IMAGE_ICON, 0, 0, LR_DEFAULTSIZE or LR_SHARED );

                       Caption := FSubject;
                       memoMessage.Text := FMessage;
                       ShowModal;
                     end;

                   end;

    dtQuestion   :begin
                     with TDialogQuestionView.Create(nil) do
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

function TDialogForm.SetType(const Value: DialogType): IDialogForm;
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

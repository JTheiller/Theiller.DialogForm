unit Theiller.DialogForm.View.Base;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Theiller.DialogForm.Types,
  Theiller.DialogForm.Consts;

type
  TDialogBaseView = class(TForm)
    pnlBase: TPanel;
    pnlMessage: TPanel;
    pnlButtons: TPanel;
    memoMessage: TMemo;
    Panel1: TPanel;
    Image1: TImage;
  private
    { Private declarations }
    FType: TDialogType;
    procedure doChangeType;
  public
    { Public declarations }
    function SetType(const Value: TDialogType): TDialogBaseView;
  end;

var
  DialogBaseView: TDialogBaseView;

implementation

{$R *.dfm}

{ TDialogBaseView }

procedure TDialogBaseView.doChangeType;

  function GetWindowsIcon: PChar;
  begin
    case FType of
      dtWarning     : Result := IDI_WARNING;
      dtError       : Result := IDI_ERROR;
      dtInformation : Result := IDI_INFORMATION;
      dtConfirmation: Result := IDI_QUESTION;
    end;
  end;
begin
  Image1.Picture.Icon.Handle := LoadImage( 0, GetWindowsIcon, IMAGE_ICON, 0, 0, LR_DEFAULTSIZE or LR_SHARED );
end;

function TDialogBaseView.SetType(const Value: TDialogType): TDialogBaseView;
begin
  Result := Self;
  FType := Value;
  doChangeType;
end;

end.

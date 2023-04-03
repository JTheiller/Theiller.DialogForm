unit Theiller.DialogForm.View.Base;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

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
  public
    { Public declarations }
  end;

var
  DialogBaseView: TDialogBaseView;

implementation

{$R *.dfm}

end.

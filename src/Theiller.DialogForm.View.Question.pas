unit Theiller.DialogForm.View.Question;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, Theiller.DialogForm.View.Base;

type
  TDialogQuestionView = class(TDialogBaseView)
    btnYes: TBitBtn;
    btnNo: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DialogQuestionView: TDialogQuestionView;

implementation

{$R *.dfm}

end.

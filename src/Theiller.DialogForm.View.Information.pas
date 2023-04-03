unit Theiller.DialogForm.View.Information;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Theiller.DialogForm.View.Base;

type
  TDialogInformationView = class(TDialogBaseView)
    btnOK: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DialogInformationView: TDialogInformationView;

implementation

{$R *.dfm}

end.

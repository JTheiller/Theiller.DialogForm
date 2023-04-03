unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ExecuteYes;
    procedure ExecuteNo;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  Theiller.DialogForm.Factory;

procedure TForm1.Button1Click(Sender: TObject);
begin
  TDialogFactoy.NewInformation('My title','My message');
  TDialogFactoy.NewError('My title','My message');
  TDialogFactoy.NewQuestion('My title','My message',ExecuteYes,ExecuteNo);
end;

procedure TForm1.ExecuteYes;
begin
  Button1.Caption := 'Yes';
end;

procedure TForm1.ExecuteNo;
begin
  Button1.Caption := 'No';
end;

end.

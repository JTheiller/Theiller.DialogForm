unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    procedure InitPtBr;
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
  //Theiller.DialogForm.Consts,
  //Theiller.DialogForm.Types,
  Theiller.DialogForm.Factory;

procedure TForm1.InitPtBr;
begin
  //Set ptBr
  //LoadResString(ButtonCaptions[ TMsgDlgBtn.mbYes ]);

//  ButtonCaptions[mbYes] := 'Sim';
//  ButtonCaptions[mbNo] := 'Não';
//  ButtonCaptions[mbOK] := 'OK';
//  ButtonCaptions[mbCancel] := 'Cancelar';
//  ButtonCaptions[mbAbort] := 'Desistir';
//  ButtonCaptions[mbRetry] := 'Tentar novamente';
//  ButtonCaptions[mbIgnore] := 'Ignorar';
//  ButtonCaptions[mbAll] := 'Todos';
//  ButtonCaptions[mbNoToAll] := 'Não para todos';
//  ButtonCaptions[mbYesToAll] := 'Sim para todos';
//  ButtonCaptions[mbHelp] := 'Ajuda';
//  ButtonCaptions[mbClose] := 'Fechar';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  InitPtBr;

  TDialogFactory.NewInformation('My title','My message');

  TDialogFactory.NewError('My title','My message');

  TDialogFactory.NewQuestion('My title','My message using method',ExecuteYes,ExecuteNo);
end;

procedure TForm1.ExecuteYes;
begin
  Button1.Caption := 'Method Yes';
end;

procedure TForm1.ExecuteNo;
begin
  Button1.Caption := 'Method No';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  TDialogFactory.NewQuestion('My title','My message using generic',
                            procedure
                            begin
                              Button2.Caption := 'Generic Yes';
                            end
                            ,
                            procedure
                            begin
                              Button2.Caption := 'Generic No';
                            end);
end;

end.

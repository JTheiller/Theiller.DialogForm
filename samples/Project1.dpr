program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Theiller.DialogForm.Core in '..\src\Theiller.DialogForm.Core.pas',
  Theiller.DialogForm.Factory in '..\src\Theiller.DialogForm.Factory.pas',
  Theiller.DialogForm.Intf in '..\src\Theiller.DialogForm.Intf.pas',
  Theiller.DialogForm.Types in '..\src\Theiller.DialogForm.Types.pas',
  Theiller.DialogForm.View.Base in '..\src\Theiller.DialogForm.View.Base.pas' {DialogBaseView},
  Theiller.DialogForm.View.Information in '..\src\Theiller.DialogForm.View.Information.pas' {DialogInformationView},
  Theiller.DialogForm.View.Question in '..\src\Theiller.DialogForm.View.Question.pas' {DialogQuestionView},
  Theiller.DialogForm.Consts in '..\src\Theiller.DialogForm.Consts.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

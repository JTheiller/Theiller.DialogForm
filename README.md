# Theiller.DialogForm

### Boss install new
```
boss install https://github.com/JTheiller/Theiller.DialogForm
```

### Code
```Pascal - Delphi
//...
uses
  Theiller.DialogForm.Factory;
  
procedure TForm1.button1Click(Sender: TObject);
begin
  TDialogFactory.NewInformation('My title','My message');
  TDialogFactoy.NewError('My title','My message');
  TDialogFactoy.NewQuestion('My title','My message',
                            procedure
                            begin
                              Button1.Caption := 'Generic Yes';
                            end
                            ,
                            procedure
                            begin
                              Button1.Caption := 'Generic No';
                            end);
end;
```

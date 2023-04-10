unit Theiller.DialogForm.Types;

interface

uses
  System.UITypes,
  Vcl.Dialogs;

type
  TDialogType = System.UITypes.TMsgDlgType;
  DialogIcon = (diInformation, diQuestion, diExclamation, diError);

var
  ButtonCaptions: array[TMsgDlgBtn] of string = (
    'Yes',
    'No',
    'OK',
    'Cancel',
    'Abort',
    'Retry',
    'Ignore',
    'All',
    'NoToAll',
    'YesToAll',
    'Help',
    'Close');

implementation

end.

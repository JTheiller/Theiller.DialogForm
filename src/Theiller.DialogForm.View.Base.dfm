object DialogBaseView: TDialogBaseView
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Dialog Base'
  ClientHeight = 296
  ClientWidth = 503
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object pnlBase: TPanel
    Left = 0
    Top = 0
    Width = 503
    Height = 296
    Align = alClient
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 0
    object pnlMessage: TPanel
      Left = 47
      Top = 0
      Width = 456
      Height = 255
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object memoMessage: TMemo
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 447
        Height = 249
        Margins.Right = 6
        Align = alClient
        Lines.Strings = (
          'New message...')
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object pnlButtons: TPanel
      Left = 0
      Top = 255
      Width = 503
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
    end
    object Panel1: TPanel
      AlignWithMargins = True
      Left = 9
      Top = 3
      Width = 32
      Height = 249
      Margins.Left = 9
      Margins.Right = 6
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 2
      object Image1: TImage
        Left = 0
        Top = 0
        Width = 32
        Height = 32
        Margins.Left = 8
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        ExplicitLeft = 8
        ExplicitTop = 3
        ExplicitWidth = 24
      end
    end
  end
end

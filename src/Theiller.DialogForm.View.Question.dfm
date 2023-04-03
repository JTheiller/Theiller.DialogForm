inherited DialogQuestionView: TDialogQuestionView
  Caption = 'DialogQuestionView'
  TextHeight = 15
  inherited pnlBase: TPanel
    inherited pnlButtons: TPanel
      object btnYes: TBitBtn
        AlignWithMargins = True
        Left = 214
        Top = 3
        Width = 140
        Height = 35
        Align = alRight
        Caption = 'btnYes'
        ModalResult = 6
        TabOrder = 0
      end
      object btnNo: TBitBtn
        AlignWithMargins = True
        Left = 360
        Top = 3
        Width = 140
        Height = 35
        Align = alRight
        Caption = 'btnNo'
        ModalResult = 7
        TabOrder = 1
      end
    end
  end
end

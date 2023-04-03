inherited DialogInformationView: TDialogInformationView
  Caption = 'DialogInformationView'
  TextHeight = 15
  inherited pnlBase: TPanel
    inherited pnlMessage: TPanel
      ExplicitLeft = 0
      ExplicitWidth = 503
    end
    inherited pnlButtons: TPanel
      object btnOK: TBitBtn
        AlignWithMargins = True
        Left = 360
        Top = 3
        Width = 140
        Height = 35
        Align = alRight
        Caption = 'btnOK'
        ModalResult = 1
        TabOrder = 0
      end
    end
  end
end

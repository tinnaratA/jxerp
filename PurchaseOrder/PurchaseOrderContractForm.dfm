inherited frmPurchaseContractDialog: TfrmPurchaseContractDialog
  Left = 258
  Top = 258
  Caption = 'Purchase order contract'
  PixelsPerInch = 96
  TextHeight = 14
  inherited cxGroupBox1: TcxGroupBox
    inherited cxDBTextEdit1: TcxDBTextEdit
      ParentFont = False
      Style.Font.Name = 'Tahoma'
      Style.IsFontAssigned = True
    end
    inherited cxDBTextEdit2: TcxDBTextEdit
      ParentFont = False
      Style.Font.Name = 'Tahoma'
      Style.IsFontAssigned = True
    end
  end
  inherited cxGrid: TcxGrid
    inherited cxGridDBTableView: TcxGridDBTableView
      Styles.ContentEven = SystemMenuDM.cxStyle232
    end
  end
end

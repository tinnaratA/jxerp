inherited frmDeliveryOrderManager: TfrmDeliveryOrderManager
  Left = 250
  Top = 180
  Width = 806
  Caption = 'Delivery Manager'
  PixelsPerInch = 96
  TextHeight = 13
  inherited lbHeader: TLabel
    Width = 790
  end
  inherited StatusBar1: TfcStatusBar
    Width = 790
  end
  inherited Panel1: TPanel
    Width = 790
    inherited newButton: TBitBtn
      OnClick = newButtonClick
    end
    inherited editButton: TBitBtn
      OnClick = editButtonClick
    end
    inherited postButton: TBitBtn
      OnClick = postButtonClick
    end
  end
  inherited cxGrid: TcxGrid
    Width = 790
    inherited cxGridDBTableView: TcxGridDBTableView
      Styles.ContentOdd = SystemMenuDM.cxStyle153
      object cxGridDBTableViewDELIVERY_NO: TcxGridDBColumn
        DataBinding.FieldName = 'DELIVERY_NO'
        Width = 115
      end
      object cxGridDBTableViewDELIVERY_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'DELIVERY_DATE'
      end
      object cxGridDBTableViewNAME: TcxGridDBColumn
        DataBinding.FieldName = 'NAME'
        Width = 351
      end
      object cxGridDBTableViewREF_NO: TcxGridDBColumn
        DataBinding.FieldName = 'REF_NO'
      end
      object cxGridDBTableViewREF_DATE: TcxGridDBColumn
        DataBinding.FieldName = 'REF_DATE'
      end
    end
  end
  inherited dxBarManager1: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    DockControlHeights = (
      0
      0
      0
      0)
  end
end

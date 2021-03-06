inherited frmAPPayment: TfrmAPPayment
  Left = 169
  Top = 124
  Width = 919
  Height = 661
  Caption = 'AP Payment'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Splitter1: TSplitter
    Top = 321
    Width = 903
  end
  inherited lbTitle: TLabel
    Width = 903
  end
  inherited plHeader: TPanel
    Width = 903
    Height = 305
    TabOrder = 1
    object Label1: TLabel [0]
      Left = 8
      Top = 46
      Width = 79
      Height = 13
      Caption = 'Document Type:'
    end
    object Label2: TLabel [1]
      Left = 232
      Top = 48
      Width = 68
      Height = 13
      Caption = 'Document No:'
    end
    object Label3: TLabel [2]
      Left = 412
      Top = 47
      Width = 78
      Height = 13
      Caption = 'Document Date:'
    end
    object Label4: TLabel [3]
      Left = 8
      Top = 78
      Width = 57
      Height = 13
      Caption = 'Description:'
    end
    object Label5: TLabel [4]
      Left = 8
      Top = 102
      Width = 37
      Height = 13
      Caption = 'Pay To:'
    end
    object Label6: TLabel [5]
      Left = 8
      Top = 126
      Width = 27
      Height = 13
      Caption = 'Bank:'
    end
    object Label7: TLabel [6]
      Left = 8
      Top = 158
      Width = 78
      Height = 13
      Caption = 'Cheque/Ref No:'
    end
    object Label8: TLabel [7]
      Left = 416
      Top = 156
      Width = 88
      Height = 13
      Caption = 'Cheque/Ref Date:'
    end
    object Label9: TLabel [8]
      Left = 512
      Top = 102
      Width = 48
      Height = 13
      Caption = 'Currency:'
    end
    object Label10: TLabel [9]
      Left = 8
      Top = 182
      Width = 49
      Height = 13
      Caption = 'Comment:'
    end
    inherited ToolBar: TToolBar
      Width = 899
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 312
      Top = 46
      DataBinding.DataField = 'DOC_NO'
      DataBinding.DataSource = dsMaster
      TabOrder = 1
      Width = 97
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 496
      Top = 46
      DataBinding.DataField = 'DOC_DATE'
      DataBinding.DataSource = dsMaster
      TabOrder = 2
      Width = 121
    end
    object wwDBLookupComboDlg1: TwwDBLookupComboDlg
      Left = 104
      Top = 46
      Width = 121
      Height = 21
      DisableThemes = False
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Transaction Type'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'TRX_TYPE'#9'8'#9'Trx Prefix.'#9#9
        'DESCRIPTION'#9'30'#9'Description'#9#9
        'DEFAULT_MODULE'#9'60'#9'Default Module'#9#9
        'UPDATE_DATE'#9'18'#9'Last Modified '#9#9
        'REQUIRE_REFERENCE'#9'1'#9'REQUIRE REFERENCE'#9#9
        'MODE'#9'1'#9'MODE'#9#9
        'PREFIX'#9'10'#9'PREFIX'#9#9
        'CURRENT_NO'#9'10'#9'CURRENT_NO'#9#9)
      DataField = 'TRX_TYPE'
      DataSource = dsMaster
      LookupTable = CommonShareDM.TransactionType
      LookupField = 'TRX_TYPE'
      Frame.FocusStyle = efsFrameSunken
      TabOrder = 3
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 104
      Top = 70
      DataBinding.DataField = 'DESCS'
      DataBinding.DataSource = dsMaster
      TabOrder = 4
      Width = 513
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 240
      Top = 94
      DataBinding.DataField = 'CreditorName'
      DataBinding.DataSource = dsMaster
      Enabled = False
      TabOrder = 5
      Width = 265
    end
    object cxDBDateEdit2: TcxDBDateEdit
      Left = 504
      Top = 150
      DataBinding.DataField = 'REF_DATE'
      DataBinding.DataSource = dsMaster
      TabOrder = 6
      Width = 121
    end
    object wwDBLookupComboDlg2: TwwDBLookupComboDlg
      Left = 104
      Top = 94
      Width = 121
      Height = 21
      DisableThemes = False
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Transaction Type'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'CREDITOR_ACCT'#9'10'#9'CREDITOR_ACCT'#9#9
        'NAME'#9'60'#9'NAME'#9#9
        'TH_NAME'#9'150'#9'TH_NAME'#9#9)
      DataField = 'CREDITOR_ACCT'
      DataSource = dsMaster
      LookupTable = AccountPayableDM.tbCreditor
      LookupField = 'CREDITOR_ACCT'
      TabOrder = 7
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 576
      Top = 94
      DataBinding.DataField = 'CURRENCY_CODE'
      DataBinding.DataSource = dsMaster
      Enabled = False
      TabOrder = 8
      Width = 41
    end
    object wwDBLookupComboDlg3: TwwDBLookupComboDlg
      Left = 104
      Top = 126
      Width = 121
      Height = 21
      DisableThemes = False
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Bank'
      MaxWidth = 0
      MaxHeight = 209
      DataField = 'BANK_CODE'
      DataSource = dsMaster
      LookupTable = CommonShareDM.tbBank
      LookupField = 'BANK_CODE'
      TabOrder = 9
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 240
      Top = 126
      DataBinding.DataField = 'bankname'
      DataBinding.DataSource = dsMaster
      Enabled = False
      TabOrder = 10
      Width = 385
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 104
      Top = 150
      DataBinding.DataField = 'REF_NO'
      DataBinding.DataSource = dsMaster
      TabOrder = 11
      Width = 121
    end
    object cxDBMemo1: TcxDBMemo
      Left = 104
      Top = 175
      DataBinding.DataField = 'REMARK'
      DataBinding.DataSource = dsMaster
      TabOrder = 12
      Height = 97
      Width = 521
    end
  end
  inherited StatusBar1: TfcStatusBar
    Top = 603
    Width = 903
    Panels = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Name = 'Panel0'
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '200'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Name = 'Panel1'
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '200'
      end
      item
        Component = DBText1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Name = 'Panel2'
        Style = psControl
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '50'
      end>
    object DBText1: TDBText
      Left = 403
      Top = 3
      Width = 481
      Height = 16
      DataField = 'BATHTEXT'
      DataSource = dsMaster
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  inherited panel1: TPanel
    Top = 324
    Width = 903
    Height = 279
    TabOrder = 0
    inherited wwDBGrid1: TwwDBGrid
      Width = 901
      Height = 277
      ControlType.Strings = (
        'TAX_CODE;CustomEdit;dlgTaxLookup;F'
        'WHTAX_CODE;CustomEdit;dlgWHTaxLookup;F'
        'LINE_REMARK;RichEdit;wwDBRichEdit1;F')
      Selected.Strings = (
        'LINE_NO'#9'10'#9'LINE_NO'#9#9
        'INVOICE_NO'#9'15'#9'INVOICE_NO'#9#9
        'INVOICE_DATE'#9'18'#9'INVOICE_DATE'#9#9
        'LINE_DESCS'#9'60'#9'LINE_DESCS'#9#9
        'BASE_AMOUNT'#9'10'#9'BASE_AMOUNT'#9#9
        'TAX_CODE'#9'2'#9'TAX_CODE'#9#9
        'TAX_RATE'#9'10'#9'TAX_RATE'#9#9
        'TAX_AMOUNT'#9'10'#9'TAX_AMOUNT'#9#9
        'WHTAX_CODE'#9'2'#9'WHTAX_CODE'#9#9
        'WHTAX_RATE'#9'10'#9'WHTAX_RATE'#9#9
        'WHTAX_AMOUNT'#9'10'#9'WHTAX_AMOUNT'#9#9
        'TOTAL_AMOUNT'#9'10'#9'TOTAL_AMOUNT'#9#9
        'LINE_REMARK'#9'60'#9'LINE_REMARK'#9'F'#9)
      Font.Name = 'Tahoma'
      TitleFont.Name = 'Tahoma'
    end
    object dlgTaxLookup: TwwDBLookupComboDlg
      Left = 120
      Top = 16
      Width = 121
      Height = 21
      DisableThemes = False
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Tax'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'TAX_CD'#9'2'#9'TAX_CD'#9#9
        'DESCS'#9'45'#9'DESCS'#9#9)
      DataField = 'TAX_CODE'
      DataSource = dsDetail
      LookupTable = CommonShareDM.tbTaxRate
      LookupField = 'TAX_CD'
      TabOrder = 1
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
    end
    object dlgWHTaxLookup: TwwDBLookupComboDlg
      Left = 248
      Top = 16
      Width = 121
      Height = 21
      DisableThemes = False
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Witholding Tax'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'WHTAX_CODE'#9'2'#9'WHTAX_CODE'#9#9
        'WHTAX_RATE'#9'10'#9'WHTAX_RATE'#9#9)
      DataField = 'WHTAX_CODE'
      DataSource = dsDetail
      LookupTable = CommonShareDM.tbWHTax
      LookupField = 'WHTAX_CODE'
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
    end
    object wwDBRichEdit1: TwwDBRichEdit
      Left = 120
      Top = 48
      Width = 249
      Height = 89
      AutoURLDetect = False
      DataField = 'LINE_REMARK'
      DataSource = dsDetail
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PrintJobName = 'Delphi 7'
      TabOrder = 3
      EditorOptions = [reoShowLoad, reoShowSaveAs, reoShowSaveExit, reoShowPrint, reoShowPageSetup, reoShowFormatBar, reoShowToolBar, reoShowStatusBar, reoShowHints, reoShowRuler, reoShowInsertObject, reoCloseOnEscape, reoFlatButtons, reoShowSpellCheck, reoShowMainMenuIcons]
      EditorCaption = 'Edit Remark'
      EditorPosition.Left = 25
      EditorPosition.Top = 0
      EditorPosition.Width = 0
      EditorPosition.Height = 25
      MeasurementUnits = muInches
      PrintMargins.Top = 1.000000000000000000
      PrintMargins.Bottom = 1.000000000000000000
      PrintMargins.Left = 1.000000000000000000
      PrintMargins.Right = 1.000000000000000000
      RichEditVersion = 2
      Data = {
        790000007B5C727466315C616E73695C616E73696370673837345C6465666630
        5C6465666C616E67313035347B5C666F6E7474626C7B5C66305C666E696C2054
        61686F6D613B7D7D0D0A5C766965776B696E64345C7563315C706172645C6630
        5C6673313620777744425269636845646974315C7061720D0A7D0D0A00}
    end
  end
  inherited dsMaster: TDataSource
    DataSet = AccountPayableDM.tbPaymentHD
  end
  inherited dsDetail: TDataSource
    DataSet = AccountPayableDM.tbPaymentDT
  end
end

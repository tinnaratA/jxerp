inherited SelectSupplierForm: TSelectSupplierForm
  Left = 291
  Top = 195
  VertScrollBar.Range = 0
  BorderStyle = bsToolWindow
  Caption = 'View Customer'
  ClientHeight = 226
  ClientWidth = 425
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar1: TfcStatusBar
    Top = 206
    Width = 425
    SizeGrip = False
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 33
    Width = 425
    Height = 173
    DisableThemes = False
    Selected.Strings = (
      'NAME'#9'60'#9'NAME'#9#9
      'SUPPLIER_CD'#9'10'#9'SUPPLIER_CD'#9#9)
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dataSource
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = wwDBGrid1DblClick
    OnKeyPress = wwDBGrid1KeyPress
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 425
    Height = 33
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Edit1: TEdit
      Left = 4
      Top = 3
      Width = 415
      Height = 21
      TabOrder = 0
      OnChange = Edit1Change
    end
  end
  object dataSource: TDataSource
    Left = 104
    Top = 40
  end
end
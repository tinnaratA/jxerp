inherited frmSaleItemSetup792011: TfrmSaleItemSetup792011
  Left = 192
  Top = 172
  Width = 1204
  Height = 777
  Caption = 'Sale product specificatoin setup'
  FormStyle = fsMDIChild
  Visible = True
  PixelsPerInch = 96
  TextHeight = 14
  inherited StatusBar1: TfcStatusBar
    Top = 719
    Width = 1188
    Panels = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Name = 'Panel0'
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '150'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Name = 'Panel1'
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '150'
      end
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Name = 'Panel2'
        Tag = 0
        TextOptions.Alignment = taLeftJustify
        TextOptions.VAlignment = vaVCenter
        Width = '50'
      end>
  end
  inherited ToolBar: TToolBar
    Width = 1188
    ButtonHeight = 22
  end
  inherited mainPanel: TPanel
    Width = 1188
    Height = 690
    object Splitter1: TSplitter
      Left = 1
      Top = 331
      Width = 1186
      Height = 5
      Cursor = crVSplit
      Align = alBottom
    end
    object cxPageControl: TcxPageControl
      Left = 1
      Top = 336
      Width = 1186
      Height = 353
      ActivePage = cxTabSheet3
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      LookAndFeel.Kind = lfOffice11
      ParentFont = False
      TabOrder = 0
      OnChange = cxPageControlChange
      ClientRectBottom = 353
      ClientRectRight = 1186
      ClientRectTop = 26
      object tabGeneral: TcxTabSheet
        Caption = 'General Setup'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ImageIndex = 0
        ParentFont = False
        object Label1: TLabel
          Left = 9
          Top = 17
          Width = 57
          Height = 15
          Caption = 'Item Code'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label2: TLabel
          Left = 9
          Top = 43
          Width = 90
          Height = 15
          Caption = 'Item Description'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label3: TLabel
          Left = 9
          Top = 69
          Width = 44
          Height = 15
          Caption = 'Remark'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label4: TLabel
          Left = 9
          Top = 95
          Width = 56
          Height = 15
          Caption = 'Sale Price'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label5: TLabel
          Left = 9
          Top = 129
          Width = 55
          Height = 15
          Caption = 'Customer'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label6: TLabel
          Left = 198
          Top = 19
          Width = 27
          Height = 15
          Caption = 'UOM'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object DBText1: TDBText
          Left = 112
          Top = 146
          Width = 242
          Height = 19
          Color = clHighlight
          DataField = 'CustomerName'
          DataSource = dataSource
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object edItemCode: TcxDBTextEdit
          Left = 112
          Top = 17
          DataBinding.DataField = 'ITEM_CODE'
          DataBinding.DataSource = dataSource
          TabOrder = 0
          Width = 79
        end
        object edItemDesc: TcxDBTextEdit
          Left = 112
          Top = 43
          DataBinding.DataField = 'DESCS'
          DataBinding.DataSource = dataSource
          TabOrder = 1
          Width = 242
        end
        object edRemark: TcxDBTextEdit
          Left = 112
          Top = 69
          DataBinding.DataField = 'REMARKS'
          DataBinding.DataSource = dataSource
          TabOrder = 2
          Width = 242
        end
        object edSalePrice: TcxDBTextEdit
          Left = 112
          Top = 95
          DataBinding.DataField = 'SALE_PRICE'
          DataBinding.DataSource = dataSource
          TabOrder = 3
          Width = 104
        end
        object cbCustomer: TcxDBLookupComboBox
          Left = 112
          Top = 121
          DataBinding.DataField = 'CUST_CODE'
          DataBinding.DataSource = dataSource
          Properties.KeyFieldNames = 'CUSTOMER_CD'
          Properties.ListColumns = <
            item
              Width = 100
              FieldName = 'DEBTOR_ACCT'
            end
            item
              FieldName = 'NAME'
            end>
          Properties.ListSource = MasterSetupDM.dsCustomerLookup
          TabOrder = 4
          Width = 242
        end
        object cbUom: TcxDBLookupComboBox
          Left = 241
          Top = 17
          DataBinding.DataField = 'UOM_CD'
          DataBinding.DataSource = dataSource
          Properties.KeyFieldNames = 'UOM_CD'
          Properties.ListColumns = <
            item
              FieldName = 'UOM_CD'
            end
            item
              FieldName = 'DESCS'
            end>
          Properties.ListSource = MasterSetupDM.dsUom
          TabOrder = 5
          Width = 113
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 370
          Top = 17
          Hint = 'Uncheck if you like to unactive this product'
          Caption = 'Active/Inactive Product'
          DataBinding.DataField = 'CURRENT_ACTIVE'
          DataBinding.DataSource = dataSource
          ParentShowHint = False
          Properties.ValueChecked = #39'Y'#39
          Properties.ValueUnchecked = #39'N'#39
          Properties.OnChange = cxDBCheckBox1PropertiesChange
          ShowHint = True
          TabOrder = 6
          Width = 165
        end
      end
      object tabOrderHistory: TcxTabSheet
        Caption = 'Order History'
        ImageIndex = 1
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 1186
          Height = 327
          Align = alClient
          TabOrder = 0
          object cxGrid1DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            FilterBox.CustomizeDialog = False
            DataController.DataSource = dsOrderHistory
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            Styles.ContentOdd = SystemMenuDM.cxStyle232
            Styles.Header = SystemMenuDM.cxStyle153
            object cxGrid1DBTableView1ORDER_NO: TcxGridDBColumn
              DataBinding.FieldName = 'ORDER_NO'
              Options.Filtering = False
              Width = 85
            end
            object cxGrid1DBTableView1ORDER_DATE: TcxGridDBColumn
              DataBinding.FieldName = 'ORDER_DATE'
              Options.Filtering = False
            end
            object cxGrid1DBTableView1ITEM_CODE: TcxGridDBColumn
              DataBinding.FieldName = 'ITEM_CODE'
              Options.Filtering = False
              Width = 79
            end
            object cxGrid1DBTableView1UOM: TcxGridDBColumn
              DataBinding.FieldName = 'UOM'
              Options.Filtering = False
              Width = 36
            end
            object cxGrid1DBTableView1ITEM_DESCS: TcxGridDBColumn
              DataBinding.FieldName = 'ITEM_DESCS'
              Options.Filtering = False
              Width = 354
            end
            object cxGrid1DBTableView1UNIT_COST: TcxGridDBColumn
              DataBinding.FieldName = 'UNIT_COST'
              Options.Filtering = False
            end
            object cxGrid1DBTableView1REMARKS: TcxGridDBColumn
              DataBinding.FieldName = 'REMARKS'
              Options.Filtering = False
              Width = 150
            end
            object cxGrid1DBTableView1BASE_AMT: TcxGridDBColumn
              DataBinding.FieldName = 'BASE_AMT'
              Options.Filtering = False
            end
            object cxGrid1DBTableView1QTY: TcxGridDBColumn
              DataBinding.FieldName = 'QTY'
              Options.Filtering = False
            end
            object cxGrid1DBTableView1STATUS: TcxGridDBColumn
              DataBinding.FieldName = 'STATUS'
              Options.Filtering = False
            end
            object cxGrid1DBTableView1DET_QTY: TcxGridDBColumn
              DataBinding.FieldName = 'DET_QTY'
              Options.Filtering = False
            end
            object cxGrid1DBTableView1DELIVERY_DATE: TcxGridDBColumn
              DataBinding.FieldName = 'DELIVERY_DATE'
              Options.Filtering = False
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
      end
      object tabCustomerRequiment: TcxTabSheet
        Caption = 'Requirement Sheet'
        ImageIndex = 2
        object Label8: TLabel
          Left = 0
          Top = 41
          Width = 1186
          Height = 16
          Align = alTop
          Caption = 'Maximum Requirement:- (Check if Current Use)'
          Color = clAppWorkSpace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentColor = False
          ParentFont = False
        end
        object Bevel1: TBevel
          Left = 0
          Top = 176
          Width = 1186
          Height = 4
          Align = alTop
        end
        object Bevel2: TBevel
          Left = 0
          Top = 107
          Width = 1186
          Height = 4
          Align = alTop
        end
        object Label11: TLabel
          Left = 0
          Top = 111
          Width = 1186
          Height = 15
          Align = alTop
          Caption = 'Minimum Requirement :-'
          Color = clAppWorkSpace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentColor = False
          ParentFont = False
        end
        object ToolBar1: TToolBar
          Left = 0
          Top = 57
          Width = 1186
          Height = 24
          ButtonHeight = 23
          Caption = 'ToolBar1'
          Color = clBtnFace
          EdgeInner = esLowered
          EdgeOuter = esNone
          Flat = True
          ParentColor = False
          TabOrder = 0
          object ToolButton70: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'ToolButton70'
            ImageIndex = 12
            Style = tbsSeparator
          end
          object cxDBSpinMax1: TcxDBSpinEdit
            Left = 8
            Top = 0
            DataBinding.DataField = 'MAX_FLOAT_POINT1'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 12
            Width = 50
          end
          object ToolButton3: TToolButton
            Left = 58
            Top = 0
            Width = 8
            Caption = 'ToolButton3'
            Style = tbsSeparator
          end
          object cxDBSpinMax2: TcxDBSpinEdit
            Left = 66
            Top = 0
            DataBinding.DataField = 'MAX_FLOAT_POINT2'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 11
            Width = 50
          end
          object ToolButton4: TToolButton
            Left = 116
            Top = 0
            Width = 8
            Caption = 'ToolButton4'
            ImageIndex = 0
            Style = tbsSeparator
          end
          object cxDBSpinMax3: TcxDBSpinEdit
            Left = 124
            Top = 0
            DataBinding.DataField = 'MAX_FLOAT_POINT3'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 10
            Width = 50
          end
          object ToolButton5: TToolButton
            Left = 174
            Top = 0
            Width = 8
            Caption = 'ToolButton5'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object cxDBSpinMax4: TcxDBSpinEdit
            Left = 182
            Top = 0
            DataBinding.DataField = 'MAX_FLOAT_POINT4'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 9
            Width = 50
          end
          object ToolButton7: TToolButton
            Left = 232
            Top = 0
            Width = 8
            Caption = 'ToolButton7'
            ImageIndex = 2
            Style = tbsSeparator
          end
          object cxDBSpinMax5: TcxDBSpinEdit
            Left = 240
            Top = 0
            DataBinding.DataField = 'MAX_FLOAT_POINT5'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 8
            Width = 50
          end
          object ToolButton8: TToolButton
            Left = 290
            Top = 0
            Width = 8
            Caption = 'ToolButton8'
            ImageIndex = 3
            Style = tbsSeparator
          end
          object cxDBSpinMax6: TcxDBSpinEdit
            Left = 298
            Top = 0
            DataBinding.DataField = 'MAX_FLOAT_POINT6'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 7
            Width = 50
          end
          object ToolButton9: TToolButton
            Left = 348
            Top = 0
            Width = 8
            Caption = 'ToolButton9'
            ImageIndex = 4
            Style = tbsSeparator
          end
          object cxDBSpinMax7: TcxDBSpinEdit
            Left = 356
            Top = 0
            DataBinding.DataField = 'MAX_FLOAT_POINT7'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 6
            Width = 50
          end
          object ToolButton10: TToolButton
            Left = 406
            Top = 0
            Width = 8
            Caption = 'ToolButton10'
            ImageIndex = 5
            Style = tbsSeparator
          end
          object cxDBSpinMax8: TcxDBSpinEdit
            Left = 414
            Top = 0
            DataBinding.DataField = 'MAX_FLOAT_POINT8'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 5
            Width = 50
          end
          object ToolButton11: TToolButton
            Left = 464
            Top = 0
            Width = 8
            Caption = 'ToolButton11'
            ImageIndex = 6
            Style = tbsSeparator
          end
          object cxDBSpinMax9: TcxDBSpinEdit
            Left = 472
            Top = 0
            DataBinding.DataField = 'MAX_FLOAT_POINT9'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 4
            Width = 50
          end
          object ToolButton12: TToolButton
            Left = 522
            Top = 0
            Width = 8
            Caption = 'ToolButton12'
            ImageIndex = 7
            Style = tbsSeparator
          end
          object cxDBSpinMax10: TcxDBSpinEdit
            Left = 530
            Top = 0
            DataBinding.DataField = 'MAX_FLOAT_POINT10'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 3
            Width = 50
          end
          object ToolButton13: TToolButton
            Left = 580
            Top = 0
            Width = 8
            Caption = 'ToolButton13'
            ImageIndex = 8
            Style = tbsSeparator
          end
          object cxDBSpinMax11: TcxDBSpinEdit
            Left = 588
            Top = 0
            DataBinding.DataField = 'MAX_FLOAT_POINT11'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 2
            Width = 50
          end
          object ToolButton14: TToolButton
            Left = 638
            Top = 0
            Width = 8
            Caption = 'ToolButton14'
            ImageIndex = 9
            Style = tbsSeparator
          end
          object cxDBSpinMax12: TcxDBSpinEdit
            Left = 646
            Top = 0
            DataBinding.DataField = 'MAX_FLOAT_POINT12'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 1
            Width = 50
          end
          object ToolButton15: TToolButton
            Left = 696
            Top = 0
            Width = 8
            Caption = 'ToolButton15'
            ImageIndex = 10
            Style = tbsSeparator
          end
          object cxDBSpinMax13: TcxDBSpinEdit
            Left = 704
            Top = 0
            DataBinding.DataField = 'MAX_FLOAT_POINT13'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 0
            Width = 50
          end
          object ToolButton65: TToolButton
            Left = 754
            Top = 0
            Width = 8
            Caption = 'ToolButton65'
            ImageIndex = 11
            Style = tbsSeparator
          end
        end
        object ToolBar2: TToolBar
          Left = 0
          Top = 0
          Width = 1186
          Height = 41
          Caption = 'ToolBar1'
          Color = 9927006
          EdgeInner = esLowered
          EdgeOuter = esNone
          Flat = True
          ParentColor = False
          TabOrder = 1
          object ToolButton69: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'ToolButton69'
            ImageIndex = 12
            Style = tbsSeparator
          end
          object DBText2: TDBText
            Left = 8
            Top = 0
            Width = 50
            Height = 22
            Alignment = taCenter
            DataField = 'ELABEL1'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton16: TToolButton
            Left = 58
            Top = 0
            Width = 8
            Caption = 'ToolButton3'
            Style = tbsSeparator
          end
          object DBText3: TDBText
            Left = 66
            Top = 0
            Width = 50
            Height = 22
            Alignment = taCenter
            DataField = 'ELABEL2'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton17: TToolButton
            Left = 116
            Top = 0
            Width = 8
            Caption = 'ToolButton4'
            ImageIndex = 0
            Style = tbsSeparator
          end
          object DBText4: TDBText
            Left = 124
            Top = 0
            Width = 50
            Height = 22
            Alignment = taCenter
            DataField = 'ELABEL3'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton18: TToolButton
            Left = 174
            Top = 0
            Width = 8
            Caption = 'ToolButton5'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object DBText5: TDBText
            Left = 182
            Top = 0
            Width = 50
            Height = 22
            Alignment = taCenter
            DataField = 'ELABEL4'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton19: TToolButton
            Left = 232
            Top = 0
            Width = 8
            Caption = 'ToolButton7'
            ImageIndex = 2
            Style = tbsSeparator
          end
          object DBText6: TDBText
            Left = 240
            Top = 0
            Width = 50
            Height = 22
            Alignment = taCenter
            DataField = 'ELABEL5'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton20: TToolButton
            Left = 290
            Top = 0
            Width = 8
            Caption = 'ToolButton8'
            ImageIndex = 3
            Style = tbsSeparator
          end
          object DBText7: TDBText
            Left = 298
            Top = 0
            Width = 50
            Height = 22
            Alignment = taCenter
            DataField = 'ELABEL6'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton21: TToolButton
            Left = 348
            Top = 0
            Width = 8
            Caption = 'ToolButton9'
            ImageIndex = 4
            Style = tbsSeparator
          end
          object DBText8: TDBText
            Left = 356
            Top = 0
            Width = 50
            Height = 22
            Alignment = taCenter
            DataField = 'ELABEL7'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton22: TToolButton
            Left = 406
            Top = 0
            Width = 8
            Caption = 'ToolButton10'
            ImageIndex = 5
            Style = tbsSeparator
          end
          object DBText9: TDBText
            Left = 414
            Top = 0
            Width = 50
            Height = 22
            Alignment = taCenter
            DataField = 'ELABEL8'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton23: TToolButton
            Left = 464
            Top = 0
            Width = 8
            Caption = 'ToolButton11'
            ImageIndex = 6
            Style = tbsSeparator
          end
          object DBText10: TDBText
            Left = 472
            Top = 0
            Width = 50
            Height = 22
            Alignment = taCenter
            DataField = 'ELABEL9'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton24: TToolButton
            Left = 522
            Top = 0
            Width = 8
            Caption = 'ToolButton12'
            ImageIndex = 7
            Style = tbsSeparator
          end
          object DBText11: TDBText
            Left = 530
            Top = 0
            Width = 50
            Height = 22
            Alignment = taCenter
            DataField = 'ELABEL10'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton25: TToolButton
            Left = 580
            Top = 0
            Width = 8
            Caption = 'ToolButton13'
            ImageIndex = 8
            Style = tbsSeparator
          end
          object DBText12: TDBText
            Left = 588
            Top = 0
            Width = 50
            Height = 22
            Alignment = taCenter
            DataField = 'ELABEL11'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton26: TToolButton
            Left = 638
            Top = 0
            Width = 8
            Caption = 'ToolButton14'
            ImageIndex = 9
            Style = tbsSeparator
          end
          object DBText13: TDBText
            Left = 646
            Top = 0
            Width = 50
            Height = 22
            Alignment = taCenter
            DataField = 'ELABEL12'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton27: TToolButton
            Left = 696
            Top = 0
            Width = 8
            Caption = 'ToolButton15'
            ImageIndex = 10
            Style = tbsSeparator
          end
          object DBText14: TDBText
            Left = 704
            Top = 0
            Width = 50
            Height = 22
            Alignment = taCenter
            DataField = 'ELABEL13'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton64: TToolButton
            Left = 754
            Top = 0
            Width = 8
            Caption = 'ToolButton64'
            ImageIndex = 11
            Style = tbsSeparator
          end
        end
        object ToolBar3: TToolBar
          Left = 0
          Top = 81
          Width = 1186
          Height = 26
          ButtonHeight = 23
          Caption = 'ToolBar3'
          EdgeInner = esLowered
          EdgeOuter = esNone
          Flat = True
          TabOrder = 2
          object ToolButton71: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'ToolButton71'
            ImageIndex = 12
            Style = tbsSeparator
          end
          object cxDBMaskEditMax1: TcxDBMaskEdit
            Left = 8
            Top = 0
            DataBinding.DataField = 'MAX_ELE1'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 12
            Width = 50
          end
          object ToolButton28: TToolButton
            Left = 58
            Top = 0
            Width = 8
            Caption = 'ToolButton28'
            Style = tbsSeparator
          end
          object cxDBMaskEditMax2: TcxDBMaskEdit
            Left = 66
            Top = 0
            DataBinding.DataField = 'MAX_ELE2'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 11
            Width = 50
          end
          object ToolButton29: TToolButton
            Left = 116
            Top = 0
            Width = 8
            Caption = 'ToolButton29'
            ImageIndex = 0
            Style = tbsSeparator
          end
          object cxDBMaskEditMax3: TcxDBMaskEdit
            Left = 124
            Top = 0
            DataBinding.DataField = 'MAX_ELE3'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 10
            Width = 50
          end
          object ToolButton30: TToolButton
            Left = 174
            Top = 0
            Width = 8
            Caption = 'ToolButton30'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object cxDBMaskEditMax4: TcxDBMaskEdit
            Left = 182
            Top = 0
            DataBinding.DataField = 'MAX_ELE4'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 9
            Width = 50
          end
          object ToolButton31: TToolButton
            Left = 232
            Top = 0
            Width = 8
            Caption = 'ToolButton31'
            ImageIndex = 2
            Style = tbsSeparator
          end
          object cxDBMaskEditMax5: TcxDBMaskEdit
            Left = 240
            Top = 0
            DataBinding.DataField = 'MAX_ELE5'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 8
            Width = 50
          end
          object ToolButton32: TToolButton
            Left = 290
            Top = 0
            Width = 8
            Caption = 'ToolButton32'
            ImageIndex = 3
            Style = tbsSeparator
          end
          object cxDBMaskEditMax6: TcxDBMaskEdit
            Left = 298
            Top = 0
            DataBinding.DataField = 'MAX_ELE6'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 7
            Width = 50
          end
          object ToolButton33: TToolButton
            Left = 348
            Top = 0
            Width = 8
            Caption = 'ToolButton33'
            ImageIndex = 4
            Style = tbsSeparator
          end
          object cxDBMaskEditMax7: TcxDBMaskEdit
            Left = 356
            Top = 0
            DataBinding.DataField = 'MAX_ELE7'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 6
            Width = 50
          end
          object ToolButton34: TToolButton
            Left = 406
            Top = 0
            Width = 8
            Caption = 'ToolButton34'
            ImageIndex = 5
            Style = tbsSeparator
          end
          object cxDBMaskEditMax8: TcxDBMaskEdit
            Left = 414
            Top = 0
            DataBinding.DataField = 'MAX_ELE8'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 5
            Width = 50
          end
          object ToolButton35: TToolButton
            Left = 464
            Top = 0
            Width = 8
            Caption = 'ToolButton35'
            ImageIndex = 6
            Style = tbsSeparator
          end
          object cxDBMaskEditMax9: TcxDBMaskEdit
            Left = 472
            Top = 0
            DataBinding.DataField = 'MAX_ELE9'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 4
            Width = 50
          end
          object ToolButton36: TToolButton
            Left = 522
            Top = 0
            Width = 8
            Caption = 'ToolButton36'
            ImageIndex = 7
            Style = tbsSeparator
          end
          object cxDBMaskEditMax10: TcxDBMaskEdit
            Left = 530
            Top = 0
            DataBinding.DataField = 'MAX_ELE10'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 3
            Width = 50
          end
          object ToolButton37: TToolButton
            Left = 580
            Top = 0
            Width = 8
            Caption = 'ToolButton37'
            ImageIndex = 8
            Style = tbsSeparator
          end
          object cxDBMaskEditMax11: TcxDBMaskEdit
            Left = 588
            Top = 0
            DataBinding.DataField = 'MAX_ELE11'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 2
            Width = 50
          end
          object ToolButton38: TToolButton
            Left = 638
            Top = 0
            Width = 8
            Caption = 'ToolButton38'
            ImageIndex = 9
            Style = tbsSeparator
          end
          object cxDBMaskEditMax12: TcxDBMaskEdit
            Left = 646
            Top = 0
            DataBinding.DataField = 'MAX_ELE12'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 1
            Width = 50
          end
          object ToolButton39: TToolButton
            Left = 696
            Top = 0
            Width = 8
            Caption = 'ToolButton39'
            ImageIndex = 10
            Style = tbsSeparator
          end
          object cxDBMaskEditMax13: TcxDBMaskEdit
            Left = 704
            Top = 0
            DataBinding.DataField = 'MAX_ELE13'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 0
            Width = 50
          end
          object ToolButton66: TToolButton
            Left = 754
            Top = 0
            Width = 8
            Caption = 'ToolButton66'
            ImageIndex = 11
            Style = tbsSeparator
          end
        end
        object ToolBar4: TToolBar
          Left = 0
          Top = 126
          Width = 1186
          Height = 24
          ButtonHeight = 23
          Caption = 'ToolBar1'
          Color = clBtnFace
          EdgeInner = esLowered
          EdgeOuter = esNone
          Flat = True
          ParentColor = False
          TabOrder = 3
          object ToolButton72: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'ToolButton72'
            ImageIndex = 12
            Style = tbsSeparator
          end
          object cxDBSpinMin1: TcxDBSpinEdit
            Left = 8
            Top = 0
            DataBinding.DataField = 'MIN_FLOAT_POINT1'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 12
            Width = 50
          end
          object ToolButton40: TToolButton
            Left = 58
            Top = 0
            Width = 8
            Caption = 'ToolButton3'
            Style = tbsSeparator
          end
          object cxDBSpinMin2: TcxDBSpinEdit
            Left = 66
            Top = 0
            DataBinding.DataField = 'MIN_FLOAT_POINT2'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 11
            Width = 50
          end
          object ToolButton41: TToolButton
            Left = 116
            Top = 0
            Width = 8
            Caption = 'ToolButton4'
            ImageIndex = 0
            Style = tbsSeparator
          end
          object cxDBSpinMin3: TcxDBSpinEdit
            Left = 124
            Top = 0
            DataBinding.DataField = 'MIN_FLOAT_POINT3'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 10
            Width = 50
          end
          object ToolButton42: TToolButton
            Left = 174
            Top = 0
            Width = 8
            Caption = 'ToolButton5'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object cxDBSpinMin4: TcxDBSpinEdit
            Left = 182
            Top = 0
            DataBinding.DataField = 'MIN_FLOAT_POINT4'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 9
            Width = 50
          end
          object ToolButton43: TToolButton
            Left = 232
            Top = 0
            Width = 8
            Caption = 'ToolButton7'
            ImageIndex = 2
            Style = tbsSeparator
          end
          object cxDBSpinMin5: TcxDBSpinEdit
            Left = 240
            Top = 0
            DataBinding.DataField = 'MIN_FLOAT_POINT5'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 8
            Width = 50
          end
          object ToolButton44: TToolButton
            Left = 290
            Top = 0
            Width = 8
            Caption = 'ToolButton8'
            ImageIndex = 3
            Style = tbsSeparator
          end
          object cxDBSpinMin6: TcxDBSpinEdit
            Left = 298
            Top = 0
            DataBinding.DataField = 'MIN_FLOAT_POINT6'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 7
            Width = 50
          end
          object ToolButton45: TToolButton
            Left = 348
            Top = 0
            Width = 8
            Caption = 'ToolButton9'
            ImageIndex = 4
            Style = tbsSeparator
          end
          object cxDBSpinMin7: TcxDBSpinEdit
            Left = 356
            Top = 0
            DataBinding.DataField = 'MIN_FLOAT_POINT7'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 6
            Width = 50
          end
          object ToolButton46: TToolButton
            Left = 406
            Top = 0
            Width = 8
            Caption = 'ToolButton10'
            ImageIndex = 5
            Style = tbsSeparator
          end
          object cxDBSpinMin8: TcxDBSpinEdit
            Left = 414
            Top = 0
            DataBinding.DataField = 'MIN_FLOAT_POINT8'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 5
            Width = 50
          end
          object ToolButton47: TToolButton
            Left = 464
            Top = 0
            Width = 8
            Caption = 'ToolButton11'
            ImageIndex = 6
            Style = tbsSeparator
          end
          object cxDBSpinMin9: TcxDBSpinEdit
            Left = 472
            Top = 0
            DataBinding.DataField = 'MIN_FLOAT_POINT9'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 4
            Width = 50
          end
          object ToolButton48: TToolButton
            Left = 522
            Top = 0
            Width = 8
            Caption = 'ToolButton12'
            ImageIndex = 7
            Style = tbsSeparator
          end
          object cxDBSpinMin10: TcxDBSpinEdit
            Left = 530
            Top = 0
            DataBinding.DataField = 'MIN_FLOAT_POINT10'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 3
            Width = 50
          end
          object ToolButton49: TToolButton
            Left = 580
            Top = 0
            Width = 8
            Caption = 'ToolButton13'
            ImageIndex = 8
            Style = tbsSeparator
          end
          object cxDBSpinMin111: TcxDBSpinEdit
            Left = 588
            Top = 0
            DataBinding.DataField = 'MIN_FLOAT_POINT11'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 2
            Width = 50
          end
          object ToolButton50: TToolButton
            Left = 638
            Top = 0
            Width = 8
            Caption = 'ToolButton14'
            ImageIndex = 9
            Style = tbsSeparator
          end
          object cxDBSpinMin12: TcxDBSpinEdit
            Left = 646
            Top = 0
            DataBinding.DataField = 'MIN_FLOAT_POINT12'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 1
            Width = 50
          end
          object ToolButton51: TToolButton
            Left = 696
            Top = 0
            Width = 8
            Caption = 'ToolButton15'
            ImageIndex = 10
            Style = tbsSeparator
          end
          object cxDBSpinMin13: TcxDBSpinEdit
            Left = 704
            Top = 0
            DataBinding.DataField = 'MIN_FLOAT_POINT13'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 0
            Width = 50
          end
          object ToolButton67: TToolButton
            Left = 754
            Top = 0
            Width = 8
            Caption = 'ToolButton67'
            ImageIndex = 11
            Style = tbsSeparator
          end
        end
        object ToolBar5: TToolBar
          Left = 0
          Top = 150
          Width = 1186
          Height = 26
          ButtonHeight = 23
          Caption = 'ToolBar3'
          EdgeInner = esLowered
          EdgeOuter = esNone
          Flat = True
          TabOrder = 4
          object ToolButton73: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'ToolButton73'
            ImageIndex = 12
            Style = tbsSeparator
          end
          object cxDBMaskEditMin1: TcxDBMaskEdit
            Left = 8
            Top = 0
            DataBinding.DataField = 'MIN_ELE1'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 12
            Width = 50
          end
          object ToolButton52: TToolButton
            Left = 58
            Top = 0
            Width = 8
            Caption = 'ToolButton28'
            Style = tbsSeparator
          end
          object cxDBMaskEditMin2: TcxDBMaskEdit
            Left = 66
            Top = 0
            DataBinding.DataField = 'MIN_ELE2'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 11
            Width = 50
          end
          object ToolButton53: TToolButton
            Left = 116
            Top = 0
            Width = 8
            Caption = 'ToolButton29'
            ImageIndex = 0
            Style = tbsSeparator
          end
          object cxDBMaskEditMin3: TcxDBMaskEdit
            Left = 124
            Top = 0
            DataBinding.DataField = 'MIN_ELE3'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 10
            Width = 50
          end
          object ToolButton54: TToolButton
            Left = 174
            Top = 0
            Width = 8
            Caption = 'ToolButton30'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object cxDBMaskEditMin4: TcxDBMaskEdit
            Left = 182
            Top = 0
            DataBinding.DataField = 'MIN_ELE4'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 9
            Width = 50
          end
          object ToolButton55: TToolButton
            Left = 232
            Top = 0
            Width = 8
            Caption = 'ToolButton31'
            ImageIndex = 2
            Style = tbsSeparator
          end
          object cxDBMaskEditMin5: TcxDBMaskEdit
            Left = 240
            Top = 0
            DataBinding.DataField = 'MIN_ELE5'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 8
            Width = 50
          end
          object ToolButton56: TToolButton
            Left = 290
            Top = 0
            Width = 8
            Caption = 'ToolButton32'
            ImageIndex = 3
            Style = tbsSeparator
          end
          object cxDBMaskEditMin6: TcxDBMaskEdit
            Left = 298
            Top = 0
            DataBinding.DataField = 'MIN_ELE6'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 7
            Width = 50
          end
          object ToolButton57: TToolButton
            Left = 348
            Top = 0
            Width = 8
            Caption = 'ToolButton33'
            ImageIndex = 4
            Style = tbsSeparator
          end
          object cxDBMaskEditMin7: TcxDBMaskEdit
            Left = 356
            Top = 0
            DataBinding.DataField = 'MIN_ELE7'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 6
            Width = 50
          end
          object ToolButton58: TToolButton
            Left = 406
            Top = 0
            Width = 8
            Caption = 'ToolButton34'
            ImageIndex = 5
            Style = tbsSeparator
          end
          object cxDBMaskEditMin8: TcxDBMaskEdit
            Left = 414
            Top = 0
            DataBinding.DataField = 'MIN_ELE8'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 5
            Width = 50
          end
          object ToolButton59: TToolButton
            Left = 464
            Top = 0
            Width = 8
            Caption = 'ToolButton35'
            ImageIndex = 6
            Style = tbsSeparator
          end
          object cxDBMaskEditMin9: TcxDBMaskEdit
            Left = 472
            Top = 0
            DataBinding.DataField = 'MIN_ELE9'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 4
            Width = 50
          end
          object ToolButton60: TToolButton
            Left = 522
            Top = 0
            Width = 8
            Caption = 'ToolButton36'
            ImageIndex = 7
            Style = tbsSeparator
          end
          object cxDBMaskEditMin10: TcxDBMaskEdit
            Left = 530
            Top = 0
            DataBinding.DataField = 'MIN_ELE10'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 3
            Width = 50
          end
          object ToolButton61: TToolButton
            Left = 580
            Top = 0
            Width = 8
            Caption = 'ToolButton37'
            ImageIndex = 8
            Style = tbsSeparator
          end
          object cxDBMaskEditMin11: TcxDBMaskEdit
            Left = 588
            Top = 0
            DataBinding.DataField = 'MIN_ELE11'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 2
            Width = 50
          end
          object ToolButton62: TToolButton
            Left = 638
            Top = 0
            Width = 8
            Caption = 'ToolButton38'
            ImageIndex = 9
            Style = tbsSeparator
          end
          object cxDBMaskEditMin12: TcxDBMaskEdit
            Left = 646
            Top = 0
            DataBinding.DataField = 'MIN_ELE12'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 1
            Width = 50
          end
          object ToolButton63: TToolButton
            Left = 696
            Top = 0
            Width = 8
            Caption = 'ToolButton39'
            ImageIndex = 10
            Style = tbsSeparator
          end
          object cxDBMaskEditMin13: TcxDBMaskEdit
            Left = 704
            Top = 0
            DataBinding.DataField = 'MIN_ELE13'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 0
            Width = 50
          end
          object ToolButton68: TToolButton
            Left = 754
            Top = 0
            Width = 8
            Caption = 'ToolButton68'
            ImageIndex = 11
            Style = tbsSeparator
          end
        end
        object cxDBCheckBox3: TcxDBCheckBox
          Left = 5
          Top = 16
          Properties.Alignment = taCenter
          TabOrder = 5
          Width = 57
        end
        object cxDBCheckBox4: TcxDBCheckBox
          Left = 64
          Top = 16
          Properties.Alignment = taCenter
          TabOrder = 6
          Width = 57
        end
        object cxDBCheckBox5: TcxDBCheckBox
          Left = 120
          Top = 16
          Properties.Alignment = taCenter
          TabOrder = 7
          Width = 57
        end
        object cxDBCheckBox6: TcxDBCheckBox
          Left = 179
          Top = 16
          Properties.Alignment = taCenter
          TabOrder = 8
          Width = 56
        end
        object cxDBCheckBox7: TcxDBCheckBox
          Left = 240
          Top = 16
          Properties.Alignment = taCenter
          TabOrder = 9
          Width = 57
        end
        object cxDBCheckBox8: TcxDBCheckBox
          Left = 296
          Top = 16
          Properties.Alignment = taCenter
          TabOrder = 10
          Width = 57
        end
        object cxDBCheckBox9: TcxDBCheckBox
          Left = 352
          Top = 16
          Properties.Alignment = taCenter
          TabOrder = 11
          Width = 57
        end
        object cxDBCheckBox10: TcxDBCheckBox
          Left = 408
          Top = 16
          Properties.Alignment = taCenter
          TabOrder = 12
          Width = 57
        end
        object cxDBCheckBox11: TcxDBCheckBox
          Left = 464
          Top = 16
          Properties.Alignment = taCenter
          TabOrder = 13
          Width = 57
        end
        object cxDBCheckBox12: TcxDBCheckBox
          Left = 528
          Top = 16
          Properties.Alignment = taCenter
          TabOrder = 14
          Width = 57
        end
        object cxDBCheckBox13: TcxDBCheckBox
          Left = 584
          Top = 16
          Properties.Alignment = taCenter
          TabOrder = 15
          Width = 57
        end
        object cxDBCheckBox14: TcxDBCheckBox
          Left = 640
          Top = 16
          Properties.Alignment = taCenter
          TabOrder = 16
          Width = 57
        end
        object cxDBCheckBox15: TcxDBCheckBox
          Left = 704
          Top = 16
          Properties.Alignment = taCenter
          TabOrder = 17
          Width = 57
        end
      end
      object cxTabSheet1: TcxTabSheet
        Caption = 'Extra Composition'
        ImageIndex = 3
        object Label9: TLabel
          Left = 0
          Top = 49
          Width = 1186
          Height = 32
          Align = alTop
          Caption = 'Maximum Requirement:-'
          Color = clBtnShadow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentColor = False
          ParentFont = False
        end
        object Label10: TLabel
          Left = 0
          Top = 131
          Width = 1186
          Height = 28
          Align = alTop
          Caption = 'Minimum Requirement :-'
          Color = clBtnShadow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentColor = False
          ParentFont = False
        end
        object ToolBar6: TToolBar
          Left = 0
          Top = 0
          Width = 1186
          Height = 49
          ButtonHeight = 23
          Caption = 'ToolBar1'
          Color = 9927006
          EdgeInner = esLowered
          EdgeOuter = esNone
          Flat = True
          ParentColor = False
          TabOrder = 0
          object ToolButton75: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'ToolButton69'
            ImageIndex = 12
            Style = tbsSeparator
          end
          object DBText15: TDBText
            Left = 8
            Top = 0
            Width = 50
            Height = 23
            Alignment = taCenter
            DataField = 'ELABEL1'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton76: TToolButton
            Left = 58
            Top = 0
            Width = 8
            Caption = 'ToolButton3'
            Style = tbsSeparator
          end
          object DBText16: TDBText
            Left = 66
            Top = 0
            Width = 50
            Height = 23
            Alignment = taCenter
            DataField = 'ELABEL2'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton77: TToolButton
            Left = 116
            Top = 0
            Width = 8
            Caption = 'ToolButton4'
            ImageIndex = 0
            Style = tbsSeparator
          end
          object DBText17: TDBText
            Left = 124
            Top = 0
            Width = 50
            Height = 23
            Alignment = taCenter
            DataField = 'ELABEL3'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton78: TToolButton
            Left = 174
            Top = 0
            Width = 8
            Caption = 'ToolButton5'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object DBText18: TDBText
            Left = 182
            Top = 0
            Width = 50
            Height = 23
            Alignment = taCenter
            DataField = 'ELABEL4'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton79: TToolButton
            Left = 232
            Top = 0
            Width = 8
            Caption = 'ToolButton7'
            ImageIndex = 2
            Style = tbsSeparator
          end
          object DBText19: TDBText
            Left = 240
            Top = 0
            Width = 50
            Height = 23
            Alignment = taCenter
            DataField = 'ELABEL5'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton80: TToolButton
            Left = 290
            Top = 0
            Width = 8
            Caption = 'ToolButton8'
            ImageIndex = 3
            Style = tbsSeparator
          end
          object DBText20: TDBText
            Left = 298
            Top = 0
            Width = 50
            Height = 23
            Alignment = taCenter
            DataField = 'ELABEL6'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton81: TToolButton
            Left = 348
            Top = 0
            Width = 8
            Caption = 'ToolButton9'
            ImageIndex = 4
            Style = tbsSeparator
          end
          object DBText21: TDBText
            Left = 356
            Top = 0
            Width = 50
            Height = 23
            Alignment = taCenter
            DataField = 'ELABEL7'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton82: TToolButton
            Left = 406
            Top = 0
            Width = 8
            Caption = 'ToolButton10'
            ImageIndex = 5
            Style = tbsSeparator
          end
          object DBText22: TDBText
            Left = 414
            Top = 0
            Width = 50
            Height = 23
            Alignment = taCenter
            DataField = 'ELABEL8'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton83: TToolButton
            Left = 464
            Top = 0
            Width = 8
            Caption = 'ToolButton11'
            ImageIndex = 6
            Style = tbsSeparator
          end
          object DBText23: TDBText
            Left = 472
            Top = 0
            Width = 50
            Height = 23
            Alignment = taCenter
            DataField = 'ELABEL9'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton84: TToolButton
            Left = 522
            Top = 0
            Width = 8
            Caption = 'ToolButton12'
            ImageIndex = 7
            Style = tbsSeparator
          end
          object DBText24: TDBText
            Left = 530
            Top = 0
            Width = 50
            Height = 23
            Alignment = taCenter
            DataField = 'ELABEL10'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton85: TToolButton
            Left = 580
            Top = 0
            Width = 8
            Caption = 'ToolButton13'
            ImageIndex = 8
            Style = tbsSeparator
          end
          object DBText25: TDBText
            Left = 588
            Top = 0
            Width = 50
            Height = 23
            Alignment = taCenter
            DataField = 'ELABEL11'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton86: TToolButton
            Left = 638
            Top = 0
            Width = 8
            Caption = 'ToolButton14'
            ImageIndex = 9
            Style = tbsSeparator
          end
          object DBText26: TDBText
            Left = 646
            Top = 0
            Width = 50
            Height = 23
            Alignment = taCenter
            DataField = 'ELABEL12'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton87: TToolButton
            Left = 696
            Top = 0
            Width = 8
            Caption = 'ToolButton15'
            ImageIndex = 10
            Style = tbsSeparator
          end
          object DBText27: TDBText
            Left = 704
            Top = 0
            Width = 50
            Height = 23
            Alignment = taCenter
            DataField = 'ELABEL13'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton88: TToolButton
            Left = 754
            Top = 0
            Width = 8
            Caption = 'ToolButton64'
            ImageIndex = 11
            Style = tbsSeparator
          end
        end
        object ToolBar7: TToolBar
          Left = 0
          Top = 81
          Width = 1186
          Height = 24
          ButtonHeight = 23
          Caption = 'ToolBar1'
          Color = clBtnFace
          EdgeInner = esLowered
          EdgeOuter = esNone
          Flat = True
          ParentColor = False
          TabOrder = 1
          object ToolButton89: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'ToolButton70'
            ImageIndex = 12
            Style = tbsSeparator
          end
          object cxDBSpinEdit1: TcxDBSpinEdit
            Left = 8
            Top = 0
            DataBinding.DataField = 'MAX_FLOAT_POINT1'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 12
            Width = 50
          end
          object ToolButton90: TToolButton
            Left = 58
            Top = 0
            Width = 8
            Caption = 'ToolButton3'
            Style = tbsSeparator
          end
          object cxDBSpinEdit2: TcxDBSpinEdit
            Left = 66
            Top = 0
            DataBinding.DataField = 'MAX_FLOAT_POINT2'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 11
            Width = 50
          end
          object ToolButton91: TToolButton
            Left = 116
            Top = 0
            Width = 8
            Caption = 'ToolButton4'
            ImageIndex = 0
            Style = tbsSeparator
          end
          object cxDBSpinEdit3: TcxDBSpinEdit
            Left = 124
            Top = 0
            DataBinding.DataField = 'MAX_FLOAT_POINT3'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 10
            Width = 50
          end
          object ToolButton92: TToolButton
            Left = 174
            Top = 0
            Width = 8
            Caption = 'ToolButton5'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object cxDBSpinEdit4: TcxDBSpinEdit
            Left = 182
            Top = 0
            DataBinding.DataField = 'MAX_FLOAT_POINT4'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 9
            Width = 50
          end
          object ToolButton93: TToolButton
            Left = 232
            Top = 0
            Width = 8
            Caption = 'ToolButton7'
            ImageIndex = 2
            Style = tbsSeparator
          end
          object cxDBSpinEdit5: TcxDBSpinEdit
            Left = 240
            Top = 0
            DataBinding.DataField = 'MAX_FLOAT_POINT5'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 8
            Width = 50
          end
          object ToolButton94: TToolButton
            Left = 290
            Top = 0
            Width = 8
            Caption = 'ToolButton8'
            ImageIndex = 3
            Style = tbsSeparator
          end
          object cxDBSpinEdit6: TcxDBSpinEdit
            Left = 298
            Top = 0
            DataBinding.DataField = 'MAX_FLOAT_POINT6'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 7
            Width = 50
          end
          object ToolButton95: TToolButton
            Left = 348
            Top = 0
            Width = 8
            Caption = 'ToolButton9'
            ImageIndex = 4
            Style = tbsSeparator
          end
          object cxDBSpinEdit7: TcxDBSpinEdit
            Left = 356
            Top = 0
            DataBinding.DataField = 'MAX_FLOAT_POINT7'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 6
            Width = 50
          end
          object ToolButton96: TToolButton
            Left = 406
            Top = 0
            Width = 8
            Caption = 'ToolButton10'
            ImageIndex = 5
            Style = tbsSeparator
          end
          object cxDBSpinEdit8: TcxDBSpinEdit
            Left = 414
            Top = 0
            DataBinding.DataField = 'MAX_FLOAT_POINT8'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 5
            Width = 50
          end
          object ToolButton97: TToolButton
            Left = 464
            Top = 0
            Width = 8
            Caption = 'ToolButton11'
            ImageIndex = 6
            Style = tbsSeparator
          end
          object cxDBSpinEdit9: TcxDBSpinEdit
            Left = 472
            Top = 0
            DataBinding.DataField = 'MAX_FLOAT_POINT9'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 4
            Width = 50
          end
          object ToolButton98: TToolButton
            Left = 522
            Top = 0
            Width = 8
            Caption = 'ToolButton12'
            ImageIndex = 7
            Style = tbsSeparator
          end
          object cxDBSpinEdit10: TcxDBSpinEdit
            Left = 530
            Top = 0
            DataBinding.DataField = 'MAX_FLOAT_POINT10'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 3
            Width = 50
          end
          object ToolButton99: TToolButton
            Left = 580
            Top = 0
            Width = 8
            Caption = 'ToolButton13'
            ImageIndex = 8
            Style = tbsSeparator
          end
          object cxDBSpinEdit11: TcxDBSpinEdit
            Left = 588
            Top = 0
            DataBinding.DataField = 'MAX_FLOAT_POINT11'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 2
            Width = 50
          end
          object ToolButton100: TToolButton
            Left = 638
            Top = 0
            Width = 8
            Caption = 'ToolButton14'
            ImageIndex = 9
            Style = tbsSeparator
          end
          object cxDBSpinEdit12: TcxDBSpinEdit
            Left = 646
            Top = 0
            DataBinding.DataField = 'MAX_FLOAT_POINT12'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 1
            Width = 50
          end
          object ToolButton101: TToolButton
            Left = 696
            Top = 0
            Width = 8
            Caption = 'ToolButton15'
            ImageIndex = 10
            Style = tbsSeparator
          end
          object cxDBSpinEdit13: TcxDBSpinEdit
            Left = 704
            Top = 0
            DataBinding.DataField = 'MAX_FLOAT_POINT13'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 0
            Width = 50
          end
          object ToolButton102: TToolButton
            Left = 754
            Top = 0
            Width = 8
            Caption = 'ToolButton65'
            ImageIndex = 11
            Style = tbsSeparator
          end
        end
        object ToolBar8: TToolBar
          Left = 0
          Top = 105
          Width = 1186
          Height = 26
          ButtonHeight = 23
          Caption = 'ToolBar3'
          EdgeInner = esLowered
          EdgeOuter = esNone
          Flat = True
          TabOrder = 2
          object ToolButton103: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'ToolButton71'
            ImageIndex = 12
            Style = tbsSeparator
          end
          object cxDBMaskEdit1: TcxDBMaskEdit
            Left = 8
            Top = 0
            DataBinding.DataField = 'MAX_ELE1'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 12
            Width = 50
          end
          object ToolButton104: TToolButton
            Left = 58
            Top = 0
            Width = 8
            Caption = 'ToolButton28'
            Style = tbsSeparator
          end
          object cxDBMaskEdit2: TcxDBMaskEdit
            Left = 66
            Top = 0
            DataBinding.DataField = 'MAX_ELE2'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 11
            Width = 50
          end
          object ToolButton105: TToolButton
            Left = 116
            Top = 0
            Width = 8
            Caption = 'ToolButton29'
            ImageIndex = 0
            Style = tbsSeparator
          end
          object cxDBMaskEdit3: TcxDBMaskEdit
            Left = 124
            Top = 0
            DataBinding.DataField = 'MAX_ELE3'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 10
            Width = 50
          end
          object ToolButton106: TToolButton
            Left = 174
            Top = 0
            Width = 8
            Caption = 'ToolButton30'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object cxDBMaskEdit4: TcxDBMaskEdit
            Left = 182
            Top = 0
            DataBinding.DataField = 'MAX_ELE4'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 9
            Width = 50
          end
          object ToolButton107: TToolButton
            Left = 232
            Top = 0
            Width = 8
            Caption = 'ToolButton31'
            ImageIndex = 2
            Style = tbsSeparator
          end
          object cxDBMaskEdit5: TcxDBMaskEdit
            Left = 240
            Top = 0
            DataBinding.DataField = 'MAX_ELE5'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 8
            Width = 50
          end
          object ToolButton108: TToolButton
            Left = 290
            Top = 0
            Width = 8
            Caption = 'ToolButton32'
            ImageIndex = 3
            Style = tbsSeparator
          end
          object cxDBMaskEdit6: TcxDBMaskEdit
            Left = 298
            Top = 0
            DataBinding.DataField = 'MAX_ELE6'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 7
            Width = 50
          end
          object ToolButton109: TToolButton
            Left = 348
            Top = 0
            Width = 8
            Caption = 'ToolButton33'
            ImageIndex = 4
            Style = tbsSeparator
          end
          object cxDBMaskEdit7: TcxDBMaskEdit
            Left = 356
            Top = 0
            DataBinding.DataField = 'MAX_ELE7'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 6
            Width = 50
          end
          object ToolButton110: TToolButton
            Left = 406
            Top = 0
            Width = 8
            Caption = 'ToolButton34'
            ImageIndex = 5
            Style = tbsSeparator
          end
          object cxDBMaskEdit8: TcxDBMaskEdit
            Left = 414
            Top = 0
            DataBinding.DataField = 'MAX_ELE8'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 5
            Width = 50
          end
          object ToolButton111: TToolButton
            Left = 464
            Top = 0
            Width = 8
            Caption = 'ToolButton35'
            ImageIndex = 6
            Style = tbsSeparator
          end
          object cxDBMaskEdit9: TcxDBMaskEdit
            Left = 472
            Top = 0
            DataBinding.DataField = 'MAX_ELE9'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 4
            Width = 50
          end
          object ToolButton112: TToolButton
            Left = 522
            Top = 0
            Width = 8
            Caption = 'ToolButton36'
            ImageIndex = 7
            Style = tbsSeparator
          end
          object cxDBMaskEdit10: TcxDBMaskEdit
            Left = 530
            Top = 0
            DataBinding.DataField = 'MAX_ELE10'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 3
            Width = 50
          end
          object ToolButton113: TToolButton
            Left = 580
            Top = 0
            Width = 8
            Caption = 'ToolButton37'
            ImageIndex = 8
            Style = tbsSeparator
          end
          object cxDBMaskEdit11: TcxDBMaskEdit
            Left = 588
            Top = 0
            DataBinding.DataField = 'MAX_ELE11'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 2
            Width = 50
          end
          object ToolButton114: TToolButton
            Left = 638
            Top = 0
            Width = 8
            Caption = 'ToolButton38'
            ImageIndex = 9
            Style = tbsSeparator
          end
          object cxDBMaskEdit12: TcxDBMaskEdit
            Left = 646
            Top = 0
            DataBinding.DataField = 'MAX_ELE12'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 1
            Width = 50
          end
          object ToolButton115: TToolButton
            Left = 696
            Top = 0
            Width = 8
            Caption = 'ToolButton39'
            ImageIndex = 10
            Style = tbsSeparator
          end
          object cxDBMaskEdit13: TcxDBMaskEdit
            Left = 704
            Top = 0
            DataBinding.DataField = 'MAX_ELE13'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 0
            Width = 50
          end
          object ToolButton116: TToolButton
            Left = 754
            Top = 0
            Width = 8
            Caption = 'ToolButton66'
            ImageIndex = 11
            Style = tbsSeparator
          end
        end
        object ToolBar9: TToolBar
          Left = 0
          Top = 159
          Width = 1186
          Height = 24
          ButtonHeight = 23
          Caption = 'ToolBar1'
          Color = clBtnFace
          EdgeInner = esLowered
          EdgeOuter = esNone
          Flat = True
          ParentColor = False
          TabOrder = 3
          object ToolButton117: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'ToolButton72'
            ImageIndex = 12
            Style = tbsSeparator
          end
          object cxDBSpinEdit14: TcxDBSpinEdit
            Left = 8
            Top = 0
            DataBinding.DataField = 'MIN_FLOAT_POINT1'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 12
            Width = 50
          end
          object ToolButton118: TToolButton
            Left = 58
            Top = 0
            Width = 8
            Caption = 'ToolButton3'
            Style = tbsSeparator
          end
          object cxDBSpinEdit15: TcxDBSpinEdit
            Left = 66
            Top = 0
            DataBinding.DataField = 'MIN_FLOAT_POINT2'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 11
            Width = 50
          end
          object ToolButton119: TToolButton
            Left = 116
            Top = 0
            Width = 8
            Caption = 'ToolButton4'
            ImageIndex = 0
            Style = tbsSeparator
          end
          object cxDBSpinEdit16: TcxDBSpinEdit
            Left = 124
            Top = 0
            DataBinding.DataField = 'MIN_FLOAT_POINT3'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 10
            Width = 50
          end
          object ToolButton120: TToolButton
            Left = 174
            Top = 0
            Width = 8
            Caption = 'ToolButton5'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object cxDBSpinEdit17: TcxDBSpinEdit
            Left = 182
            Top = 0
            DataBinding.DataField = 'MIN_FLOAT_POINT4'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 9
            Width = 50
          end
          object ToolButton121: TToolButton
            Left = 232
            Top = 0
            Width = 8
            Caption = 'ToolButton7'
            ImageIndex = 2
            Style = tbsSeparator
          end
          object cxDBSpinEdit18: TcxDBSpinEdit
            Left = 240
            Top = 0
            DataBinding.DataField = 'MIN_FLOAT_POINT5'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 8
            Width = 50
          end
          object ToolButton122: TToolButton
            Left = 290
            Top = 0
            Width = 8
            Caption = 'ToolButton8'
            ImageIndex = 3
            Style = tbsSeparator
          end
          object cxDBSpinEdit19: TcxDBSpinEdit
            Left = 298
            Top = 0
            DataBinding.DataField = 'MIN_FLOAT_POINT6'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 7
            Width = 50
          end
          object ToolButton123: TToolButton
            Left = 348
            Top = 0
            Width = 8
            Caption = 'ToolButton9'
            ImageIndex = 4
            Style = tbsSeparator
          end
          object cxDBSpinEdit20: TcxDBSpinEdit
            Left = 356
            Top = 0
            DataBinding.DataField = 'MIN_FLOAT_POINT7'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 6
            Width = 50
          end
          object ToolButton124: TToolButton
            Left = 406
            Top = 0
            Width = 8
            Caption = 'ToolButton10'
            ImageIndex = 5
            Style = tbsSeparator
          end
          object cxDBSpinEdit21: TcxDBSpinEdit
            Left = 414
            Top = 0
            DataBinding.DataField = 'MIN_FLOAT_POINT8'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 5
            Width = 50
          end
          object ToolButton125: TToolButton
            Left = 464
            Top = 0
            Width = 8
            Caption = 'ToolButton11'
            ImageIndex = 6
            Style = tbsSeparator
          end
          object cxDBSpinEdit22: TcxDBSpinEdit
            Left = 472
            Top = 0
            DataBinding.DataField = 'MIN_FLOAT_POINT9'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 4
            Width = 50
          end
          object ToolButton126: TToolButton
            Left = 522
            Top = 0
            Width = 8
            Caption = 'ToolButton12'
            ImageIndex = 7
            Style = tbsSeparator
          end
          object cxDBSpinEdit23: TcxDBSpinEdit
            Left = 530
            Top = 0
            DataBinding.DataField = 'MIN_FLOAT_POINT10'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 3
            Width = 50
          end
          object ToolButton127: TToolButton
            Left = 580
            Top = 0
            Width = 8
            Caption = 'ToolButton13'
            ImageIndex = 8
            Style = tbsSeparator
          end
          object cxDBSpinEdit24: TcxDBSpinEdit
            Left = 588
            Top = 0
            DataBinding.DataField = 'MIN_FLOAT_POINT11'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 2
            Width = 50
          end
          object ToolButton128: TToolButton
            Left = 638
            Top = 0
            Width = 8
            Caption = 'ToolButton14'
            ImageIndex = 9
            Style = tbsSeparator
          end
          object cxDBSpinEdit25: TcxDBSpinEdit
            Left = 646
            Top = 0
            DataBinding.DataField = 'MIN_FLOAT_POINT12'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 1
            Width = 50
          end
          object ToolButton129: TToolButton
            Left = 696
            Top = 0
            Width = 8
            Caption = 'ToolButton15'
            ImageIndex = 10
            Style = tbsSeparator
          end
          object cxDBSpinEdit26: TcxDBSpinEdit
            Left = 704
            Top = 0
            DataBinding.DataField = 'MIN_FLOAT_POINT13'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.AssignedValues.MinValue = True
            Properties.MaxValue = 3.000000000000000000
            TabOrder = 0
            Width = 50
          end
          object ToolButton130: TToolButton
            Left = 754
            Top = 0
            Width = 8
            Caption = 'ToolButton67'
            ImageIndex = 11
            Style = tbsSeparator
          end
        end
        object ToolBar10: TToolBar
          Left = 0
          Top = 183
          Width = 1186
          Height = 26
          ButtonHeight = 23
          Caption = 'ToolBar3'
          EdgeInner = esLowered
          EdgeOuter = esNone
          Flat = True
          TabOrder = 4
          object ToolButton131: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'ToolButton73'
            ImageIndex = 12
            Style = tbsSeparator
          end
          object cxDBMaskEdit14: TcxDBMaskEdit
            Left = 8
            Top = 0
            DataBinding.DataField = 'MIN_ELE1'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 12
            Width = 50
          end
          object ToolButton132: TToolButton
            Left = 58
            Top = 0
            Width = 8
            Caption = 'ToolButton28'
            Style = tbsSeparator
          end
          object cxDBMaskEdit15: TcxDBMaskEdit
            Left = 66
            Top = 0
            DataBinding.DataField = 'MIN_ELE2'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 11
            Width = 50
          end
          object ToolButton133: TToolButton
            Left = 116
            Top = 0
            Width = 8
            Caption = 'ToolButton29'
            ImageIndex = 0
            Style = tbsSeparator
          end
          object cxDBMaskEdit16: TcxDBMaskEdit
            Left = 124
            Top = 0
            DataBinding.DataField = 'MIN_ELE3'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 10
            Width = 50
          end
          object ToolButton134: TToolButton
            Left = 174
            Top = 0
            Width = 8
            Caption = 'ToolButton30'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object cxDBMaskEdit17: TcxDBMaskEdit
            Left = 182
            Top = 0
            DataBinding.DataField = 'MIN_ELE4'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 9
            Width = 50
          end
          object ToolButton135: TToolButton
            Left = 232
            Top = 0
            Width = 8
            Caption = 'ToolButton31'
            ImageIndex = 2
            Style = tbsSeparator
          end
          object cxDBMaskEdit18: TcxDBMaskEdit
            Left = 240
            Top = 0
            DataBinding.DataField = 'MIN_ELE5'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 8
            Width = 50
          end
          object ToolButton136: TToolButton
            Left = 290
            Top = 0
            Width = 8
            Caption = 'ToolButton32'
            ImageIndex = 3
            Style = tbsSeparator
          end
          object cxDBMaskEdit19: TcxDBMaskEdit
            Left = 298
            Top = 0
            DataBinding.DataField = 'MIN_ELE6'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 7
            Width = 50
          end
          object ToolButton137: TToolButton
            Left = 348
            Top = 0
            Width = 8
            Caption = 'ToolButton33'
            ImageIndex = 4
            Style = tbsSeparator
          end
          object cxDBMaskEdit20: TcxDBMaskEdit
            Left = 356
            Top = 0
            DataBinding.DataField = 'MIN_ELE7'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 6
            Width = 50
          end
          object ToolButton138: TToolButton
            Left = 406
            Top = 0
            Width = 8
            Caption = 'ToolButton34'
            ImageIndex = 5
            Style = tbsSeparator
          end
          object cxDBMaskEdit21: TcxDBMaskEdit
            Left = 414
            Top = 0
            DataBinding.DataField = 'MIN_ELE8'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 5
            Width = 50
          end
          object ToolButton139: TToolButton
            Left = 464
            Top = 0
            Width = 8
            Caption = 'ToolButton35'
            ImageIndex = 6
            Style = tbsSeparator
          end
          object cxDBMaskEdit22: TcxDBMaskEdit
            Left = 472
            Top = 0
            DataBinding.DataField = 'MIN_ELE9'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 4
            Width = 50
          end
          object ToolButton140: TToolButton
            Left = 522
            Top = 0
            Width = 8
            Caption = 'ToolButton36'
            ImageIndex = 7
            Style = tbsSeparator
          end
          object cxDBMaskEdit23: TcxDBMaskEdit
            Left = 530
            Top = 0
            DataBinding.DataField = 'MIN_ELE10'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 3
            Width = 50
          end
          object ToolButton141: TToolButton
            Left = 580
            Top = 0
            Width = 8
            Caption = 'ToolButton37'
            ImageIndex = 8
            Style = tbsSeparator
          end
          object cxDBMaskEdit24: TcxDBMaskEdit
            Left = 588
            Top = 0
            DataBinding.DataField = 'MIN_ELE11'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 2
            Width = 50
          end
          object ToolButton142: TToolButton
            Left = 638
            Top = 0
            Width = 8
            Caption = 'ToolButton38'
            ImageIndex = 9
            Style = tbsSeparator
          end
          object cxDBMaskEdit25: TcxDBMaskEdit
            Left = 646
            Top = 0
            DataBinding.DataField = 'MIN_ELE12'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 1
            Width = 50
          end
          object ToolButton143: TToolButton
            Left = 696
            Top = 0
            Width = 8
            Caption = 'ToolButton39'
            ImageIndex = 10
            Style = tbsSeparator
          end
          object cxDBMaskEdit26: TcxDBMaskEdit
            Left = 704
            Top = 0
            DataBinding.DataField = 'MIN_ELE13'
            DataBinding.DataSource = dsSaleRequimentSheet
            Properties.EditMask = '#0.000'
            Properties.MaxLength = 0
            TabOrder = 0
            Width = 50
          end
          object ToolButton144: TToolButton
            Left = 754
            Top = 0
            Width = 8
            Caption = 'ToolButton68'
            ImageIndex = 11
            Style = tbsSeparator
          end
        end
        object cxDBCheckBox2: TcxDBCheckBox
          Left = 5
          Top = 24
          Properties.Alignment = taCenter
          TabOrder = 5
          Width = 57
        end
        object cxDBCheckBox16: TcxDBCheckBox
          Left = 62
          Top = 24
          Properties.Alignment = taCenter
          TabOrder = 6
          Width = 57
        end
        object cxDBCheckBox17: TcxDBCheckBox
          Left = 119
          Top = 24
          Properties.Alignment = taCenter
          TabOrder = 7
          Width = 57
        end
        object cxDBCheckBox18: TcxDBCheckBox
          Left = 176
          Top = 24
          Properties.Alignment = taCenter
          TabOrder = 8
          Width = 56
        end
        object cxDBCheckBox19: TcxDBCheckBox
          Left = 236
          Top = 24
          Properties.Alignment = taCenter
          TabOrder = 9
          Width = 57
        end
        object cxDBCheckBox20: TcxDBCheckBox
          Left = 293
          Top = 24
          Properties.Alignment = taCenter
          TabOrder = 10
          Width = 57
        end
        object cxDBCheckBox21: TcxDBCheckBox
          Left = 358
          Top = 24
          Properties.Alignment = taCenter
          TabOrder = 11
          Width = 57
        end
        object cxDBCheckBox22: TcxDBCheckBox
          Left = 407
          Top = 24
          Properties.Alignment = taCenter
          TabOrder = 12
          Width = 57
        end
        object cxDBCheckBox23: TcxDBCheckBox
          Left = 472
          Top = 24
          Properties.Alignment = taCenter
          TabOrder = 13
          Width = 57
        end
        object cxDBCheckBox24: TcxDBCheckBox
          Left = 529
          Top = 24
          Properties.Alignment = taCenter
          TabOrder = 14
          Width = 57
        end
        object cxDBCheckBox25: TcxDBCheckBox
          Left = 578
          Top = 24
          Properties.Alignment = taCenter
          TabOrder = 15
          Width = 57
        end
        object cxDBCheckBox26: TcxDBCheckBox
          Left = 643
          Top = 24
          Properties.Alignment = taCenter
          TabOrder = 16
          Width = 57
        end
        object cxDBCheckBox27: TcxDBCheckBox
          Left = 700
          Top = 24
          Properties.Alignment = taCenter
          TabOrder = 17
          Width = 57
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Report Display Value'
        ImageIndex = 4
        object cxGroupBox1: TcxGroupBox
          Left = 0
          Top = 0
          Align = alLeft
          Caption = 'Preview :'
          TabOrder = 0
          Height = 327
          Width = 449
          object cxGroupBox2: TcxGroupBox
            Left = 16
            Top = 16
            Caption = 'Line1'
            TabOrder = 0
            Height = 41
            Width = 417
            object cxDBTextEdit1: TcxDBTextEdit
              Left = 8
              Top = 16
              TabOrder = 0
              Width = 393
            end
          end
          object cxGroupBox3: TcxGroupBox
            Left = 16
            Top = 64
            Caption = 'Line2'
            TabOrder = 1
            Height = 41
            Width = 417
            object cxDBTextEdit2: TcxDBTextEdit
              Left = 8
              Top = 16
              TabOrder = 0
              Width = 393
            end
          end
          object cxGroupBox4: TcxGroupBox
            Left = 16
            Top = 112
            Caption = 'Line3'
            TabOrder = 2
            Height = 41
            Width = 417
            object cxDBTextEdit3: TcxDBTextEdit
              Left = 8
              Top = 16
              TabOrder = 0
              Width = 393
            end
          end
          object cxGroupBox5: TcxGroupBox
            Left = 16
            Top = 160
            Caption = 'Line4'
            TabOrder = 3
            Height = 41
            Width = 417
            object cxDBTextEdit4: TcxDBTextEdit
              Left = 8
              Top = 16
              TabOrder = 0
              Width = 393
            end
          end
          object cxGroupBox6: TcxGroupBox
            Left = 16
            Top = 208
            Caption = 'Line5'
            TabOrder = 4
            Height = 41
            Width = 417
            object cxDBTextEdit5: TcxDBTextEdit
              Left = 8
              Top = 16
              TabOrder = 0
              Width = 393
            end
          end
          object cxGroupBox7: TcxGroupBox
            Left = 16
            Top = 256
            Caption = 'Line6'
            TabOrder = 5
            Height = 41
            Width = 417
            object cxDBTextEdit6: TcxDBTextEdit
              Left = 8
              Top = 16
              TabOrder = 0
              Width = 393
            end
          end
        end
      end
      object cxTabSheet3: TcxTabSheet
        Caption = 'Planning Composition'
        ImageIndex = 5
        object ToolBar11: TToolBar
          Left = 0
          Top = 57
          Width = 1186
          Height = 49
          ButtonHeight = 23
          Caption = 'ToolBar1'
          Color = 9927006
          EdgeInner = esLowered
          EdgeOuter = esNone
          Flat = True
          ParentColor = False
          TabOrder = 0
          object ToolButton145: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'ToolButton69'
            ImageIndex = 12
            Style = tbsSeparator
          end
          object DBText28: TDBText
            Left = 8
            Top = 0
            Width = 50
            Height = 23
            Alignment = taCenter
            DataField = 'ELABEL1'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton146: TToolButton
            Left = 58
            Top = 0
            Width = 8
            Caption = 'ToolButton3'
            Style = tbsSeparator
          end
          object DBText29: TDBText
            Left = 66
            Top = 0
            Width = 50
            Height = 23
            Alignment = taCenter
            DataField = 'ELABEL2'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton147: TToolButton
            Left = 116
            Top = 0
            Width = 8
            Caption = 'ToolButton4'
            ImageIndex = 0
            Style = tbsSeparator
          end
          object DBText30: TDBText
            Left = 124
            Top = 0
            Width = 50
            Height = 23
            Alignment = taCenter
            DataField = 'ELABEL3'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton148: TToolButton
            Left = 174
            Top = 0
            Width = 8
            Caption = 'ToolButton5'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object DBText31: TDBText
            Left = 182
            Top = 0
            Width = 50
            Height = 23
            Alignment = taCenter
            DataField = 'ELABEL4'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton149: TToolButton
            Left = 232
            Top = 0
            Width = 8
            Caption = 'ToolButton7'
            ImageIndex = 2
            Style = tbsSeparator
          end
          object DBText32: TDBText
            Left = 240
            Top = 0
            Width = 50
            Height = 23
            Alignment = taCenter
            DataField = 'ELABEL5'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton150: TToolButton
            Left = 290
            Top = 0
            Width = 8
            Caption = 'ToolButton8'
            ImageIndex = 3
            Style = tbsSeparator
          end
          object DBText33: TDBText
            Left = 298
            Top = 0
            Width = 50
            Height = 23
            Alignment = taCenter
            DataField = 'ELABEL6'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton151: TToolButton
            Left = 348
            Top = 0
            Width = 8
            Caption = 'ToolButton9'
            ImageIndex = 4
            Style = tbsSeparator
          end
          object DBText34: TDBText
            Left = 356
            Top = 0
            Width = 50
            Height = 23
            Alignment = taCenter
            DataField = 'ELABEL7'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton152: TToolButton
            Left = 406
            Top = 0
            Width = 8
            Caption = 'ToolButton10'
            ImageIndex = 5
            Style = tbsSeparator
          end
          object DBText35: TDBText
            Left = 414
            Top = 0
            Width = 50
            Height = 23
            Alignment = taCenter
            DataField = 'ELABEL8'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton153: TToolButton
            Left = 464
            Top = 0
            Width = 8
            Caption = 'ToolButton11'
            ImageIndex = 6
            Style = tbsSeparator
          end
          object DBText36: TDBText
            Left = 472
            Top = 0
            Width = 50
            Height = 23
            Alignment = taCenter
            DataField = 'ELABEL9'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton154: TToolButton
            Left = 522
            Top = 0
            Width = 8
            Caption = 'ToolButton12'
            ImageIndex = 7
            Style = tbsSeparator
          end
          object DBText37: TDBText
            Left = 530
            Top = 0
            Width = 50
            Height = 23
            Alignment = taCenter
            DataField = 'ELABEL10'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton155: TToolButton
            Left = 580
            Top = 0
            Width = 8
            Caption = 'ToolButton13'
            ImageIndex = 8
            Style = tbsSeparator
          end
          object DBText38: TDBText
            Left = 588
            Top = 0
            Width = 50
            Height = 23
            Alignment = taCenter
            DataField = 'ELABEL11'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton156: TToolButton
            Left = 638
            Top = 0
            Width = 8
            Caption = 'ToolButton14'
            ImageIndex = 9
            Style = tbsSeparator
          end
          object DBText39: TDBText
            Left = 646
            Top = 0
            Width = 50
            Height = 23
            Alignment = taCenter
            DataField = 'ELABEL12'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton157: TToolButton
            Left = 696
            Top = 0
            Width = 8
            Caption = 'ToolButton15'
            ImageIndex = 10
            Style = tbsSeparator
          end
          object DBText40: TDBText
            Left = 704
            Top = 0
            Width = 50
            Height = 23
            Alignment = taCenter
            DataField = 'ELABEL13'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton158: TToolButton
            Left = 754
            Top = 0
            Width = 8
            Caption = 'ToolButton64'
            ImageIndex = 11
            Style = tbsSeparator
          end
        end
        object ToolBar12: TToolBar
          Left = 0
          Top = 0
          Width = 1186
          Height = 57
          ButtonHeight = 23
          Caption = 'ToolBar1'
          Color = 9927006
          EdgeInner = esLowered
          EdgeOuter = esNone
          Flat = True
          ParentColor = False
          TabOrder = 1
          object ToolButton159: TToolButton
            Left = 0
            Top = 0
            Width = 8
            Caption = 'ToolButton69'
            ImageIndex = 12
            Style = tbsSeparator
          end
          object DBText41: TDBText
            Left = 8
            Top = 0
            Width = 50
            Height = 23
            Alignment = taCenter
            DataField = 'ELABEL1'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton160: TToolButton
            Left = 58
            Top = 0
            Width = 8
            Caption = 'ToolButton3'
            Style = tbsSeparator
          end
          object DBText42: TDBText
            Left = 66
            Top = 0
            Width = 50
            Height = 23
            Alignment = taCenter
            DataField = 'ELABEL2'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton161: TToolButton
            Left = 116
            Top = 0
            Width = 8
            Caption = 'ToolButton4'
            ImageIndex = 0
            Style = tbsSeparator
          end
          object DBText43: TDBText
            Left = 124
            Top = 0
            Width = 50
            Height = 23
            Alignment = taCenter
            DataField = 'ELABEL3'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton162: TToolButton
            Left = 174
            Top = 0
            Width = 8
            Caption = 'ToolButton5'
            ImageIndex = 1
            Style = tbsSeparator
          end
          object DBText44: TDBText
            Left = 182
            Top = 0
            Width = 50
            Height = 23
            Alignment = taCenter
            DataField = 'ELABEL4'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton163: TToolButton
            Left = 232
            Top = 0
            Width = 8
            Caption = 'ToolButton7'
            ImageIndex = 2
            Style = tbsSeparator
          end
          object DBText45: TDBText
            Left = 240
            Top = 0
            Width = 50
            Height = 23
            Alignment = taCenter
            DataField = 'ELABEL5'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton164: TToolButton
            Left = 290
            Top = 0
            Width = 8
            Caption = 'ToolButton8'
            ImageIndex = 3
            Style = tbsSeparator
          end
          object DBText46: TDBText
            Left = 298
            Top = 0
            Width = 50
            Height = 23
            Alignment = taCenter
            DataField = 'ELABEL6'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton165: TToolButton
            Left = 348
            Top = 0
            Width = 8
            Caption = 'ToolButton9'
            ImageIndex = 4
            Style = tbsSeparator
          end
          object DBText47: TDBText
            Left = 356
            Top = 0
            Width = 50
            Height = 23
            Alignment = taCenter
            DataField = 'ELABEL7'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton166: TToolButton
            Left = 406
            Top = 0
            Width = 8
            Caption = 'ToolButton10'
            ImageIndex = 5
            Style = tbsSeparator
          end
          object DBText48: TDBText
            Left = 414
            Top = 0
            Width = 50
            Height = 23
            Alignment = taCenter
            DataField = 'ELABEL8'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton167: TToolButton
            Left = 464
            Top = 0
            Width = 8
            Caption = 'ToolButton11'
            ImageIndex = 6
            Style = tbsSeparator
          end
          object DBText49: TDBText
            Left = 472
            Top = 0
            Width = 50
            Height = 23
            Alignment = taCenter
            DataField = 'ELABEL9'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton168: TToolButton
            Left = 522
            Top = 0
            Width = 8
            Caption = 'ToolButton12'
            ImageIndex = 7
            Style = tbsSeparator
          end
          object DBText50: TDBText
            Left = 530
            Top = 0
            Width = 50
            Height = 23
            Alignment = taCenter
            DataField = 'ELABEL10'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton169: TToolButton
            Left = 580
            Top = 0
            Width = 8
            Caption = 'ToolButton13'
            ImageIndex = 8
            Style = tbsSeparator
          end
          object DBText51: TDBText
            Left = 588
            Top = 0
            Width = 50
            Height = 23
            Alignment = taCenter
            DataField = 'ELABEL11'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton170: TToolButton
            Left = 638
            Top = 0
            Width = 8
            Caption = 'ToolButton14'
            ImageIndex = 9
            Style = tbsSeparator
          end
          object DBText52: TDBText
            Left = 646
            Top = 0
            Width = 50
            Height = 23
            Alignment = taCenter
            DataField = 'ELABEL12'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton171: TToolButton
            Left = 696
            Top = 0
            Width = 8
            Caption = 'ToolButton15'
            ImageIndex = 10
            Style = tbsSeparator
          end
          object DBText53: TDBText
            Left = 704
            Top = 0
            Width = 50
            Height = 23
            Alignment = taCenter
            DataField = 'ELABEL13'
            DataSource = dsSaleRequimentSheet
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ToolButton172: TToolButton
            Left = 754
            Top = 0
            Width = 8
            Caption = 'ToolButton64'
            ImageIndex = 11
            Style = tbsSeparator
          end
        end
        object cxDBCheckBox28: TcxDBCheckBox
          Left = 5
          Top = 24
          Properties.Alignment = taCenter
          TabOrder = 2
          Width = 57
        end
        object cxDBCheckBox29: TcxDBCheckBox
          Left = 62
          Top = 24
          Properties.Alignment = taCenter
          TabOrder = 3
          Width = 57
        end
        object cxDBCheckBox30: TcxDBCheckBox
          Left = 119
          Top = 24
          Properties.Alignment = taCenter
          TabOrder = 4
          Width = 57
        end
        object cxDBCheckBox31: TcxDBCheckBox
          Left = 176
          Top = 24
          Properties.Alignment = taCenter
          TabOrder = 5
          Width = 56
        end
        object cxDBCheckBox32: TcxDBCheckBox
          Left = 236
          Top = 24
          Properties.Alignment = taCenter
          TabOrder = 6
          Width = 57
        end
        object cxDBCheckBox33: TcxDBCheckBox
          Left = 293
          Top = 24
          Properties.Alignment = taCenter
          TabOrder = 7
          Width = 57
        end
        object cxDBCheckBox34: TcxDBCheckBox
          Left = 358
          Top = 24
          Properties.Alignment = taCenter
          TabOrder = 8
          Width = 57
        end
        object cxDBCheckBox35: TcxDBCheckBox
          Left = 407
          Top = 24
          Properties.Alignment = taCenter
          TabOrder = 9
          Width = 57
        end
        object cxDBCheckBox36: TcxDBCheckBox
          Left = 472
          Top = 24
          Properties.Alignment = taCenter
          TabOrder = 10
          Width = 57
        end
        object cxDBCheckBox37: TcxDBCheckBox
          Left = 529
          Top = 24
          Properties.Alignment = taCenter
          TabOrder = 11
          Width = 57
        end
        object cxDBCheckBox38: TcxDBCheckBox
          Left = 578
          Top = 24
          Properties.Alignment = taCenter
          TabOrder = 12
          Width = 57
        end
        object cxDBCheckBox39: TcxDBCheckBox
          Left = 643
          Top = 24
          Properties.Alignment = taCenter
          TabOrder = 13
          Width = 57
        end
        object cxDBCheckBox40: TcxDBCheckBox
          Left = 700
          Top = 24
          Properties.Alignment = taCenter
          TabOrder = 14
          Width = 57
        end
        object cxDBCheckBox41: TcxDBCheckBox
          Left = 5
          Top = 80
          Properties.Alignment = taCenter
          TabOrder = 15
          Width = 57
        end
        object cxDBCheckBox42: TcxDBCheckBox
          Left = 62
          Top = 80
          Properties.Alignment = taCenter
          TabOrder = 16
          Width = 57
        end
        object cxDBCheckBox43: TcxDBCheckBox
          Left = 119
          Top = 80
          Properties.Alignment = taCenter
          TabOrder = 17
          Width = 57
        end
        object cxDBCheckBox44: TcxDBCheckBox
          Left = 176
          Top = 80
          Properties.Alignment = taCenter
          TabOrder = 18
          Width = 56
        end
        object cxDBCheckBox45: TcxDBCheckBox
          Left = 236
          Top = 80
          Properties.Alignment = taCenter
          TabOrder = 19
          Width = 57
        end
        object cxDBCheckBox46: TcxDBCheckBox
          Left = 293
          Top = 80
          Properties.Alignment = taCenter
          TabOrder = 20
          Width = 57
        end
        object cxDBCheckBox47: TcxDBCheckBox
          Left = 358
          Top = 80
          Properties.Alignment = taCenter
          TabOrder = 21
          Width = 57
        end
        object cxDBCheckBox48: TcxDBCheckBox
          Left = 407
          Top = 80
          Properties.Alignment = taCenter
          TabOrder = 22
          Width = 57
        end
        object cxDBCheckBox49: TcxDBCheckBox
          Left = 472
          Top = 80
          Properties.Alignment = taCenter
          TabOrder = 23
          Width = 57
        end
        object cxDBCheckBox50: TcxDBCheckBox
          Left = 529
          Top = 80
          Properties.Alignment = taCenter
          TabOrder = 24
          Width = 57
        end
        object cxDBCheckBox51: TcxDBCheckBox
          Left = 578
          Top = 80
          Properties.Alignment = taCenter
          TabOrder = 25
          Width = 57
        end
        object cxDBCheckBox52: TcxDBCheckBox
          Left = 643
          Top = 80
          Properties.Alignment = taCenter
          TabOrder = 26
          Width = 57
        end
        object cxDBCheckBox53: TcxDBCheckBox
          Left = 700
          Top = 80
          Properties.Alignment = taCenter
          TabOrder = 27
          Width = 57
        end
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 1186
      Height = 330
      Align = alClient
      Caption = 'Panel1'
      TabOrder = 1
      object lbHeader: TLabel
        Left = 1
        Top = 1
        Width = 1184
        Height = 17
        Align = alTop
        Caption = '1.Input item code 2.Select Customer informaton'
        Color = clHighlight
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object cxGrid2: TcxGrid
        Left = 1
        Top = 18
        Width = 1184
        Height = 311
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object cxGrid2DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsCustomer
          DataController.DetailKeyFieldNames = 'DEBTOR_ACCT'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          Styles.Header = SystemMenuDM.cxStyle153
          object cxGrid2DBTableView1DEBTOR_ACCT: TcxGridDBColumn
            DataBinding.FieldName = 'DEBTOR_ACCT'
            Width = 182
          end
          object cxGrid2DBTableView1NAME: TcxGridDBColumn
            DataBinding.FieldName = 'NAME'
            Width = 678
          end
        end
        object cxGrid2DBTableView2: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dataSource
          DataController.DetailKeyFieldNames = 'CUST_CODE'
          DataController.KeyFieldNames = 'ITEM_CODE'
          DataController.MasterKeyFieldNames = 'DEBTOR_ACCT'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellMultiSelect = True
          OptionsView.GroupByBox = False
          object cxGrid2DBTableView2ITEM_CODE: TcxGridDBColumn
            DataBinding.FieldName = 'ITEM_CODE'
          end
          object cxGrid2DBTableView2DESCS: TcxGridDBColumn
            DataBinding.FieldName = 'DESCS'
          end
          object cxGrid2DBTableView2STANDARD_PRICE: TcxGridDBColumn
            DataBinding.FieldName = 'STANDARD_PRICE'
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGrid2DBTableView1
          object cxGrid2Level2: TcxGridLevel
            GridView = cxGrid2DBTableView2
          end
        end
      end
    end
  end
  inherited ImageIconList: TImageList
    Left = 520
    Top = 16
  end
  inherited dataSource: TDataSource
    OnDataChange = dataSourceDataChange
    Left = 536
    Top = 16
  end
  inherited dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 328
    Top = 64
    object dxLayoutOfficeLookAndFeel1: TdxLayoutOfficeLookAndFeel
      ItemOptions.CaptionOptions.TextColor = clNavy
      ItemOptions.ControlBorderStyle = lbsSingle
    end
  end
  inherited searchDialog: TwwSearchDialog
    Selected.Strings = (
      'ITEM_CODE'#9'15'#9'ITEM_CODE'#9#9
      'DESCS'#9'60'#9'DESCS'#9#9
      'CustomerName'#9'60'#9'CustomerName'#9#9
      'REMARKS'#9'800'#9'REMARKS'#9#9
      'UNIT_COST'#9'10'#9'UNIT_COST'#9#9
      'SALE_PRICE'#9'10'#9'SALE_PRICE'#9#9
      'UPDATE_USER'#9'10'#9'UPDATE_USER'#9#9
      'CUST_CODE'#9'10'#9'CUST_CODE'#9#9
      'UOM_CD'#9'4'#9'UOM_CD'#9#9
      'UPDATE_DATE'#9'18'#9'UPDATE_DATE'#9#9
      'STANDARD_PRICE'#9'10'#9'STANDARD_PRICE'#9#9
      'CURRENT_ACTIVE'#9'1'#9'CURRENT_ACTIVE'#9#9)
    Left = 456
    Top = 8
  end
  inherited RecordViewDialog: TwwRecordViewDialog
    Font.Name = 'Tahoma'
    Left = 456
    Top = 48
  end
  object cxLookAndFeelController1: TcxLookAndFeelController
    Left = 609
    Top = 58
  end
  object dsOrderHistory: TDataSource
    DataSet = MasterSetupDM.tbOrderHistory
    Left = 545
    Top = 90
  end
  object dsSaleRequimentSheet: TDataSource
    DataSet = MasterSetupDM.tbSaleItemReqSheet
    OnStateChange = dsSaleRequimentSheetStateChange
    Left = 593
    Top = 26
  end
  object customerSearchDialog: TwwSearchDialog
    GridTitleAlignment = taLeftJustify
    GridColor = clWhite
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    SearchTable = MasterSetupDM.tbCustomerLookup
    Caption = 'Customer Search'
    MaxWidth = 0
    MaxHeight = 209
    CharCase = ecNormal
    Left = 497
    Top = 17
  end
  object dsCustomer: TDataSource
    DataSet = MasterSetupDM.tbCustomerView
    Left = 297
    Top = 78
  end
end

unit SaleQuotationManager;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbstractcxDataBrowse, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, dxBar, Menus,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, fcStatusBar,
  DialogUtils, DBGrids;

type
  TfrmCXSaleQuotaionManager = class(TcxAbstractDataBrowse)
    cxGridDBTableViewDOC_NO: TcxGridDBColumn;
    cxGridDBTableViewDOC_DATE: TcxGridDBColumn;
    cxGridDBTableViewREF_NO: TcxGridDBColumn;
    cxGridDBTableViewDESCS: TcxGridDBColumn;
    cxGridDBTableViewFAX_TO: TcxGridDBColumn;
    cxGridDBTableViewCC_TO: TcxGridDBColumn;
    cxGridDBTableViewNAME: TcxGridDBColumn;
    cxGridDBTableViewTERM_OF_PAYMENT: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1ITEM_CODE: TcxGridDBColumn;
    cxGridDBTableView1ITEM_DESCS: TcxGridDBColumn;
    cxGridDBTableView1QTY: TcxGridDBColumn;
    cxGridDBTableView1UNIT_COST: TcxGridDBColumn;
    dsQuoteItem: TDataSource;
    btDesign: TButton;
    N2: TMenuItem;
    oInvoice1: TMenuItem;
    dxBarButton1: TdxBarButton;
    btToInvoice: TButton;
    mReportQuery: TMemo;
    N3: TMenuItem;
    CloneQuotation1: TMenuItem;
    N4: TMenuItem;
    procedure cxGridDBTableViewSelectionChanged(
      Sender: TcxCustomGridTableView);
    procedure cxGridDBTableViewDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btDesignClick(Sender: TObject);
    procedure btToInvoiceClick(Sender: TObject);
    procedure CloneQuotation1Click(Sender: TObject);

  private
    { Private declarations }
    procedure createSaleInvoice;
  public
    { Public declarations }
   // procedure setupdataset;override;
    procedure doPostAction(Sender: TObject);override;
    procedure doNewAction(Sender: TObject);override;
    procedure doEditAction(Sender: TObject);override;
    procedure doDeleteAction(sender:TObject);override;
    procedure doExitAction(Sender: TObject);override;
    procedure doRefreshAction(Sender: TObject);override;

    procedure doReportFilter(Sender:Tobject);override;
    procedure setupDataSets;override;
    procedure InitComponents;
  end;

var
  frmCXSaleQuotaionManager: TfrmCXSaleQuotaionManager;


implementation
uses SaleOrderDataModule,SaleQuotation, AbstractDataBrowse,ReportDataModule,
  Math;

{$R *.dfm}

procedure TfrmCXSaleQuotaionManager.InitComponents;
begin
  inherited;
  postAction.Caption :='Approve';
  postButton.Action:= postAction;
  postButton.Caption :=postAction.Caption;
  designable :=true;
end;

procedure TfrmCXSaleQuotaionManager.doPostAction(Sender: TObject);
Var docType:TSaleOrderDocumentType;
begin
  if (dsQuoteItem.dataset.RecordCount >0) then
  begin
  with datasource.DataSet do
  begin
      docType:=TYPE_QUOTATION;
      fsuccess :=SaleOrderDataManager.UpdateSaleDocumentStatus(
      FieldByName('cust_code').AsString,
      FieldByName('doc_no').AsString,
     FormatDateTime('mm/dd/yyyy',FieldByName('doc_date').AsDateTime) ,
      docType,
      'A');

      doRefreshAction(sender);
  end;
  end else
  begin
    warning('Could not approve quotation when detail record is empty');
  end;
end;
procedure TfrmCXSaleQuotaionManager.doNewAction(Sender: TObject);
begin
//
  try
    Screen.cursor :=crsqlWait;
    frmCXSaleQuotation := TfrmCXSaleQuotation.create(self,fSelectedObject,'DOC_NO',0);
    frmCXSaleQuotation.FormStyle :=fsMdiChild;
    frmCXSaleQuotation.Top :=0;
    frmCXSaleQuotation.Left :=0;
    frmCXSaleQuotation.frxReport:=reportdm.frxReport;
    frmCXSaleQuotation.reportId:=reportID;
    frmCXSaleQuotation.queryString := queryString;
    frmCXSaleQuotation.Show;

  finally
      Screen.cursor :=crDefault;
  end;

end;
procedure TfrmCXSaleQuotaionManager.doEditAction(Sender: TObject);
begin
  try
       Screen.cursor := crSQLWait;
    fSelectedObject := datasource.DataSet.FieldByName('doc_no').AsString;
    frmCXSaleQuotation := TfrmCXSaleQuotation.create(self,fSelectedObject,'DOC_NO',1);
    frmCXSaleQuotation.FormStyle :=fsMdiChild;
    frmCXSaleQuotation.Top :=0;
    frmCXSaleQuotation.Left :=0;
    frmCXSaleQuotation.frxReport:=reportdm.frxReport;
    frmCXSaleQuotation.reportId:=reportID;
    frmCXSaleQuotation.queryString := queryString;
    frmCXSaleQuotation.Show;
  finally

       Screen.cursor :=crDefault;
  end;
//
end;
procedure TfrmCXSaleQuotaionManager.doDeleteAction(sender:TObject);
begin
 //
end;
procedure TfrmCXSaleQuotaionManager.doExitAction(Sender: TObject);
begin
  CLOSE;
end;
procedure TfrmCXSaleQuotaionManager.doRefreshAction(Sender: TObject);
begin
 datasource.dataset.close;
 datasource.dataset.Open;

end;

procedure TfrmCXSaleQuotaionManager.setupdatasets;
begin
  datasource.dataset :=SaleOrderDataManager.qryUnApproveQuote;
  dsQuoteItem.dataset :=SaleOrderDataManager.tbSaleQuoteDTView
end;

procedure TfrmCXSaleQuotaionManager.cxGridDBTableViewSelectionChanged(
  Sender: TcxCustomGridTableView);
begin
  inherited;
  fSelectedObject := datasource.DataSet.FieldByName(fPkColumnName).AsSTring;
end;

procedure TfrmCXSaleQuotaionManager.cxGridDBTableViewDblClick(
  Sender: TObject);
begin
  inherited;
  doRefreshAction(sender);
end;

procedure TfrmCXSaleQuotaionManager.doReportFilter(SENDER:TOBJECT);
begin
   reportdm.JXQuery.close;

   reportdm.JXNativeQuery.Close;
   reportdm.JXNativeQuery.SQL.Clear;
   reportdm.JXNativeQuery.SQL.Text:=queryString; //assign
   reportdm.JXNativeQuery.Prepare   ;
   Reportdm.JXNativeQuery.ParamByName('PDOCNO').Value :=fSelectedObject;
   reportdm.JXNativeQuery.Open;
   reportdm.JXQuery.open;
   showReport(reportdm.frxReport);

end;

procedure TfrmCXSaleQuotaionManager.FormCreate(Sender: TObject);
begin
  inherited;
  printable:=true;
  designable:= true;
  btPrint.Visible :=printable;
  btDesign.Visible :=designable;
end;

procedure TfrmCXSaleQuotaionManager.btDesignClick(Sender: TObject);
begin
    doReportDesignAction(reportDM.frxReport);

end;

procedure TfrmCXSaleQuotaionManager. createSaleInvoice;
Var invoiceItem:TInvoiceInfo;
_debug :boolean;
begin
try
try
     _debug :=false;
     invoiceItem:=TInvoiceInfo.Create;
     invoiceItem.trxtype:='IV';
     invoiceItem.invoiceno := InputBox('Please Enter Invoice No:','Invoice No:','') ;
    if (invoiceItem.invoiceno <> '') then
    if (Confirm('Do you want to create Sale Invoice from Quotation No: '+fSelectedObject+' to >> Invoiec No:'+invoiceItem.invoiceno+'.?')= mrYes   ) and not (_debug)then
    begin
       if (SaleOrderDataManager.SaleQuotationToInvoice(dataSource.DataSet,invoiceItem))  then
       begin
         if Confirm('Successful create sale invice'+invoiceItem.invoiceno)  = mrYes then
         begin
             debug('Open AR Invoice Window');
         end;
       end;
    end
 except on e:exception do

   errorEx('Error when create invoice '+e.Message);
   // invoiceItem.Free;
 end;
 finally
    invoiceItem.Free;
    doRefreshAction(nil);
 end;

end;

procedure TfrmCXSaleQuotaionManager.btToInvoiceClick(Sender: TObject);
begin
 createSaleInvoice;

end;

procedure TfrmCXSaleQuotaionManager.CloneQuotation1Click(Sender: TObject);
Var newQuote:string   ;
begin
   if confirm('Are you sure? You want to clone quotation ='+fselectedObject)=mrYes then
   begin
      newQuote := InputBox('Enter new document no','New Quotation no:','');
      if newQuote<>'' then
      begin
         fsuccess := SaleOrderDataManager.cloneSaleQuotation(datasource.dataset,newQuote);
      end else
      begin
         warning('Process abort');
      end ;
      IF (fsuccess)  then
      begin
         iNFO('Congratulation new quotation '+newQuote+' is generated');
         Refresh1Click(sender);
      end;
   end;

end;

end.

unit SaleOrderCancelManager;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbstractcxDataBrowse, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, dxBar, Menus,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  StdCtrls, Buttons,ActnList,ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, fcStatusBar,
  dialogUtils, cxLookAndFeelPainters, cxButtons  ;

type
  TfrmCXSaleOrderCancleManager = class(TcxAbstractDataBrowse)
    cxGridDBTableViewORDER_NO: TcxGridDBColumn;
    cxGridDBTableViewORDER_DATE: TcxGridDBColumn;
    cxGridDBTableViewORDER_AMT: TcxGridDBColumn;
    cxGridDBTableViewNAME: TcxGridDBColumn;
    cxGridDBTableViewRemark: TcxGridDBColumn;
    cxButtonClose: TcxButton;
    cxButtonCancel: TcxButton;
    cxButtonExit: TcxButton;
    cxButton1: TcxButton;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1: TcxGridDBTableView;
    dsDetail: TDataSource;
    cxGridDBTableView1ITEM_CODE: TcxGridDBColumn;
    cxGridDBTableView1ITEM_DESCS: TcxGridDBColumn;
    cxGridDBTableView1UNIT_COST: TcxGridDBColumn;
    cxGridDBTableView1TOTAL_AMT: TcxGridDBColumn;
    cxGridDBTableView1REMARKS: TcxGridDBColumn;
    cxGridDBTableView1QTY: TcxGridDBColumn;
    procedure datasourceDataChange(Sender: TObject; Field: TField);
    procedure cxButtonCancelClick(Sender: TObject);
    procedure cxButtonCloseClick(Sender: TObject);
    procedure cxButtonExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure setupdatasets;override;
    procedure doEditAction(Sender:TObject);override;
    procedure doPostAction(Sender:TObject);override;
    procedure InitComponents;
  end;

var
  frmCXSaleOrderCancleManager: TfrmCXSaleOrderCancleManager;

implementation
uses SaleOrderDataModule, AbstractDataBrowse;

{$R *.dfm}

procedure TfrmCXSaleOrderCancleManager.InitComponents;
begin

//
 
  //
end;
procedure TfrmCXSaleOrderCancleManager.setupdatasets;
begin
   datasource.dataset := SaleOrderDataManager.qryApprovedOrder;
   dsDetail.DataSet := SaleOrderDataManager.tbUnapproveOrderDT;
   dsDetail.DataSet.open;

   lbHeader.Caption :='Found '+IntToStr(datasource.dataset.RecordCount)+' approved orders';
   //datasource.dataset.OPEN;
end;


procedure  TfrmCXSaleOrderCancleManager.doEditAction(Sender:TObject);
var comment:String;
begin
      if InputQuery('Enter you comemnt for this canclelation for '+fSelectedObject,'Enter remarks for '+
      fSelectedObject,comment) then
      begin
         if (comment<>'') then
         begin
           with datasource.dataset do
           begin
                fsuccess := SaleOrderDataManager.UpdateSaleDocumentStatusWithComment(
                FieldByName('cust_code').AsString,
                FieldByName('order_no').AsString,
                FormatDateTime('mm/dd/yyyy',FieldByName('order_date').AsDateTime),
                TYPE_ORDER,
                'C',comment);
                IF (fsuccess) then
                begin
                   SaleOrderDataManager.deleteSaleOrderRevsionDetailItem( FieldByName('order_no').AsString,
                    FieldByName('cust_code').AsString )       ;
                   info(fselectedObject+' successful update');
                    doRefreshAction(sender);
                end;
           end;
         end else warning('Comment Could not be blank');
      end
      else
      BEGIN
             warning('Operation has been ignored');
      END;

end;
procedure  TfrmCXSaleOrderCancleManager.doPostAction(Sender:TObject);

begin
  //cLOSE order
     SaleDocumentType := TYPE_ORDER;
     with datasource.dataset do
     begin
        fsuccess := SaleOrderDataManager.UpdateSaleDocumentStatus(
         FieldByName('cust_code').AsString,
         FieldByName('order_no').AsString,
         FormatDateTime('mm/dd/yyyy',FieldByName('order_date').AsDateTime),
         SaleDocumentType,
         'O');
     end;
    if fsuccess then doRefreshAction(sender);
end;

procedure TfrmCXSaleOrderCancleManager.datasourceDataChange(
  Sender: TObject; Field: TField);
begin
  inherited;

   lbHeader.Caption :='Found '+IntToStr(datasource.dataset.RecordCount)+' approved orders';

end;

procedure TfrmCXSaleOrderCancleManager.cxButtonCancelClick(
  Sender: TObject);
begin
  inherited;
  doEditAction(sender);
end;

procedure TfrmCXSaleOrderCancleManager.cxButtonCloseClick(Sender: TObject);
begin
  inherited;
 doPostAction(sender);
end;

procedure TfrmCXSaleOrderCancleManager.cxButtonExitClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfrmCXSaleOrderCancleManager.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
     dsDetail.DataSet.close;
  action:=caFree;
end;

end.

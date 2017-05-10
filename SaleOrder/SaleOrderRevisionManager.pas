unit SaleOrderRevisionManager;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbstractcxDataBrowse, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, dxBar, Menus,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  StdCtrls, Buttons, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, fcStatusBar,SaleUIHelper,DialogUtils,
  DBGrids, wwSpeedButton, wwDBNavigator, wwclearpanel;

type
  TfrmCXSaleOrderRevisionManager = class(TcxAbstractDataBrowse)
    cxGridDBTableViewDOC_DATE: TcxGridDBColumn;
    cxGridDBTableViewDOC_NO: TcxGridDBColumn;
    cxGridDBTableViewFROM_ORDER_DATE: TcxGridDBColumn;
    cxGridDBTableViewTO_ORDER_DATE: TcxGridDBColumn;
    cxGridDBTableViewREVISION_BY: TcxGridDBColumn;
    cxGridDBTableViewDISTRIBUTE_TO: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure setupdatasets;override;
    procedure doEditAction(Sender:TObject) ;override;
    procedure doPostAction(Sender:TObject) ;override;
    procedure doNewAction(Sender:TObject) ;override;
  end;

var
  frmCXSaleOrderRevisionManager: TfrmCXSaleOrderRevisionManager;

implementation
{$R *.dfm}
uses   SaleOrderDataModule,SaleOrderRevisionInputDialog,
  AbstractDataBrowse,SaleOrderRevision;


procedure TfrmCXSaleOrderRevisionManager.setupdatasets;
begin
   datasource.dataset :=  SaleOrderDataManager.qryUnApproveRevision;



end;

procedure TfrmCXSaleOrderRevisionManager.doEditAction(Sender:TObject) ;
begin
  frmCXSaleOrderRevision := TfrmCXSaleOrderRevision.create(SELF,fSelectedObject,'DOC_NO',1);
  ArrangeUI(frmCXSaleOrderRevision);
  frmCXSaleOrderRevision.show;
end;

procedure TfrmCXSaleOrderRevisionManager.doPostAction(Sender:TObject) ;
begin
  //SaleDocumentType:=TYPE_
  SALEDOCUMENTTYPE:=TYPE_REVISION;
  with datasource.dataset do
  begin
     fsuccess := SaleOrderDataManager.UpdateSaleDocumentStatus(
     '',//SALE REVISON CUST_CODE never exists leave it blank 5 Aug,2010
     FieldByName('doc_no').AsString,
     FormatDateTime('mm/dd/yyyy',FieldByName('doc_date').AsDateTime) ,
     SALEDOCUMENTTYPE,
    'A'
    )
  END;
end;

procedure TfrmCXSaleOrderRevisionManager.doNewAction(Sender:TObject) ;
var RevisionNo:string;
begin
   if confirm('Are you want use order revision wizard?') =mrYes then
   begin
   frmSaleRevisionInputDialog := TfrmSaleRevisionInputDialog.Create(self);
   if frmSaleRevisionInputDialog.ShowModal = mrOK  then
   begin
      try
          Cursor :=crSQLWait;
      RevisionNo := SaleOrderDataManager.createNewSaleOrderRevisionHeader(frmSaleRevisionInputDialog.revisionDate.Date);
      if (frmSaleRevisionInputDialog.cbAutoSave.Properties.ValueChecked =true) then
          SaleOrderDataManager.createNewSaleOrderRevisionDetail(
          SaleOrderDataManager.tbRevisionHD);
      frmCXSaleOrderRevision := TfrmCXSaleOrderRevision.create(SELF,RevisionNo,'DOC_NO',1);
      ArrangeUI(frmCXSaleOrderRevision);
      finally
         Cursor :=crDefault;
         frmCXSaleOrderRevision.show;
      end;
   end else
   begin
       frmCXSaleOrderRevision := TfrmCXSaleOrderRevision.create(SELF,RevisionNo,'DOC_NO',0);
      ArrangeUI(frmCXSaleOrderRevision);
      frmCXSaleOrderRevision.show;
   end;
  end
  else warning('Operation abort');
end;



procedure TfrmCXSaleOrderRevisionManager.FormCreate(Sender: TObject);
begin
  inherited;
  postAction.Caption :='Approve';
end;

end.
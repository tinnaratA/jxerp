unit ReportListDialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseDialog, StdCtrls, ExtCtrls, ActnList;

type
  TfrmReportDialog = class(TBaseDialogNew)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    btSelected: TButton;
    btCancel: TButton;
    ComboBoxReports: TComboBox;
    ActionList1: TActionList;
    actionSelect: TAction;
    ActionCancle: TAction;
    procedure btSelectedClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure addToList(toAdd:String);
    function getSelectReport:String;
  end;

var
  frmReportDialog: TfrmReportDialog;

implementation



{$R *.dfm}

procedure   TfrmReportDialog.addToList(toAdd:string);
begin
   ComboBoxReports.Items.Add(toAdd);
   ComboBoxReports.ItemIndex:=0;
end;

function TfrmReportDialog.getSelectReport:string;
begin
     result:= ComboBoxReports.items[ComboBoxReports.itemIndex];
end;

procedure TfrmReportDialog.btSelectedClick(Sender: TObject);
begin
  inherited;
  modalResult:=mrOk    ;
end;

end.

unit SaleOrderRevisionInputDialog;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, Menus, cxLookAndFeelPainters, cxCheckBox, cxButtons,
  cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar;

type
  TfrmSaleRevisionInputDialog = class(TForm)
    Bevel1: TBevel;
    revisionDate: TcxDateEdit;
    cxButtonSave: TcxButton;
    cbAutoSave: TcxCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    cxButtonCancel: TcxButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSaleRevisionInputDialog: TfrmSaleRevisionInputDialog;

implementation

{$R *.dfm}

procedure TfrmSaleRevisionInputDialog.FormCreate(Sender: TObject);
begin
  revisionDate.Date :=Date -30;  //date is always 30 days backward
  cbAutoSave.Checked :=true;
  
end;

end.

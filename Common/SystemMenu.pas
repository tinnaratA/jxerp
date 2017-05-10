unit SystemMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AbstractDataModule,warehousedm, IBQuery, DB, IBCustomDataSet,
  IBTable, cxClasses, cxStyles, cxTL,DialogUtils;


type TUserItem  = class
    private
     id:string; //userid

    public
    username:string;
    deleteable:boolean  ;
    isAdmin:boolean  ;
    editable:boolean  ;
    postable:boolean  ;
    designable:boolean  ;
    constructor create(userId:string)    ;
end;

type
  TSystemMenuDM = class(TAbstractDM)
    qryAdhoc: TIBQuery;
    strepPredefined: TcxStyleRepository;
    styGroupNode: TcxStyle;
    styOptionalNode: TcxStyle;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxStyle29: TcxStyle;
    cxStyle30: TcxStyle;
    cxStyle31: TcxStyle;
    cxStyle32: TcxStyle;
    cxStyle33: TcxStyle;
    cxStyle34: TcxStyle;
    cxStyle35: TcxStyle;
    cxStyle36: TcxStyle;
    cxStyle37: TcxStyle;
    cxStyle38: TcxStyle;
    cxStyle39: TcxStyle;
    cxStyle40: TcxStyle;
    cxStyle41: TcxStyle;
    cxStyle42: TcxStyle;
    cxStyle43: TcxStyle;
    cxStyle44: TcxStyle;
    cxStyle45: TcxStyle;
    cxStyle46: TcxStyle;
    cxStyle47: TcxStyle;
    cxStyle48: TcxStyle;
    cxStyle49: TcxStyle;
    cxStyle50: TcxStyle;
    cxStyle51: TcxStyle;
    cxStyle52: TcxStyle;
    cxStyle53: TcxStyle;
    cxStyle54: TcxStyle;
    cxStyle55: TcxStyle;
    cxStyle56: TcxStyle;
    cxStyle57: TcxStyle;
    cxStyle58: TcxStyle;
    cxStyle59: TcxStyle;
    cxStyle60: TcxStyle;
    cxStyle61: TcxStyle;
    cxStyle62: TcxStyle;
    cxStyle63: TcxStyle;
    cxStyle64: TcxStyle;
    cxStyle65: TcxStyle;
    cxStyle66: TcxStyle;
    cxStyle67: TcxStyle;
    cxStyle68: TcxStyle;
    cxStyle69: TcxStyle;
    cxStyle70: TcxStyle;
    cxStyle71: TcxStyle;
    cxStyle72: TcxStyle;
    cxStyle73: TcxStyle;
    cxStyle74: TcxStyle;
    cxStyle75: TcxStyle;
    cxStyle76: TcxStyle;
    cxStyle77: TcxStyle;
    cxStyle78: TcxStyle;
    cxStyle79: TcxStyle;
    cxStyle80: TcxStyle;
    cxStyle81: TcxStyle;
    cxStyle82: TcxStyle;
    cxStyle83: TcxStyle;
    cxStyle84: TcxStyle;
    cxStyle85: TcxStyle;
    cxStyle86: TcxStyle;
    cxStyle87: TcxStyle;
    cxStyle88: TcxStyle;
    cxStyle89: TcxStyle;
    cxStyle90: TcxStyle;
    cxStyle91: TcxStyle;
    cxStyle92: TcxStyle;
    cxStyle93: TcxStyle;
    cxStyle94: TcxStyle;
    cxStyle95: TcxStyle;
    cxStyle96: TcxStyle;
    cxStyle97: TcxStyle;
    cxStyle98: TcxStyle;
    cxStyle99: TcxStyle;
    cxStyle100: TcxStyle;
    cxStyle101: TcxStyle;
    cxStyle102: TcxStyle;
    cxStyle103: TcxStyle;
    cxStyle104: TcxStyle;
    cxStyle105: TcxStyle;
    cxStyle106: TcxStyle;
    cxStyle107: TcxStyle;
    cxStyle108: TcxStyle;
    cxStyle109: TcxStyle;
    cxStyle110: TcxStyle;
    cxStyle111: TcxStyle;
    cxStyle112: TcxStyle;
    cxStyle113: TcxStyle;
    cxStyle114: TcxStyle;
    cxStyle115: TcxStyle;
    cxStyle116: TcxStyle;
    cxStyle117: TcxStyle;
    cxStyle118: TcxStyle;
    cxStyle119: TcxStyle;
    cxStyle120: TcxStyle;
    cxStyle121: TcxStyle;
    cxStyle122: TcxStyle;
    cxStyle123: TcxStyle;
    cxStyle124: TcxStyle;
    cxStyle125: TcxStyle;
    cxStyle126: TcxStyle;
    cxStyle127: TcxStyle;
    cxStyle128: TcxStyle;
    cxStyle129: TcxStyle;
    cxStyle130: TcxStyle;
    cxStyle131: TcxStyle;
    cxStyle132: TcxStyle;
    cxStyle133: TcxStyle;
    cxStyle134: TcxStyle;
    cxStyle135: TcxStyle;
    cxStyle136: TcxStyle;
    cxStyle137: TcxStyle;
    cxStyle138: TcxStyle;
    cxStyle139: TcxStyle;
    cxStyle140: TcxStyle;
    cxStyle141: TcxStyle;
    cxStyle142: TcxStyle;
    cxStyle143: TcxStyle;
    cxStyle144: TcxStyle;
    cxStyle145: TcxStyle;
    cxStyle146: TcxStyle;
    cxStyle147: TcxStyle;
    cxStyle148: TcxStyle;
    cxStyle149: TcxStyle;
    cxStyle150: TcxStyle;
    cxStyle151: TcxStyle;
    cxStyle152: TcxStyle;
    cxStyle153: TcxStyle;
    cxStyle154: TcxStyle;
    cxStyle155: TcxStyle;
    cxStyle156: TcxStyle;
    cxStyle157: TcxStyle;
    cxStyle158: TcxStyle;
    cxStyle159: TcxStyle;
    cxStyle160: TcxStyle;
    cxStyle161: TcxStyle;
    cxStyle162: TcxStyle;
    cxStyle163: TcxStyle;
    cxStyle164: TcxStyle;
    cxStyle165: TcxStyle;
    cxStyle166: TcxStyle;
    cxStyle167: TcxStyle;
    cxStyle168: TcxStyle;
    cxStyle169: TcxStyle;
    cxStyle170: TcxStyle;
    cxStyle171: TcxStyle;
    cxStyle172: TcxStyle;
    cxStyle173: TcxStyle;
    cxStyle174: TcxStyle;
    cxStyle175: TcxStyle;
    cxStyle176: TcxStyle;
    cxStyle177: TcxStyle;
    cxStyle178: TcxStyle;
    cxStyle179: TcxStyle;
    cxStyle180: TcxStyle;
    cxStyle181: TcxStyle;
    cxStyle182: TcxStyle;
    cxStyle183: TcxStyle;
    cxStyle184: TcxStyle;
    cxStyle185: TcxStyle;
    cxStyle186: TcxStyle;
    cxStyle187: TcxStyle;
    cxStyle188: TcxStyle;
    cxStyle189: TcxStyle;
    cxStyle190: TcxStyle;
    cxStyle191: TcxStyle;
    cxStyle192: TcxStyle;
    cxStyle193: TcxStyle;
    cxStyle194: TcxStyle;
    cxStyle195: TcxStyle;
    cxStyle196: TcxStyle;
    cxStyle197: TcxStyle;
    cxStyle198: TcxStyle;
    cxStyle199: TcxStyle;
    cxStyle200: TcxStyle;
    cxStyle201: TcxStyle;
    cxStyle202: TcxStyle;
    cxStyle203: TcxStyle;
    cxStyle204: TcxStyle;
    cxStyle205: TcxStyle;
    cxStyle206: TcxStyle;
    cxStyle207: TcxStyle;
    cxStyle208: TcxStyle;
    cxStyle209: TcxStyle;
    cxStyle210: TcxStyle;
    cxStyle211: TcxStyle;
    cxStyle212: TcxStyle;
    cxStyle213: TcxStyle;
    cxStyle214: TcxStyle;
    cxStyle215: TcxStyle;
    cxStyle216: TcxStyle;
    cxStyle217: TcxStyle;
    cxStyle218: TcxStyle;
    cxStyle219: TcxStyle;
    cxStyle220: TcxStyle;
    cxStyle221: TcxStyle;
    cxStyle222: TcxStyle;
    cxStyle223: TcxStyle;
    cxStyle224: TcxStyle;
    cxStyle225: TcxStyle;
    cxStyle226: TcxStyle;
    cxStyle227: TcxStyle;
    cxStyle228: TcxStyle;
    cxStyle229: TcxStyle;
    cxStyle230: TcxStyle;
    cxStyle231: TcxStyle;
    cxStyle232: TcxStyle;
    cxStyle233: TcxStyle;
    cxStyle234: TcxStyle;
    cxStyle235: TcxStyle;
    cxStyle236: TcxStyle;
    cxStyle237: TcxStyle;
    cxStyle238: TcxStyle;
    cxStyle239: TcxStyle;
    cxStyle240: TcxStyle;
    cxStyle241: TcxStyle;
    cxStyle242: TcxStyle;
    cxStyle243: TcxStyle;
    cxStyle244: TcxStyle;
    cxStyle245: TcxStyle;
    cxStyle246: TcxStyle;
    cxStyle247: TcxStyle;
    cxStyle248: TcxStyle;
    cxStyle249: TcxStyle;
    cxStyle250: TcxStyle;
    cxStyle251: TcxStyle;
    cxStyle252: TcxStyle;
    cxStyle253: TcxStyle;
    cxStyle254: TcxStyle;
    cxStyle255: TcxStyle;
    cxStyle256: TcxStyle;
    cxStyle257: TcxStyle;
    cxStyle258: TcxStyle;
    cxStyle259: TcxStyle;
    cxStyle260: TcxStyle;
    cxStyle261: TcxStyle;
    cxStyle262: TcxStyle;
    cxStyle263: TcxStyle;
    cxStyle264: TcxStyle;
    cxStyle265: TcxStyle;
    cxStyle266: TcxStyle;
    cxStyle267: TcxStyle;
    cxStyle268: TcxStyle;
    cxStyle269: TcxStyle;
    cxStyle270: TcxStyle;
    cxStyle271: TcxStyle;
    cxStyle272: TcxStyle;
    cxStyle273: TcxStyle;
    cxStyle274: TcxStyle;
    cxStyle275: TcxStyle;
    cxStyle276: TcxStyle;
    cxStyle277: TcxStyle;
    cxStyle278: TcxStyle;
    cxStyle279: TcxStyle;
    cxStyle280: TcxStyle;
    cxStyle281: TcxStyle;
    cxStyle282: TcxStyle;
    cxStyle283: TcxStyle;
    cxStyle284: TcxStyle;
    cxStyle285: TcxStyle;
    cxStyle286: TcxStyle;
    cxStyle287: TcxStyle;
    cxStyle288: TcxStyle;
    cxStyle289: TcxStyle;
    cxStyle290: TcxStyle;
    cxStyle291: TcxStyle;
    cxStyle292: TcxStyle;
    cxStyle293: TcxStyle;
    cxStyle294: TcxStyle;
    cxStyle295: TcxStyle;
    cxStyle296: TcxStyle;
    cxStyle297: TcxStyle;
    cxStyle298: TcxStyle;
    cxStyle299: TcxStyle;
    cxStyle300: TcxStyle;
    cxStyle301: TcxStyle;
    cxStyle302: TcxStyle;
    cxStyle303: TcxStyle;
    cxStyle304: TcxStyle;
    cxStyle305: TcxStyle;
    cxStyle306: TcxStyle;
    cxStyle307: TcxStyle;
    cxStyle308: TcxStyle;
    cxStyle309: TcxStyle;
    cxStyle310: TcxStyle;
    cxStyle311: TcxStyle;
    cxStyle312: TcxStyle;
    cxStyle313: TcxStyle;
    cxStyle314: TcxStyle;
    cxStyle315: TcxStyle;
    cxStyle316: TcxStyle;
    cxStyle317: TcxStyle;
    cxStyle318: TcxStyle;
    cxStyle319: TcxStyle;
    cxStyle320: TcxStyle;
    cxStyle321: TcxStyle;
    cxStyle322: TcxStyle;
    cxStyle323: TcxStyle;
    cxStyle324: TcxStyle;
    cxStyle325: TcxStyle;
    cxStyle326: TcxStyle;
    cxStyle327: TcxStyle;
    cxStyle328: TcxStyle;
    cxStyle329: TcxStyle;
    cxStyle330: TcxStyle;
    cxStyle331: TcxStyle;
    cxStyle332: TcxStyle;
    cxStyle333: TcxStyle;
    cxStyle334: TcxStyle;
    cxStyle335: TcxStyle;
    cxStyle336: TcxStyle;
    cxStyle337: TcxStyle;
    cxStyle338: TcxStyle;
    cxStyle339: TcxStyle;
    cxStyle340: TcxStyle;
    cxStyle341: TcxStyle;
    cxStyle342: TcxStyle;
    cxStyle343: TcxStyle;
    cxStyle344: TcxStyle;
    cxStyle345: TcxStyle;
    cxStyle346: TcxStyle;
    cxStyle347: TcxStyle;
    cxStyle348: TcxStyle;
    cxStyle349: TcxStyle;
    cxStyle350: TcxStyle;
    cxStyle351: TcxStyle;
    cxStyle352: TcxStyle;
    cxStyle353: TcxStyle;
    cxStyle354: TcxStyle;
    cxStyle355: TcxStyle;
    cxStyle356: TcxStyle;
    cxStyle357: TcxStyle;
    cxStyle358: TcxStyle;
    cxStyle359: TcxStyle;
    cxStyle360: TcxStyle;
    cxStyle361: TcxStyle;
    cxStyle362: TcxStyle;
    cxStyle363: TcxStyle;
    cxStyle364: TcxStyle;
    cxStyle365: TcxStyle;
    cxStyle366: TcxStyle;
    cxStyle367: TcxStyle;
    cxStyle368: TcxStyle;
    cxStyle369: TcxStyle;
    cxStyle370: TcxStyle;
    cxStyle371: TcxStyle;
    TreeListStyleSheetDevExpress: TcxTreeListStyleSheet;
    TreeListStyleSheetUserFormat1: TcxTreeListStyleSheet;
    TreeListStyleSheetUserFormat2: TcxTreeListStyleSheet;
    TreeListStyleSheetUserFormat3: TcxTreeListStyleSheet;
    TreeListStyleSheetUserFormat4: TcxTreeListStyleSheet;
    TreeListStyleSheetBrick: TcxTreeListStyleSheet;
    TreeListStyleSheetDesert: TcxTreeListStyleSheet;
    TreeListStyleSheetEggplant: TcxTreeListStyleSheet;
    TreeListStyleSheetLilac: TcxTreeListStyleSheet;
    TreeListStyleSheetMaple: TcxTreeListStyleSheet;
    TreeListStyleSheetMarineHighColor: TcxTreeListStyleSheet;
    TreeListStyleSheetPlumHighColor: TcxTreeListStyleSheet;
    TreeListStyleSheetPumpkinLarge: TcxTreeListStyleSheet;
    TreeListStyleSheetRainyDay: TcxTreeListStyleSheet;
    TreeListStyleSheetRedWhiteBlueVGA: TcxTreeListStyleSheet;
    TreeListStyleSheetRose: TcxTreeListStyleSheet;
    TreeListStyleSheetRoseLarge: TcxTreeListStyleSheet;
    TreeListStyleSheetSlate: TcxTreeListStyleSheet;
    TreeListStyleSheetSpruce: TcxTreeListStyleSheet;
    TreeListStyleSheetStormVGA: TcxTreeListStyleSheet;
    TreeListStyleSheetTealVGA: TcxTreeListStyleSheet;
    TreeListStyleSheetWheat: TcxTreeListStyleSheet;
    TreeListStyleSheetWindowsClassic: TcxTreeListStyleSheet;
    TreeListStyleSheetWindowsClassicLarge: TcxTreeListStyleSheet;
    TreeListStyleSheetWindowsStandard: TcxTreeListStyleSheet;
    TreeListStyleSheetWindowsStandardLarge: TcxTreeListStyleSheet;
    TreeListStyleSheetHighContrast1: TcxTreeListStyleSheet;
    TreeListStyleSheetHighContrast1Large: TcxTreeListStyleSheet;
    TreeListStyleSheetHighContrast2: TcxTreeListStyleSheet;
    TreeListStyleSheetHighContrast2Large: TcxTreeListStyleSheet;
    TreeListStyleSheetHighContrastBlack: TcxTreeListStyleSheet;
    TreeListStyleSheetHighContrastBlackLarge: TcxTreeListStyleSheet;
    TreeListStyleSheetHighContrastWhite: TcxTreeListStyleSheet;
    TreeListStyleSheetHighContrastWhiteLarge: TcxTreeListStyleSheet;
    strepUserDefined: TcxStyleRepository;
    cxStyle372: TcxStyle;
    cxStyle373: TcxStyle;
    cxStyle374: TcxStyle;
    cxStyle375: TcxStyle;
    cxStyle376: TcxStyle;
    cxStyle377: TcxStyle;
    cxStyle378: TcxStyle;
    cxStyle379: TcxStyle;
    cxStyle380: TcxStyle;
    cxStyle381: TcxStyle;
    cxStyle382: TcxStyle;
    cxStyle383: TcxStyle;
    cxStyle384: TcxStyle;
    cxStyle385: TcxStyle;
    cxStyle386: TcxStyle;
    cxStyle387: TcxStyle;
    cxStyle388: TcxStyle;
    cxStyle389: TcxStyle;
    cxStyle390: TcxStyle;
    cxStyle391: TcxStyle;
    cxStyle392: TcxStyle;
    cxStyle393: TcxStyle;
    cxStyle394: TcxStyle;
    cxStyle395: TcxStyle;
    cxStyle396: TcxStyle;
    cxStyle397: TcxStyle;
    TreeListStyleSheetClassic: TcxTreeListStyleSheet;
    TreeListStyleSheetAlternative: TcxTreeListStyleSheet;
    tbSysModule: TIBTable;
    tbSysModuleMODULE_ID: TIBStringField;
    tbSysModuleMODULE_DESCRIPTION: TIBStringField;
    tbSysModuleUPDATE_USER: TIBStringField;
    tbSysModuleUPDATE_DATE: TDateTimeField;
    tbSysMenu: TIBTable;
    qrySysMenuByModuleID: TIBQuery;
    qrySysMenuByModuleIDFORM_NAME: TIBStringField;
    qrySysMenuByModuleIDMENU_INDEX: TSmallintField;
    qrySysMenuByModuleIDMODULE_ID: TIBStringField;
    qrySysMenuByModuleIDMENU_ITEM_INDEX: TSmallintField;
    qrySysMenuByModuleIDFORM_CAPTION: TIBStringField;
    qrySysMenuByModuleIDENABLED: TIBStringField;
    qrySysMenuByModuleIDUPDATE_DATE: TDateTimeField;
    qrySysMenuByModuleIDUPDATE_USER: TIBStringField;
    qrySysMenuByModuleIDFORM_TAG: TSmallintField;
    qrySysMenuByModuleIDHISTORY_CAPTION: TIBStringField;
    qrySysMenuByModuleIDMAIN_MENU_NAME: TIBStringField;
    tbSysGroup: TIBTable;
    tbSysUser: TIBTable;
    tbSysUserMenu: TIBTable;
    tbSysGroupGROUP_ID: TIBStringField;
    tbSysGroupGROUP_NAME: TIBStringField;
    tbSysGroupEDIT_FLAG: TIBStringField;
    tbSysGroupDELETE_FLAG: TIBStringField;
    tbSysGroupINSERT_FLAG: TIBStringField;
    tbSysGroupUPDATE_USER: TIBStringField;
    tbSysGroupUPDATE_DATE: TDateTimeField;
    tbSysGroupDEFAULT_MODULE_ID: TIBStringField;
    tbSysGroupADMIN_USER: TIBStringField;
    tbSysGroupEXECUTE_FLAG: TIBStringField;
    tbSysGroupPOST_FLAG: TIBStringField;
    dsSysUser: TDataSource;
    tbSysUserUSER_ID: TIBStringField;
    tbSysUserUSER_NAME: TIBStringField;
    tbSysUserGROUP_ID: TIBStringField;
    tbSysUserOLD_PASSWORD: TIBStringField;
    tbSysUserCURRENT_PASSWORD: TIBStringField;
    tbSysUserCONFIRM_PASSWORD: TIBStringField;
    tbSysUserUPDATE_USER: TIBStringField;
    tbSysUserUPDATE_DATE: TDateTimeField;
    tbSysUserACTIVED: TIBStringField;
    tbSysUserDEFAULT_MODULE: TIBStringField;
    tbSysUserMenuMODULE_ID: TIBStringField;
    tbSysUserMenuMENU_INDEX: TSmallintField;
    tbSysUserMenuMENU_ITEM_INDEX: TSmallintField;
    tbSysUserMenuFORM_NAME: TIBStringField;
    tbSysUserMenuGROUP_ID: TIBStringField;
    tbSysUserMenuUSER_ID: TIBStringField;
    tbSysUserMenuEDIT_FLAG: TIBStringField;
    tbSysUserMenuDELETE_FLAG: TIBStringField;
    tbSysUserMenuINSERT_FLAG: TIBStringField;
    tbSysUserMenuEXECUTE_FLAG: TIBStringField;
    tbSysUserMenuPOST_FLAG: TIBStringField;
    tbSysUserMenuFORM_CAPTION: TIBStringField;
    tbSysUserMenuMAIN_MENU_NAME: TIBStringField;
    tbSysUserMenuModuleName: TStringField;
    qrySysMenuByModuleIDREPORTID: TIBStringField;
    qrySysMenuByModuleIDQUERYSTRING: TMemoField;
    tbSysMenuFORM_NAME: TIBStringField;
    tbSysMenuMENU_INDEX: TSmallintField;
    tbSysMenuMODULE_ID: TIBStringField;
    tbSysMenuMENU_ITEM_INDEX: TSmallintField;
    tbSysMenuFORM_CAPTION: TIBStringField;
    tbSysMenuENABLED: TIBStringField;
    tbSysMenuUPDATE_DATE: TDateTimeField;
    tbSysMenuUPDATE_USER: TIBStringField;
    tbSysMenuFORM_TAG: TSmallintField;
    tbSysMenuHISTORY_CAPTION: TIBStringField;
    tbSysMenuMAIN_MENU_NAME: TIBStringField;
    tbSysMenuREPORTID: TIBStringField;
    tbSysMenuQUERYSTRING: TMemoField;
  private
    { Private declarations }
  public
    { Public declarations }

    function DeleteSysUserMenuByModuleID(AUID,AMID:String):boolean;
    function DeleteSysUserMenubyUserID(AUID:String):boolean;
    function InsertSysUserMenuFromModuleID(AUID,AMID:String):boolean;

  end;

var
  SystemMenuDM: TSystemMenuDM;

implementation

{$R *.dfm}


{
TUserItem
}

constructor TUserItem.create(userId:String);
 procedure handleError(e:exception);
  begin
     errorex('Could not delete menu'+e.Message);
     //result:=false;
  end;
begin
try
 // result:=true;
  SystemMenuDM.qryAdhoc.Close;
  SystemMenuDM.qryAdhoc.SQL.Text := 'select * from sys_user where user_id='+QuotedStr(userId);
  SystemMenuDM.qryAdhoc.ExecSQL  ;
except on e:exception do
  handleError(e);
end;
 //
end;


function TSystemMenuDM.DeleteSysUserMenuByModuleID(AUID,AMID: String):boolean;

  procedure handleError(e:exception);
  begin
     errorex('Could not delete menu'+e.Message);
     result:=false;
  end;
begin
try
   result:=true;
  qryAdhoc.Close;
  qryAdhoc.SQL.Text := 'delete from sys_user_menus where user_id='+QuotedStr(auid)+
                       ' and module_id='+quotedstr(amid);
  qryAdhoc.ExecSQL  ;
except on e:exception do
  handleError(e);
end;
end;

function TSystemMenuDM.DeleteSysUserMenubyUserID(AUID: String):boolean;

  procedure handleError(e:exception);
  begin
     errorex('Could not delete menu'+e.Message);
     result:=false;
  end;
begin
try
   result:=true;
  qryAdhoc.Close;
  qryAdhoc.SQL.Text := 'delete from sys_user_menus where user_id='+QuotedStr(auid);

  qryAdhoc.ExecSQL  ;
except on e:exception do
  handleError(e);
end;

end;

function TSystemMenuDM.InsertSysUserMenuFromModuleID(AUID,
  AMID: String): boolean;

  procedure handleError(E:Exception);
  begin
     errorex('Could not import menu from'+amid+' ERROR '+E.Message);
    result:=false;
  end;
begin
 result:=true;
 TRY
 qryAdhoc.Close;
 qryAdhoc.SQL.Text := 'execute procedure x_sys_import_menus '+quotedstr(auid)+','+quotedstr(amid);
 qryAdhoc.execSQL;
 EXCEPT ON E:EXCEPTION DO
   HANDLEERROR(E);
 END;
end;

end.

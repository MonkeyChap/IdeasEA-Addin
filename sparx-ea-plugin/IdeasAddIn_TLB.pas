unit IdeasAddIn_TLB;

// ************************************************************************ //
// WARNING
// -------
// The types declared in this file were generated from data read from a
// Type Library. If this type library is explicitly or indirectly (via
// another type library referring to this type library) re-imported, or the
// 'Refresh' command of the Type Library Editor activated while editing the
// Type Library, the contents of this file will be regenerated and all
// manual modifications will be lost.
// ************************************************************************ //

// $Rev: 17244 $
// File generated on 29/06/2010 20:59:48 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Development\IDEAS EA AddIn\IdeasAddIn (1)
// LIBID: {09172305-C64F-46C5-AC65-2DDAFBE5DEAE}
// LCID: 0
// Helpfile:
// HelpString: IdeasAddIn Library
// DepndLst:
//   (1) v2.0 stdole, (C:\Windows\system32\stdole2.tlb)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers.
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}
interface

uses Windows, ActiveX, Classes, Graphics, OleCtrls, OleServer, StdVCL, Variants;



// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:
//   Type Libraries     : LIBID_xxxx
//   CoClasses          : CLASS_xxxx
//   DISPInterfaces     : DIID_xxxx
//   Non-DISP interfaces: IID_xxxx
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  IdeasAddInMajorVersion = 1;
  IdeasAddInMinorVersion = 0;

  LIBID_IdeasAddIn: TGUID = '{09172305-C64F-46C5-AC65-2DDAFBE5DEAE}';

  IID_IAddIn: TGUID = '{229E35FA-65BA-4E87-8CAF-5476140FF19C}';
  CLASS_AddIn: TGUID = '{B4889183-1C9E-480D-AF90-D826022AA7CA}';
  IID_IIdeasForm: TGUID = '{B1BD4841-DEAA-4C27-8096-D4BAF4826CCF}';
  DIID_IIdeasFormEvents: TGUID = '{8534A88C-501E-40E6-98FF-7C85C9919B70}';
  CLASS_IdeasForm: TGUID = '{AECE0DB4-6075-4F30-AFBD-F6FB129D240F}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library
// *********************************************************************//
// Constants for enum TxActiveFormBorderStyle
type
  TxActiveFormBorderStyle = TOleEnum;
const
  afbNone = $00000000;
  afbSingle = $00000001;
  afbSunken = $00000002;
  afbRaised = $00000003;

// Constants for enum TxPrintScale
type
  TxPrintScale = TOleEnum;
const
  poNone = $00000000;
  poProportional = $00000001;
  poPrintToFit = $00000002;

// Constants for enum TxMouseButton
type
  TxMouseButton = TOleEnum;
const
  mbLeft = $00000000;
  mbRight = $00000001;
  mbMiddle = $00000002;

// Constants for enum TxPopupMode
type
  TxPopupMode = TOleEnum;
const
  pmNone = $00000000;
  pmAuto = $00000001;
  pmExplicit = $00000002;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary
// *********************************************************************//
  IAddIn = interface;
  IAddInDisp = dispinterface;
  IIdeasForm = interface;
  IIdeasFormDisp = dispinterface;
  IIdeasFormEvents = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library
// (NOTE: Here we map each CoClass to its Default Interface)
// *********************************************************************//
  AddIn = IAddIn;
  IdeasForm = IIdeasForm;


// *********************************************************************//
// Declaration of structures, unions and aliases.
// *********************************************************************//
  PPUserType1 = ^IFontDisp;
  PPUserType2 = ^IFontDisp; {*}


// *********************************************************************//
// Interface: IAddIn
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {229E35FA-65BA-4E87-8CAF-5476140FF19C}
// *********************************************************************//
  IAddIn = interface(IDispatch)
    ['{229E35FA-65BA-4E87-8CAF-5476140FF19C}']
    function EA_Connect(const Repository: IDispatch): WideString; safecall;
    procedure EA_Disconnect; safecall;
    function EA_GetMenuItems(const Repository: IDispatch; const Location: WideString;
                             const MenuName: WideString): OleVariant; safecall;
    procedure EA_GetMenuState(const Repository: IDispatch; const Location: WideString;
                              const MenuName: WideString; const ItemName: WideString;
                              var IsEnabled: WordBool; var IsChecked: WordBool); safecall;
    procedure EA_MenuClick(const Repository: IDispatch; const Location: WideString;
                           const MenuName: WideString; const ItemName: WideString); safecall;
    procedure EA_ShowHelp(const Repository: IDispatch; const Location: WideString;
                          const MenuName: WideString; const ItemName: WideString); safecall;
    procedure EA_OnContextItemChanged(const Repository: IDispatch; const GUID: WideString;
                                      ot: OleVariant); safecall;
    procedure exportRDF; safecall;
    procedure populateDB; safecall;
    procedure individualType; safecall;
    procedure addGUIDs; safecall;
    procedure EA_FileOpen(const Repository: IDispatch); safecall;
    procedure exportOracle; safecall;
    procedure diagsToIdeas; safecall;
    function EA_OnPostNewElement(const Repository: IDispatch; const Info: IDispatch): WordBool; safecall;
    function EA_OnPostNewConnector(const Repository: IDispatch; const Info: IDispatch): WordBool; safecall;
    function EA_OnContextItemDoubleClicked(const Repository: IDispatch; const GUID: WideString;
                                           ot: OleVariant): WordBool; stdcall;
    function EA_OnPreNewElement(const Repository: IDispatch; const Info: IDispatch): WordBool; safecall;
  end;

// *********************************************************************//
// DispIntf:  IAddInDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {229E35FA-65BA-4E87-8CAF-5476140FF19C}
// *********************************************************************//
  IAddInDisp = dispinterface
    ['{229E35FA-65BA-4E87-8CAF-5476140FF19C}']
    function EA_Connect(const Repository: IDispatch): WideString; dispid 201;
    procedure EA_Disconnect; dispid 202;
    function EA_GetMenuItems(const Repository: IDispatch; const Location: WideString;
                             const MenuName: WideString): OleVariant; dispid 203;
    procedure EA_GetMenuState(const Repository: IDispatch; const Location: WideString;
                              const MenuName: WideString; const ItemName: WideString;
                              var IsEnabled: WordBool; var IsChecked: WordBool); dispid 204;
    procedure EA_MenuClick(const Repository: IDispatch; const Location: WideString;
                           const MenuName: WideString; const ItemName: WideString); dispid 205;
    procedure EA_ShowHelp(const Repository: IDispatch; const Location: WideString;
                          const MenuName: WideString; const ItemName: WideString); dispid 206;
    procedure EA_OnContextItemChanged(const Repository: IDispatch; const GUID: WideString;
                                      ot: OleVariant); dispid 207;
    procedure exportRDF; dispid 208;
    procedure populateDB; dispid 209;
    procedure individualType; dispid 210;
    procedure addGUIDs; dispid 211;
    procedure EA_FileOpen(const Repository: IDispatch); dispid 212;
    procedure exportOracle; dispid 213;
    procedure diagsToIdeas; dispid 214;
    function EA_OnPostNewElement(const Repository: IDispatch; const Info: IDispatch): WordBool; dispid 215;
    function EA_OnPostNewConnector(const Repository: IDispatch; const Info: IDispatch): WordBool; dispid 216;
    function EA_OnContextItemDoubleClicked(const Repository: IDispatch; const GUID: WideString;
                                           ot: OleVariant): WordBool; dispid 217;
    function EA_OnPreNewElement(const Repository: IDispatch; const Info: IDispatch): WordBool; dispid 218;
  end;

// *********************************************************************//
// Interface: IIdeasForm
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B1BD4841-DEAA-4C27-8096-D4BAF4826CCF}
// *********************************************************************//
  IIdeasForm = interface(IDispatch)
    ['{B1BD4841-DEAA-4C27-8096-D4BAF4826CCF}']
    function Get_Visible: WordBool; safecall;
    procedure Set_Visible(Value: WordBool); safecall;
    function Get_AutoScroll: WordBool; safecall;
    procedure Set_AutoScroll(Value: WordBool); safecall;
    function Get_AutoSize: WordBool; safecall;
    procedure Set_AutoSize(Value: WordBool); safecall;
    function Get_AxBorderStyle: TxActiveFormBorderStyle; safecall;
    procedure Set_AxBorderStyle(Value: TxActiveFormBorderStyle); safecall;
    function Get_Caption: WideString; safecall;
    procedure Set_Caption(const Value: WideString); safecall;
    function Get_Color: OLE_COLOR; safecall;
    procedure Set_Color(Value: OLE_COLOR); safecall;
    function Get_Font: IFontDisp; safecall;
    procedure Set_Font(const Value: IFontDisp); safecall;
    procedure _Set_Font(var Value: IFontDisp); safecall;
    function Get_KeyPreview: WordBool; safecall;
    procedure Set_KeyPreview(Value: WordBool); safecall;
    function Get_PixelsPerInch: Integer; safecall;
    procedure Set_PixelsPerInch(Value: Integer); safecall;
    function Get_PrintScale: TxPrintScale; safecall;
    procedure Set_PrintScale(Value: TxPrintScale); safecall;
    function Get_Scaled: WordBool; safecall;
    procedure Set_Scaled(Value: WordBool); safecall;
    function Get_Active: WordBool; safecall;
    function Get_DropTarget: WordBool; safecall;
    procedure Set_DropTarget(Value: WordBool); safecall;
    function Get_HelpFile: WideString; safecall;
    procedure Set_HelpFile(const Value: WideString); safecall;
    function Get_PopupMode: TxPopupMode; safecall;
    procedure Set_PopupMode(Value: TxPopupMode); safecall;
    function Get_ScreenSnap: WordBool; safecall;
    procedure Set_ScreenSnap(Value: WordBool); safecall;
    function Get_SnapBuffer: Integer; safecall;
    procedure Set_SnapBuffer(Value: Integer); safecall;
    function Get_DockSite: WordBool; safecall;
    procedure Set_DockSite(Value: WordBool); safecall;
    function Get_DoubleBuffered: WordBool; safecall;
    procedure Set_DoubleBuffered(Value: WordBool); safecall;
    function Get_AlignDisabled: WordBool; safecall;
    function Get_MouseInClient: WordBool; safecall;
    function Get_VisibleDockClientCount: Integer; safecall;
    function Get_UseDockManager: WordBool; safecall;
    procedure Set_UseDockManager(Value: WordBool); safecall;
    function Get_Enabled: WordBool; safecall;
    procedure Set_Enabled(Value: WordBool); safecall;
    function Get_ExplicitLeft: Integer; safecall;
    function Get_ExplicitTop: Integer; safecall;
    function Get_ExplicitWidth: Integer; safecall;
    function Get_ExplicitHeight: Integer; safecall;
    function Get_AlignWithMargins: WordBool; safecall;
    procedure Set_AlignWithMargins(Value: WordBool); safecall;
    procedure ClearErrors; safecall;
    procedure AddError(const error: WideString); safecall;
    function GetReservedWords: WideString; safecall;
    function Recurse: WordBool; safecall;
    function ResetDirections: WordBool; safecall;
    function FoundationIncluded: WordBool; safecall;
    function FillInSuperSub: WordBool; safecall;
    function ExcludeText: WideString; safecall;
    function CreateNames: WordBool; safecall;
    function RenameNonUnique: WordBool; safecall;
    function SetStereotypes: WordBool; safecall;
    function DefaultStereotype: WideString; safecall;
    procedure SetURL(const URL: WideString); safecall;
    procedure EnableRDFButton; safecall;
    procedure DisableRDFButton; safecall;
    procedure setRepository(const Repository: IDispatch); safecall;
    procedure setAddIn(const newAddIn: IDispatch); safecall;
    function getURL: WideString; safecall;
    property Visible: WordBool read Get_Visible write Set_Visible;
    property AutoScroll: WordBool read Get_AutoScroll write Set_AutoScroll;
    property AutoSize: WordBool read Get_AutoSize write Set_AutoSize;
    property AxBorderStyle: TxActiveFormBorderStyle read Get_AxBorderStyle write Set_AxBorderStyle;
    property Caption: WideString read Get_Caption write Set_Caption;
    property Color: OLE_COLOR read Get_Color write Set_Color;
    property Font: IFontDisp read Get_Font write Set_Font;
    property KeyPreview: WordBool read Get_KeyPreview write Set_KeyPreview;
    property PixelsPerInch: Integer read Get_PixelsPerInch write Set_PixelsPerInch;
    property PrintScale: TxPrintScale read Get_PrintScale write Set_PrintScale;
    property Scaled: WordBool read Get_Scaled write Set_Scaled;
    property Active: WordBool read Get_Active;
    property DropTarget: WordBool read Get_DropTarget write Set_DropTarget;
    property HelpFile: WideString read Get_HelpFile write Set_HelpFile;
    property PopupMode: TxPopupMode read Get_PopupMode write Set_PopupMode;
    property ScreenSnap: WordBool read Get_ScreenSnap write Set_ScreenSnap;
    property SnapBuffer: Integer read Get_SnapBuffer write Set_SnapBuffer;
    property DockSite: WordBool read Get_DockSite write Set_DockSite;
    property DoubleBuffered: WordBool read Get_DoubleBuffered write Set_DoubleBuffered;
    property AlignDisabled: WordBool read Get_AlignDisabled;
    property MouseInClient: WordBool read Get_MouseInClient;
    property VisibleDockClientCount: Integer read Get_VisibleDockClientCount;
    property UseDockManager: WordBool read Get_UseDockManager write Set_UseDockManager;
    property Enabled: WordBool read Get_Enabled write Set_Enabled;
    property ExplicitLeft: Integer read Get_ExplicitLeft;
    property ExplicitTop: Integer read Get_ExplicitTop;
    property ExplicitWidth: Integer read Get_ExplicitWidth;
    property ExplicitHeight: Integer read Get_ExplicitHeight;
    property AlignWithMargins: WordBool read Get_AlignWithMargins write Set_AlignWithMargins;
  end;

// *********************************************************************//
// DispIntf:  IIdeasFormDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B1BD4841-DEAA-4C27-8096-D4BAF4826CCF}
// *********************************************************************//
  IIdeasFormDisp = dispinterface
    ['{B1BD4841-DEAA-4C27-8096-D4BAF4826CCF}']
    property Visible: WordBool dispid 201;
    property AutoScroll: WordBool dispid 202;
    property AutoSize: WordBool dispid 203;
    property AxBorderStyle: TxActiveFormBorderStyle dispid 204;
    property Caption: WideString dispid -518;
    property Color: OLE_COLOR dispid -501;
    property Font: IFontDisp dispid -512;
    property KeyPreview: WordBool dispid 205;
    property PixelsPerInch: Integer dispid 206;
    property PrintScale: TxPrintScale dispid 207;
    property Scaled: WordBool dispid 208;
    property Active: WordBool readonly dispid 209;
    property DropTarget: WordBool dispid 210;
    property HelpFile: WideString dispid 211;
    property PopupMode: TxPopupMode dispid 212;
    property ScreenSnap: WordBool dispid 213;
    property SnapBuffer: Integer dispid 214;
    property DockSite: WordBool dispid 215;
    property DoubleBuffered: WordBool dispid 216;
    property AlignDisabled: WordBool readonly dispid 217;
    property MouseInClient: WordBool readonly dispid 218;
    property VisibleDockClientCount: Integer readonly dispid 219;
    property UseDockManager: WordBool dispid 220;
    property Enabled: WordBool dispid -514;
    property ExplicitLeft: Integer readonly dispid 221;
    property ExplicitTop: Integer readonly dispid 222;
    property ExplicitWidth: Integer readonly dispid 223;
    property ExplicitHeight: Integer readonly dispid 224;
    property AlignWithMargins: WordBool dispid 225;
    procedure ClearErrors; dispid 226;
    procedure AddError(const error: WideString); dispid 227;
    function GetReservedWords: WideString; dispid 228;
    function Recurse: WordBool; dispid 229;
    function ResetDirections: WordBool; dispid 230;
    function FoundationIncluded: WordBool; dispid 231;
    function FillInSuperSub: WordBool; dispid 232;
    function ExcludeText: WideString; dispid 233;
    function CreateNames: WordBool; dispid 234;
    function RenameNonUnique: WordBool; dispid 235;
    function SetStereotypes: WordBool; dispid 236;
    function DefaultStereotype: WideString; dispid 237;
    procedure SetURL(const URL: WideString); dispid 238;
    procedure EnableRDFButton; dispid 239;
    procedure DisableRDFButton; dispid 240;
    procedure setRepository(const Repository: IDispatch); dispid 241;
    procedure setAddIn(const newAddIn: IDispatch); dispid 242;
    function getURL: WideString; dispid 243;
  end;

// *********************************************************************//
// DispIntf:  IIdeasFormEvents
// Flags:     (0)
// GUID:      {8534A88C-501E-40E6-98FF-7C85C9919B70}
// *********************************************************************//
  IIdeasFormEvents = dispinterface
    ['{8534A88C-501E-40E6-98FF-7C85C9919B70}']
    procedure OnActivate; dispid 201;
    procedure OnClick; dispid 202;
    procedure OnCreate; dispid 203;
    procedure OnDblClick; dispid 204;
    procedure OnDestroy; dispid 205;
    procedure OnDeactivate; dispid 206;
    procedure OnKeyPress(var Key: Smallint); dispid 207;
    procedure OnMouseEnter; dispid 208;
    procedure OnMouseLeave; dispid 209;
    procedure OnPaint; dispid 210;
  end;

// *********************************************************************//
// The Class CoAddIn provides a Create and CreateRemote method to
// create instances of the default interface IAddIn exposed by
// the CoClass AddIn. The functions are intended to be used by
// clients wishing to automate the CoClass objects exposed by the
// server of this typelibrary.
// *********************************************************************//
  CoAddIn = class
    class function Create: IAddIn;
    class function CreateRemote(const MachineName: string): IAddIn;
  end;

implementation

uses ComObj;

class function CoAddIn.Create: IAddIn;
begin
  Result := CreateComObject(CLASS_AddIn) as IAddIn;
end;

class function CoAddIn.CreateRemote(const MachineName: string): IAddIn;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AddIn) as IAddIn;
end;

end.


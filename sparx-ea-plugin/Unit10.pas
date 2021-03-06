unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, EA_TLB, EA_Ideas_Lib;

type
  TForm10 = class(TForm)
    Panel1: TPanel;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    CheckBox1: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    rep : iDualRepository;
    package : iDualPackage;
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

procedure TForm10.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TForm10.Button2Click(Sender: TObject);
var
  elements : tStringList;
  errors : tStrings;
  i, j : integer;
  myElem : tElemHolder;
begin
  button1.Enabled := false;

  if (rep <> nil) and (package <> nil) then
  begin
    errors := memo1.Lines;
    runChecks(package,rep,errors,self, checkbox1.Checked);
  end;

  button1.Enabled := true;
end;

procedure TForm10.Button3Click(Sender: TObject);
begin
  memo1.SelectAll;
  memo1.CopyToClipboard;
end;

end.

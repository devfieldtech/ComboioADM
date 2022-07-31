unit UMsgDlg;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Effects,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.Objects, FMX.Layouts;

type
  TFrmmsgDlg = class(TForm)
    layBase: TLayout;
    Layout1: TLayout;
    RecStatusAcao: TRectangle;
    Timer1: TTimer;
    Zlayout: TLayout;
    Layout3: TLayout;
    layBtnControls: TLayout;
    btnConfirmar: TRectangle;
    layBntConfirm: TLayout;
    imgBntConfirm: TImage;
    lblBtnConfirm: TLabel;
    SEffectBtnConfirm: TShadowEffect;
    btnCancel: TRectangle;
    layBtnCancel: TLayout;
    ImgBtnCancel: TImage;
    lblBtnCancel: TLabel;
    SEffectBtnCancel: TShadowEffect;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    Image1: TImage;
    Rectangle4: TRectangle;
    msg: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure btnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    vBntConfirmaMsg,vAguarde :integer;
    vPositionX,
    vPositionY :Single;
    vKeyUp:integer;
  end;

var
  FrmmsgDlg: TFrmmsgDlg;

implementation

{$R *.fmx}

uses UPrincipal;

procedure TFrmmsgDlg.btnCancelClick(Sender: TObject);
begin
  Timer1.Enabled          := FALSE;
  frmPrincipal.vMsgConfirma         :=2;
  Close;
end;

procedure TFrmmsgDlg.btnConfirmarClick(Sender: TObject);
begin
  Timer1.Enabled := FALSE;
  frmPrincipal.vMsgConfirma         :=1;
  Close;
end;

procedure TFrmmsgDlg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Timer1.Enabled := FALSE;
  vAguarde :=0;
end;

procedure TFrmmsgDlg.FormCreate(Sender: TObject);
begin
  vBntConfirmaMsg         :=0;
  vKeyUp                  :=0;
end;

procedure TFrmmsgDlg.FormKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if Key = vkReturn then
 begin
  if vKeyUp=1 then
   btnConfirmarClick(sender)
  else
   vKeyUp:=1;
 end;
end;

procedure TFrmmsgDlg.Timer1Timer(Sender: TObject);
begin
 if RecStatusAcao.Stroke.Color=TAlphaColorRec.Black then
  begin
   RecStatusAcao.Stroke.Kind  :=  TBrushKind.Solid;
   RecStatusAcao.Stroke.Color :=  TAlphaColorRec.Red;
  end
  else
  begin
   RecStatusAcao.Stroke.Kind  :=  TBrushKind.Solid;
   RecStatusAcao.Stroke.Color :=  TAlphaColorRec.Black;
  end;
end;
end.

unit UnitCamera;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.CodeReader, FMX.Objects, FMX.Controls.Presentation,
  FMX.StdCtrls, FMX.Android.Permissions, FMX.Layouts;

type
  TFrmCamera = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    Layout31: TLayout;
    Rectangle16: TRectangle;
    Label1: TLabel;
    btnVoltar: TRectangle;
    Image17: TImage;
    Label19: TLabel;
    AndroidPermissions1: TAndroidPermissions;
    CodeReader1: TCodeReader;
    procedure CodeReader1CodeReady(aCode: string);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnVoltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    codigo : string;
  end;

var
  FrmCamera: TFrmCamera;

implementation

{$R *.fmx}

uses UAbastecimento, UDmDB, UPrincipal;

procedure TFrmCamera.btnVoltarClick(Sender: TObject);
begin
 Close;
end;

procedure TFrmCamera.CodeReader1CodeReady(aCode: string);
begin
  codigo := aCode;
 if codigo.Length>0 then
    Close
end;

procedure TFrmCamera.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 CodeReader1.Stop;
end;

procedure TFrmCamera.FormShow(Sender: TObject);
begin
 CodeReader1.Start
end;

end.

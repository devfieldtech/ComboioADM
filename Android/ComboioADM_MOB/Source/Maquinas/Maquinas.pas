unit Maquinas;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  FMX.Grid.Style, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope, FMX.Ani, FMX.StdCtrls, FMX.ScrollBox,
  FMX.Grid, FMX.ListBox, FMX.Edit, FMX.Controls.Presentation, FMX.Objects,
  FMX.Layouts,FMX.VirtualKeyboard,FMX.Platform, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView;

type
  TfrmMaquinas = class(TForm)
    layListaP: TLayout;
    ToolBar1: TToolBar;
    recToolBar: TRectangle;
    lblCad: TLabel;
    btnFechar: TImage;
    AnimacaoMnu: TFloatAnimation;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    layLista: TLayout;
    layFiltros: TLayout;
    RecGro: TRectangle;
    Label1: TLabel;
    edtQrCode: TEdit;
    edtPrefixoF: TEdit;
    Label14: TLabel;
    SpeedButton1: TSpeedButton;
    layImg: TLayout;
    Rectangle6: TRectangle;
    Layout17: TLayout;
    Layout18: TLayout;
    ToolBar4: TToolBar;
    lblNomeProduto: TLabel;
    Image10: TImage;
    imgVisualizar: TImage;
    ListaMaquinas: TListView;
    ClearEditButton1: TClearEditButton;
    ClearEditButton2: TClearEditButton;
    Rectangle1: TRectangle;
    imgLogoCad: TImage;
    Layout9: TLayout;
    btnSelecionar: TRectangle;
    LaybtnEntrar: TLayout;
    Label4: TLabel;
    Image1: TImage;
    btnBuscar: TRectangle;
    Layout1: TLayout;
    Label25: TLabel;
    Image11: TImage;
    Rectangle2: TRectangle;
    Layout2: TLayout;
    Label2: TLabel;
    Image2: TImage;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure btnSelecionarClick(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure edtPlacaFChangeTracking(Sender: TObject);
    procedure ListaMaquinasItemClickEx(const Sender: TObject;
      ItemIndex: Integer; const LocalClickPos: TPointF;
      const ItemObject: TListItemDrawable);
    procedure ClearEditButton1Click(Sender: TObject);
    procedure ClearEditButton2Click(Sender: TObject);
    procedure ClearEditButton3Click(Sender: TObject);
    procedure Rectangle17Click(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
  private
    procedure Filtro;
    procedure GeraListaMaquinas;
  public
    vIdMaquinaSel,vMarcaModelo,vIdGrupoMaquinaSel:string;
  end;

var
  frmMaquinas: TfrmMaquinas;

implementation

{$R *.fmx}

uses UPrincipal,UDmDB;

procedure TfrmMaquinas.btnBuscarClick(Sender: TObject);
begin
  Filtro;
end;

procedure TfrmMaquinas.btnFecharClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmMaquinas.btnSelecionarClick(Sender: TObject);
begin
 if vIdMaquinaSel.Length=0 then
 begin
   ShowMessage('Selecione uma Maquina!');
   Exit;
 end
 else
 begin
  dmDB.vIdMaquinaSel       := vIdMaquinaSel;
  dmDB.vMarcaModelo        := vMarcaModelo;
  dmDB.vIdGrupoMaquinaSel  := vIdGrupoMaquinaSel;
  Close;
 end;
end;

procedure TfrmMaquinas.ClearEditButton1Click(Sender: TObject);
begin
 Filtro;
end;

procedure TfrmMaquinas.ClearEditButton2Click(Sender: TObject);
begin
 Filtro;
end;

procedure TfrmMaquinas.ClearEditButton3Click(Sender: TObject);
begin
 Filtro;
end;

procedure TfrmMaquinas.edtPlacaFChangeTracking(Sender: TObject);
begin
 Filtro
end;

procedure TfrmMaquinas.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
  Close;
end;

procedure TfrmMaquinas.Filtro;
var
 vFiltrado:integer;
 vFiltro:string;
begin
 with dmdb.TMaquinas,dmdb.TMaquinas.SQL do
 begin
   Clear;
   Add('select * from maquinaveiculo');
   Add('where 1=1');
   if edtPrefixoF.Text.Length>0 then
    Add('AND PREFIXO LIKE'+QuotedStr('%'+edtPrefixoF.Text+'%'));
   if edtQrCode.Text.Length>0 then
    Add('AND qrCode ='+edtQrCode.Text);
   Add('ORDER BY PREFIXO');
   Open;
 end;
 GeraListaMaquinas;
end;

procedure TfrmMaquinas.FormKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
var
  KeyboardService: IFMXVirtualKeyboardService;
begin
 if Key = vkHardwareBack then
 begin
   if TPlatformServices.Current.SupportsPlatformService(IFMXVirtualKeyboardService, IInterface(KeyboardService)) then
    KeyboardService.HideVirtualKeyboard;
   key := 0;
 end;
end;

procedure TfrmMaquinas.FormShow(Sender: TObject);
begin
 frmMaquinas.StyleBook := frmPrincipal.StyleBook1;
 BindSourceDB1.DataSet := nil;
 dmDB.TMaquinas.Close;
 dmDB.TMaquinas.Open();
 BindSourceDB1.DataSet  := dmDB.TMaquinas;
 GeraListaMaquinas;
end;

procedure TfrmMaquinas.GeraListaMaquinas;
var
 item   : TListViewItem;
 txt    : TListItemText;
 txtH   : TListItemPurpose;
 img    : TListItemImage;
 vStatus:string;
begin
 TThread.CreateAnonymousThread(procedure
 begin
  TThread.Synchronize(nil, procedure
  begin
    dmDb.TMaquinas.First;
    ListaMaquinas.Items.Clear;
    while not dmDb.TMaquinas.eof do
     begin
       item := ListaMaquinas.Items.Add;
         with frmMaquinas do
         begin
           with item  do
           begin
             txt      := TListItemText(Objects.FindDrawable('Text8'));
             txt.Text := dmDb.TMaquinasid.AsString;
             txt.TagString := dmDb.TMaquinasidgrupo.AsString;

             txt      := TListItemText(Objects.FindDrawable('Text3'));
             txt.Text := dmDb.TMaquinasprefixo.AsString;

             txt      := TListItemText(Objects.FindDrawable('Text9'));
             txt.Text := 'Modelo:'+dmDb.TMaquinasmodelo.AsString;

             txt      := TListItemText(Objects.FindDrawable('Text5'));
             txt.Text := 'Placa: '+dmDb.TMaquinasplaca.AsString;

             txt      := TListItemText(Objects.FindDrawable('Text4'));
             txt.Text := 'Qr Code: '+dmDb.TMaquinasqrcode.AsString;

             txt      := TListItemText(Objects.FindDrawable('Text6'));
             txt.Text := 'Volume(L) Tanque: '+dmDb.TMaquinasvolumetanque.AsString;

             img := TListItemImage(Objects.FindDrawable('Image14'));
             img.Bitmap     := frmPrincipal.imgMaquina.Bitmap;
           end;
           dmDB.TMaquinas.Next;
         end;
     end;
  end);
 end).Start;
end;

procedure TfrmMaquinas.ListaMaquinasItemClickEx(const Sender: TObject;
  ItemIndex: Integer; const LocalClickPos: TPointF;
  const ItemObject: TListItemDrawable);
begin
 vIdMaquinaSel :=
   TAppearanceListViewItem(ListaMaquinas.Selected).Objects.FindObjectT<TListItemText>
   ('Text8').Text;
 vMarcaModelo :=
   TAppearanceListViewItem(ListaMaquinas.Selected).Objects.FindObjectT<TListItemText>
   ('Text6').Text+'-'+
   TAppearanceListViewItem(ListaMaquinas.Selected).Objects.FindObjectT<TListItemText>
   ('Text7').Text+'-'+
   TAppearanceListViewItem(ListaMaquinas.Selected).Objects.FindObjectT<TListItemText>
   ('Text3').Text;
  vIdGrupoMaquinaSel:=
   TAppearanceListViewItem(ListaMaquinas.Selected).Objects.FindObjectT<TListItemText>
   ('Text8').TagString;
end;

procedure TfrmMaquinas.Rectangle17Click(Sender: TObject);
begin
 Close;
end;

end.

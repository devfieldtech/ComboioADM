unit UApontamento;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  System.Sensors, FMX.MediaLibrary.Actions, FMX.StdActns,
  System.Sensors.Components, FMX.Gestures, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.StdCtrls, FMX.ListBox, FMX.Edit, FMX.Layouts, FMX.Effects,
  FMX.DateTimeCtrls, FMX.ListView, FMX.Controls.Presentation, FMX.Objects, UDmDB,
  UFrameListaApontamento, UnitCamera, UProdutos;

type
  TfrmApontamento = class(TForm)
    layBase: TLayout;
    recPrincipal: TRectangle;
    tbPrincipal: TTabControl;
    tbiLista: TTabItem;
    Rectangle3: TRectangle;
    Layout3: TLayout;
    Layout5: TLayout;
    Layout37: TLayout;
    Rectangle22: TRectangle;
    btnVoltar1: TRectangle;
    Image31: TImage;
    Label4: TLabel;
    Layout38: TLayout;
    btnNovo: TRectangle;
    Image9: TImage;
    Label7: TLabel;
    Lista: TListView;
    Rectangle19: TRectangle;
    Layout2: TLayout;
    Layout4: TLayout;
    edtDataF: TDateEdit;
    Label1: TLabel;
    Layout22: TLayout;
    Label9: TLabel;
    edtMaquinaF: TEdit;
    btnBuscar: TRectangle;
    LaybtnEntrar: TLayout;
    Label25: TLabel;
    Image11: TImage;
    layListCards: TLayout;
    layBtnLista: TLayout;
    btnHabilitaSync: TRectangle;
    Image16: TImage;
    Label32: TLabel;
    btnExcluiItem: TRectangle;
    Image1: TImage;
    lblExcluir: TLabel;
    tbiCad: TTabItem;
    TimerMsg: TTimer;
    Layout7: TLayout;
    Layout67: TLayout;
    Layout39: TLayout;
    Rectangle15: TRectangle;
    Layout40: TLayout;
    btnConfirmarA: TRectangle;
    Image10: TImage;
    Label24: TLabel;
    Rectangle17: TRectangle;
    Image7: TImage;
    Label23: TLabel;
    VertScrollBox4: TVertScrollBox;
    layTBICad: TLayout;
    Rectangle1: TRectangle;
    Layout6: TLayout;
    layBuscaMaquina: TLayout;
    Rectangle2: TRectangle;
    Layout9: TLayout;
    Label2: TLabel;
    Layout34: TLayout;
    edtMaquina: TEdit;
    btnLerQr: TEditButton;
    Image5: TImage;
    Layout14: TLayout;
    Rectangle7: TRectangle;
    Layout15: TLayout;
    Label10: TLabel;
    Label3: TLabel;
    edtData: TDateEdit;
    edtHora: TTimeEdit;
    layHorimetro: TLayout;
    Rectangle8: TRectangle;
    Layout19: TLayout;
    Label12: TLabel;
    edtAplicacaoMateria: TEdit;
    Layout44: TLayout;
    Rectangle20: TRectangle;
    Layout45: TLayout;
    Label34: TLabel;
    Label35: TLabel;
    edtLatitude: TEdit;
    edtLongitude: TEdit;
    Layout18: TLayout;
    Layout10: TLayout;
    Rectangle4: TRectangle;
    Layout11: TLayout;
    Label6: TLabel;
    edtKmAtual: TEdit;
    ClearEditButton3: TClearEditButton;
    Layout12: TLayout;
    Rectangle6: TRectangle;
    Layout13: TLayout;
    Label5: TLabel;
    edtTipoMaterial: TEdit;
    EditButton4: TEditButton;
    ClearEditButton4: TClearEditButton;
    layAlerta: TLayout;
    Rectangle5: TRectangle;
    Layout16: TLayout;
    Layout17: TLayout;
    Rectangle23: TRectangle;
    Label11: TLabel;
    cbxTipoAlerta: TComboBox;
    Layout46: TLayout;
    btnConfirmaAlerta: TRectangle;
    Image15: TImage;
    Label36: TLabel;
    ToolBar1: TToolBar;
    recToolBar: TRectangle;
    lblCad: TLabel;
    btnFechar: TImage;
    tbiImg: TTabItem;
    layImgHorimetro: TLayout;
    Rectangle26: TRectangle;
    VertScrollBox1: TVertScrollBox;
    layFotoHorimetro: TLayout;
    RecImgHrimetro: TRectangle;
    imgHorimetro: TImage;
    btnFotoCaminhao: TRectangle;
    Image12: TImage;
    Label8: TLabel;
    Layout71: TLayout;
    Layout42: TLayout;
    Rectangle21: TRectangle;
    btnVoltarHorimetro: TRectangle;
    Image14: TImage;
    Label31: TLabel;
    laymsg: TLayout;
    RecStatusAcao: TRectangle;
    layBaseMSG: TLayout;
    Layout23: TLayout;
    Layout24: TLayout;
    Layout25: TLayout;
    ShadowEffect14: TShadowEffect;
    layBtnControls: TLayout;
    SEffectBtnConfirm1: TShadowEffect;
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
    lblmsg: TLabel;
    Image8: TImage;
    Layout31: TLayout;
    Rectangle16: TRectangle;
    btnVoltar: TSpeedButton;
    lblPage: TLabel;
    Timer1: TTimer;
    actAcoes: TActionList;
    actMudarAba: TChangeTabAction;
    AcMudarAbaChart: TAction;
    AcMudarAbaDespesas: TAction;
    AcLeft: TAction;
    AcRigth: TAction;
    GestureManager1: TGestureManager;
    GestureManager2: TGestureManager;
    LocationSensor1: TLocationSensor;
    ActionList1: TActionList;
    ActLibrary: TTakePhotoFromLibraryAction;
    ActFoto: TTakePhotoFromCameraAction;
    ClearEditButton1: TClearEditButton;
    procedure btnLerQrClick(Sender: TObject);
    procedure edtMaquinaExit(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnConfirmarAClick(Sender: TObject);
    procedure EditButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure Rectangle17Click(Sender: TObject);
    procedure btnVoltar1Click(Sender: TObject);
    procedure LocationSensor1LocationChanged(Sender: TObject; const OldLocation,
      NewLocation: TLocationCoord2D);
  private
    vIdEscavadeira,vIdMaterial,vIdApontamento,vFlagSync :string;
    vLeituraQR:integer;
    procedure FrameClick(Sender: TObject);
    procedure FrameGesture(Sender: TObject;
     const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure FrameMouseUp(Sender: TObject; Button: TMouseButton;
     Shift: TShiftState; X, Y: Single);
    procedure FrameMouseDown(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Single);
    procedure FrameCanFocus(Sender: TObject;
     var ACanFocus: Boolean);
   //**********************************************************************
  public
    FFrame: TFListaApontamento;
    procedure DestroiFrames;
    procedure GeraListaCards(vFiltro: string);
    procedure MudarAba(ATabItem: TTabItem; sender: TObject);
    procedure Filtro;
  end;

var
  frmApontamento: TfrmApontamento;

implementation

{$R *.fmx}
uses
 UPrincipal;

procedure TfrmApontamento.Filtro;
var
 vFiltro:string;
begin
 vFiltro :='';
 if edtMaquinaF.Text.Length>0 then
 begin
   vFiltro := vFiltro+' and dataoperacao='+FormatDateTime('yyyy-mm-dd',edtDataF.Date).QuotedString;
   vFiltro := vFiltro+' and Maquina like '+QuotedStr('%'+edtMaquinaF.Text+'%')
 end
 else
 begin
   vFiltro := vFiltro+' and dataoperacao='+FormatDateTime('yyyy-mm-dd',edtDataF.Date).QuotedString;
 end;
 GeraListaCards(vFiltro);
end;

procedure TfrmApontamento.FormShow(Sender: TObject);
begin
 lblPage.Text            := 'Apontamento';
 layBtnLista.Visible     := false;
 tbPrincipal.TabPosition := TTabPosition.None;
 tbPrincipal.ActiveTab   := tbiLista;
 Filtro;
end;

procedure TfrmApontamento.FrameCanFocus(Sender: TObject; var ACanFocus: Boolean);
begin
 if ACanFocus then
  FFrame.RecBack.Fill.Color := TAlphaColorRec.Lime
 else
  FFrame.RecBack.Fill.Color := TAlphaColorRec.White;
end;

procedure TfrmApontamento.FrameClick(Sender: TObject);
begin
  vIdApontamento     := TFListaApontamento(sender).lblMaquina.TagString;
  vFlagSync          := intToStr(TFListaApontamento(sender).Tag);
  FFrame.SetFocus;
end;

procedure TfrmApontamento.FrameGesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  layBtnLista.Visible := true;
end;

procedure TfrmApontamento.FrameMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
   TFrame(sender).Opacity := 0.5;
end;

procedure TfrmApontamento.FrameMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
   TFrame(sender).Opacity := 1;
end;

procedure TfrmApontamento.GeraListaCards(vFiltro: string);
var
  ListaCards:Tlistbox;
  item: TListBoxItem;
  vImgBomba,vImgHorimetro,vImgkm :TImage;
begin
//   FreeAndNil(ListaCards);
   DestroiFrames;

   ListaCards        := TListBox.Create(self);
   ListaCards.Parent := layListCards;
   ListaCards.Align  := TAlignLayout.Client;
   ListaCards.Touch.GestureManager := GestureManager1;

   dmDB.AbreApontamento(vFiltro);
   dmDB.TApontamento.First;
   while not dmDB.TApontamento.eof do
   begin
    ListaCards.BeginUpdate;
    item := TListBoxItem.Create(self);
    FFrame := TFListaApontamento.Create(self);
    FFrame.Name:= 'Item_'+dmDB.TApontamentoid.AsString;

    FFrame.Parent                    := item;
    FFrame.Align                     := TAlignLayout.Client;
    FFrame.HitTest                   := true;
    FFrame.Tag                       := dmDB.TApontamentosyncaws.AsInteger;
    FFrame.TagString                 := dmDB.TApontamentoid.AsString;
    FFrame.OnMouseDown               := FrameMouseDown;
    FFrame.OnMouseUp                 := FrameMouseUp;
    FFrame.OnClick                   := FrameClick;
    FFrame.OnCanFocus                := FrameCanFocus;
    FFrame.Touch.GestureManager      := GestureManager1;
    FFrame.Touch.InteractiveGestures := [TInteractiveGesture.LongTap];
    FFrame.OnGesture                 := FrameGesture;

    item.Height            := 226;
    item.Margins.Left      := 10;
    item.Margins.Right     := 10;
    item.Margins.Top       := 10;
    item.Margins.Bottom    := 10;

    FFrame.lblMaquina.Text                  := dmDB.TApontamentoMaquina.AsString;
    FFrame.lblMaquina.TagString             := dmDB.TApontamentoid.AsString;

    FFrame.lblData.Text                     := dmDB.TApontamentodataoperacao.AsString;

    FFrame.lblHora.Text                     := dmDB.TApontamentohorainicio.AsString;

    FFrame.lblKMAtualEscavadeira.Text       := dmDB.TApontamentokmatualescavadeira.AsString;

    FFrame.lblTipoMaterial.Text             := dmDB.TApontamentoProdutos.AsString;
    FFrame.lblAplicacaoMateria.Text         := dmDB.TApontamentoaplicacaoproduto.AsString;
    FFrame.lblStatus.Text                   := dmDB.TApontamentoStatusSTR.AsString;

//    vImgBomba                  := TImage.Create(self);
//    vImgBomba.Name             := 'img_'+dmDB.TApontamentoid.AsString;
//    vImgBomba.Parent           := FFrame.layImg;
//    vImgBomba.Align            := TAlignLayout.Left;
//    vImgBomba.Width            := 90;
//    vImgBomba.Width            := 55;
//    vImgBomba.Margins.Left     := 10;
//    vImgBomba.Bitmap           := FFrame.imgBomba.Bitmap;
//    vImgBomba.Tag              := dmDB.TApontamentoid.AsInteger;
//    vImgBomba.TagString        := dmDB.TApontamentoimg2.AsString;
//    vImgBomba.OnClick          := imgBombaClick;
//
//    vImgHorimetro                  := TImage.Create(self);
//    vImgHorimetro.Name             := 'imgh_'+dmDB.TApontamentoid.AsString;
//    vImgHorimetro.Parent           := FFrame.layImg;
//    vImgHorimetro.Align            := TAlignLayout.Left;
//    vImgHorimetro.Width            := 90;
//    vImgHorimetro.Width            := 55;
//    vImgHorimetro.Margins.Left     := 10;
//    vImgHorimetro.Bitmap           := FFrame.imgHorimetro.Bitmap;
//    vImgHorimetro.Tag              := dmDB.TApontamentoid.AsInteger;
//    vImgHorimetro.TagString        := dmDB.TApontamentoimg.AsString;
//    vImgHorimetro.OnClick          := imgHorimetroClick;
//
//
//    vImgKM                         := TImage.Create(self);
//    vImgKM.Name                    := 'imgK_'+dmDB.TApontamentoid.AsString;
//    vImgKM.Parent                  := FFrame.layImg;
//    vImgKM.Align                   := TAlignLayout.Left;
//    vImgKM.Width                   := 90;
//    vImgKM.Width                   := 55;
//    vImgKM.Margins.Left            := 10;
//    vImgKM.Bitmap                  := FFrame.imgKM.Bitmap;
//    vImgKM.Tag                     := dmDB.TApontamentoid.AsInteger;
//    vImgKM.TagString               := dmDB.TApontamentoimg3.AsString;
//    vImgKM.OnClick                 := imgKMClick;

//    FFrame.imgHorimetro.Tag       := dmDB.TApontamentoid.AsInteger;
//    FFrame.imgHorimetro.TagString := dmDB.TApontamentoimg.AsString;
//    FFrame.imgHorimetro.OnClick   := imgHorimetroClick;
//
//
//    FFrame.imgkm.Tag              := dmDB.TApontamentoid.AsInteger;
//    FFrame.imgkm.TagString        := dmDB.TApontamentoimg3.AsString;
//    FFrame.imgkm.OnClick          := imgKMClick;

    item.Parent                   := ListaCards;

    ListaCards.EndUpdate;
    dmDB.TApontamento.Next;
  end;
end;

procedure TfrmApontamento.LocationSensor1LocationChanged(Sender: TObject;
  const OldLocation, NewLocation: TLocationCoord2D);
begin
  edtLatitude.Text  := Format('%2.6f', [NewLocation.Latitude]);
  edtLongitude.Text := Format('%2.6f', [NewLocation.Longitude]);
end;

procedure TfrmApontamento.btnBuscarClick(Sender: TObject);
begin
  Filtro;
end;

procedure TfrmApontamento.btnConfirmarAClick(Sender: TObject);
begin
 if edtMaquina.Text.Length=0 then
 begin
   ShowMessage('Informe a escavadeira!');
   Exit;
 end;

 if edtTipoMaterial.Text.Length=0 then
 begin
   ShowMessage('Informe o Tipo Material!');
   Exit;
 end;

 if edtAplicacaoMateria.Text.Length=0 then
 begin
   ShowMessage('Informe a Aplicação do Material!');
   Exit;
 end;

 dmDB.TApontamentoidusuario.AsString            := dmDB.vIdUser;
 dmDB.TApontamentoidcentrocusto.AsString        := dmDB.vIdCentroCusto;
 dmDB.TApontamentoidescavadeira.AsString        := vIdEscavadeira;
 dmDB.TApontamentoidproduto.AsString            := vIdMaterial;
 dmDB.TApontamentodataoperacao.AsDateTime       := date;
 dmDB.TApontamentohorainicio.AsDateTime         := now;
 if edtAplicacaoMateria.Text.Length>0 then
   dmDB.TApontamentoaplicacaoproduto.AsString   := edtAplicacaoMateria.Text;
 if edtKmAtual.Text.Length>0 then
   dmDB.TApontamentokmatualescavadeira.AsString := edtKmAtual.Text;
 dmDB.TApontamentoidproduto.AsString            := vIdMaterial;
 try
   dmDB.TApontamento.ApplyUpdates(-1);
   ShowMessage('Apontamento Adicionada com sucesso!!');
   Filtro;
   tbPrincipal.ActiveTab := tbiLista;
  except
   on E: Exception do
   begin
    frmPrincipal.ReproduzSom('Opa Erro');
    ShowMessage('Erro ao salvar Abastecimento:'+E.Message);
   end;
  end;
end;

procedure TfrmApontamento.btnLerQrClick(Sender: TObject);
begin
  if Not Assigned(FrmCamera) then
   Application.CreateForm(TFrmCamera, FrmCamera);
  FrmCamera.ShowModal(procedure(ModalResult: TModalResult)
  begin
     if dmDB.AbriMaquinaPrefixo(FrmCamera.codigo) then
     begin
       ShowMessage('Maquina Não Encontrado');
       edtMaquina.Text :='';
       Exit;
     end
     else
     begin
      vLeituraQR                   := 1;
      vIdEscavadeira               := dmDB.TMaquinasid.AsString;
      edtMaquina.Text              := dmDB.TMaquinasprefixo.AsString;
      edtMaquina.Enabled           := false;
     end;
  end);
end;

procedure TfrmApontamento.btnNovoClick(Sender: TObject);
begin
  LocationSensor1.Active   := false;
  LocationSensor1.Active   := true;
  edtMaquina.Text          :='';
  edtKmAtual.Text          :='';
  edtTipoMaterial.Text     :='';
  edtAplicacaoMateria.Text :='';
  if dmDB.VerificaApontamentoAberto then
  begin
   dmDB.TApontamento.Insert;
   MudarAba(tbiCad,sender);
  end
  else
   ShowMessage('Existe apontamento em aberto finalize antes!');
end;

procedure TfrmApontamento.btnVoltar1Click(Sender: TObject);
begin
   MudarAba(tbiLista,Sender);
end;

procedure TfrmApontamento.MudarAba(ATabItem: TTabItem; sender: TObject);
begin
  actMudarAba.Tab := ATabItem;
  actMudarAba.ExecuteTarget(sender);
end;

procedure TfrmApontamento.Rectangle17Click(Sender: TObject);
begin
  MudarAba(tbiLista,Sender);
end;

procedure TfrmApontamento.DestroiFrames;
var
  i : Integer;
begin
  for i := ComponentCount - 1 downto 0 do
  begin
   If (Components[i] is TFrame) then
     TFrame(Components[i]).Destroy;
  end;
end;

procedure TfrmApontamento.EditButton4Click(Sender: TObject);
begin
  if Not Assigned(frmProdutos) then
   frmProdutos:= TfrmProdutos.Create(nil);
  frmprodutos.vTipo :=1;
  frmProdutos.ShowModal(procedure(ModalResult: TModalResult)
  begin
   edtTipoMaterial.Text  := frmProdutos.vNomeProduto;
   vIdMaterial           := frmProdutos.vIdProduto;
  end);
end;

procedure TfrmApontamento.edtMaquinaExit(Sender: TObject);
begin
 if (vLeituraQR=0) and (edtMaquina.Text.Length>3) then
 begin
   if dmDB.AbriMaquinaPrefixo(edtMaquina.Text) then
     begin
       ShowMessage('Maquina Não Encontrado');
       edtMaquina.Text :='';
       Exit;
     end
     else
     begin
       vLeituraQR                   := 0;
       vIdEscavadeira               := dmDB.TMaquinasid.AsString;
       edtMaquina.Text              := dmDB.TMaquinasprefixo.AsString;
       edtMaquina.Enabled           := false;
     end;
 end;
end;

end.

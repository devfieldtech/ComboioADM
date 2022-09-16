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
  UFrameListaApontamento, UnitCamera, UProdutos,DB,System.Permissions,u99Permissions,
  FMX.DialogService,FMX.Platform,Androidapi.Helpers,Androidapi.JNI.Os,Soap.EncdDecd,
  FMX.Memo.Types, FMX.ScrollBox, FMX.Memo;

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
    btnFotoCaminhao: TRectangle;
    Image12: TImage;
    Label8: TLabel;
    layBtnConfirma: TLayout;
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
    tbiViagens: TTabItem;
    Rectangle9: TRectangle;
    Rectangle10: TRectangle;
    Layout8: TLayout;
    Layout20: TLayout;
    Layout36: TLayout;
    Label21: TLabel;
    lblkmAtual: TLabel;
    Layout47: TLayout;
    Layout1: TLayout;
    Label13: TLabel;
    lblData: TLabel;
    Label15: TLabel;
    lblHora: TLabel;
    lblEscavadeira: TLabel;
    Layout21: TLayout;
    Label14: TLabel;
    lblTipoMaterial: TLabel;
    Layout26: TLayout;
    Label16: TLabel;
    lblAplicacaoMaterial: TLabel;
    Layout27: TLayout;
    Rectangle11: TRectangle;
    Image2: TImage;
    Label17: TLabel;
    Layout28: TLayout;
    Rectangle13: TRectangle;
    Image4: TImage;
    Label19: TLabel;
    ListaViagens: TListView;
    imgTruck: TImage;
    RecBuscaCaminhao: TRectangle;
    Layout29: TLayout;
    Label18: TLabel;
    Layout30: TLayout;
    btnConfirmaViagem: TRectangle;
    Image6: TImage;
    Label20: TLabel;
    Label26: TLabel;
    tbiBuscaPrefixo: TTabItem;
    layTecladoPrefixo: TLayout;
    recTeclado: TRectangle;
    GridLayLetras: TGridLayout;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    Button24: TButton;
    Button25: TButton;
    Button23: TButton;
    Button21: TButton;
    Button22: TButton;
    Button26: TButton;
    GridLayNumeros: TGridLayout;
    Button27: TButton;
    Z: TButton;
    Button29: TButton;
    Button30: TButton;
    Button31: TButton;
    Button32: TButton;
    Button47: TButton;
    Button48: TButton;
    Button49: TButton;
    Button50: TButton;
    Button28: TButton;
    Rectangle12: TRectangle;
    Layout33: TLayout;
    Label27: TLabel;
    Layout35: TLayout;
    Layout41: TLayout;
    edtPrefixo: TEdit;
    edtCaminhaoFoto: TEdit;
    Rectangle14: TRectangle;
    btnVoltarPrefixo: TRectangle;
    Image13: TImage;
    Label28: TLabel;
    Layout43: TLayout;
    Rectangle18: TRectangle;
    Label29: TLabel;
    lblTotalViagens: TLabel;
    layBtnExcluiViagem: TLayout;
    btnExcluirViagem: TRectangle;
    Image18: TImage;
    Label33: TLabel;
    Layout48: TLayout;
    Rectangle24: TRectangle;
    Layout49: TLayout;
    Label30: TLabel;
    btnQRCaminhao: TEditButton;
    Image3: TImage;
    Label22: TLabel;
    Rectangle25: TRectangle;
    imgHorimetro: TImage;
    Layout50: TLayout;
    Layout51: TLayout;
    Rectangle27: TRectangle;
    Layout52: TLayout;
    Label37: TLabel;
    edtKMDestino: TEdit;
    ClearEditButton2: TClearEditButton;
    edtObs: TEdit;
    ClearEditButton5: TClearEditButton;
    Layout32: TLayout;
    imgConfirme: TImage;
    imgBackspace: TImage;
    Layout53: TLayout;
    Label38: TLabel;
    cbxStatus: TComboBox;
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
    procedure btnQRCaminhaoClick(Sender: TObject);
    procedure btnVoltarHorimetroClick(Sender: TObject);
    procedure btnFotoCaminhaoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ActFotoDidFinishTaking(Image: TBitmap);
    procedure btnConfirmaViagemClick(Sender: TObject);
    procedure Rectangle11Click(Sender: TObject);
    procedure btnFotoCaminhaoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btnFotoCaminhaoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure EditButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure imgBackspaceClick(Sender: TObject);
    procedure imgConfirmeClick(Sender: TObject);
    procedure edtPrefixoEnter(Sender: TObject);
    procedure edtCaminhaoFotoClick(Sender: TObject);
    procedure btnVoltarPrefixoClick(Sender: TObject);
    procedure btnExcluiItemClick(Sender: TObject);
    procedure btnHabilitaSyncClick(Sender: TObject);
    procedure ListaViagensItemClickEx(const Sender: TObject; ItemIndex: Integer;
      const LocalClickPos: TPointF; const ItemObject: TListItemDrawable);
    procedure layListCardsClick(Sender: TObject);
    procedure edtMaquinaFClick(Sender: TObject);
    procedure ListaViagensGesture(Sender: TObject;
      const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure ListaViagensClick(Sender: TObject);
    procedure Rectangle25Click(Sender: TObject);
    procedure btnExcluirViagemClick(Sender: TObject);
    procedure edtMaquinaClick(Sender: TObject);
  private
    ClipService: IFMXClipboardService;
    vIdEscavadeira,vIdMaterial,vIdApontamento,vFlagSync,vIdCaminhao :string;
    vLeituraQR,vEscavadeira:integer;

    vLatitude,vLongitude,vImgCad64,vIdViagem,vFlagSyncViagem:string;
    vTipoAlerta,vErro:integer;
    permissao : T99Permissions;
    FImageStream: TStringStream;

    Location: TLocationCoord2D;
    FGeocoder: TGeocoder;
    Access_Fine_Location, Access_Coarse_Location : string;
    PermissaoCamera, PermissaoReadStorage, PermissaoWriteStorage : string;

    procedure TakePicturePermissionRequestResult(
        Sender: TObject; const APermissions: TArray<string>;
        const AGrantResults: TArray<TPermissionStatus>);

    procedure DisplayMessageCamera(Sender: TObject;
                const APermissions: TArray<string>;
                const APostProc: TProc);

    procedure LibraryPermissionRequestResult(
        Sender: TObject; const APermissions: TArray<string>;
        const AGrantResults: TArray<TPermissionStatus>);

    procedure DisplayMessageLibrary(Sender: TObject;
                const APermissions: TArray<string>;
                const APostProc: TProc);

    procedure DisplayRationale(Sender: TObject;
              const APermissions: TArray<string>; const APostRationaleProc: TProc);

     procedure LocationPermissionRequestResult
                (Sender: TObject; const APermissions: TArray<string>;
                const AGrantResults: TArray<TPermissionStatus>);





    procedure FrameGesture(Sender: TObject;
     const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure FrameMouseUp(Sender: TObject; Button: TMouseButton;
     Shift: TShiftState; X, Y: Single);
    procedure FrameMouseDown(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Single);
    procedure FrameCanFocus(Sender: TObject;
     var ACanFocus: Boolean);

    procedure FrameClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnFinalizarClick(Sender: TObject);
    procedure btnViagensClick(Sender: TObject);

    function BitmapFromBase64(const base64: string): TBitmap;
    function Base64FromBitmap(Bitmap: TBitmap): string;
   //**********************************************************************
  public
    FFrame: TFListaApontamento;
    procedure DestroiFrames;
    procedure GeraListaCards(vFiltro: string);
    procedure GeraListaViagens(vIdApontamento:string);
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
 vStatus:integer;
begin
 vStatus := cbxStatus.ItemIndex;
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
 if vStatus=1 then
  vFiltro := vFiltro+' and a.status=1';
 if vStatus=2 then
  vFiltro := vFiltro+' and a.status=2';
 GeraListaCards(vFiltro);
end;

procedure TfrmApontamento.FormCreate(Sender: TObject);
begin
 permissao               := T99Permissions.Create;
  if NOT permissao.VerifyCameraAccess then
   permissao.Camera(nil, nil);
 {$IFDEF ANDROID}
  if not TPlatformServices.Current.SupportsPlatformService(IFMXClipboardService, IInterface(ClipService)) then
   ClipService := nil;
  Access_Coarse_Location := JStringToString(TJManifest_permission.JavaClass.ACCESS_COARSE_LOCATION);
  Access_Fine_Location   := JStringToString(TJManifest_permission.JavaClass.ACCESS_FINE_LOCATION);
  PermissionsService.RequestPermissions([Access_Coarse_Location,
                                                       Access_Fine_Location],
                                                       LocationPermissionRequestResult,
                                                       DisplayRationale);
  PermissaoCamera       := JStringToString(TJManifest_permission.JavaClass.CAMERA);
  PermissaoReadStorage  := JStringToString(TJManifest_permission.JavaClass.READ_EXTERNAL_STORAGE);
  PermissaoWriteStorage := JStringToString(TJManifest_permission.JavaClass.WRITE_EXTERNAL_STORAGE);

 {$ENDIF}
end;

procedure TfrmApontamento.FormDestroy(Sender: TObject);
begin
  permissao.DisposeOf;
end;

procedure TfrmApontamento.FormShow(Sender: TObject);
begin
 layBtnExcluiViagem.Visible := false;
 lblPage.Text               := 'Apontamento';
 layBtnLista.Visible        := false;
 tbPrincipal.TabPosition    := TTabPosition.None;
 tbPrincipal.ActiveTab      := tbiLista;
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
  vIdApontamento     := TFListaApontamento(sender).TagString;
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
  vImgEdit,vImgViagens,vImgFinalizar :TImage;
begin
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

    item.Height            := 245;
    item.Margins.Left      := 10;
    item.Margins.Right     := 10;
    item.Margins.Top       := 10;
    item.Margins.Bottom    := 10;

    FFrame.lblMaquina.Text                  := dmDB.TApontamentoMaquina.AsString;
    FFrame.lblMaquina.TagString             := dmDB.TApontamentoid.AsString;

    FFrame.lblData.Text                     := dmDB.TApontamentodataoperacao.AsString;

    FFrame.lblHora.Text                     := dmDB.TApontamentohorainicio.AsString;

    FFrame.lblKMAtualEscavadeira.Text       := dmDB.TApontamentokmatualescavadeira.AsString;
    FFrame.lblKMDestinoEscavadeira.Text     := dmDB.TApontamentokmdestinoescavadeira.AsString;

    FFrame.lblTipoMaterial.Text             := dmDB.TApontamentoProdutos.AsString;
    FFrame.lblAplicacaoMateria.Text         := dmDB.TApontamentoaplicacaoproduto.AsString;
    FFrame.lblStatus.Text                   := dmDB.TApontamentoStatusSTR.AsString;
    FFrame.lblTotalViagens.Text             := intToStr(dmDB.VerificaQtdViagensApontamento(dmDB.TApontamentoID.AsString));


    vImgEdit                 := TImage.Create(self);
    vImgEdit.Name            := 'img_Editar_'+dmDB.TApontamentoid.AsString;
    vImgEdit.Parent          := FFrame.btnEditar;
    vImgEdit.Align           := TAlignLayout.Client;
    vImgEdit.Bitmap          := FFrame.imgEditar.Bitmap;
    vImgEdit.TagString       := dmDB.TApontamentoid.AsString;
    vImgEdit.OnClick         := btnEditarClick;

    vImgFinalizar            := TImage.Create(self);
    vImgFinalizar.Name       := 'img_Finalizar_'+dmDB.TApontamentoid.AsString;
    vImgFinalizar.Parent     := FFrame.btnFinalizar;
    vImgFinalizar.Align      := TAlignLayout.Client;
    vImgFinalizar.Bitmap     := FFrame.imgFinalizar.Bitmap;
    vImgFinalizar.TagString  := dmDB.TApontamentoid.AsString;
    vImgFinalizar.OnClick    := btnFinalizarClick;

    vImgViagens              := TImage.Create(self);
    vImgViagens.Name         := 'img_Viagem_'+dmDB.TApontamentoid.AsString;
    vImgViagens.Parent       := FFrame.btnViagens;
    vImgViagens.Align        := TAlignLayout.Client;
    vImgViagens.Bitmap       := FFrame.imgViagens.Bitmap;
    vImgViagens.TagString    := dmDB.TApontamentoid.AsString;
    vImgViagens.OnClick      := btnViagensClick;

    item.Parent                             := ListaCards;

    ListaCards.EndUpdate;
    dmDB.TApontamento.Next;
  end;
end;

procedure TfrmApontamento.GeraListaViagens(vIdApontamento:string);
var
 item   : TListViewItem;
 txt    : TListItemText;
 txtH   : TListItemPurpose;
 img    : TListItemImage;
 vStatus:string;
begin
 ListaViagens.Items.Clear;
 dmDB.AbreApontamentoValores('and idapontamento='+vIdApontamento);
 if not dmDb.TApontamentoValores.isempty then
 begin
   TThread.CreateAnonymousThread(procedure
   begin
    TThread.Synchronize(nil, procedure
    begin
      dmDb.TApontamentoValores.First;
      while not dmDb.TApontamentoValores.eof do
       begin
         item := ListaViagens.Items.Add;
           with frmApontamento do
           begin
             with item  do
             begin
               txt      := TListItemText(Objects.FindDrawable('Text3'));
               txt.Text := dmDb.TApontamentoValores.FieldByName('Maquina').AsString;
               txt.TagString := dmDb.TApontamentoValores.FieldByName('id').AsString;

               txt      := TListItemText(Objects.FindDrawable('Text5'));
               txt.Text := 'Ordem:';
               txt.TagString := dmDb.TApontamentoValores.FieldByName('id').AsString;

               txt      := TListItemText(Objects.FindDrawable('Text4'));
               txt.Text := dmDb.TApontamentoValores.FieldByName('Item').AsString;

               txt      := TListItemText(Objects.FindDrawable('Text6'));
               txt.Text := 'Hora:';

               txt      := TListItemText(Objects.FindDrawable('Text7'));
               txt.Text := dmDb.TApontamentoValores.FieldByName('horaoperacao').AsString;

               img := TListItemImage(Objects.FindDrawable('Image14'));
               img.Bitmap     := imgTruck.Bitmap;
             end;
             dmDb.TApontamentoValores.Next;
           end;
           lblTotalViagens.Text := intToStr(ListaViagens.ItemCount);
       end;
    end);
   end).Start;
 end;
end;

procedure TfrmApontamento.imgBackspaceClick(Sender: TObject);
begin
  if edtPrefixo.Text.Length>=1 then
    edtPrefixo.Text := copy(edtPrefixo.Text,0,edtPrefixo.Text.Length-1)
  else
    edtPrefixo.Text :='';
end;

procedure TfrmApontamento.imgConfirmeClick(Sender: TObject);
begin
 if (edtPrefixo.Text.Length>0) then
 begin
   if dmDB.AbriMaquinaPrefixoManual(edtPrefixo.Text) then
     begin
       ShowMessage('Maquina Não Encontrado');
       edtMaquina.Text :='';
       Exit;
     end
     else
     begin
       ShowMessage('Maquina Encontrado com sucesso!');
       vLeituraQR                   := 0;
       if vEscavadeira = 0 then
       begin
         vIdCaminhao                  := dmDB.TMaquinasid.AsString;
         MudarAba(tbiImg,sender)
       end;
       if vEscavadeira = 1 then
       begin
         vIdEscavadeira               := dmDB.TMaquinasid.AsString;
         MudarAba(tbiCad,sender)
       end;
     end;
 end;
end;

procedure TfrmApontamento.layListCardsClick(Sender: TObject);
begin
  layBtnLista.Visible        := false;
end;

procedure TfrmApontamento.LibraryPermissionRequestResult(Sender: TObject;
  const APermissions: TArray<string>;
  const AGrantResults: TArray<TPermissionStatus>);
begin
  if (Length(AGrantResults) = 2) and
  (AGrantResults[0] = TPermissionStatus.Granted) and
  (AGrantResults[1] = TPermissionStatus.Granted) then
   ActLibrary.Execute
  else
   ShowMessage('Você não tem permissão para acessar as fotos');
end;

procedure TfrmApontamento.ListaViagensClick(Sender: TObject);
begin
 layBtnExcluiViagem.Visible := false;
end;

procedure TfrmApontamento.ListaViagensGesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
   layBtnExcluiViagem.Visible := true;
end;

procedure TfrmApontamento.ListaViagensItemClickEx(const Sender: TObject;
  ItemIndex: Integer; const LocalClickPos: TPointF;
  const ItemObject: TListItemDrawable);
begin
  vIdViagem   := TAppearanceListViewItem(ListaViagens.Selected).Objects.FindObjectT<TListItemText>
  ('Text3').TagString;
end;

procedure TfrmApontamento.LocationPermissionRequestResult(Sender: TObject;
  const APermissions: TArray<string>;
  const AGrantResults: TArray<TPermissionStatus>);
var
         x : integer;
begin
  if (Length(AGrantResults) = 2) and
    (AGrantResults[0] = TPermissionStatus.Granted) and
    (AGrantResults[1] = TPermissionStatus.Granted) then
  begin
    LocationSensor1.Active := true;
  end
  else
  begin
    ShowMessage
      ('Não é possível acessar o GPS porque o app não possui acesso');
    vLatitude  := 'Sem Permissão';
    vLongitude := 'Sem Permissão';
  end;
end;

procedure TfrmApontamento.LocationSensor1LocationChanged(Sender: TObject;
  const OldLocation, NewLocation: TLocationCoord2D);
begin
  edtLatitude.Text  := Format('%2.6f', [NewLocation.Latitude]);
  edtLongitude.Text := Format('%2.6f', [NewLocation.Longitude]);
end;

function TfrmApontamento.Base64FromBitmap(Bitmap: TBitmap): string;
var
  Input: TBytesStream;
  Output: TStringStream;
begin
  Input := TBytesStream.Create;
  try
    Bitmap.Resize(300,300);
    Bitmap.SaveToStream(Input);
    Input.Position := 0;
    Output := TStringStream.Create('', TEncoding.ASCII);
    try
      Soap.EncdDecd.EncodeStream(Input, Output);
      Result := Output.DataString;
    finally
      Output.Free;
    end;
  finally
    Input.Free;
  end;
end;

function TfrmApontamento.BitmapFromBase64(const base64: string): TBitmap;
var
  Input: TStringStream;
  Output: TBytesStream;
begin
  Input := TStringStream.Create(base64, TEncoding.ASCII);
  try
    Output := TBytesStream.Create;
    try
      Soap.EncdDecd.DecodeStream(Input, Output);
      Output.Position := 0;
      Result := TBitmap.Create;
      try
        Result.LoadFromStream(Output);
      except
        Result.Free;
        raise;
      end;
    finally
      Output.Free;
    end;
  finally
    Input.Free;
  end;
end;

procedure TfrmApontamento.ActFotoDidFinishTaking(Image: TBitmap);
begin
   imgHorimetro.Bitmap.Assign(Image);
   if not imgHorimetro.Bitmap.IsEmpty then
    vImgCad64              := Base64FromBitmap(imgHorimetro.Bitmap);
end;

procedure TfrmApontamento.btnBuscarClick(Sender: TObject);
begin
  layBtnLista.Visible        := false;
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

 if dmDB.TApontamento.State=dsInsert then
 begin
  dmDB.TApontamentoidusuario.AsString             := dmDB.vIdUser;
  dmDB.TApontamentoidcentrocusto.AsString         := dmDB.vIdCentroCusto;
  dmDB.TApontamentodataoperacao.AsDateTime        := date;
  dmDB.TApontamentohorainicio.AsDateTime          := now;
 end;
 dmDB.TApontamentoidescavadeira.AsString          := vIdEscavadeira;
 dmDB.TApontamentoidproduto.AsString              := vIdMaterial;
 if edtAplicacaoMateria.Text.Length>0 then
   dmDB.TApontamentoaplicacaoproduto.AsString     := edtAplicacaoMateria.Text;
 if edtKmAtual.Text.Length>0 then
   dmDB.TApontamentokmatualescavadeira.AsString   := edtKmAtual.Text;
 if edtKMDestino.Text.Length>0 then
   dmDB.TApontamentokmdestinoescavadeira.AsString := edtKMDestino.Text;
 dmDB.TApontamentoidproduto.AsString              := vIdMaterial;
 if edtObs.Text.Length>0 then
   dmDB.TApontamentoobservacao.AsString           := edtObs.Text;
 dmDB.TApontamentostatus.AsInteger                := 1;
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

procedure TfrmApontamento.btnConfirmaViagemClick(Sender: TObject);
begin
  if edtCaminhaoFoto.Text.Length=0 then
 begin
   ShowMessage('Informe o Prefixo do Caminhão!');
   Exit;
 end;

 if (vLeituraQR=0) and (vImgCad64.Length=0)  then
 begin
   ShowMessage('Foto do Caminhão é obrigatoria!');
   Exit;
 end;
 dmDB.TApontamentoValoresInsert.FieldByName('idusuario').AsString                 := dmDB.vIdUser;
 dmDB.TApontamentoValoresInsert.FieldByName('horaoperacao').AsDateTime            := now;
 dmDB.TApontamentoValoresInsert.FieldByName('dataoperacao').AsDateTime            := date;
 dmDB.TApontamentoValoresInsert.FieldByName('idapontamento').AsString             := vIdApontamento;
 dmDB.TApontamentoValoresInsert.FieldByName('idmaquina').AsString                 := vIdCaminhao;
 dmDB.TApontamentoValoresInsert.FieldByName('latitude').AsString                  := edtLatitude.Text;
 dmDB.TApontamentoValoresInsert.FieldByName('longitude').AsString                 := edtLongitude.Text;
 dmDB.TApontamentoValoresInsert.FieldByName('tipoidentificacaomaquina').AsInteger := vLeituraQR;
 dmDB.TApontamentoValoresInsert.FieldByName('status').AsInteger                   := 1;
 dmDB.TApontamentoValoresInsert.FieldByName('datareg').AsDateTime                 := now;
 dmDB.TApontamentoValoresInsert.FieldByName('imgsyncs3').AsInteger                := 0;
 if vImgCad64.Length>0 then
  dmDB.TApontamentoValoresInsert.FieldByName('imgveiculo').AsString               := vImgCad64;
 try
   dmDB.TApontamentoValoresInsert.ApplyUpdates(-1);
   GeraListaViagens(vIdApontamento);
   ShowMessage('Viagem Adicionada com sucesso!!');
   tbPrincipal.ActiveTab := tbiViagens;
  except
   on E: Exception do
   begin
    frmPrincipal.ReproduzSom('Opa Erro');
    ShowMessage('Erro ao salvar Viagem:'+E.Message);
   end;
  end;
end;

procedure TfrmApontamento.btnEditarClick(Sender: TObject);
begin
   vIdApontamento           := (Sender as TImage).TagString;
   dmDB.AbreApontamentoEdit(vIdApontamento);
   vIdEscavadeira           := dmDB.TApontamentoidescavadeira.AsString;
   edtMaquina.Text          := dmDB.TApontamentoMaquina.AsString;
   edtMaquina.Enabled       := false;
   edtKmAtual.Text          := dmDB.TApontamentokmatualescavadeira.AsString;
   edtKMDestino.Text        := dmDB.TApontamentokmdestinoescavadeira.AsString;
   vIdMaterial              := dmDB.TApontamentoidproduto.AsString;
   edtTipoMaterial.Text     := dmDB.TApontamentoProdutos.AsString;
   edtAplicacaoMateria.Text := dmDB.TApontamentoaplicacaoproduto.AsString;
   edtObs.Text              := dmDB.TApontamentoobservacao.AsString;
   dmDB.TApontamento.Edit;
   MudarAba(tbiCad,sender);
end;

procedure TfrmApontamento.btnExcluiItemClick(Sender: TObject);
begin
 layBtnLista.Visible := false;
 if vFlagSync='0' then
 begin
   frmPrincipal.ReproduzSom('Deseja Deletar');
   MessageDlg('Deseja Realmente Deletar esse Registro?', System.UITypes.TMsgDlgType.mtInformation,
   [System.UITypes.TMsgDlgBtn.mbYes,
   System.UITypes.TMsgDlgBtn.mbNo
   ], 0,
   procedure(const AResult: System.UITypes.TModalResult)
   begin
    case AResult of
     mrYES:
     begin
       dmDB.DeletaApontamento(vIdApontamento);
       Filtro;
     end;
     mrNo:
    end;
   end);
 end
 else
 begin
   ShowMessage('Registro ja Sincronizado!!');
 end;
end;

procedure TfrmApontamento.btnExcluirViagemClick(Sender: TObject);
begin
  layBtnExcluiViagem.Visible := false;
  if  vIdViagem.Length=0 then
   begin
     ShowMessage('Primeiro selecione o registro,'+
     ' despois passe o dedo para esquerda para deletar!');
     Exit;
   end;


   if vFlagSync='0' then
   begin
     MessageDlg('Deseja Realmente deletar esse Registro?', System.UITypes.TMsgDlgType.mtInformation,
     [System.UITypes.TMsgDlgBtn.mbYes,
     System.UITypes.TMsgDlgBtn.mbNo
     ], 0,
     procedure(const AResult: System.UITypes.TModalResult)
     begin
      case AResult of
       mrYES:
       begin
         dmDB.DeletaViagem(vIdViagem);
         GeraListaViagens(vIdApontamento);
       end;
       mrNo:
      end;
     end);
   end
   else
    ShowMessage('Apontamento ja sincronizado!')
end;

procedure TfrmApontamento.btnFinalizarClick(Sender: TObject);
begin
 vIdApontamento     := (Sender as TImage).TagString;
 if dmDB.VerificaQtdViagensApontamento(vIdApontamento)<=0 then
 begin
   ShowMessage('Apontamento sem Viagens impossivel finalizar!');
   Exit;
 end
 else
 begin
   layBtnLista.Visible := false;
   if vFlagSync='0' then
   begin
     MessageDlg('Deseja Realmente Finalizar essa Operacao?', System.UITypes.TMsgDlgType.mtInformation,
     [System.UITypes.TMsgDlgBtn.mbYes,
     System.UITypes.TMsgDlgBtn.mbNo
     ], 0,
     procedure(const AResult: System.UITypes.TModalResult)
     begin
      case AResult of
       mrYES:
       begin
         dmDB.FinalizaApontamento(vIdApontamento);
         Filtro;
       end;
       mrNo:
      end;
     end);
   end
   else
   begin
     ShowMessage('Registro ja Sincronizado!!');
   end;
 end;
end;

procedure TfrmApontamento.btnFotoCaminhaoClick(Sender: TObject);
begin
 {$IFDEF ANDROID}
  PermissionsService.RequestPermissions([PermissaoCamera,
                                         PermissaoReadStorage,
                                         PermissaoWriteStorage],
                                         TakePicturePermissionRequestResult,
                                         DisplayMessageCamera
                                         );
  {$ENDIF}

  {$IFDEF IOS}
  ActFoto.Execute;
  {$ENDIF}
end;

procedure TfrmApontamento.btnFotoCaminhaoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
   TRectangle(Sender).Opacity :=0.5;
end;

procedure TfrmApontamento.btnFotoCaminhaoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
   TRectangle(Sender).Opacity :=1;
end;

procedure TfrmApontamento.btnHabilitaSyncClick(Sender: TObject);
begin
   layBtnLista.Visible := false;
   MessageDlg('Deseja Realmente Habilitar a Sincronização desse Registro?', System.UITypes.TMsgDlgType.mtInformation,
   [System.UITypes.TMsgDlgBtn.mbYes,
   System.UITypes.TMsgDlgBtn.mbNo
   ], 0,
   procedure(const AResult: System.UITypes.TModalResult)
   begin
    case AResult of
     mrYES:
     begin
       dmDB.HabilitaSync('apontamento',vIdApontamento);
       Filtro;
     end;
     mrNo:
    end;
   end);
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
  layBtnLista.Visible      := false;
  LocationSensor1.Active   := false;
  LocationSensor1.Active   := true;
  edtObs.Text              := '';
  edtMaquina.Text          := '';
  edtKmAtual.Text          := '';
  edtTipoMaterial.Text     := '';
  edtAplicacaoMateria.Text := '';
  vImgCad64                := '';
  imgHorimetro.Bitmap       := nil;
  edtMaquina.Enabled       := true;
  dmDB.TApontamento.Insert;
  MudarAba(tbiCad,sender);
end;

procedure TfrmApontamento.btnQRCaminhaoClick(Sender: TObject);
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
      vIdCaminhao                  := dmDB.TMaquinasid.AsString;
      edtCaminhaoFoto.Text         := dmDB.TMaquinasprefixo.AsString;
      MudarAba(tbiImg,sender)
     end;
  end);
end;

procedure TfrmApontamento.btnViagensClick(Sender: TObject);
begin
  vFlagSync          := intToStr(TFListaApontamento(sender).Tag);
  vIdApontamento     := (Sender as TImage).TagString;
  dmDB.AbreApontamentoEdit(vIdApontamento);

  lblData.Text              := FormatDateTime('dd/mm/yyyy',dmDB.TApontamentodataoperacao.AsDateTime);
  lblHora.Text              := FormatDateTime('hh:mm',dmDB.TApontamentohorainicio.AsDateTime);
  lblEscavadeira.Text       := dmDB.TApontamentoMaquina.AsString;
  lblkmAtual.Text           := dmDB.TApontamentokmatualescavadeira.AsString;
  lblTipoMaterial.Text      := dmDB.TApontamentoProdutos.AsString;
  lblAplicacaoMaterial.Text := dmDB.TApontamentoaplicacaoproduto.AsString;

  GeraListaViagens(vIdApontamento);
  MudarAba(tbiViagens,sender)
end;

procedure TfrmApontamento.btnVoltar1Click(Sender: TObject);
begin
 Close;
end;

procedure TfrmApontamento.btnVoltarHorimetroClick(Sender: TObject);
begin
  MudarAba(tbiViagens,sender);
end;

procedure TfrmApontamento.btnVoltarPrefixoClick(Sender: TObject);
begin
  MudarAba(tbiViagens,sender)
end;

procedure TfrmApontamento.Button1Click(Sender: TObject);
begin
 if vEscavadeira = 0 then
 begin
  edtPrefixo.Text      := edtPrefixo.Text+TButton(Sender).Text;
  edtCaminhaoFoto.Text := edtPrefixo.Text;
 end;
 if vEscavadeira = 1 then
 begin
  edtPrefixo.Text     := edtPrefixo.Text+TButton(Sender).Text;
  edtMaquina.Text     := edtPrefixo.Text;
 end;

end;

procedure TfrmApontamento.MudarAba(ATabItem: TTabItem; sender: TObject);
begin
  actMudarAba.Tab := ATabItem;
  actMudarAba.ExecuteTarget(sender);
end;

procedure TfrmApontamento.Rectangle11Click(Sender: TObject);
begin
  layBtnExcluiViagem.Visible := false;
  LocationSensor1.Active     := false;
  LocationSensor1.Active     := true;
  GridLayNumeros.ItemWidth   := (GridLayNumeros.Width/5)-5;
  GridLayLetras.ItemWidth    := (GridLayLetras.Width/5)-5;

  layTecladoPrefixo.Visible := false;
  edtCaminhaoFoto.Text   :='';
  vImgCad64              :='';
  imgHorimetro.Bitmap    := nil;
  dmDB.TApontamentoValoresInsert.Close;
  dmDB.TApontamentoValoresInsert.Open;
  dmDB.TApontamentoValoresInsert.Insert;
  MudarAba(tbiImg,sender);
end;

procedure TfrmApontamento.Rectangle17Click(Sender: TObject);
begin
  layBtnExcluiViagem.Visible := false;
  Filtro;
  MudarAba(tbiLista,Sender);
end;

procedure TfrmApontamento.Rectangle25Click(Sender: TObject);
begin
 if  vIdViagem.Length=0 then
   begin
     ShowMessage('Primeiro selecione o registro,'+
     ' despois passe o dedo para esquerda para deletar!');
     Exit;
   end;


   if vFlagSync='0' then
   begin
     MessageDlg('Deseja Realmente deletar esse Registro?', System.UITypes.TMsgDlgType.mtInformation,
     [System.UITypes.TMsgDlgBtn.mbYes,
     System.UITypes.TMsgDlgBtn.mbNo
     ], 0,
     procedure(const AResult: System.UITypes.TModalResult)
     begin
      case AResult of
       mrYES:
       begin
         dmDB.DeletaViagem(vIdViagem);
         GeraListaViagens(vIdApontamento);
       end;
       mrNo:
      end;
     end);
   end
   else
    ShowMessage('Apontamento ja sincronizado!')
end;

procedure TfrmApontamento.TakePicturePermissionRequestResult(Sender: TObject;
  const APermissions: TArray<string>;
  const AGrantResults: TArray<TPermissionStatus>);
begin
  if (Length(AGrantResults) = 3) and
   (AGrantResults[0] = TPermissionStatus.Granted) and
   (AGrantResults[1] = TPermissionStatus.Granted) and
   (AGrantResults[2] = TPermissionStatus.Granted) then
        ActFoto.Execute
 else
  TDialogService.ShowMessage('Você não tem permissão para tirar fotos');
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

procedure TfrmApontamento.DisplayMessageCamera(Sender: TObject;
  const APermissions: TArray<string>; const APostProc: TProc);
begin
 TDialogService.ShowMessage('O app precisa acessar a câmera e as fotos do seu dispositivo',
  procedure(const AResult: TModalResult)
  begin
   APostProc;
  end);
end;

procedure TfrmApontamento.DisplayMessageLibrary(Sender: TObject;
  const APermissions: TArray<string>; const APostProc: TProc);
begin
 TDialogService.ShowMessage('O app precisa acessar as fotos do seu dispositivo',
  procedure(const AResult: TModalResult)
  begin
    APostProc;
  end);
end;

procedure TfrmApontamento.DisplayRationale(Sender: TObject;
  const APermissions: TArray<string>; const APostRationaleProc: TProc);
var
  I: Integer;
  RationaleMsg: string;
begin
  for I := 0 to High(APermissions) do
  begin
    if (APermissions[I] = Access_Coarse_Location) or (APermissions[I] = Access_Fine_Location) then
      RationaleMsg := 'O app precisa de acesso ao GPS para obter sua localização'
  end;
  TDialogService.ShowMessage(RationaleMsg,
    procedure(const AResult: TModalResult)
    begin
      APostRationaleProc;
    end)
end;

procedure TfrmApontamento.EditButton1Click(Sender: TObject);
begin
 if (edtMaquina.Text.Length>0) then
 begin
   if dmDB.AbriMaquinaPrefixoManual(edtMaquina.Text) then
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
     end;
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

procedure TfrmApontamento.edtPrefixoEnter(Sender: TObject);
begin
  layTecladoPrefixo.Visible := true;
end;

procedure TfrmApontamento.edtCaminhaoFotoClick(Sender: TObject);
begin
  edtPrefixo.Text :='';
  vEscavadeira    := 0;
  MudarAba(tbiBuscaPrefixo,sender)
end;

procedure TfrmApontamento.edtMaquinaClick(Sender: TObject);
begin
  vEscavadeira    := 1;
  edtPrefixo.Text :='';
  MudarAba(tbiBuscaPrefixo,sender)
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

procedure TfrmApontamento.edtMaquinaFClick(Sender: TObject);
begin
 layBtnLista.Visible        := false;
end;

end.

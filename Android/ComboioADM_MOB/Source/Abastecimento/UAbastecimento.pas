unit UAbastecimento;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, FMX.Objects, FMX.TabControl, FMX.Layouts,
  FMX.TreeView, FMX.MultiView, System.Actions, FMX.ActnList, FMX.Ani,
  FMX.Effects, FMX.Filter.Effects, System.Rtti, FMX.Grid.Style, FMX.ScrollBox,
  FMX.Grid, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope, FMX.ListBox, FMX.DateTimeCtrls,
  System.Bluetooth, System.Bluetooth.Components,System.Threading,FireDAC.Comp.Client,
  FMX.EditBox, FMX.SpinBox, FMX.Memo,IdHTTP,System.Json.writers,System.Json.Readers,System.JSON.Types,
  Rest.Json,System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, Data.Bind.ObjectScope,
  REST.Client, IPPeerClient,REST.Types,FMX.VirtualKeyboard,FMX.Platform,
  IdHashMessageDigest,System.ImageList,
  FMX.ImgList, FMX.Media, System.Sensors, System.Sensors.Components,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.Gestures, FMX.NumberBox, FMX.ListView, FMX.MediaLibrary.Actions,FMX.Surfaces,
  FMX.StdActns,u99Permissions
  {$IF DEFINED(iOS) or DEFINED(ANDROID)}
   ,Androidapi.JNI.Os, Androidapi.Helpers,
   Androidapi.JNI.GraphicsContentViewText,System.Permissions,FMX.DialogService
   {$ENDIF}
    ,Soap.EncdDecd,UFrameLista;

type
  TfrmAbastecimento = class(TForm)
    layBase: TLayout;
    recPrincipal: TRectangle;
    tbPrincipal: TTabControl;
    tbiLista: TTabItem;
    Rectangle3: TRectangle;
    Layout3: TLayout;
    tbiCad: TTabItem;
    TimerMsg: TTimer;
    layTBICad: TLayout;
    Rectangle1: TRectangle;
    Layout6: TLayout;
    Layout7: TLayout;
    Layout67: TLayout;
    layBuscaMaquina: TLayout;
    Rectangle2: TRectangle;
    Layout9: TLayout;
    Label2: TLabel;
    edtMaquina: TEdit;
    Layout14: TLayout;
    Rectangle7: TRectangle;
    Layout15: TLayout;
    Label10: TLabel;
    Label3: TLabel;
    edtData: TDateEdit;
    edtHora: TTimeEdit;
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
    layHorimetro: TLayout;
    Rectangle8: TRectangle;
    Layout19: TLayout;
    actAcoes: TActionList;
    actMudarAba: TChangeTabAction;
    AcMudarAbaChart: TAction;
    AcMudarAbaDespesas: TAction;
    AcLeft: TAction;
    AcRigth: TAction;
    GestureManager1: TGestureManager;
    layNewOutros: TLayout;
    Rectangle9: TRectangle;
    ToolBar8: TToolBar;
    Rectangle10: TRectangle;
    Label17: TLabel;
    Layout21: TLayout;
    Layout26: TLayout;
    Rectangle12: TRectangle;
    Layout27: TLayout;
    Layout28: TLayout;
    Label18: TLabel;
    edtOutroProduto: TEdit;
    Layout29: TLayout;
    Rectangle14: TRectangle;
    Layout30: TLayout;
    Layout32: TLayout;
    Label26: TLabel;
    Layout33: TLayout;
    EditButton3: TEditButton;
    btnLerQr: TEditButton;
    Image5: TImage;
    Layout34: TLayout;
    Layout8: TLayout;
    Layout35: TLayout;
    Layout36: TLayout;
    edtQtdOutroProduto: TEdit;
    GestureManager2: TGestureManager;
    Layout5: TLayout;
    Layout37: TLayout;
    btnVoltar1: TRectangle;
    Image31: TImage;
    Label4: TLabel;
    Layout38: TLayout;
    btnNovo: TRectangle;
    Image9: TImage;
    Label7: TLabel;
    Lista: TListView;
    Rectangle22: TRectangle;
    Layout39: TLayout;
    Rectangle15: TRectangle;
    Rectangle17: TRectangle;
    Image7: TImage;
    Label23: TLabel;
    Layout40: TLayout;
    btnConfirmarA: TRectangle;
    Image10: TImage;
    Label24: TLabel;
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
    Label14: TLabel;
    lblUltimoAbastecimento: TLabel;
    Label21: TLabel;
    Label27: TLabel;
    lblUltimoHr: TLabel;
    lblUltimoKM: TLabel;
    Label12: TLabel;
    Layout1: TLayout;
    Rectangle18: TRectangle;
    Layout41: TLayout;
    Label20: TLabel;
    LocationSensor1: TLocationSensor;
    Layout44: TLayout;
    Rectangle20: TRectangle;
    Layout45: TLayout;
    Label34: TLabel;
    Label35: TLabel;
    edtLatitude: TEdit;
    edtLongitude: TEdit;
    tbiImg: TTabItem;
    layImgHorimetro: TLayout;
    Rectangle26: TRectangle;
    Layout71: TLayout;
    Layout42: TLayout;
    Rectangle21: TRectangle;
    btnVoltarHorimetro: TRectangle;
    Image14: TImage;
    Label31: TLabel;
    ActionList1: TActionList;
    ActLibrary: TTakePhotoFromLibraryAction;
    ActFoto: TTakePhotoFromCameraAction;
    edtHorimetro: TEdit;
    layAlerta: TLayout;
    Rectangle5: TRectangle;
    ToolBar1: TToolBar;
    recToolBar: TRectangle;
    lblCad: TLabel;
    btnFechar: TImage;
    Layout16: TLayout;
    Layout17: TLayout;
    Rectangle23: TRectangle;
    Label11: TLabel;
    cbxTipoAlerta: TComboBox;
    Layout46: TLayout;
    btnConfirmaAlerta: TRectangle;
    Image15: TImage;
    Label36: TLabel;
    btnConfirmaProduto: TRectangle;
    Image4: TImage;
    Label19: TLabel;
    Image18: TImage;
    Layout47: TLayout;
    Label28: TLabel;
    lblVolumeLitro: TLabel;
    VertScrollBox1: TVertScrollBox;
    edtLitros: TEdit;
    layKm: TLayout;
    Rectangle24: TRectangle;
    Layout49: TLayout;
    Label39: TLabel;
    edtKm: TEdit;
    tbiImgBomba: TTabItem;
    tbiImgKM: TTabItem;
    Layout20: TLayout;
    Rectangle11: TRectangle;
    VertScrollBox2: TVertScrollBox;
    Layout53: TLayout;
    Layout54: TLayout;
    Rectangle33: TRectangle;
    btnVoltarBomba: TRectangle;
    Image23: TImage;
    Label22: TLabel;
    Layout56: TLayout;
    Rectangle36: TRectangle;
    VertScrollBox3: TVertScrollBox;
    Layout60: TLayout;
    layFotoBomba: TLayout;
    RecImgBomba: TRectangle;
    imgBomba: TImage;
    btnFotoBomba: TRectangle;
    Image13: TImage;
    Label30: TLabel;
    layFotoKM: TLayout;
    RecImgkm: TRectangle;
    imgFotoKM: TImage;
    btnFotoKM: TRectangle;
    Image20: TImage;
    Label37: TLabel;
    layFotoHorimetro: TLayout;
    RecImgHrimetro: TRectangle;
    imgHorimetro: TImage;
    btnFotoHorimetro: TRectangle;
    Image12: TImage;
    Label8: TLabel;
    layImagens: TLayout;
    RecTiraFotoBomba: TRectangle;
    Layout51: TLayout;
    Rectangle13: TRectangle;
    ImgMnuBomba: TImage;
    Label13: TLabel;
    Layout52: TLayout;
    imgChekBombaa: TImage;
    btnTiraFotoHorimetro: TRectangle;
    Layout57: TLayout;
    Label15: TLabel;
    Rectangle25: TRectangle;
    ImgMnuHorimetro: TImage;
    Layout58: TLayout;
    ShadowEffect1: TShadowEffect;
    btnTiraFotoKM: TRectangle;
    Layout59: TLayout;
    Label16: TLabel;
    Rectangle29: TRectangle;
    ImgMnuKM: TImage;
    Z: TLayout;
    btnVoltarKM: TRectangle;
    Image32: TImage;
    Label42: TLabel;
    VertScrollBox4: TVertScrollBox;
    Layout18: TLayout;
    Layout10: TLayout;
    Rectangle4: TRectangle;
    Layout11: TLayout;
    Label6: TLabel;
    edtLocalEstoque: TEdit;
    EditButton1: TEditButton;
    ClearEditButton3: TClearEditButton;
    Layout12: TLayout;
    Rectangle6: TRectangle;
    Layout13: TLayout;
    Label5: TLabel;
    edtCombustivel: TEdit;
    EditButton4: TEditButton;
    ClearEditButton4: TClearEditButton;
    layListCards: TLayout;
    layBtnLista: TLayout;
    btnHabilitaSync: TRectangle;
    Image16: TImage;
    Label32: TLabel;
    btnExcluiItem: TRectangle;
    Image1: TImage;
    lblExcluir: TLabel;
    Image3: TImage;
    HorzScrollBox1: THorzScrollBox;
    btnTiraFotoBomba: TButton;
    Image6: TImage;
    Image2: TImage;
    procedure btnBuscarMaquinaClick(Sender: TObject);
    procedure EditButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure ListaGesture(Sender: TObject; const EventInfo: TGestureEventInfo;
      var Handled: Boolean);
    procedure btnExcluiItemClick(Sender: TObject);
    procedure ListaItemClickEx(const Sender: TObject; ItemIndex: Integer;
      const LocalClickPos: TPointF; const ItemObject: TListItemDrawable);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnVoltar2Click(Sender: TObject);
    procedure btnNovoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btnNovoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btnVoltar1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btnVoltar1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btnExcluiItemMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btnExcluiItemMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btnVoltar1Click(Sender: TObject);
    procedure EditButton3Click(Sender: TObject);
    procedure btnNovoProdutoClick(Sender: TObject);
    procedure tbPrincipalChange(Sender: TObject);
   {$IFDEF ANDROID}
    procedure btnLerQrClick(Sender: TObject);
   {$ENDIF}
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvaFotosClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnConfirmarAClick(Sender: TObject);
    procedure EditButton4Click(Sender: TObject);
    procedure LocationSensor1LocationChanged(Sender: TObject; const OldLocation,
      NewLocation: TLocationCoord2D);
    procedure btnFotoHorimetroClick(Sender: TObject);
    procedure btnFotoBombaClick(Sender: TObject);
    procedure ActFotoDidFinishTaking(Image: TBitmap);
    procedure btnVoltarHorimetroClick(Sender: TObject);
    procedure cbxTipoAlertaChange(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnConfirmaAlertaClick(Sender: TObject);
    procedure btnConfirmaProdutoClick(Sender: TObject);
    procedure Image18Click(Sender: TObject);
    procedure btnFotoKMClick(Sender: TObject);
    procedure edtKmTyping(Sender: TObject);
    procedure edtHorimetroTyping(Sender: TObject);
    procedure edtLitrosTyping(Sender: TObject);
    procedure Rectangle17Click(Sender: TObject);
    procedure btnVoltarBombaClick(Sender: TObject);
    procedure btnVoltarKMClick(Sender: TObject);
    procedure btnHabilitaSyncClick(Sender: TObject);
    procedure imgChekBombaaClick(Sender: TObject);
    procedure Image6Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure edtDataFClosePicker(Sender: TObject);
  private
    vLatitude,vLongitude:string;
    vTipoAlerta,vErro:integer;
    permissao : T99Permissions;
    FImageStream: TStringStream;
    {$IFDEF ANDROID}
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
    {$ENDIF}
    procedure MudarAba(ATabItem: TTabItem; sender: TObject);
    procedure GeraListaCards(vFiltro:string);
    procedure GeraListaProdutos(vIdAbastecimento,vFiltro:string);
    function  GeraFiltro:string;
    procedure LimpaCampos;
    procedure SalvarImagem(Bitmap: TBitmap);
    protected
    property ImageStream: TStringStream read FImageStream write FImageStream;
    procedure AfterConstruction; override;
    function  BitmapFromBase64(const base64: string): TBitmap;
    function  Base64FromBitmap(Bitmap: TBitmap): string;
    procedure InsertAbastecimento;
    //procs frame listacards
    procedure FrameClick(Sender: TObject);
    procedure imgBombaClick(Sender: TObject);
    procedure imgHorimetroClick(Sender: TObject);
    procedure imgKMClick(Sender: TObject);
    procedure DestroiFrames;
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
    ClipService: IFMXClipboardService;
    Elapsed,vImgCapture,vAbriImg,vEditaFoto: integer;
    vIdMaquina,vIdLocalEstoque,vFiltro,vFlagSync,
    vIdAbastecimento,vIdProduto,vIdItemOutros,vILocalOrigem,vIdLocalDestino,
    vIdTransferencia,vIdCombustivel,vImg64Horimetro,vImg64Bomba,vImg64KM,
    vImgCad64Horimetro,vImgCad64Bomba,vCadImg64KM:string;
    FFrame: TFItemListaAbastecimento;

  end;

var
  frmAbastecimento: TfrmAbastecimento;

implementation

{$R *.fmx}

uses UPrincipal, Maquinas,ULocalEstoque,UProdutos,UDmDB, UnitCamera,
  UStartBomba, uFormat;

procedure TfrmAbastecimento.btnBuscarClick(Sender: TObject);
begin
 GeraListaCards(GeraFiltro);
end;

procedure TfrmAbastecimento.btnConfirmaAlertaClick(Sender: TObject);
begin
 if cbxTipoAlerta.ItemIndex=-1 then
 begin
   ShowMessage('Selecione um aleta!');
   Exit;
 end;
   case cbxTipoAlerta.ItemIndex of
     0:vTipoAlerta:=1;
     1:vTipoAlerta:=2;
     2:vTipoAlerta:=3;
     3:vTipoAlerta:=4;
   end;
 layAlerta.Visible := false;
end;

procedure TfrmAbastecimento.btnConfirmaProdutoClick(Sender: TObject);
begin
 if edtOutroProduto.Text.Length=0 then
 begin
   ShowMessage('Informe o Produto');
   Exit;
 end;
 if(edtQtdOutroProduto.Text.Length=0)or(edtQtdOutroProduto.Text='0') then
 begin
   ShowMessage('Informe a Quantidade');
   Exit;
 end;
 dmDB.TAbastecimentoOutrosidusuario.AsString       := dmDB.vIdUser;
 dmDB.TAbastecimentoOutrosidabastecimento.AsString := vIdAbastecimento;
 dmDB.TAbastecimentoOutrosidproduto.AsString       := vIdProduto;
 dmDB.TAbastecimentoOutrosquantidade.AsString      := StringReplace(edtQtdOutroProduto.Text,',','.',[rfReplaceAll]);
 try
   dmDB.TAbastecimentoOutros.ApplyUpdates(-1);
   ShowMessage('Produto Adicionado com Sucesso!');
   GeraListaProdutos(vIdAbastecimento,'');
   layNewOutros.Visible := false;
 except
   on E: Exception do
    ShowMessage('Erro ao salvar Produto:'+E.Message);
 end;
end;

procedure TfrmAbastecimento.btnConfirmarAClick(Sender: TObject);
var
 vVolumeF,vLitroF,vPescent,vKM,vHorimetro :double;
begin
 dmDB.TAbastecimento.Close;
 dmDB.TAbastecimento.Open;
 dmDB.TAbastecimento.Insert;

 vErro       :=0;
 if edtMaquina.Text.Length=0 then
 begin
   ShowMessage('Informe a Maquina!!');
   edtMaquina.SetFocus;
   Exit;
 end;
 if edtLocalEstoque.Text.Length=0 then
 begin
   ShowMessage('Informe a Bomba!!');
   edtLocalEstoque.SetFocus;
   Exit;
 end;
 if edtCombustivel.Text.Length=0 then
 begin
   ShowMessage('Informe o Combustivel!!');
   edtCombustivel.SetFocus;
   Exit;
 end;
 if (edtLitros.Text.Length=0)OR(edtLitros.Text='0') then
 begin
   ShowMessage('Informe os Litros!!');
   edtHorimetro.SetFocus;
   Exit;
 end;
 if (vImgCad64Bomba.Length=0)then
  begin
   ShowMessage('Foto da Bomba é Obrigatoria!!');
   Exit;
  end;
  if(vImgCad64Horimetro.Length=0)AND((dmDB.TMaquinastipomedicao.AsInteger=0)or
   (dmDB.TMaquinastipomedicao.AsInteger=2))then
  begin
   ShowMessage('Foto do Horímetro é Obrigatoria!!');
   Exit;
  end;
  if(vCadImg64KM.Length=0)AND((dmDB.TMaquinastipomedicao.AsInteger=1)or
   (dmDB.TMaquinastipomedicao.AsInteger=2))then
  begin
   ShowMessage('Foto do KM é Obrigatoria!!');
   Exit;
  end;

  if(lblVolumeLitro.Text.Length>0)and(lblVolumeLitro.Text<>'0') then
  begin
    vVolumeF := StrToFloat(lblVolumeLitro.Text);
    vLitroF  := StrToFloat(StringReplace(edtLitros.Text,'.','',[rfReplaceAll]));
    vPescent := (vLitroF*100)/vVolumeF;
    if vPescent>110 then
    begin
     vErro :=1;
     ShowMessage('Quantidade de litros não pode ser maior'+#13+
     'do que a capacidade do tanque da maquina + 10%');
     Exit;
    end;
  end;
  // checagem Horimetro Hodometro
  if dmDB.TMaquinastipomedicao.AsInteger=0 then // se for Horimetro
  begin
    if(edtHorimetro.Text.Length=0) then
    begin
     ShowMessage('Informe o Horimetro!!');
     edtHorimetro.SetFocus;
     Exit;
    end;
    vHorimetro := StrToFloat(StringReplace(edtHorimetro.Text,'.','',[rfReplaceAll]));
    if (vTipoAlerta=0)and(strToInt(lblUltimoHr.Text)>=vHorimetro) then
    begin
     vErro :=1;
     frmPrincipal.ReproduzSom('Horimetro Final Menor');
     MessageDlg('Horímetro Atual não pode ser menor ou igual ao último'+#13+
     'Deseja Informar um alerta para prosseguir?', System.UITypes.TMsgDlgType.mtInformation,
     [System.UITypes.TMsgDlgBtn.mbYes,
     System.UITypes.TMsgDlgBtn.mbNo
     ], 0,
     procedure(const AResult: System.UITypes.TModalResult)
     begin
      case AResult of
       mrYES:
       begin
         layAlerta.Visible := true;
         Exit;
       end;
       mrNo:
        Exit;
      end;
     end);
    end;
    if vErro=0 then
    begin
      if (vTipoAlerta=0)and(vHorimetro-strToInt(lblUltimoHr.Text)>24) then
      begin
       vErro :=1;
       frmPrincipal.ReproduzSom('Horimetro maior 24');
       MessageDlg('Horímetro Atual não pode ser maior do que 24 horas do último registrado'+#13+
       'Deseja Informar um alerta para prosseguir?', System.UITypes.TMsgDlgType.mtInformation,
       [System.UITypes.TMsgDlgBtn.mbYes,
       System.UITypes.TMsgDlgBtn.mbNo
       ], 0,
       procedure(const AResult: System.UITypes.TModalResult)
       begin
        case AResult of
         mrYES:
         begin
           layAlerta.Visible := true;
           Exit;
         end;
         mrNo:
          Exit;
        end;
       end);
      end
    end;
  end; // fim checagem Horimetro

  if dmDB.TMaquinastipomedicao.AsInteger=1 then // se for Hodometro
  begin
    if(edtKM.Text.Length=0) then
    begin
     ShowMessage('Informe o KM!!');
     edtHorimetro.SetFocus;
     Exit;
    end;
    vKM := StrToFloat(StringReplace(edtKM.Text,'.','',[rfReplaceAll]));
    if(vTipoAlerta=0)and(strToInt(lblUltimokm.Text)>=vKM) then
    begin
      vErro :=1;
      frmPrincipal.ReproduzSom('km Final Menor');
      MessageDlg('KM Atual não pode ser menor ou igual ao último'+#13+
      'Deseja Informar um alerta para prosseguir?', System.UITypes.TMsgDlgType.mtInformation,
      [System.UITypes.TMsgDlgBtn.mbYes,
      System.UITypes.TMsgDlgBtn.mbNo
      ], 0,
      procedure(const AResult: System.UITypes.TModalResult)
      begin
       case AResult of
        mrYES:
        begin
          layAlerta.Visible := true;
          Exit;
        end;
        mrNo:
         Exit;
       end;
      end);
    end;
    if vErro=0 then
    begin
      if (vTipoAlerta=0)and(strToInt(lblUltimokm.Text)>0)and((vKM-strToInt(lblUltimokm.Text))>600) then
      begin
        vErro :=1;
        frmPrincipal.ReproduzSom('km maior 600');
        MessageDlg('KM Atual não pode ser 600 km maior do que o último registrado?',
        System.UITypes.TMsgDlgType.mtInformation,
        [System.UITypes.TMsgDlgBtn.mbYes,
        System.UITypes.TMsgDlgBtn.mbNo
        ], 0,
        procedure(const AResult: System.UITypes.TModalResult)
        begin
         case AResult of
          mrYES:
          begin
            layAlerta.Visible := true;
            Exit;
          end;
          mrNo:
           Exit;
         end;
        end);
      end
    end;
  end;//Fim  checagem Hdometro
  if dmDB.TMaquinastipomedicao.AsInteger=2 then // se for Horimetro e Hodometro
  begin
    if(edtHorimetro.Text.Length=0) then
    begin
     ShowMessage('Informe o Horimetro!!');
     edtHorimetro.SetFocus;
     Exit;
    end;
    vHorimetro := StrToFloat(StringReplace(edtHorimetro.Text,'.','',[rfReplaceAll]));
    if (edtKM.Text.Length=0) then
    begin
     ShowMessage('Informe o KM!!');
     edtKM.SetFocus;
     Exit;
    end;
    vKM := StrToFloat(StringReplace(edtKM.Text,'.','',[rfReplaceAll]));
    if (vTipoAlerta=0)and(strToInt(lblUltimoHr.Text)>=vHorimetro) then
    begin
      vErro :=1;
      frmPrincipal.ReproduzSom('Horimetro Final Menor');
      MessageDlg('Horímetro Atual não pode ser menor ou igual ao último'+#13+
      'Deseja Informar um alerta para prosseguir?', System.UITypes.TMsgDlgType.mtInformation,
      [System.UITypes.TMsgDlgBtn.mbYes,
      System.UITypes.TMsgDlgBtn.mbNo
      ], 0,
      procedure(const AResult: System.UITypes.TModalResult)
      begin
       case AResult of
        mrYES:
        begin
          layAlerta.Visible := true;
          Exit;
        end;
        mrNo:
         Exit;
       end;
      end);
    end;
    if vErro=0 then
    begin
      if (vTipoAlerta=0)and((vHorimetro-strToInt(lblUltimoHr.Text))>24) then
      begin
       vErro :=1;
       frmPrincipal.ReproduzSom('Horimetro maior 24');
       MessageDlg('Horímetro Atual não pode ser maior do que 24 horas do último registrado'+#13+
       'Deseja Informar um alerta para prosseguir?', System.UITypes.TMsgDlgType.mtInformation,
       [System.UITypes.TMsgDlgBtn.mbYes,
       System.UITypes.TMsgDlgBtn.mbNo
       ], 0,
       procedure(const AResult: System.UITypes.TModalResult)
       begin
        case AResult of
         mrYES:
         begin
           layAlerta.Visible := true;
           Exit;
         end;
         mrNo:
          Exit;
        end;
       end);
      end;
    end;
    if vErro=0 then
    begin
      if(vTipoAlerta=0)and(strToInt(lblUltimokm.Text)>=vkM) then
      begin
       vErro :=1;
       frmPrincipal.ReproduzSom('km Final Menor');
       MessageDlg('KM Atual não pode ser menor ou igual ao último'+#13+
       'Deseja Informar um alerta para prosseguir?', System.UITypes.TMsgDlgType.mtInformation,
       [System.UITypes.TMsgDlgBtn.mbYes,
       System.UITypes.TMsgDlgBtn.mbNo
       ], 0,
       procedure(const AResult: System.UITypes.TModalResult)
       begin
        case AResult of
         mrYES:
         begin
           layAlerta.Visible := true;
           Exit;
         end;
         mrNo:
          Exit;
        end;
       end);
      end;
      if (vTipoAlerta=0)and((vKM-strToInt(lblUltimokm.Text))>600) then
      begin
        vErro :=1;
        frmPrincipal.ReproduzSom('km maior 600');
        MessageDlg('KM Atual não pode ser 600 km maior do que o último registrado?',
        System.UITypes.TMsgDlgType.mtInformation,
        [System.UITypes.TMsgDlgBtn.mbYes,
        System.UITypes.TMsgDlgBtn.mbNo
        ], 0,
        procedure(const AResult: System.UITypes.TModalResult)
        begin
         case AResult of
          mrYES:
          begin
            layAlerta.Visible := true;
            Exit;
          end;
          mrNo:
           Exit;
         end;
        end);
      end
    end;
  end;
  if (vErro)=0 then
     InsertAbastecimento;
end;

procedure TfrmAbastecimento.btnExcluiItemClick(Sender: TObject);
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
       dmDB.DeletaAbastecimento(vIdAbastecimento);
       GeraListaCards(GeraFiltro);
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

procedure TfrmAbastecimento.btnExcluiItemMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
 TRectangle(Sender).Opacity :=0.5;
end;

procedure TfrmAbastecimento.btnExcluiItemMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  TRectangle(Sender).Opacity :=1;
end;
procedure TfrmAbastecimento.btnFecharClick(Sender: TObject);
begin
 layAlerta.Visible := false;
end;

procedure TfrmAbastecimento.btnFotoBombaClick(Sender: TObject);
begin
 vImgCapture:=2;
 if vAbriImg=1 then
   vEditaFoto:=1
  else
   vEditaFoto:=0;
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

procedure TfrmAbastecimento.btnFotoHorimetroClick(Sender: TObject);
begin
 vImgCapture:=1;
  if vAbriImg=1 then
   vEditaFoto:=1
  else
   vEditaFoto:=0;
 vImgCapture:=1;
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

procedure TfrmAbastecimento.btnFotoKMClick(Sender: TObject);
begin
 vImgCapture:=3;
 if vAbriImg=1 then
   vEditaFoto:=1
  else
   vEditaFoto:=0;
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

procedure TfrmAbastecimento.btnHabilitaSyncClick(Sender: TObject);
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
       dmDB.HabilitaSync('abastecimento',vIdAbastecimento);
       GeraListaCards(GeraFiltro);
     end;
     mrNo:
    end;
   end);
end;

procedure TfrmAbastecimento.btnLerQrClick(Sender: TObject);
begin
  if Not Assigned(FrmCamera) then
   Application.CreateForm(TFrmCamera, FrmCamera);
  FrmCamera.ShowModal(procedure(ModalResult: TModalResult)
  begin
     if dmDB.AbriMaquinaPrefixo(FrmCamera.codigo) then
     begin
       layBuscaMaquina.Height       := 60;
       lblUltimoKM.Text             :='';
       lblUltimoHr.Text             :='';
       lblUltimoAbastecimento.Text  :='';
       lblVolumeLitro.Text          :='';
       ShowMessage('Maquina Não Encontrado');
       edtMaquina.Text :='';
       layImagens.Visible := false;
       Exit;
     end
     else
     begin
      layImagens.Visible           := True;
      vIdMaquina                   := dmDB.TMaquinasid.AsString;
      layBuscaMaquina.Height       := 135;
      edtMaquina.Text              := dmDB.TMaquinasprefixo.AsString;
      dmDB.RetornaUltimoKMHorimetro(dmDB.TMaquinasid.AsString);
      lblUltimoKM.Text             := dmDB.vUltimoKM;
      lblUltimoHr.Text             := dmDB.vUltimoHorimetro;
      lblUltimoAbastecimento.Text  := dmDB.TMaquinasultimoabastecimento.AsString;
      lblVolumeLitro.Text          := dmDB.TMaquinasvolumetanque.AsString;
      case dmDB.TMaquinastipomedicao.AsInteger of
       0:begin
          edtHorimetro.Enabled     :=true;
          edtkm.Enabled            :=false;
          layFotoKM.Visible        :=false;
          layFotoHorimetro.Visible :=true;
          btnTiraFotoKM.Visible           :=false;
          btnTiraFotoHorimetro.Visible    :=true;
          btnTiraFotoBomba.Width    := 250;//(frmAbastecimento.Width/2)-10;
          btnTiraFotoHorimetro.Width:= 250;//(frmAbastecimento.Width/2)-10;
          layHorimetro.Visible      := true;
          layKm.Visible             := false;
         end;
       1:begin
          edtHorimetro.Enabled :=false;
          edtkm.Enabled        :=true;
          layFotoKM.Visible        :=true;
          layFotoHorimetro.Visible :=false;
          btnTiraFotoKM.Visible           :=true;
          btnTiraFotoHorimetro.Visible    :=false;
          btnTiraFotoBomba.Width    := 250;//(frmAbastecimento.Width/2)-10;
          btnTiraFotoKM.Width       := 250;//(frmAbastecimento.Width/2)-10;
          layHorimetro.Visible      := false;
          layKm.Visible             := true;
         end;
       2:begin
          edtHorimetro.Enabled     :=true;
          edtkm.Enabled            :=true;
          layFotoKM.Visible        :=true;
          layFotoHorimetro.Visible :=true;
          btnTiraFotoKM.Visible           :=true;
          btnTiraFotoHorimetro.Visible    :=true;
          btnTiraFotoBomba.Width    := 250;//(frmAbastecimento.Width/3)-10;
          btnTiraFotoHorimetro.Width:= 250;//(frmAbastecimento.Width/3)-10;
          btnTiraFotoKM.Width       := 250;//(frmAbastecimento.Width/3)-10;
          layHorimetro.Visible      := true;
          layKm.Visible             := true;
         end;
      end;
     end;
  end);
end;

procedure TfrmAbastecimento.btnNovoClick(Sender: TObject);
begin
 HorzScrollBox1.ScrollBy(HorzScrollBox1.ViewportPosition.x,
  HorzScrollBox1.ViewportPosition.y);
 layImagens.Visible := false;
 vFiltro := 'and s.status=1 and s.dataastart='+FormatDateTime('yyyy-mm-dd',date).QuotedString;
 dmDB.AbrirStartBomba(vFiltro);
 if dmDB.TStartbomba.IsEmpty then
 begin
  frmPrincipal.ReproduzSom('Start Antes');
  ShowMessage('É necessario realizar o Start Diario antes de abastecer!');
  Exit;
 end
 else
 begin
   LimpaCampos;
   edtLocalEstoque.Text    := dmDB.TStartbombaLocal.AsString;
   vIdLocalEstoque         := dmDB.TStartbombaidlocalestoque.AsString;
   vIdCombustivel          := dmDB.TStartbombacombustivel.AsString;
   edtCombustivel.Text     := dmDB.TStartbombaCombustivelNome.AsString;
   edtLocalEstoque.Enabled := false;
   edtCombustivel.Enabled  := false;
   layAlerta.Height        := 180;
   vAbriImg                := 0;
   layBuscaMaquina.Height  := 60;
   lblPage.Text            := 'Novo Abastecimentos';
   MudarAba(tbiCad,sender);
 end;
end;

procedure TfrmAbastecimento.btnNovoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
 TRectangle(Sender).Opacity :=0.5;
end;

procedure TfrmAbastecimento.btnNovoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  TRectangle(Sender).Opacity :=1;
end;

procedure TfrmAbastecimento.btnNovoProdutoClick(Sender: TObject);
begin
  edtOutroProduto.Text        :='';
  edtQtdOutroProduto.Text     :='0';
  layNewOutros.Visible        :=true;
  dmDB.AbrirAbastecimentoOutros(vIdAbastecimento,'');
  dmDB.TAbastecimentoOutros.Insert;
end;

procedure TfrmAbastecimento.btnSalvaFotosClick(Sender: TObject);
begin
 MudarAba(tbiCad,sender)
end;

procedure TfrmAbastecimento.ActFotoDidFinishTaking(Image: TBitmap);
begin
  if vImgCapture=1 then//Horimetro
  begin
   imgHorimetro.Bitmap.Assign(Image);
   if not imgHorimetro.Bitmap.IsEmpty then
   begin
    vImgCad64Horimetro := Base64FromBitmap(imgHorimetro.Bitmap);
    ImgMnuHorimetro.Bitmap :=imgHorimetro.Bitmap;
   end
   else
    ImgMnuHorimetro.Bitmap   :=nil;
   Exit;
  end;

  if vImgCapture=2 then//Bomba
  begin
   imgBomba.Bitmap.Assign(Image);
   if not imgBomba.Bitmap.IsEmpty then
   begin
    vImgCad64Bomba       := Base64FromBitmap(imgBomba.Bitmap);
    ImgMnuBomba.Bitmap   := imgBomba.Bitmap;
   end
   else
     ImgMnuBomba.Bitmap   := nil;
   Exit;
  end;

  if vImgCapture=3 then//km
  begin
   imgFotoKM.Bitmap.Assign(Image);
   if not imgFotoKM.Bitmap.IsEmpty then
   begin
    vCadImg64KM          := Base64FromBitmap(imgFotoKM.Bitmap);
    ImgMnuKM.Bitmap      :=imgFotoKM.Bitmap;
   end
   else
    ImgMnuKM.Bitmap   := nil;
   imgFotoKM.Bitmap.Assign(Image);
   Exit;
  end;
end;

procedure TfrmAbastecimento.AfterConstruction;
begin
  inherited;
  Self.ImageStream := TStringStream.Create;
end;



function TfrmAbastecimento.Base64FromBitmap(Bitmap: TBitmap): string;
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

function TfrmAbastecimento.BitmapFromBase64(const base64: string): TBitmap;
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

procedure TfrmAbastecimento.SalvarImagem(Bitmap: TBitmap);
var
  objSurf: TBitmapSurface;
begin
  objSurf   := TBitmapSurface.Create;
  try
   Self.ImageStream.Clear;
   objSurf.Assign(Bitmap);

   if not TBitmapCodecManager.SaveToStream(Self.ImageStream, objSurf, '.jpg') then
    raise EBitmapSavingFailed.Create('Error saving Bitmap to jpg');
  finally
   objSurf.Free;
  end;
end;

procedure TfrmAbastecimento.TakePicturePermissionRequestResult(Sender: TObject;
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

procedure TfrmAbastecimento.btnVoltar1Click(Sender: TObject);
begin
 begin
   MessageDlg('Deseja Realmente Sair dessa Tela?', System.UITypes.TMsgDlgType.mtInformation,
   [System.UITypes.TMsgDlgBtn.mbYes,
   System.UITypes.TMsgDlgBtn.mbNo
   ], 0,
   procedure(const AResult: System.UITypes.TModalResult)
   begin
    case AResult of
     mrYES:
     begin
       Close;
     end;
     mrNo:
    end;
   end);
 end
end;

procedure TfrmAbastecimento.btnVoltar1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  btnVoltar1.Opacity :=0.5;
end;

procedure TfrmAbastecimento.btnVoltar1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  btnVoltar1.Opacity :=1;
end;

procedure TfrmAbastecimento.btnVoltar2Click(Sender: TObject);
begin
  MudarAba(tbiLista,sender);
end;

procedure TfrmAbastecimento.btnVoltarBombaClick(Sender: TObject);
begin
 if vAbriImg=0 then
  MudarAba(tbiCad,sender);
 if vAbriImg=1 then
  MudarAba(tbiLista,sender);
end;

procedure TfrmAbastecimento.btnVoltarClick(Sender: TObject);
begin
 if tbPrincipal.TabIndex =1 then
 begin
  tbPrincipal.ActiveTab := tbiLista;
  Exit;
 end;
 if tbPrincipal.TabIndex =2 then
 begin
  tbPrincipal.ActiveTab := tbiCad;
  Exit;
 end;
 if tbPrincipal.TabIndex =3 then
 begin
  if vAbriImg=0 then
   tbPrincipal.ActiveTab := tbiCad
  else
   tbPrincipal.ActiveTab := tbiLista;
   Exit;
 end;
 if tbPrincipal.TabIndex=0 then
 begin
  Close;
 end;

end;

procedure TfrmAbastecimento.cbxTipoAlertaChange(Sender: TObject);
begin
end;

{$IFDEF ANDROID}

procedure TfrmAbastecimento.DestroiFrames;
var
  i : Integer;
begin
  for i := ComponentCount - 1 downto 0 do
  begin
   If (Components[i] is TFrame) then
     TFrame(Components[i]).Destroy;
  end;
end;

procedure TfrmAbastecimento.DisplayMessageCamera(Sender: TObject;
  const APermissions: TArray<string>; const APostProc: TProc);
begin
  TDialogService.ShowMessage('O app precisa acessar a câmera e as fotos do seu dispositivo',
  procedure(const AResult: TModalResult)
  begin
   APostProc;
  end);
end;

procedure TfrmAbastecimento.DisplayMessageLibrary(Sender: TObject;
  const APermissions: TArray<string>; const APostProc: TProc);
begin
 TDialogService.ShowMessage('O app precisa acessar as fotos do seu dispositivo',
  procedure(const AResult: TModalResult)
  begin
    APostProc;
  end);
end;

procedure TfrmAbastecimento.DisplayRationale(Sender: TObject;
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

{$ENDIF}

procedure TfrmAbastecimento.MudarAba(ATabItem: TTabItem; sender: TObject);
begin
  actMudarAba.Tab := ATabItem;
  actMudarAba.ExecuteTarget(sender);
end;



procedure TfrmAbastecimento.Rectangle17Click(Sender: TObject);
begin
 begin
   MessageDlg('Deseja Realmente Sair dessa Tela?', System.UITypes.TMsgDlgType.mtInformation,
   [System.UITypes.TMsgDlgBtn.mbYes,
   System.UITypes.TMsgDlgBtn.mbNo
   ], 0,
   procedure(const AResult: System.UITypes.TModalResult)
   begin
    case AResult of
     mrYES:
     begin
       GeraListaCards(GeraFiltro);
       MudarAba(tbiLista,sender)
     end;
     mrNo:
    end;
   end);
 end
end;

procedure TfrmAbastecimento.btnVoltarHorimetroClick(Sender: TObject);
begin
 
 if vAbriImg=0 then
  MudarAba(tbiCad,sender);
 if vAbriImg=1 then
  MudarAba(tbiLista,sender);
 layImgHorimetro.Enabled := true;
end;

procedure TfrmAbastecimento.btnVoltarKMClick(Sender: TObject);
begin
 if vAbriImg=0 then
  MudarAba(tbiCad,sender);
 if vAbriImg=1 then
  MudarAba(tbiLista,sender);
end;

procedure TfrmAbastecimento.tbPrincipalChange(Sender: TObject);
begin
 case tbPrincipal.TabIndex of
  0:lblPage.Text              := 'Abastecimentos';
  1:lblPage.Text              := 'Novo Abastecimento';
  2:begin
     lblPage.Text             := 'Foto Horimetro';
     btnFotoHorimetro.Visible := vAbriImg=0;
    end;
  3:begin
     lblPage.Text             := 'Foto Bomba';
     btnFotoBomba.Visible     := vAbriImg=0;
    end;
  4:begin
     lblPage.Text             := 'Foto KM';
     btnFotoKM.Visible        := vAbriImg=0;
    end;
 end;

end;

procedure TfrmAbastecimento.EditButton1Click(Sender: TObject);
begin
  if not Assigned(frmLocalEstoque) then
   Application.CreateForm(TfrmLocalEstoque,frmLocalEstoque);
    frmLocalEstoque.Show;
end;

procedure TfrmAbastecimento.EditButton3Click(Sender: TObject);
begin
 if not Assigned(frmprodutos) then
   Application.CreateForm(Tfrmprodutos,frmprodutos);
    frmprodutos.Show;
end;

procedure TfrmAbastecimento.EditButton4Click(Sender: TObject);
begin
  frmProdutos := TfrmProdutos.Create(Self);
  try
    frmprodutos.vAbastecimento :=1;
    frmProdutos.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
      vIdCombustivel          := dmDB.vIdProduto;
      edtCombustivel.Text     := dmDB.vNomeProduto;
    end);
  finally
    frmProdutos.free;
  end;
end;

procedure TfrmAbastecimento.btnBuscarMaquinaClick(Sender: TObject);
begin
  frmMaquinas := TfrmMaquinas.Create(Self);
  try
    frmMaquinas.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
      edtMaquina.Text   := dmDB.vMarcaModelo;
      vIdMaquina        := dmDB.vIdMaquinaSel;
    end);
  finally
    frmMaquinas.free;
  end;
end;

procedure TfrmAbastecimento.edtDataFClosePicker(Sender: TObject);
begin
  GeraListaCards(GeraFiltro);
end;

procedure TfrmAbastecimento.edtHorimetroTyping(Sender: TObject);
begin
 formatar(edtHorimetro,TFormato.Valor);
end;

procedure TfrmAbastecimento.edtKmTyping(Sender: TObject);
begin
 formatar(edtKm,TFormato.Valor);
end;

procedure TfrmAbastecimento.edtLitrosTyping(Sender: TObject);
begin
 formatar(edtLitros,TFormato.ValorDecimal);
end;

procedure TfrmAbastecimento.FormCreate(Sender: TObject);
begin
 permissao               := T99Permissions.Create;
  if NOT permissao.VerifyCameraAccess then
   permissao.Camera(nil, nil);
 {$IFDEF ANDROID}
  if not TPlatformServices.Current.SupportsPlatformService(IFMXClipboardService, IInterface(ClipService)) then
   ClipService := nil;
  Elapsed := 0;
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

procedure TfrmAbastecimento.FormDestroy(Sender: TObject);
begin
 permissao.DisposeOf;
end;

procedure TfrmAbastecimento.FormKeyUp(Sender: TObject; var Key: Word;
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

procedure TfrmAbastecimento.FormShow(Sender: TObject);
begin
 RecImgHrimetro.Height   := (frmAbastecimento.Height/3)-50;
 RecImgBomba.Height      := (frmAbastecimento.Height/3)-50;
 RecImgBomba.Height      := (frmAbastecimento.Height/3)-50;
 layNewOutros.Width      := frmAbastecimento.Width-20;
 layAlerta.Width         := frmAbastecimento.Width-20;
 layBuscaMaquina.Height  := 60;
 lblPage.Text            := 'Abastecimentos';
 layNewOutros.Visible    := false;
 layBtnLista.Visible     := false;
 tbPrincipal.TabPosition := TTabPosition.None;
 tbPrincipal.ActiveTab   := tbiLista;

 RecImgBomba.Width       := frmAbastecimento.Width-5;
 RecImgHrimetro.Width    := frmAbastecimento.Width-5;
 RecImgkm.Width          := frmAbastecimento.Width-5;

 RecImgBomba.Height      :=RecImgBomba.Width;
 RecImgHrimetro.Height   :=RecImgHrimetro.Width;
 RecImgkm.Height         :=RecImgkm.Width;


 btnTiraFotoBomba.Width    := (frmAbastecimento.Width/3)-5;
 btnTiraFotoHorimetro.Width:= (frmAbastecimento.Width/3)-5;
 btnTiraFotoKM.Width       := (frmAbastecimento.Width/3)-5;
 layHorimetro.Visible      := false;
 layKm.Visible             := false;

 GeraListaCards(GeraFiltro);
end;

procedure TfrmAbastecimento.FrameCanFocus(Sender: TObject;
  var ACanFocus: Boolean);
begin
 if ACanFocus then
  FFrame.RecBack.Fill.Color := TAlphaColorRec.Lime
 else
  FFrame.RecBack.Fill.Color := TAlphaColorRec.White;
end;

procedure TfrmAbastecimento.FrameClick(Sender: TObject);
begin
  vIdAbastecimento   := TFItemListaAbastecimento(sender).lblMaquina.TagString;
  vFlagSync          := intToStr(TFItemListaAbastecimento(sender).Tag);
  vImg64Horimetro    := TFItemListaAbastecimento(sender).lbldata.TagString;
  vImg64Bomba        := TFItemListaAbastecimento(sender).lblHora.TagString;
  vImg64KM           := TFItemListaAbastecimento(sender).lblBomba.TagString;
  FFrame.SetFocus;
end;

procedure TfrmAbastecimento.FrameGesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  layBtnLista.Visible := true;
end;


procedure TfrmAbastecimento.FrameMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  TFrame(sender).Opacity := 0.5;
end;

procedure TfrmAbastecimento.FrameMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
   TFrame(sender).Opacity := 1;
end;

function TfrmAbastecimento.GeraFiltro:string;
begin
 vFiltro :='';
 if edtMaquinaF.Text.Length>0 then
 begin
   vFiltro := vFiltro+' and dataabastecimento='+FormatDateTime('yyyy-mm-dd',edtDataF.Date).QuotedString;
   vFiltro := vFiltro+' and Maquina like '+QuotedStr('%'+edtMaquinaF.Text+'%')
 end
 else
 begin
   vFiltro := vFiltro+' and dataabastecimento='+FormatDateTime('yyyy-mm-dd',edtDataF.Date).QuotedString;
 end;
 Result :=vFiltro;
end;

//procedure TfrmAbastecimento.GeraLista(vFiltro: string);
//var
// item   : TListViewItem;
// txt    : TListItemText;
// txtH   : TListItemPurpose;
// img    : TListItemImage;
//begin
// dmDB.AbrirAbastecimento(vFiltro);
// dmDB.TAbastecimento.First;
// Lista.Items.Clear;
// while not dmDB.TAbastecimento.eof do
// begin
//   item := Lista.Items.Add;
//   with frmAbastecimento do
//   begin
//     with item  do
//     begin
//       txt      := TListItemText(Objects.FindDrawable('Text3'));
//       txt.Text := dmDB.TAbastecimentoMaquina.AsString;
//       txt.TagString := dmDB.TAbastecimentoid.AsString;
//
//       txt           := TListItemText(Objects.FindDrawable('Text5'));
//       txt.Text      := 'Data: ';
//       txt           := TListItemText(Objects.FindDrawable('Text6'));
//       txt.Text      := dmDB.TAbastecimentodataabastecimento.AsString;
//       txt.TagString := dmDB.TAbastecimentosyncaws.AsString;
//
//       txt      := TListItemText(Objects.FindDrawable('Text4'));
//       txt.Text := 'Hora: ';
//       txt      := TListItemText(Objects.FindDrawable('Text7'));
//       txt.Text := dmDB.TAbastecimentohora.AsString;
//
//       txt      := TListItemText(Objects.FindDrawable('Text8'));
//       txt.Text := 'Horímetro: ';
//       txt      := TListItemText(Objects.FindDrawable('Text9'));
//       txt.Text := dmDB.TAbastecimentohorimetro.AsString;
//
//       txt      := TListItemText(Objects.FindDrawable('Text17'));
//       txt.Text := 'KM: ';
//       txt      := TListItemText(Objects.FindDrawable('Text18'));
//       txt.Text := dmDB.TAbastecimentokmatual.AsString;
//
//       txt      := TListItemText(Objects.FindDrawable('Text10'));
//       txt.Text := 'Bomba: ';
//       txt      := TListItemText(Objects.FindDrawable('Text11'));
//       txt.Text := dmDB.TAbastecimentoLocalEstoque.AsString;
//
//       txt      := TListItemText(Objects.FindDrawable('Text12'));
//       txt.Text := 'Combustivel: ';
//       txt.TagString := dmDB.TAbastecimentoimg.AsString;
//
//       txt      := TListItemText(Objects.FindDrawable('Text13'));
//       txt.Text := dmDB.TAbastecimentoCombustivelNome.AsString;
//       txt.TagString := dmDB.TAbastecimentoimg2.AsString;
//
//       txt      := TListItemText(Objects.FindDrawable('Text14'));
//       txt.Text := 'Litros: ';
//       txt      := TListItemText(Objects.FindDrawable('Text15'));
//       txt.Text := dmDB.TAbastecimentovolumelt.AsString;
//
//       txt      := TListItemText(Objects.FindDrawable('Text16'));
//       txt.Text := 'Outros Produtos';
//       txt.TagString := dmDB.TAbastecimentoimg3.AsString;
//
//
//       img := TListItemImage(Objects.FindDrawable('Image10'));
//       img.Bitmap     := frmPrincipal.imgCobustivel.Bitmap;
//
//       if dmDB.TAbastecimentoimg2.AsString.Length>0 then
//       begin
//        img := TListItemImage(Objects.FindDrawable('Image21'));
//        img.Bitmap     := frmPrincipal.ImgListaBomba.Bitmap;
//        txt      := TListItemText(Objects.FindDrawable('Text24'));
//        txt.Text := 'Foto Bomba';
//       end
//       else
//       begin
//        img := TListItemImage(Objects.FindDrawable('Image21'));
//        img.Bitmap     := nil;
//        txt      := TListItemText(Objects.FindDrawable('Text24'));
//        txt.Text := '';
//       end;
//
//       if dmDB.TAbastecimentoimg.AsString.Length>0 then
//       begin
//        img := TListItemImage(Objects.FindDrawable('Image22'));
//        img.Bitmap     := frmPrincipal.ImgListaHorimetro.Bitmap;
//        txt      := TListItemText(Objects.FindDrawable('Text25'));
//        txt.Text := 'Foto Horimetro';
//       end
//       else
//       begin
//        img := TListItemImage(Objects.FindDrawable('Image22'));
//        img.Bitmap     := nil;
//        txt      := TListItemText(Objects.FindDrawable('Text25'));
//        txt.Text := '';
//       end;
//
//       if dmDB.TAbastecimentoimg3.AsString.Length>0 then
//       begin
//        img := TListItemImage(Objects.FindDrawable('Image23'));
//        img.Bitmap     := frmPrincipal.ImgListaKM.Bitmap;
//        txt      := TListItemText(Objects.FindDrawable('Text26'));
//        txt.Text := 'Foto KM';
//       end
//       else
//       begin
//        img := TListItemImage(Objects.FindDrawable('Image23'));
//        img.Bitmap     := nil;
//        txt      := TListItemText(Objects.FindDrawable('Text26'));
//        txt.Text := '';
//       end;
//
//       img.TagString  := dmDB.TAbastecimentoimg2.AsString;//img bomba
//     end;
//     dmDB.TAbastecimento.Next;
//   end;
// end;
//end;

procedure TfrmAbastecimento.GeraListaCards(vFiltro: string);
var
  ListaCards:Tlistbox;
  item: TListBoxItem;
  vImgBomba,vImgHorimetro,vImgkm :TImage;
begin
   FreeAndNil(ListaCards);
   DestroiFrames;

   ListaCards        := TListBox.Create(self);
   ListaCards.Parent := layListCards;
   ListaCards.Align  := TAlignLayout.Client;
   ListaCards.Touch.GestureManager := GestureManager1;

   dmDB.AbrirAbastecimento(vFiltro);
   dmDB.TAbastecimento.First;
   while not dmDB.TAbastecimento.eof do
   begin
    ListaCards.BeginUpdate;
    item := TListBoxItem.Create(self);
    FFrame := TFItemListaAbastecimento.Create(self);
    FFrame.Name:= 'Item_'+dmDB.TAbastecimentoid.AsString;

    FFrame.Parent          := item;
    FFrame.Align           := TAlignLayout.Client;
    FFrame.HitTest         := true;
    FFrame.Tag             := dmDB.TAbastecimentosyncaws.AsInteger;
    FFrame.TagString       := dmDB.TAbastecimentoid.AsString;
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

    FFrame.lblMaquina.Text     := dmDB.TAbastecimentoMaquina.AsString;
    FFrame.lblMaquina.TagString:=  dmDB.TAbastecimentoid.AsString;

    FFrame.lblData.Text        := dmDB.TAbastecimentodataabastecimento.AsString;
    FFrame.lblData.TagString   := dmDB.TAbastecimentoimg.AsString;

    FFrame.lblHora.Text        := dmDB.TAbastecimentohora.AsString;
    FFrame.lblHora.TagString   := dmDB.TAbastecimentoimg2.AsString;

    FFrame.lblBomba.Text       := dmDB.TAbastecimentoLocalEstoque.AsString;
    FFrame.lblBomba.TagString  := dmDB.TAbastecimentoimg3.AsString;

    FFrame.lblCombustivel.Text := dmDB.TAbastecimentoCombustivelNome.AsString;
    FFrame.lblLitros.Text      := dmDB.TAbastecimentovolumelt.AsString;

    FFrame.lblHorimetro.Text   := dmDB.TAbastecimentohorimetro.AsString;
    FFrame.lblKM.Text          := dmDB.TAbastecimentokmatual.AsString;

    vImgBomba                  := TImage.Create(self);
    vImgBomba.Name             := 'img_'+dmDB.TAbastecimentoid.AsString;
    vImgBomba.Parent           := FFrame.layImg;
    vImgBomba.Align            := TAlignLayout.Left;
    vImgBomba.Width            := 90;
    vImgBomba.Width            := 55;
    vImgBomba.Margins.Left     := 10;
    vImgBomba.Bitmap           := FFrame.imgBomba.Bitmap;
    vImgBomba.Tag              := dmDB.TAbastecimentoid.AsInteger;
    vImgBomba.TagString        := dmDB.TAbastecimentoimg2.AsString;
    vImgBomba.OnClick          := imgBombaClick;

    vImgHorimetro                  := TImage.Create(self);
    vImgHorimetro.Name             := 'imgh_'+dmDB.TAbastecimentoid.AsString;
    vImgHorimetro.Parent           := FFrame.layImg;
    vImgHorimetro.Align            := TAlignLayout.Left;
    vImgHorimetro.Width            := 90;
    vImgHorimetro.Width            := 55;
    vImgHorimetro.Margins.Left     := 10;
    vImgHorimetro.Bitmap           := FFrame.imgHorimetro.Bitmap;
    vImgHorimetro.Tag              := dmDB.TAbastecimentoid.AsInteger;
    vImgHorimetro.TagString        := dmDB.TAbastecimentoimg.AsString;
    vImgHorimetro.OnClick          := imgHorimetroClick;


    vImgKM                         := TImage.Create(self);
    vImgKM.Name                    := 'imgK_'+dmDB.TAbastecimentoid.AsString;
    vImgKM.Parent                  := FFrame.layImg;
    vImgKM.Align                   := TAlignLayout.Left;
    vImgKM.Width                   := 90;
    vImgKM.Width                   := 55;
    vImgKM.Margins.Left            := 10;
    vImgKM.Bitmap                  := FFrame.imgKM.Bitmap;
    vImgKM.Tag                     := dmDB.TAbastecimentoid.AsInteger;
    vImgKM.TagString               := dmDB.TAbastecimentoimg3.AsString;
    vImgKM.OnClick                 := imgKMClick;

//    FFrame.imgHorimetro.Tag       := dmDB.TAbastecimentoid.AsInteger;
//    FFrame.imgHorimetro.TagString := dmDB.TAbastecimentoimg.AsString;
//    FFrame.imgHorimetro.OnClick   := imgHorimetroClick;
//
//
//    FFrame.imgkm.Tag              := dmDB.TAbastecimentoid.AsInteger;
//    FFrame.imgkm.TagString        := dmDB.TAbastecimentoimg3.AsString;
//    FFrame.imgkm.OnClick          := imgKMClick;

    item.Parent                   := ListaCards;

    ListaCards.EndUpdate;
    dmDB.TAbastecimento.Next;
  end;
end;

procedure TfrmAbastecimento.GeraListaProdutos(vIdAbastecimento,
  vFiltro: string);
var
 item   : TListViewItem;
 txt    : TListItemText;
 txtH   : TListItemPurpose;
 img    : TListItemImage;
 vStatus:string;
begin
 
end;

procedure TfrmAbastecimento.Image18Click(Sender: TObject);
begin
 layNewOutros.Visible := false;
end;

procedure TfrmAbastecimento.Image2Click(Sender: TObject);
begin
 if vImgCad64Horimetro.Length>0 then
  imgHorimetro.Bitmap  := BitmapFromBase64(vImgCad64Horimetro)
 else
  imgHorimetro.Bitmap  := nil;
 MudarAba(tbiImg,sender)
end;

procedure TfrmAbastecimento.Image6Click(Sender: TObject);
begin
 if vCadImg64KM.Length>0 then
  imgFotoKM.Bitmap  := BitmapFromBase64(vCadImg64KM)
 else
  imgFotoKM.Bitmap  := nil;
 MudarAba(tbiImgKM,sender)
end;

procedure TfrmAbastecimento.imgBombaClick(Sender: TObject);
begin
 vAbriImg           :=1;
 vIdAbastecimento   := intToStr((Sender as TImage).tag);
 vImg64Bomba        := (Sender as TImage).tagString;

 if vImg64Bomba.Length>0 then
  imgBomba.Bitmap  := BitmapFromBase64(vImg64Bomba)
 else
  imgBomba.Bitmap  := nil;
 MudarAba(tbiImgBomba,sender);
 lblPage.Text :='Foto Bomba';
end;

procedure TfrmAbastecimento.imgChekBombaaClick(Sender: TObject);
begin
 if vImgCad64Bomba.Length>0 then
  imgBomba.Bitmap  := BitmapFromBase64(vImgCad64Bomba)
 else
  imgBomba.Bitmap  := nil;
 MudarAba(tbiImgBomba,sender)
end;

procedure TfrmAbastecimento.imgHorimetroClick(Sender: TObject);
begin
 vAbriImg           :=1;
 vIdAbastecimento   := intToStr((Sender as TImage).tag);
 vImg64Horimetro    := (Sender as TImage).tagString;

 if vImg64Horimetro.Length>0 then
  imgHorimetro.Bitmap  := BitmapFromBase64(vImg64Horimetro)
 else
  imgHorimetro.Bitmap  := nil;
 MudarAba(tbiImg,sender);
 lblPage.Text :='Foto Horimetro';
end;

procedure TfrmAbastecimento.imgKMClick(Sender: TObject);
begin
 vIdAbastecimento   := intToStr((Sender as TImage).tag);
 vImg64KM           := (Sender as TImage).tagString;
 vAbriImg           :=1;
 if vImg64KM.Length>0 then
  imgFotoKM.Bitmap  := BitmapFromBase64(vImg64KM)
 else
  imgFotoKM.Bitmap  := nil;
 MudarAba(tbiImgKM,sender);
 lblPage.Text :='Foto KM';
end;

procedure TfrmAbastecimento.InsertAbastecimento;
var
 vKM,vHorimetro:double;
begin
  if edtKM.Text.Length>0 then
   vKM := StrToFloat(StringReplace(edtKM.Text,'.','',[rfReplaceAll]));
  if edtHorimetro.Text.Length>0 then
   vHorimetro := StrToFloat(StringReplace(edtHorimetro.Text,'.','',[rfReplaceAll]));

  dmdb.TAbastecimento.Insert;
  dmdb.TAbastecimentoid.AsInteger                       := dmDB.RetornaIdAbastecimento;
  dmdb.TAbastecimentoidmaquina.AsString                 := vIdMaquina;
  dmdb.TAbastecimentoidusuario.AsString                 := dmDB.vIdUser;
  dmdb.TAbastecimentoidlocalestoque.AsString            := vIdLocalEstoque;
  dmdb.TAbastecimentocombustivel.AsString               := vIdCombustivel;
  dmdb.TAbastecimentodataabastecimento.AsDateTime       := edtData.DateTime;
  dmdb.TAbastecimentohora.AsDateTime                    := edtHora.DateTime;
  dmdb.TAbastecimentovolumelt.AsFloat                   := StrToFloat(edtLitros.Text);

  dmdb.TAbastecimentoimg2.AsString                      := vImgCad64Bomba;
  if vImgCad64Horimetro.Length>0 then
   dmdb.TAbastecimentoimg.AsString                      := vImgCad64Horimetro;
  if vCadImg64KM.Length>0 then
   dmdb.TAbastecimentoimg3.AsString                     := vCadImg64KM;

  dmdb.TAbastecimentolatitude.AsString                  := edtLatitude.Text;
  dmdb.TAbastecimentolongitude.AsString                 := edtLongitude.Text;
  dmdb.TAbastecimentoidcentrocusto.AsString             := dmDB.vIdCentroCusto;
  if edtHorimetro.Text.Length>0 then
   dmdb.TAbastecimentohorimetro.AsFloat                 := vHorimetro;
  if edtKM.Text.Length>0 then
   dmdb.TAbastecimentokmatual.AsFloat                   := vKM;
  dmdb.TAbastecimentoalerta.AsInteger                   := vTipoAlerta;
  try
   dmdb.TAbastecimento.ApplyUpdates(-1);
   frmPrincipal.ReproduzSom('Operacao Finalizada');
   ShowMessage('Abastecimento Adicionada com sucesso!!');
   GeraListaCards(GeraFiltro);
   tbPrincipal.ActiveTab := tbiLista;
  except
   on E: Exception do
   begin
    frmPrincipal.ReproduzSom('Opa Erro');
    ShowMessage('Erro ao salvar Abastecimento:'+E.Message);
   end;
  end;
end;

procedure TfrmAbastecimento.LibraryPermissionRequestResult(Sender: TObject;
  const APermissions: TArray<string>;
  const AGrantResults: TArray<TPermissionStatus>);
begin
 if (Length(AGrantResults) = 2) and
  (AGrantResults[0] = TPermissionStatus.Granted) and
  (AGrantResults[1] = TPermissionStatus.Granted) then
   ActLibrary.Execute
  else
   TDialogService.ShowMessage('Você não tem permissão para acessar as fotos');
end;

procedure TfrmAbastecimento.LimpaCampos;
begin
  edtMaquina.Text          := '';
  edtLocalEstoque.Text     := '';
  edtLitros.text           := '';
  edtHorimetro.text        := '';
  edtKM.text               := '';
  edtData.Date             := date;
  edtHora.DateTime         := now;
  edtCombustivel.Text      := '';
  edtLatitude.Text         := '';
  edtLongitude.Text        := '';
  vTipoAlerta              := 0;
  layAlerta.Visible        := false;

  vAbriImg                 := 0;
  vEditaFoto               := 0;

  LocationSensor1.Active   := false;
  LocationSensor1.Active   := true;

  vImg64Horimetro          := '';
  vImg64Bomba              := '';
  vImg64KM                 := '';

  vImgCad64Horimetro       := '';
  vImgCad64Bomba           := '';
  vCadImg64KM              := '';

  imgHorimetro.Bitmap      := nil;
  imgBomba.Bitmap          := nil;
  imgFotoKM.Bitmap         := nil;

  ImgMnuBomba.Bitmap       := nil;
  ImgMnuHorimetro.Bitmap   := nil;
  ImgMnuKM.Bitmap          := nil;

end;

procedure TfrmAbastecimento.ListaGesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
 layBtnLista.Visible   := true;
end;

procedure TfrmAbastecimento.ListaItemClickEx(const Sender: TObject;
  ItemIndex: Integer; const LocalClickPos: TPointF;
  const ItemObject: TListItemDrawable);
var
 vStream    : TMemoryStream;
begin
  vIdAbastecimento   := TAppearanceListViewItem(Lista.Selected).Objects.FindObjectT<TListItemText>
   ('Text3').TagString;
  vFlagSync          := TAppearanceListViewItem(Lista.Selected).Objects.FindObjectT<TListItemText>
   ('Text6').TagString;

  vImg64Horimetro      := TAppearanceListViewItem(Lista.Selected).Objects.FindObjectT<TListItemText>
   ('Text12').TagString;

  vImg64Bomba          := TAppearanceListViewItem(Lista.Selected).Objects.FindObjectT<TListItemText>
   ('Text13').TagString;

  vImg64KM          := TAppearanceListViewItem(Lista.Selected).Objects.FindObjectT<TListItemText>
   ('Text16').TagString;


  if ItemObject is TListItemImage then
  begin

    if TListItemImage(ItemObject).Name='Image21' then
    begin
     if TListItemImage(ItemObject).Bitmap<>nil then
     begin
      vAbriImg                 :=1;
      if vImg64Bomba.Length>0 then
       imgBomba.Bitmap  := BitmapFromBase64(vImg64Bomba)
      else
       imgBomba.Bitmap  := nil;
      MudarAba(tbiImgBomba,sender)
     end;
    end;

    if TListItemImage(ItemObject).Name='Image22' then
    begin
     if TListItemImage(ItemObject).Bitmap<>nil then
     begin
      vAbriImg                 :=1;
      if vImg64Horimetro.Length>0 then
       imgHorimetro.Bitmap  := BitmapFromBase64(vImg64Horimetro)
      else
       imgHorimetro.Bitmap  := nil;
       MudarAba(tbiImg,sender)
     end;
    end;

    if TListItemImage(ItemObject).Name='Image23' then
    begin
     if TListItemImage(ItemObject).Bitmap<>nil then
     begin
       vAbriImg     :=1;
       if vImg64KM.Length>0 then
        imgFotoKM.Bitmap  := BitmapFromBase64(vImg64KM)
       else
        imgFotoKM.Bitmap  := nil;
        MudarAba(tbiImgKM,sender)
     end;
    end;
  end;
end;

procedure TfrmAbastecimento.LocationPermissionRequestResult(Sender: TObject;
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
    TDialogService.ShowMessage
      ('Não é possível acessar o GPS porque o app não possui acesso');
    vLatitude  := 'Sem Permissão';
    vLongitude := 'Sem Permissão';
  end;
end;

procedure TfrmAbastecimento.LocationSensor1LocationChanged(Sender: TObject;
  const OldLocation, NewLocation: TLocationCoord2D);
begin
 edtLatitude.Text  := Format('%2.6f', [NewLocation.Latitude]);
 edtLongitude.Text := Format('%2.6f', [NewLocation.Longitude]);
end;

end.

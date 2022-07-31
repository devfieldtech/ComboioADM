unit ULubrificacao;

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
    ,Soap.EncdDecd;

type
  TfrmLubrificacao = class(TForm)
    actAcoes: TActionList;
    actMudarAba: TChangeTabAction;
    AcMudarAbaChart: TAction;
    AcMudarAbaDespesas: TAction;
    AcLeft: TAction;
    AcRigth: TAction;
    ActionList1: TActionList;
    ActLibrary: TTakePhotoFromLibraryAction;
    ActFoto: TTakePhotoFromCameraAction;
    GestureManager1: TGestureManager;
    GestureManager2: TGestureManager;
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
    btnExcluiItem: TRectangle;
    Image1: TImage;
    lblExcluir: TLabel;
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
    tbiCad: TTabItem;
    TimerMsg: TTimer;
    layTBICad: TLayout;
    Rectangle1: TRectangle;
    Layout6: TLayout;
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
    layBuscaMaquina: TLayout;
    Rectangle2: TRectangle;
    Layout9: TLayout;
    Label2: TLabel;
    Layout34: TLayout;
    edtMaquina: TEdit;
    btnLerQr: TEditButton;
    Image5: TImage;
    Layout8: TLayout;
    Layout35: TLayout;
    Label14: TLabel;
    lblUltimoAbastecimento: TLabel;
    Layout36: TLayout;
    Label21: TLabel;
    Label27: TLabel;
    lblUltimoHr: TLabel;
    lblUltimoKM: TLabel;
    Layout14: TLayout;
    Rectangle7: TRectangle;
    Layout15: TLayout;
    Label10: TLabel;
    edtDataTroca: TDateEdit;
    Layout18: TLayout;
    Rectangle8: TRectangle;
    Layout19: TLayout;
    Label12: TLabel;
    edtHorimetro: TEdit;
    Layout44: TLayout;
    Rectangle20: TRectangle;
    Layout45: TLayout;
    Label34: TLabel;
    Label35: TLabel;
    edtLatitude: TEdit;
    edtLongitude: TEdit;
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
    tbiProdutos: TTabItem;
    layListaP: TLayout;
    AnimacaoMnu: TFloatAnimation;
    layLista: TLayout;
    Rectangle11: TRectangle;
    ListaProdutos: TListView;
    btnExcluiProduto: TRectangle;
    Image6: TImage;
    Label22: TLabel;
    Layout20: TLayout;
    btnNovoProduto: TRectangle;
    Image2: TImage;
    Label15: TLabel;
    btnVoltarProduto: TRectangle;
    Image3: TImage;
    Label16: TLabel;
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
    EditButton3: TEditButton;
    Layout29: TLayout;
    Rectangle14: TRectangle;
    Layout30: TLayout;
    Layout32: TLayout;
    Label26: TLabel;
    edtQtdOutroProduto: TEdit;
    Layout33: TLayout;
    btnConfirmaProduto: TRectangle;
    Image4: TImage;
    Label19: TLabel;
    LocationSensor1: TLocationSensor;
    Label3: TLabel;
    Rectangle4: TRectangle;
    Image12: TImage;
    Label5: TLabel;
    Layout1: TLayout;
    Rectangle6: TRectangle;
    Layout10: TLayout;
    Label6: TLabel;
    edtLocalEstoque: TEdit;
    SearchEditButton1: TSearchEditButton;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkFillControlToField: TLinkFillControlToField;
    Layout13: TLayout;
    Rectangle18: TRectangle;
    Layout41: TLayout;
    Label20: TLabel;
    edtKm: TEdit;
    recAguarde: TRectangle;
    Image13: TImage;
    Layout42: TLayout;
    lblLongitude: TLabel;
    lblLatitude: TLabel;
    Animacao: TFloatAnimation;
    Layout11: TLayout;
    Rectangle13: TRectangle;
    Layout12: TLayout;
    Label8: TLabel;
    cbxCompartimento: TComboBox;
    LinkListControlToFieldnome: TLinkListControlToField;
    Layout43: TLayout;
    Rectangle21: TRectangle;
    Layout47: TLayout;
    Label13: TLabel;
    cbxTipo: TComboBox;
    procedure btnBuscarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnLerQrClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConfirmarAClick(Sender: TObject);
    procedure btnNovoProdutoClick(Sender: TObject);
    procedure edtQtdOutroProdutoTyping(Sender: TObject);
    procedure EditButton3Click(Sender: TObject);
    procedure btnConfirmaProdutoClick(Sender: TObject);
    procedure Rectangle4Click(Sender: TObject);
    procedure btnVoltarProdutoClick(Sender: TObject);
    procedure ListaItemClickEx(const Sender: TObject; ItemIndex: Integer;
      const LocalClickPos: TPointF; const ItemObject: TListItemDrawable);
    procedure btnExcluiItemClick(Sender: TObject);
    procedure ListaGesture(Sender: TObject; const EventInfo: TGestureEventInfo;
      var Handled: Boolean);
    procedure ListaProdutosGesture(Sender: TObject;
      const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure btnExcluiProdutoClick(Sender: TObject);
    procedure ListaProdutosItemClickEx(const Sender: TObject;
      ItemIndex: Integer; const LocalClickPos: TPointF;
      const ItemObject: TListItemDrawable);
    procedure tbPrincipalChange(Sender: TObject);
    procedure btnVoltar1Click(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnBuscarMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btnBuscarMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Rectangle17Click(Sender: TObject);
    procedure edtHorimetroTyping(Sender: TObject);
    procedure edtKmTyping(Sender: TObject);
    procedure btnConfirmaAlertaClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure cbxCompartimentoChange(Sender: TObject);
    procedure LocationSensor1LocationChanged(Sender: TObject; const OldLocation,
      NewLocation: TLocationCoord2D);
  private
    procedure GeraLista(vFiltro:string);
    procedure MudarAba(ATabItem: TTabItem; sender: TObject);
    procedure GeraListaProdutos(vIdLubri,vFiltro:string);
     procedure LocationPermissionRequestResult
                (Sender: TObject; const APermissions: TArray<string>;
                const AGrantResults: TArray<TPermissionStatus>);
  public
    vIdMaquina,vIdMax,vidProduto,vIdLub,vIdLubProd,vFlagSync,vFlagSyncProd,
    vIdLocalEstoque,vIdCompartimento,vLatitude,vLongitude:string;
    vTipoMedicao:integer;
    vTipoAlerta,vErro:integer;

    procedure Filtro;
    procedure LimpaCampos;

  end;

var
  frmLubrificacao: TfrmLubrificacao;

implementation

{$R *.fmx}

uses UPrincipal, UDmDB, UnitCamera, uFormat, UProdutos;

procedure TfrmLubrificacao.btnBuscarClick(Sender: TObject);
begin
 GeraLista('');
end;



procedure TfrmLubrificacao.btnBuscarMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
   (Sender as TRectangle).Opacity :=0.5;
end;

procedure TfrmLubrificacao.btnBuscarMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
    (Sender as TRectangle).Opacity :=1;
end;

procedure TfrmLubrificacao.btnConfirmaAlertaClick(Sender: TObject);
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

procedure TfrmLubrificacao.btnConfirmaProdutoClick(Sender: TObject);
begin
 if edtOutroProduto.Text.Length=0 then
 begin
   ShowMessage('Informe o Produto!');
   Exit;
 end;
 if cbxCompartimento.ItemIndex=-1 then
 begin
   ShowMessage('Informe o Compartimento!');
   Exit;
 end;
 if(edtQtdOutroProduto.Text.Length=0)or(edtQtdOutroProduto.Text='0') then
 begin
   ShowMessage('Informe a Quantidade!');
   Exit;
 end;
 if cbxTipo.ItemIndex=-1 then
 begin
   ShowMessage('Informe o Tipo!');
   Exit;
 end;
 dmdb.TLubrificacaoprodutos.Close;
 dmdb.TLubrificacaoprodutos.Open;
 dmdb.TLubrificacaoprodutos.Insert;
 dmdb.TLubrificacaoprodutosidusuario.AsString      := dmdb.vIdUser;
 dmdb.TLubrificacaoprodutosidlubrificacao.AsString := vIdMax;
 dmdb.TLubrificacaoprodutosidproduto.AsString      := vidProduto;
 dmdb.TLubrificacaoprodutosidcompartimento.AsString:= vIdCompartimento;
 dmdb.TLubrificacaoprodutosqtd.AsString            := edtQtdOutroProduto.Text;
 if cbxTipo.ItemIndex=0 then
  dmdb.TLubrificacaoprodutostipo.AsInteger         :=1
 else
  dmdb.TLubrificacaoprodutostipo.AsInteger         :=2;
 try
  dmdb.TLubrificacaoprodutos.ApplyUpdates(-1);
  cbxTipo.ItemIndex :=-1;
  cbxCompartimento.ItemIndex :=-1;
  edtQtdOutroProduto.Text :='0';
  GeraListaProdutos(vIdMax,'');
  ShowMessage('Produto adicionado com sucesso!');
  layNewOutros.Visible := false;
 except
 on E : Exception do
  ShowMessage('Erro: '+E.Message);
 end;
end;

procedure TfrmLubrificacao.btnConfirmarAClick(Sender: TObject);
var
 vPescent,vKM,vHorimetro :double;
 vIdNew:integer;
begin
 vErro :=0;
 if edtMaquina.Text.Length=0 then
 begin
   ShowMessage('Informe a Maquina!');
   Exit;
 end;
// if vLongitude.Length=0 then
// begin
//   recAguarde.Visible := true;
//   Animacao.Start;
//   TThread.CreateAnonymousThread(procedure
//   begin
//    while vLongitude.Length=0 do
//    begin
//      LocationSensor1.Active:= false;
//      LocationSensor1.Active:= true;
//      Sleep(2000);
//      if vLongitude.Length>0 then
//      begin
//        TThread.Synchronize(nil, procedure
//        begin
//          lblLatitude.Text  :=vLatitude;
//          lblLongitude.Text :=vLongitude;
//          Animacao.Stop;
//          Sleep(2000);
//          recAguarde.Visible := false;
//        end);
//      end;
//    end;
//   end).start;
// end
// else
 begin
  case vTipoMedicao of
  0:begin
     if (edtHorimetro.Text='0') or (edtHorimetro.Text.Length=0) then
     begin
       ShowMessage('Informe o Horimetro!' );
       Exit;
     end
     else
      vHorimetro := StrToFloat(StringReplace(edtHorimetro.Text,'.','',[rfReplaceAll]));
    end;
  1:begin
     if (edtKM.Text='0') or (edtKM.Text.Length=0) then
     begin
       ShowMessage('Informe o Km!' );
       Exit;
     end
     else
      vKM := StrToFloat(StringReplace(edtKM.Text,'.','',[rfReplaceAll]));
    end;
  2:begin
     if (edtHorimetro.Text='0') or (edtHorimetro.Text.Length=0) then
     begin
       ShowMessage('Informe o Horimetro!' );
       Exit;
     end;
     if (edtKM.Text='0') or (edtKM.Text.Length=0) then
     begin
       ShowMessage('Informe o Km!' );
       Exit;
     end;
    end;
 end;

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
      if (vTipoAlerta=0)and((vKM-strToInt(lblUltimokm.Text))>600) then
      begin
        vErro :=1;
        frmPrincipal.ReproduzSom('km maior 600');
        MessageDlg('KM Atual não pode ser 600 km maior do que o último registrado!',
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
  begin
   dmdb.TLubrificacao.Insert;
   vIdNew                                     := dmdb.RetornaIdLubrificacao;
   dmdb.TLubrificacaoid.AsInteger             := vIdNew;
   dmdb.TLubrificacaoalerta.AsInteger         := vTipoAlerta;
   dmdb.TLubrificacaoidlocalestoque.AsString  := vidlocalestoque;
   dmdb.TLubrificacaoidusuario.AsString       := dmdb.vIdUser;
   dmdb.TLubrificacaodatatroca.AsDateTime     := edtDataTroca.Date;
   dmdb.TLubrificacaoidmaquina.AsString       := vIdMaquina;
   dmdb.TLubrificacaolatitude.AsString        := vLatitude;
   dmdb.TLubrificacaolongitude.AsString       := vLongitude;
   dmdb.TLubrificacaoidcentrocusto.AsString   := dmDB.vIdCentroCusto;
   dmdb.TLubrificacaohorimetro.AsString       := StringReplace(edtHorimetro.Text,'.','',[rfReplaceAll]);
   dmdb.TLubrificacaokm.AsString              := StringReplace(edtKM.Text,'.','',[rfReplaceAll]);
   try
    dmdb.TLubrificacao.ApplyUpdates(-1);
    frmPrincipal.ReproduzSom('Lubrificacao Criada');
     vIdMax := intToStr(vIdNew);
     GeraListaProdutos(vIdMax,'');
     ShowMessage('Lubrificação Atualizada com sucesso, adicione os insumos!' );
     MudarAba(tbiProdutos,sender);
   except
    on E : Exception do
    begin
     frmPrincipal.ReproduzSom('Opa Erro');
     ShowMessage('Erro: '+E.Message );
    end;
   end;
  end;
 end;
end;

procedure TfrmLubrificacao.btnExcluiItemClick(Sender: TObject);
begin
 btnExcluiItem.Visible := false;
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
       dmDB.DeletaLubrificacao(vIdLub);
       GeraLista('');
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

procedure TfrmLubrificacao.btnExcluiProdutoClick(Sender: TObject);
begin
 btnExcluiProduto.Visible := false;
 if vFlagSyncProd='0' then
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
       dmDB.DeletaLubrificacaoProduto(vIdLubProd);
       GeraListaProdutos(vIdMax,'');
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

procedure TfrmLubrificacao.btnFecharClick(Sender: TObject);
begin
 layAlerta.Visible := false;
end;

procedure TfrmLubrificacao.btnLerQrClick(Sender: TObject);
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
       ShowMessage('Maquina Não Encontrado');
       edtMaquina.Text :='';
       Exit;
    end
    else
    begin
      vIdMaquina                   := dmDB.TMaquinasid.AsString;
      layBuscaMaquina.Height       := 106;
      edtMaquina.Text              := dmDB.TMaquinasprefixo.AsString;
      dmDB.RetornaUltimoKMHorimetro(dmDB.TMaquinasid.AsString);
      lblUltimoKM.Text             := dmDB.vUltimoKM;
      lblUltimoHr.Text             := dmDB.vUltimoHorimetro;
      lblUltimoAbastecimento.Text  := dmDB.TMaquinasultimoabastecimento.AsString;
      case dmDB.TMaquinastipomedicao.AsInteger of
       0:begin
          edtHorimetro.Enabled :=true;
          edtkm.Enabled        :=false;
         end;
       1:begin
          edtHorimetro.Enabled :=false;
          edtkm.Enabled        :=true;
         end;
       2:begin
          edtHorimetro.Enabled :=true;
          edtkm.Enabled        :=true;
         end;
      end;
    end;
  end);
end;

procedure TfrmLubrificacao.btnNovoClick(Sender: TObject);
var
 vFiltro:string;
begin
 cbxCompartimento.ItemIndex :=-1;
 vFiltro := ' and s.dataastart='+FormatDateTime('yyyy-mm-dd',date).QuotedString;
 dmDB.AbrirStartBomba(vFiltro);
 if dmDB.TStartbomba.IsEmpty then
 begin
  frmPrincipal.ReproduzSom('Start Antes');
  ShowMessage('É necessario realizar o Start Diario antes dessa Operação!');
  Exit;
 end
 else
 begin
  LimpaCampos;
  edtLocalEstoque.Text    := dmDB.TStartbombaLocal.AsString;
  vIdLocalEstoque         := dmDB.TStartbombaidlocalestoque.AsString;
  edtLocalEstoque.Enabled := false;
  dmdb.TLubrificacao.Close;
  dmdb.TLubrificacao.Open;
  dmdb.TLubrificacao.Insert;
  MudarAba(tbiCad,sender);
 end;
end;

procedure TfrmLubrificacao.btnNovoProdutoClick(Sender: TObject);
begin
  btnExcluiProduto.Visible    := false;
  edtOutroProduto.Text        :='';
  edtQtdOutroProduto.Text     :='0';
  layNewOutros.Visible        :=true;
end;

procedure TfrmLubrificacao.btnVoltar1Click(Sender: TObject);
begin
 Close;
end;

procedure TfrmLubrificacao.btnVoltarClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmLubrificacao.btnVoltarProdutoClick(Sender: TObject);
begin
 if ListaProdutos.items.Count=0 then
 begin
   ShowMessage('Informe pelo menos um insumo!');
   Exit;
 end;

 btnNovoProduto.Enabled := true;
 Filtro;
 GeraLista('');
 MudarAba(tbiLista,sender);
end;


procedure TfrmLubrificacao.cbxCompartimentoChange(Sender: TObject);
begin
 if cbxCompartimento.ItemIndex>-1 then
   vIdCompartimento := dmDB.ReturnsIdByName('compartimentolubricficacao',cbxCompartimento.Selected.Text);
end;

procedure TfrmLubrificacao.EditButton3Click(Sender: TObject);
begin
  if Not Assigned(frmProdutos) then
  frmProdutos:= TfrmProdutos.Create(nil);
  frmProdutos.ShowModal(procedure(ModalResult: TModalResult)
  begin
   edtOutroProduto.Text := frmProdutos.vNomeProduto;
   vidProduto           := frmProdutos.vIdProduto;
  end);
end;

procedure TfrmLubrificacao.edtHorimetroTyping(Sender: TObject);
begin
 formatar(edtHorimetro,TFormato.Valor);
end;

procedure TfrmLubrificacao.edtKmTyping(Sender: TObject);
begin
 formatar(edtKm,TFormato.Valor);
end;

procedure TfrmLubrificacao.edtQtdOutroProdutoTyping(Sender: TObject);
begin
  formatar(edtQtdOutroProduto,TFormato.ValorDecimal);
end;

procedure TfrmLubrificacao.LimpaCampos;
begin
  edtMaquina.Text :='';
  cbxTipo.ItemIndex :=-1;
  edtHorimetro.Text :='';
  edtKm.Text :='';
  layBuscaMaquina.Height := 60;
  vTipoAlerta            := 0;
  cbxCompartimento.ItemIndex:=-1;
  LocationSensor1.Active := false;
  LocationSensor1.Active := true;
end;

procedure TfrmLubrificacao.ListaGesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  btnExcluiItem.Visible   := true;
end;

procedure TfrmLubrificacao.ListaItemClickEx(const Sender: TObject;
  ItemIndex: Integer; const LocalClickPos: TPointF;
  const ItemObject: TListItemDrawable);
begin
  vIdLub   := TAppearanceListViewItem(Lista.Selected).Objects.FindObjectT<TListItemText>
   ('Text3').TagString;
  vFlagSync          := TAppearanceListViewItem(Lista.Selected).Objects.FindObjectT<TListItemText>
   ('Text6').TagString;
  if ItemObject is TListItemImage then
  begin
    cbxCompartimento.ItemIndex :=-1;
    cbxTipo.ItemIndex :=-1;
    edtQtdOutroProduto.Text :='0';
    vIdMax := vIdLub;
    if TListItemImage(ItemObject).Name='Image21' then
    begin
     if vFlagSync='1' then
      btnNovoProduto.Enabled := false
     else
      btnNovoProduto.Enabled := true;
     GeraListaProdutos(vIdLub,'');
     MudarAba(tbiProdutos,sender)
    end;
  end;
end;

procedure TfrmLubrificacao.ListaProdutosGesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
 btnExcluiProduto.Visible := true;
end;

procedure TfrmLubrificacao.ListaProdutosItemClickEx(const Sender: TObject;
  ItemIndex: Integer; const LocalClickPos: TPointF;
  const ItemObject: TListItemDrawable);
begin
 vIdLubProd   := TAppearanceListViewItem(ListaProdutos.Selected).Objects.FindObjectT<TListItemText>
  ('Text14').Text;

 vFlagSyncProd          := TAppearanceListViewItem(ListaProdutos.Selected).Objects.FindObjectT<TListItemText>
  ('Text14').TagString;
end;

procedure TfrmLubrificacao.LocationPermissionRequestResult(Sender: TObject;
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
  end;
end;

procedure TfrmLubrificacao.LocationSensor1LocationChanged(Sender: TObject;
  const OldLocation, NewLocation: TLocationCoord2D);
begin
  vLatitude  := Format('%2.6f', [NewLocation.Latitude]);
  vLongitude := Format('%2.6f', [NewLocation.Longitude]);
end;

procedure TfrmLubrificacao.MudarAba(ATabItem: TTabItem; sender: TObject);
begin
  actMudarAba.Tab := ATabItem;
  actMudarAba.ExecuteTarget(sender);
end;

procedure TfrmLubrificacao.Rectangle17Click(Sender: TObject);
begin
 MudarAba(tbiLista,sender)
end;

procedure TfrmLubrificacao.Rectangle4Click(Sender: TObject);
begin
 layNewOutros.Visible := false;
end;

procedure TfrmLubrificacao.tbPrincipalChange(Sender: TObject);
begin
 btnVoltar.Visible := tbPrincipal.TabIndex=0;
 case tbPrincipal.TabIndex  of
  0:lblPage.Text :='Lista de Lubrificação';
  1:lblPage.Text :='Nova Lubrificação';
  2:lblPage.Text :='Lista de Produtos';
 end;
end;

procedure TfrmLubrificacao.Filtro;
var
 vFiltro:string;
begin
 vFiltro := '';
 if edtMaquinaF.Text.Length>0 then
  vFiltro := ' and m.prefixo like '+QuotedStr('%'+edtMaquinaF.Text+'%');
 vFiltro  := vFiltro+' and l.datatroca ='+
  FormatDateTime('yyyy-mm-dd',edtDataF.Date).QuotedString;
 dmDB.AbrirLubrificacao(vFiltro);
end;

procedure TfrmLubrificacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 frmPrincipal.vLubrificacao :=0;
end;

procedure TfrmLubrificacao.FormShow(Sender: TObject);
begin
 recAguarde.Visible       := false;
 layAlerta.Visible        := false;
 layNewOutros.Visible     := false;
 btnExcluiProduto.Visible := false;
 btnExcluiItem.Visible    := false;
 tbPrincipal.TabPosition  := TTabPosition.None;
 tbPrincipal.ActiveTab    := tbiLista;
 Filtro;
 dmDB.tauxCompLub.close;
 dmDB.tauxCompLub.Open;
 cbxCompartimento.ItemIndex :=-1;
end;

procedure TfrmLubrificacao.GeraLista(vFiltro: string);
var
 item   : TListViewItem;
 txt    : TListItemText;
 txtH   : TListItemPurpose;
 img    : TListItemImage;
begin
 Filtro;
 Lista.Items.Clear;
 dmDB.TLubrificacao.First;
 TThread.CreateAnonymousThread(
 procedure
 begin
  TThread.Synchronize(TThread.CurrentThread,
  procedure ()
  begin
   while not dmDB.TLubrificacao.eof do
   begin
     item := Lista.Items.Add;
     with frmLubrificacao do
     begin
       with item  do
       begin
         txt      := TListItemText(Objects.FindDrawable('Text3'));
         txt.Text := dmDB.TLubrificacaoMaquina.AsString;
         txt.TagString := dmDB.TLubrificacaoid.AsString;

         txt           := TListItemText(Objects.FindDrawable('Text5'));
         txt.Text      := 'Data: ';
         txt           := TListItemText(Objects.FindDrawable('Text6'));
         txt.Text      := dmDB.TLubrificacaodatatroca.AsString;
         txt.TagString := dmDB.TLubrificacaosyncaws.AsString;

         txt      := TListItemText(Objects.FindDrawable('Text8'));
         txt.Text := 'Horímetro: ';
         txt      := TListItemText(Objects.FindDrawable('Text9'));
         txt.Text := dmDB.TLubrificacaohorimetro.AsString;

         txt      := TListItemText(Objects.FindDrawable('Text17'));
         txt.Text := 'KM: ';
         txt      := TListItemText(Objects.FindDrawable('Text18'));
         txt.Text := dmDB.TLubrificacaokm.AsString;

         img := TListItemImage(Objects.FindDrawable('Image10'));
         img.Bitmap     := frmPrincipal.imglub.Bitmap;

         img := TListItemImage(Objects.FindDrawable('Image19'));
         img.Bitmap     := frmPrincipal.imgRecLista.Bitmap;

         img := TListItemImage(Objects.FindDrawable('Image21'));
         img.Bitmap     := frmPrincipal.imgLubriProd.Bitmap;
         img.PlaceOffset.X := trunc(img.PlaceOffset.X + (img.Width-100));

         txt      := TListItemText(Objects.FindDrawable('Text16'));
         txt.Text := 'Alerta: ';
         txt      := TListItemText(Objects.FindDrawable('Text15'));
         if dmDB.TLubrificacaoalerta.AsInteger=0 then
          txt.Text := 'SEM ALERTA';
         if dmDB.TLubrificacaoalerta.AsInteger=1 then
          txt.Text := 'HORÍMETRO QUEBRADO';
         if dmDB.TLubrificacaoalerta.AsInteger=2 then
          txt.Text := 'HORÍMETRO TROCADO';
         if dmDB.TLubrificacaoalerta.AsInteger=3 then
          txt.Text := 'HODÔMETRO QUEBRADO';
         if dmDB.TLubrificacaoalerta.AsInteger=4 then
          txt.Text := 'HODÔMETRO TROCADO';
         if dmDB.TLubrificacaoalerta.AsInteger=5 then
          txt.Text := 'OUTROS';
       end;
       dmDB.TLubrificacao.Next;
     end;
   end;
  end);
 end).Start;
end;

procedure TfrmLubrificacao.GeraListaProdutos(vIdLubri, vFiltro: string);
var
 item   : TListViewItem;
 txt    : TListItemText;
 txtH   : TListItemPurpose;
 img    : TListItemImage;
 vStatus:string;
begin
  dmDB.AbrirLubrificacaoprodutos(vIdLubri);
  dmDB.TLubrificacaoprodutos.First;
  ListaProdutos.Items.Clear;
  while not dmDb.TLubrificacaoprodutos.eof do
   begin
      item := ListaProdutos.Items.Add;
       with frmLubrificacao do
       begin
         with item  do
         begin
           txt      := TListItemText(Objects.FindDrawable('Text14'));
           txt.Text := dmDb.TLubrificacaoprodutosid.AsString;
           txt.TagString := dmDb.TLubrificacaoprodutossyncfaz.AsString;

           txt      := TListItemText(Objects.FindDrawable('Text5'));
           txt.Text := dmDb.TLubrificacaoprodutosProduto.AsString;

           txt      := TListItemText(Objects.FindDrawable('Text6'));
           txt.Text := 'Qtde:';

           txt      := TListItemText(Objects.FindDrawable('Text7'));
           txt.Text := dmDb.TLubrificacaoprodutosqtd.AsString;

           txt      := TListItemText(Objects.FindDrawable('Text8'));
           txt.Text := 'Tipo:';
           txt      := TListItemText(Objects.FindDrawable('Text9'));
           txt.Text := dmDb.TLubrificacaoprodutosTipoStr.AsString;

           txt      := TListItemText(Objects.FindDrawable('Text10'));
           txt.Text := 'Compartimento:';
           txt      := TListItemText(Objects.FindDrawable('Text11'));
           txt.Text := dmDb.TLubrificacaoprodutosCompartimento.AsString;


           img := TListItemImage(Objects.FindDrawable('Image14'));
           img.Bitmap := frmPrincipal.imgLub.Bitmap;

         end;
         dmDb.TLubrificacaoprodutos.Next;
       end;
   end;
end;

end.

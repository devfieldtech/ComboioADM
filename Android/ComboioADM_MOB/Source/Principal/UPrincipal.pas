unit UPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Effects,
  FMX.Edit, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Layouts,
  FMX.ActnList, System.Actions, FMX.TabControl,FireDAC.DApt, FMX.ListBox,
  FMX.Ani, FMX.ScrollBox, FMX.Memo, System.Rtti, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope,FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, Data.DB, FireDAC.Comp.DataSet,
  FMX.TreeView,System.Net.HttpClient, FMX.Memo.Types
  ,AndroidApi.helpers,AndroidApi.JNI.JavaTypes,AndroidApi.JNI.GraphicsContentViewText,
  Androidapi.JNI.Os,Androidapi.JNIBridge,Androidapi.JNI.Telephony,Androidapi.JNI.Provider,
  FMX.Helpers.Android,FMX.Platform.Android,System.PushNotification,System.Permissions,
  FMX.VirtualKeyboard, FMX.Media,System.IOUtils, UApontamento
 {$IFDEF MSWINDOWS}
  ,Winapi.Windows
 {$ENDIF}
  ;


type
  TfrmPrincipal = class(TForm)
    TbPrincipal: TTabControl;
    tbiLogin: TTabItem;
    rect_update: TRectangle;
    Layout2: TLayout;
    Layout1: TLayout;
    img_seta: TImage;
    layloginCenter: TLayout;
    Rectangle1: TRectangle;
    Layout4: TLayout;
    Layout3: TLayout;
    Label1: TLabel;
    Layout6: TLayout;
    Layout7: TLayout;
    Label2: TLabel;
    Layout5: TLayout;
    Layout8: TLayout;
    Label3: TLabel;
    Layout9: TLayout;
    btnEntrar: TRectangle;
    LaybtnEntrar: TLayout;
    Label4: TLabel;
    Image1: TImage;
    layInf: TLayout;
    Rectangle4: TRectangle;
    recTop: TRectangle;
    Layout10: TLayout;
    lbl_titulo: TLabel;
    btnClose: TImage;
    tbiMnu: TTabItem;
    laymnu: TLayout;
    Layout11: TLayout;
    Rectangle5: TRectangle;
    Layout12: TLayout;
    Layout13: TLayout;
    layInfMnu: TLayout;
    Rectangle10: TRectangle;
    lblVersao: TLabel;
    recTopMnu: TRectangle;
    layTopmnu: TLayout;
    Image4: TImage;
    tbiConfig: TTabItem;
    Layout18: TLayout;
    Layout19: TLayout;
    VertScrollBox1: TVertScrollBox;
    Rectangle7: TRectangle;
    Layout20: TLayout;
    Layout21: TLayout;
    Layout22: TLayout;
    Rectangle8: TRectangle;
    Layout23: TLayout;
    Rectangle17: TRectangle;
    Layout30: TLayout;
    Layout31: TLayout;
    Label14: TLabel;
    edtIpServidorDados: TEdit;
    Layout32: TLayout;
    btnConfirmar: TRectangle;
    Image9: TImage;
    ShadowEffect1: TShadowEffect;
    Label16: TLabel;
    Rectangle2: TRectangle;
    Layout24: TLayout;
    Layout25: TLayout;
    Label10: TLabel;
    edtPortaServidorDados: TEdit;
    Layout27: TLayout;
    Rectangle15: TRectangle;
    Rectangle16: TRectangle;
    Layout28: TLayout;
    Label18: TLabel;
    Image14: TImage;
    tbiSync: TTabItem;
    Rectangle24: TRectangle;
    Layout35: TLayout;
    Label21: TLabel;
    btnFechaSync: TImage;
    Rectangle19: TRectangle;
    Image17: TImage;
    Label19: TLabel;
    imgMnu: TImage;
    StyleBook1: TStyleBook;
    Rectangle3: TRectangle;
    laySelectSync: TLayout;
    imgSync: TImage;
    Animacao: TFloatAnimation;
    Layout36: TLayout;
    btnEnviar: TRectangle;
    Image12: TImage;
    ShadowEffect10: TShadowEffect;
    Label22: TLabel;
    Layout39: TLayout;
    Rectangle12: TRectangle;
    Image13: TImage;
    ShadowEffect16: TShadowEffect;
    lblAbastecimentoPendente: TLabel;
    actAcoes: TActionList;
    actMudarAba: TChangeTabAction;
    AcMudarAbaChart: TAction;
    AcMudarAbaDespesas: TAction;
    AcLeft: TAction;
    AcRigth: TAction;
    edtSenha: TEdit;
    Layout16: TLayout;
    btnConfig: TRectangle;
    Image3: TImage;
    ShadowEffect7: TShadowEffect;
    Label7: TLabel;
    layAbastecimento2: TLayout;
    ShadowEffect3: TShadowEffect;
    Label5: TLabel;
    imgScore: TImage;
    Layout17: TLayout;
    imgListaPreto: TImage;
    ClearEditButton1: TClearEditButton;
    PasswordEditButton1: TPasswordEditButton;
    btnStatrFimDiario: TRectangle;
    imgStart: TImage;
    Layout29: TLayout;
    Label9: TLabel;
    chkSalvaSenha: TSwitch;
    edtUsuario: TEdit;
    Layout33: TLayout;
    Layout34: TLayout;
    Label12: TLabel;
    ClearEditButton3: TClearEditButton;
    cbxCentroCusto: TComboBox;
    BindSourceDB1: TBindSourceDB;
    LinkFillControlToFieldid: TLinkFillControlToField;
    BindingsList1: TBindingsList;
    imgOperador: TImage;
    imgSeed: TImage;
    imgAtividades: TImage;
    imgLocalEstoque: TImage;
    ImgCam: TImage;
    imgEnd: TImage;
    imgFinalizar: TImage;
    imgOutros: TImage;
    Layout37: TLayout;
    Rectangle6: TRectangle;
    Image2: TImage;
    ShadowEffect5: TShadowEffect;
    lblStartDiarioSync: TLabel;
    ClearEditButton2: TClearEditButton;
    ClearEditButton4: TClearEditButton;
    imgRecLista: TImage;
    imgCam2: TImage;
    imgProdutos2: TImage;
    imgTransf: TImage;
    Layout40: TLayout;
    Rectangle9: TRectangle;
    Image7: TImage;
    ShadowEffect8: TShadowEffect;
    lblTrasnferenciaPendente: TLabel;
    mlog: TEdit;
    ProgressBar1: TProgressBar;
    Layout41: TLayout;
    btnMaquinas: TRectangle;
    imgMaquina: TImage;
    ShadowEffect9: TShadowEffect;
    Label15: TLabel;
    Rectangle11: TRectangle;
    Layout42: TLayout;
    Layout43: TLayout;
    Label17: TLabel;
    edtNumPatrimonio: TEdit;
    ClearEditButton5: TClearEditButton;
    imgLub: TImage;
    imgInsumos: TImage;
    btnSync: TRectangle;
    Image5: TImage;
    ShadowEffect4: TShadowEffect;
    Label6: TLabel;
    layAbastecimento1: TLayout;
    Image10: TImage;
    btnAbastecimento: TRectangle;
    imgCobustivel: TImage;
    ShadowEffect2: TShadowEffect;
    Label8: TLabel;
    btnMovEstoque: TRectangle;
    Image6: TImage;
    ShadowEffect6: TShadowEffect;
    Label13: TLabel;
    btnLubrificacao: TRectangle;
    Image8: TImage;
    ShadowEffect11: TShadowEffect;
    Label20: TLabel;
    imgLubriProd: TImage;
    Layout26: TLayout;
    Rectangle13: TRectangle;
    Image11: TImage;
    ShadowEffect12: TShadowEffect;
    lblLubrificacaoSync: TLabel;
    MediaPlayer1: TMediaPlayer;
    imgTotalizadorInicio: TImage;
    imgTotalizadorFim: TImage;
    ImgListaBomba: TImage;
    ImgListaHorimetro: TImage;
    ImgListaKM: TImage;
    LayAbastecimento3: TLayout;
    btnCheckList: TRectangle;
    Image15: TImage;
    ShadowEffect13: TShadowEffect;
    Label23: TLabel;
    Layout44: TLayout;
    Rectangle14: TRectangle;
    Image16: TImage;
    ShadowEffect14: TShadowEffect;
    lblCheckListPendente: TLabel;
    layApontamento: TLayout;
    btnApontamento: TRectangle;
    Image18: TImage;
    ShadowEffect15: TShadowEffect;
    Label24: TLabel;
    Layout14: TLayout;
    Rectangle18: TRectangle;
    Image19: TImage;
    ShadowEffect17: TShadowEffect;
    lblApontamento: TLabel;
    procedure btnEntrarMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btnEntrarMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btnConfirmarMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btnConfirmarMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btnEnviarMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btnEnviarMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure FormShow(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure Image14Click(Sender: TObject);
    procedure btnFechaSyncClick(Sender: TObject);
    procedure Rectangle19Click(Sender: TObject);
    procedure btnEnviarClick(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
    procedure btnConfigClick(Sender: TObject);
    procedure btnSyncClick(Sender: TObject);
    procedure btnAbastecimentoClick(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure cbxCentroCustoChange(Sender: TObject);
    procedure btnStatrFimDiarioClick(Sender: TObject);
    procedure btnMovEstoqueClick(Sender: TObject);
    procedure btnMaquinasClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure btnLubrificacaoClick(Sender: TObject);
    procedure laySelectSyncClick(Sender: TObject);
    procedure btnCheckListClick(Sender: TObject);
    procedure btnApontamentoClick(Sender: TObject);
  private
    {$IF DEFINED(iOS) or DEFINED(ANDROID)}
     function GetVersaoArq: string;
     function NetState(out tipoConexao: string): boolean;
     function CheckInternet: boolean;
    {$ENDIF}
    {$IFDEF MSWINDOWS}
     function  GetVersaoArqWin:string;
    {$ENDIF}
  public
    vLubrificacao:integer;
    procedure MudarAba(ATabItem: TTabItem; sender: TObject);
    procedure MostraMenu;
    procedure ReproduzSom(vTipoSom:string);
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

uses UDmDB, UDmSyncData, NetworkState, UAbastecimento, UStartBomba, UMovEstoque,
  Maquinas, ULubrificacao, UChekList;

procedure TfrmPrincipal.btnConfigClick(Sender: TObject);
begin
 dmDB.qryConfig.Close;
 dmDB.qryConfig.Open;
 if dmDB.qryConfig.IsEmpty then
  dmDB.qryConfig.Insert
 else
  dmDB.qryConfig.Edit;
 edtIpServidorDados.Text    := dmDB.qryConfigIP_SERVIDOR.AsString;
 edtPortaServidorDados.Text := dmDB.qryConfigPOTA_SERVIDOR.AsString;
 edtNumPatrimonio.Text      := dmDB.qryConfigPATRIMONIO.AsString;
 MudarAba(tbiConfig,sender);
end;

procedure TfrmPrincipal.btnApontamentoClick(Sender: TObject);
begin
 frmApontamento:= TfrmApontamento.Create(nil);
  frmApontamento.ShowModal(procedure(ModalResult: TModalResult)
  begin

  end);
end;

procedure TfrmPrincipal.btnCheckListClick(Sender: TObject);
begin
  frmCheckList:= TfrmCheckList.Create(nil);
  frmCheckList.ShowModal(procedure(ModalResult: TModalResult)
  begin
    if ModalResult = mrOK then
      frmCheckList.DisposeOf;
  end);
end;

procedure TfrmPrincipal.btnCloseClick(Sender: TObject);
begin
 Application.Terminate;
end;

procedure TfrmPrincipal.MostraMenu;
begin
  btnConfig.Width          := (frmPrincipal.Width/2)-20;
  btnSync.Width            := (frmPrincipal.Width/2)-20;
  btnStatrFimDiario.Width  := (frmPrincipal.Width/2)-20;
  btnMovEstoque.Width      := (frmPrincipal.Width/2)-20;
  btnAbastecimento.Width   := (frmPrincipal.Width/2)-20;
  btnLubrificacao.Width    := (frmPrincipal.Width/2)-20;
end;

procedure TfrmPrincipal.MudarAba(ATabItem: TTabItem; sender: TObject);
begin
   actMudarAba.Tab := ATabItem;
   actMudarAba.ExecuteTarget(sender);
end;

procedure TfrmPrincipal.Rectangle19Click(Sender: TObject);
begin
 MudarAba(tbiMnu,sender);
end;

procedure TfrmPrincipal.ReproduzSom(vTipoSom: string);
begin
 if vTipoSom='Inicie Foto Totalizado' then
  MediaPlayer1.FileName  := TPath.Combine(TPath.GetDocumentsPath,'FotoTotalizadorInicial.mp3');

 if vTipoSom='Totalizado Final Menor' then
  MediaPlayer1.FileName  := TPath.Combine(TPath.GetDocumentsPath,'FotoTotalizadorFinalMenor.mp3');

 if vTipoSom='Operacao Finalizada' then
  MediaPlayer1.FileName  := TPath.Combine(TPath.GetDocumentsPath,'OperacaoFinalizada.mp3');

 if vTipoSom='Lubrificacao Criada' then
  MediaPlayer1.FileName  := TPath.Combine(TPath.GetDocumentsPath,'LubrificacaoCriada.mp3');


 if vTipoSom='Horimetro Final Menor' then
  MediaPlayer1.FileName  := TPath.Combine(TPath.GetDocumentsPath,'HorimetroFinalMenor.mp3');

 if vTipoSom='km Final Menor' then
  MediaPlayer1.FileName  := TPath.Combine(TPath.GetDocumentsPath,'KmFinalMenor.mp3');

 if vTipoSom='Opa Erro' then
  MediaPlayer1.FileName  := TPath.Combine(TPath.GetDocumentsPath,'OpaErro.mp3');

 if vTipoSom='Deseja Deletar' then
  MediaPlayer1.FileName  := TPath.Combine(TPath.GetDocumentsPath,'DesejaDelatar.mp3');

 if vTipoSom='km maior 600' then
  MediaPlayer1.FileName  := TPath.Combine(TPath.GetDocumentsPath,'KMMaior600.mp3');

 if vTipoSom='Horimetro maior 24' then
  MediaPlayer1.FileName  := TPath.Combine(TPath.GetDocumentsPath,'HorimetroMaior24Horas.mp3');

 if vTipoSom='Start Antes' then
  MediaPlayer1.FileName  := TPath.Combine(TPath.GetDocumentsPath,'StarteAntes.mp3');


 MediaPlayer1.Play;
end;

function TfrmPrincipal.NetState(out tipoConexao: string): boolean;
var
 NS: TNetworkState;
begin
    try
        NS := TNetworkState.Create;
        Result := false;
        try
            {$IFNDEF MSWINDOWS}
            if not NS.IsConnected then
                tipoConexao := ''
            else
            if NS.IsWifiConnected then
            begin
                tipoConexao := 'WIFI';
                Result := true;
            end
            else
            if NS.IsMobileConnected then
            begin
                tipoConexao := 'MOBILE';
                Result := true;
            end;
            {$ELSE}
            tipoConexao := 'Não implementado no Windows';
            Result := true;
            showmessage(tipoConexao);
            {$ENDIF}

        except on ex:exception do
        begin
            Result := false;
            tipoConexao := ex.Message;
        end;
        end;
    finally
        NS.DisposeOf;
    end;
end;


procedure TfrmPrincipal.btnConfirmarClick(Sender: TObject);
var
 vResult:string;
 tipoConexao : string;
begin
 if edtIpServidorDados.Text.IsEmpty then
 begin
  ShowMessage('Informe o Host do Servidor');
  edtIpServidorDados.SetFocus;
  Exit;
 end;
 if edtPortaServidorDados.Text.IsEmpty then
 begin
  ShowMessage('Informe a Porta do Servidor');
  edtPortaServidorDados.SetFocus;
  Exit;
 end;
 if edtNumPatrimonio.Text.IsEmpty then
 begin
  ShowMessage('Informe o N° de Patrimônio');
  edtNumPatrimonio.SetFocus;
  Exit;
 end;
 dmDB.qryConfig.Edit;
 dmdb.qryConfigIP_SERVIDOR.AsString      := edtIpServidorDados.Text;
 dmdb.qryConfigPOTA_SERVIDOR.AsString    := edtPortaServidorDados.Text;
 dmdb.qryConfigPATRIMONIO.AsString       := edtNumPatrimonio.Text;
 try
   dmdb.qryConfig.ApplyUpdates(-1);
   dmSync.host  := edtIpServidorDados.Text;
   dmSync.Porta := edtPortaServidorDados.Text;
 except
 on E : Exception do
   ShowMessage('Erro ao inserir Configuração : '+E.Message);
 end;
 if dmdb.vPrimeiroAcesso then
 begin
  try
     dmDB.vIdCentroCusto := dmSync.PostAutenticaPatrimonio(edtNumPatrimonio.Text);
     if copy(dmDB.vIdCentroCusto,0,4)='Erro' then
     begin
      ShowMessage(dmDB.vIdCentroCusto);
      Exit;
     end
     else
     dmDB.AtualizaCentroCustoConfig(dmDB.vIdCentroCusto);
     dmSync.GetCentroCusto(dmDB.vIdCentroCusto);
     vResult := dmSync.GetUsuario;
     if vResult='Usuarios Baixados com Sucesso' then
     begin
         ShowMessage('Usuarios baixados com sucesso');
         dmDB.vPrimeiroAcesso := false;
         dmDB.TUsuario.Close;
         dmDB.TUsuario.Open;
         dmDB.TCentroCusto.Close;
         dmDB.TCentroCusto.Open;
         MudarAba(tbiLogin,Sender);
     end
     else
     begin
       ShowMessage(vResult);
     end;
   except
   on E : Exception do
     ShowMessage('Erro ao baixar Usuario: '+E.Message);
   end;
 end
 else
  MudarAba(tbiMnu,Sender);
end;

procedure TfrmPrincipal.btnConfirmarMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  (Sender as TRectangle).Opacity :=0.5;
end;

procedure TfrmPrincipal.btnConfirmarMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
 (Sender as TRectangle).Opacity :=1;
end;

procedure TfrmPrincipal.btnEntrarClick(Sender: TObject);
begin
 if edtUsuario.Text.Length=0  then
 begin
   ShowMessage('Informe o usuario!');
   Exit;
 end;
 if edtSenha.Text.IsEmpty  then
 begin
   ShowMessage('Informe a Senha!');
   edtSenha.SetFocus;
   Exit;
 end;
 if cbxCentroCusto.ItemIndex=-1 then
 begin
   ShowMessage('Informe o centro de Custo!');
   Exit;
 end
 else
 begin
   dmdb.qryConfig.Close;
   dmdb.qryConfig.Open;
   dmdb.vIdCentroCusto:=dmdb.qryConfigID_CENTRO_CUSTO.AsString;
 end;
 if dmDB.AutenticaUsuario(edtUsuario.Text,edtSenha.Text)then
 begin
  layAbastecimento1.Visible := dmDB.vAbatecimento=1;
  layAbastecimento2.Visible := dmDB.vAbatecimento=1;
//  LayAbastecimento3.Visible := dmDB.vAbatecimento=1;
  layApontamento.Visible    := dmDB.vApontamento =1;
  if chkSalvaSenha.IsChecked then
  begin
    dmdb.qryConfig.Close;
    dmdb.qryConfig.Open;
    dmdb.qryConfig.Edit;
    dmdb.qryConfigSalvarLogin.AsInteger :=1;
    dmdb.qryConfig.ApplyUpdates(-1);
    dmdb.SalvarAcesso(edtUsuario.Text,edtSenha.Text);
  end;
  btnConfig.Enabled    := dmdb.vTipoUser='1';
  MudarAba(tbiMnu,sender);
  imgMnu.Position.Y := 0;
  imgMnu.Opacity := 0;
  imgMnu.AnimateFloatDelay('Position.Y', 50, 0.5, 1, TAnimationType.Out, TInterpolationType.Back);
  imgMnu.AnimateFloatDelay('Opacity', 1, 0.4, 0.9);
 end
 else
  ShowMessage('Usuario ou senha invalidos!');
end;

procedure TfrmPrincipal.btnEntrarMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
 (Sender as TRectangle).Opacity :=0.5;
end;

procedure TfrmPrincipal.btnEntrarMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
 (Sender as TRectangle).Opacity :=1;
end;

procedure TfrmPrincipal.btnEnviarClick(Sender: TObject);
begin
  ProgressBar1.Value :=0;
  if dmSync.TestaServidor<>'Erro' THEN
  begin
   Animacao.Start;
   TThread.CreateAnonymousThread(procedure
   begin
    TThread.Synchronize(nil, procedure
    begin
     mlog.text :=('Enviando Start Diário');
     ProgressBar1.Value :=10;
    end);
    mlog.text :=(dmSync.PostStartDiario);

    TThread.Synchronize(nil, procedure
    begin
     mlog.text :=('Enviando Abastecimentos');
     ProgressBar1.Value :=10;
    end);
    mlog.text :=(dmSync.PostAbastecimento);

    TThread.Synchronize(nil, procedure
    begin
     mlog.text :=('Enviando Lubrificação');
     ProgressBar1.Value :=20;
    end);
    mlog.text :=(dmSync.PostLubrificacao);

    TThread.Synchronize(nil, procedure
    begin
     mlog.text :=('Enviando Lubrificação Produtos');
     ProgressBar1.Value :=20;
    end);
    mlog.text :=(dmSync.PostLubrificacaoProdutos);

    TThread.Synchronize(nil, procedure
    begin
     mlog.text :=('Enviando Checklist');
     ProgressBar1.Value :=20;
    end);
    mlog.text :=(dmSync.PostCheckList);

    TThread.Synchronize(nil, procedure
    begin
     mlog.text :=('Enviando Det Checklist');
     ProgressBar1.Value :=10;
    end);
    mlog.text :=(dmSync.PostDetCheckList);

     TThread.Synchronize(nil, procedure
    begin
     mlog.text :=('Enviando Apontamentos');
     ProgressBar1.Value :=10;
    end);
    mlog.text :=(dmSync.PostApontamento);

    TThread.Synchronize(nil, procedure
    begin
     mlog.text :=('Enviando Transferência');
     ProgressBar1.Value :=40;
    end);
    mlog.text :=(dmSync.PostMovLocalEstoque);

    TThread.Synchronize(nil, procedure
    begin
     mlog.text :=('Baixando Usuarios...');
     ProgressBar1.Value :=50;
    end);
    mlog.text :=(dmSync.GetUsuario);

    TThread.Synchronize(nil, procedure
    begin
     mlog.text :=('Baixando Centro Custo...');
     ProgressBar1.Value :=70;
    end);
    mlog.text :=(dmSync.GetCentroCusto(dmDB.vIdCentroCusto));

    TThread.Synchronize(nil, procedure
    begin
     mlog.text :=('Baixando Centro Custo Outros...');
     ProgressBar1.Value :=70;
    end);
    mlog.text :=(dmSync.GetCentroCustoOutros(dmDB.vIdCentroCusto));

    TThread.Synchronize(nil, procedure
    begin
     mlog.text :=('Baixando Local de Estoque...');
     ProgressBar1.Value :=70;
    end);
    mlog.text :=(dmSync.GetLocalEstoque(dmDB.vIdCentroCusto));

    TThread.Synchronize(nil, procedure
    begin
     mlog.text :=('Baixando Produtos...');
     ProgressBar1.Value :=80;
    end);
    mlog.text :=(dmSync.GetProdutos);

    TThread.Synchronize(nil, procedure
    begin
     mlog.text :=('Baixando Maquinas...');
     ProgressBar1.Value :=90;
    end);
    mlog.text :=(dmSync.GetMaquinas);

    TThread.Synchronize(nil, procedure
    begin
     mlog.text :=('Baixando Compartimentos Lubrificacao...');
     ProgressBar1.Value :=95;
    end);
    mlog.text :=(dmSync.GetCompartimentoLub);

//    TThread.Synchronize(nil, procedure
//    begin
//     mlog.text :=('Baixando Check List Padrao...');
//     ProgressBar1.Value :=95;
//    end);
//    mlog.text :=(dmSync.GetCheckListPadrao);

//    TThread.Synchronize(nil, procedure
//    begin
//     mlog.text :=('Baixando Check List Padrao Grupo Itens ...');
//     ProgressBar1.Value :=95;
//    end);
//    mlog.text :=(dmSync.Getcheklistregrupoitem);


//    TThread.Synchronize(nil, procedure
//    begin
//     mlog.text :=('Baixando Itens Check List...');
//     ProgressBar1.Value :=95;
//    end);
//    mlog.text :=(dmSync.GetDetCheckListPadrao);

    dmSync.PostLogSync;

    TThread.Synchronize(nil, procedure
    begin
     ProgressBar1.Value :=100;
     Animacao.Stop;
     dmDB.FCon.Commit;
     dmDB.FCon.Connected := false;
     dmDB.FCon.Connected;

     dmSync.TAbastecimento.Close;
     dmSync.TAbastecimento.Open;
     lblAbastecimentoPendente.Text   := 'Abastecimento Pendente :'+IntToStr(dmSync.TAbastecimento.RecordCount);

     dmSync.TStartDiario.Close;
     dmSync.TStartDiario.Open;
     lblStartDiarioSync.Text         := 'Start Diário Pendente :'+IntToStr(dmSync.TStartDiario.RecordCount);

     dmSync.TMovLocalEstoque.Close;
     dmSync.TMovLocalEstoque.Open;
     lblTrasnferenciaPendente.Text   := 'Transferência Pendente :'+IntToStr(dmSync.TMovLocalEstoque.RecordCount);

     dmSync.TLubrificacao.Close;
     dmSync.TLubrificacao.Open;
     lblLubrificacaoSync.Text        := 'Lubrificaçao Pendente :'+IntToStr(dmSync.TAbastecimento.RecordCount);

//     dmSync.cheklistRealizado.Close;
//     dmSync.cheklistRealizado.Open;
//     lblCheckListPendente.Text       := 'Cheklist Pendete :'+IntToStr(dmSync.cheklistRealizado.RecordCount);

     dmSync.TApontamento.Close;
     dmSync.TApontamento.Open;
     lblApontamento.Text              := 'Apontamentos Pendete :'+IntToStr(dmSync.TApontamento.RecordCount);


     MessageDlg('Dados Sincronizados com Sucesso!'+#13+
      'Sistema deve ser reiniciado!', System.UITypes.TMsgDlgType.mtInformation,
       [System.UITypes.TMsgDlgBtn.mbYes], 0,
       procedure(const AResult: System.UITypes.TModalResult)
       begin
//         SharedActivity.finish;
//         Close;
       end);
    end);
   end).Start;
  end
  else
  begin
    ShowMessage('Erro ao se conectar com servidor!');
    Animacao.Stop;
  end;
end;

procedure TfrmPrincipal.btnEnviarMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  (Sender as TRectangle).Opacity :=0.5;
end;

procedure TfrmPrincipal.btnEnviarMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
 (Sender as TRectangle).Opacity :=1;
end;

procedure TfrmPrincipal.btnFechaSyncClick(Sender: TObject);
begin
 MudarAba(tbiMnu,sender);
end;

procedure TfrmPrincipal.btnLubrificacaoClick(Sender: TObject);
begin
  vLubrificacao :=1;
  if Not Assigned(frmLubrificacao) then
   Application.CreateForm(TfrmLubrificacao, frmLubrificacao);
  frmLubrificacao.ShowModal(procedure(ModalResult: TModalResult)
  begin
  end);
end;

procedure TfrmPrincipal.btnMaquinasClick(Sender: TObject);
begin
 frmMaquinas:= TfrmMaquinas.Create(nil);
  frmMaquinas.ShowModal(procedure(ModalResult: TModalResult)
  begin
    if ModalResult = mrOK then
      frmMaquinas.DisposeOf;
  end);
end;

procedure TfrmPrincipal.btnMovEstoqueClick(Sender: TObject);
begin
  dmDB.vTipoOp :=3;
  frmMovEstoque:= TfrmMovEstoque.Create(nil);
  frmMovEstoque.ShowModal(procedure(ModalResult: TModalResult)
  begin
    if ModalResult = mrOK then
      frmMovEstoque.DisposeOf;
  end);
end;

procedure TfrmPrincipal.btnAbastecimentoClick(Sender: TObject);
begin
  dmDB.vTipoOp :=2;
  frmAbastecimento:= TfrmAbastecimento.Create(nil);
  frmAbastecimento.ShowModal(procedure(ModalResult: TModalResult)
  begin
    if ModalResult = mrOK then
      frmAbastecimento.DisposeOf;
  end);
end;

procedure TfrmPrincipal.btnStatrFimDiarioClick(Sender: TObject);
begin
  dmDB.vTipoOp :=1;
  frmStartBomba:= TfrmStartBomba.Create(nil);
  frmStartBomba.ShowModal(procedure(ModalResult: TModalResult)
  begin
    if ModalResult = mrOK then
      frmStartBomba.DisposeOf;
  end);
end;

procedure TfrmPrincipal.btnSyncClick(Sender: TObject);
var
 tipoConexao:string;
begin
 dmSync.TAbastecimento.Close;
 dmSync.TAbastecimento.Open;
 lblAbastecimentoPendente.Text   := 'Abastecimento Pendente :'+IntToStr(dmSync.TAbastecimento.RecordCount);

 dmSync.TLubrificacao.Close;
 dmSync.TLubrificacao.Open;
 lblLubrificacaoSync.Text        := 'Lubrificaçao Pendente :'+IntToStr(dmSync.TLubrificacao.RecordCount);


 dmSync.TStartDiario.Close;
 dmSync.TStartDiario.Open;
 lblStartDiarioSync.Text        := 'Start Diário Pendente :'+IntToStr(dmSync.TStartDiario.RecordCount);

 dmSync.TMovLocalEstoque.Close;
 dmSync.TMovLocalEstoque.Open;
 lblTrasnferenciaPendente.Text  := 'Transferência Pendente :'+IntToStr(dmSync.TMovLocalEstoque.RecordCount);

// dmSync.cheklistRealizado.Close;
// dmSync.cheklistRealizado.Open;
// lblCheckListPendente.Text        := 'Cheklist Pendete :'+IntToStr(dmSync.cheklistRealizado.RecordCount);

 dmSync.TApontamento.Close;
 dmSync.TApontamento.Open;
 lblApontamento.Text              := 'Apontamentos Pendete :'+IntToStr(dmSync.TApontamento.RecordCount);


 MudarAba(tbiSync,sender);


end;

procedure TfrmPrincipal.cbxCentroCustoChange(Sender: TObject);
begin
 if cbxCentroCusto.ItemIndex>-1 then
  dmdb.vIdCentroCusto:=LinkFillControlToFieldid.BindList.GetSelectedValue.AsString;
end;

function TfrmPrincipal.CheckInternet: boolean;
var
    http : THTTPClient;
begin
    Result := false;
    try
     http := THTTPClient.Create;
     try
       Result := http.Head('https://google.com').StatusCode < 400;
     except
     end;
    finally
        http.DisposeOf;
    end;
end;

procedure TfrmPrincipal.FormKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
var
  KeyboardService: IFMXVirtualKeyboardService;
begin
 if Key = vkHardwareBack then
 begin
   key := 0;
 end;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
 lblversao.text                 := GetVersaoArq;
 dmdb.CreateTablesVersao(GetVersaoArq);
 MostraMenu;
 TThread.CreateAnonymousThread(procedure
 begin
   TThread.Synchronize(nil,procedure
   begin
      {$IFDEF MSWINDOWS}
        lblversao.text                 := GetVersaoArqWin;
//        dmdb.CreateTablesVersao(GetVersaoArqWin);
      {$ENDIF}
      {$IF DEFINED(iOS) or DEFINED(ANDROID)}
        lblversao.text                 := GetVersaoArq;
        dmdb.CreateTablesVersao(GetVersaoArq);
      {$ENDIF}
      TbPrincipal.TabPosition := TTabPosition.None;
      rect_update.Visible := true;
      img_seta.Position.Y := 0;
      img_seta.Opacity := 0;
      layInf.Opacity := 0;
      recTop.Opacity := 0;

      layloginCenter.Opacity := 0;
      rect_update.BringToFront;
      rect_update.AnimateFloat('Margins.Top', 0, 0.8, TAnimationType.InOut, TInterpolationType.Circular);
      img_seta.AnimateFloatDelay('Position.Y', 50, 0.5, 1, TAnimationType.Out, TInterpolationType.Back);
      img_seta.AnimateFloatDelay('Opacity', 1, 0.4, 0.9);
      recTop.AnimateFloatDelay('Opacity', 1, 0.7, 1);
      layInf.AnimateFloatDelay('Opacity', 1, 0.7, 1.3);
      layloginCenter.AnimateFloatDelay('Opacity', 1,0.7, 2);
   end);
 end).Start;
 dmDB.qryConfig.Close;
 dmDB.qryConfig.Open;
 if dmDB.qryConfigSalvarLogin.AsInteger=1 then
 begin
  chkSalvaSenha.IsChecked := true;
  dmDB.qryControAcces.Close;
  dmDB.qryControAcces.Open;
  if not dmDB.qryControAcces.IsEmpty then
  begin
   edtUsuario.Text := dmDB.qryControAccesUsuario.AsString;
   edtSenha.Text   := dmDB.qryControAccesSenha.AsString;
  end;
 end
 else
  chkSalvaSenha.IsChecked := false;
 dmSync.host  := dmDB.qryConfigIP_SERVIDOR.AsString;
 dmSync.Porta := dmDB.qryConfigPOTA_SERVIDOR.AsString;
 dmDB.TUsuario.Close;
 dmDB.TUsuario.Open;
 dmDB.TCentroCusto.Close;
 dmDB.TCentroCusto.Open;
 if not dmDB.TCentroCusto.IsEmpty then
 begin
  dmdb.vIdCentroCusto      := dmDB.TCentroCustoid.AsString;
  cbxCentroCusto.ItemIndex :=0;
  cbxCentroCusto.Enabled := false;
 end;

 if dmDB.TUsuario.IsEmpty then
 begin
   dmDB.vPrimeiroAcesso   := true;
   if dmDB.qryConfig.IsEmpty then
     dmDB.qryConfig.Insert
   else
    dmDB.qryConfig.Edit;
   edtIpServidorDados.Text     := dmDB.qryConfigIP_SERVIDOR.AsString;
   edtPortaServidorDados.Text  := dmDB.qryConfigPOTA_SERVIDOR.AsString;
   tbPrincipal.ActiveTab       := tbiConfig;
 end
 else
 begin
   dmDB.vPrimeiroAcesso      := false;
   tbPrincipal.ActiveTab     := tbiLogin;
   edtUsuario.SetFocus;
 end;
end;
procedure TfrmPrincipal.Image14Click(Sender: TObject);
begin
 if dmDB.vPrimeiroAcesso then
  Application.Terminate
 else
  MudarAba(tbiMnu,Sender);
end;

procedure TfrmPrincipal.Image4Click(Sender: TObject);
begin
 Close;
end;

procedure TfrmPrincipal.laySelectSyncClick(Sender: TObject);
begin

end;

{$IF DEFINED(iOS) or DEFINED(ANDROID)}
function TfrmPrincipal.GetVersaoArq: string;
var
 PKGInfo:JPackageInfo;
begin
 PKGInfo := SharedActivity.getPackageManager.getPackageInfo(
   SharedActivity.getPackageName,0);
 result := JStringToString(PKGInfo.VersionName)
end;
{$ENDIF}

{$IFDEF MSWINDOWS}
function TfrmPrincipal.GetVersaoArqWin: string;
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;
begin
  VerInfoSize := GetFileVersionInfoSize(PChar(
  ParamStr(0)), Dummy);
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(ParamStr(0)), 0,
  VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue),
  VerValueSize);
  with VerValue^ do
  begin
    Result := IntToStr(dwFileVersionMS shr 16);
    Result := Result + '.' + IntToStr(
    dwFileVersionMS and $FFFF);
    Result := Result + '.' + IntToStr(
    dwFileVersionLS shr 16);
    Result := Result + '.' + IntToStr(
    dwFileVersionLS and $FFFF);
  end;
  FreeMem(VerInfo, VerInfoSize);
end;
{$ENDIF}

end.


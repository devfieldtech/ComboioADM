unit UPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.TabControl, FMX.Ani, FMX.ActnList, System.Actions,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit, FMX.TreeView,Winapi.Windows,
  FMX.Effects, System.Notification, FMX.ScrollBox, FMX.Memo, FMX.WebBrowser,
  shellapi, FMX.Memo.Types, View.WebCharts,Charts.Types, FMX.DateTimeCtrls,
  System.Math.Vectors, FMX.Controls3D, FMX.Layers3D, UManutencao,
  fOpen, FMX.ListBox, UdmReport2;

type
  TfrmPrincipal = class(TForm)
    tbPrincipal: TTabControl;
    tbiLogin: TTabItem;
    tbiMenu: TTabItem;
    layLogin: TLayout;
    Image2: TImage;
    layMnuPrincipal: TLayout;
    Layout2: TLayout;
    actAcoes: TActionList;
    actMudarAba: TChangeTabAction;
    AcMudarAbaChart: TAction;
    AcMudarAbaDespesas: TAction;
    AcLeft: TAction;
    AcRigth: TAction;
    Timer1: TTimer;
    StyleBook1: TStyleBook;
    layLoginAnimaiton: TLayout;
    recLogin: TRectangle;
    Layout3: TLayout;
    Layout4: TLayout;
    Label1: TLabel;
    edtUsuario: TEdit;
    Label2: TLabel;
    edtSenha: TEdit;
    Layout5: TLayout;
    btnEntrar: TRectangle;
    Label3: TLabel;
    Image4: TImage;
    Layout6: TLayout;
    Image1: TImage;
    Animation: TFloatAnimation;
    AnimationPrincipal: TFloatAnimation;
    ToolBar1: TToolBar;
    ToolBar3: TToolBar;
    Label4: TLabel;
    Image16: TImage;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    lblVersao: TLabel;
    NotificationCenter1: TNotificationCenter;
    laySync: TLayout;
    Rectangle5: TRectangle;
    Layout1: TLayout;
    Layout7: TLayout;
    imgSync: TImage;
    Label6: TLabel;
    ProgressBarSync: TProgressBar;
    msmoSync: TMemo;
    Animacao: TFloatAnimation;
    Rectangle6: TRectangle;
    layMnu: TLayout;
    AnimacaoMnu: TFloatAnimation;
    TreeMnu: TTreeView;
    TreeCadastrosGerais: TTreeViewItem;
    TreeViewItem1: TTreeViewItem;
    Image5: TImage;
    TreeExAuxiliares: TTreeViewItem;
    TreeAuxMarca: TTreeViewItem;
    Image13: TImage;
    TreeGrupoMaquina: TTreeViewItem;
    Image14: TImage;
    Image12: TImage;
    Image27: TImage;
    ShadowEffect1: TShadowEffect;
    ToolBar2: TToolBar;
    Rectangle2: TRectangle;
    lblVersao2: TLabel;
    lblTipoDB: TLabel;
    lblPathDB: TLabel;
    ToolBar4: TToolBar;
    Rectangle1: TRectangle;
    mnu: TImage;
    btnFechar: TImage;
    Label5: TLabel;
    TreeAbastecimento: TTreeViewItem;
    Image8: TImage;
    WebCharts1: TWebCharts;
    TreeSubGrupo: TTreeViewItem;
    Image9: TImage;
    TreeAuxOperador: TTreeViewItem;
    Image10: TImage;
    TreeAuxAtividade: TTreeViewItem;
    Image11: TImage;
    TreeProdutos: TTreeViewItem;
    Image6: TImage;
    TreeMaquinas: TTreeViewItem;
    Image7: TImage;
    TreeCentroCusto: TTreeViewItem;
    Image17: TImage;
    TreeEstoque: TTreeViewItem;
    Image18: TImage;
    TreeFornecedores: TTreeViewItem;
    Image19: TImage;
    TreeEntradaNF: TTreeViewItem;
    Image20: TImage;
    TreeLocalEstoque: TTreeViewItem;
    Image21: TImage;
    TreeSaidaEstoque: TTreeViewItem;
    Image22: TImage;
    TreeMovEstoque: TTreeViewItem;
    Image23: TImage;
    TreeStartDiario: TTreeViewItem;
    Image15: TImage;
    TreeColetorDados: TTreeViewItem;
    Image24: TImage;
    TreeLubrificacao: TTreeViewItem;
    Image25: TImage;
    TreeCompLub: TTreeViewItem;
    Image26: TImage;
    tbiDash: TTabItem;
    ToolBar5: TToolBar;
    Rectangle9: TRectangle;
    Image29: TImage;
    Label8: TLabel;
    ToolBar6: TToolBar;
    Rectangle10: TRectangle;
    Label12: TLabel;
    Rectangle7: TRectangle;
    Rectangle11: TRectangle;
    Image30: TImage;
    TreeDashBoard: TTreeViewItem;
    Image32: TImage;
    Image28: TImage;
    TreeCheck: TTreeViewItem;
    Image33: TImage;
    TreeChekModelo: TTreeViewItem;
    TreeChekRealizado: TTreeViewItem;
    Image34: TImage;
    Image35: TImage;
    imgDow: TImage;
    imgDelete: TImage;
    imgEdit: TImage;
    imgEnd: TImage;
    imgStart: TImage;
    imgHora: TImage;
    imgNoImage: TImage;
    imgCentroCusto: TImage;
    imgComboio: TImage;
    TreeViewItem2: TTreeViewItem;
    Image36: TImage;
    TreeManutencao: TTreeViewItem;
    TreePlanoManutencao: TTreeViewItem;
    Image37: TImage;
    TreeViewItem5: TTreeViewItem;
    Image38: TImage;
    Image39: TImage;
    Action1: TAction;
    TreeMaquinaModelo: TTreeViewItem;
    Image40: TImage;
    Layout16: TLayout;
    layFiltrosGeral: TLayout;
    layFiltros: TLayout;
    recFiltros: TRectangle;
    btnGeraDash: TRectangle;
    Layout15: TLayout;
    Label14: TLabel;
    Image31: TImage;
    Image3: TImage;
    Layout13: TLayout;
    Layout14: TLayout;
    Z: TLabel;
    edtCentroCustoF: TEdit;
    ClearEditButton8: TClearEditButton;
    SearchEditButton4: TSearchEditButton;
    Layout17: TLayout;
    Layout18: TLayout;
    Label25: TLabel;
    edtDataBase: TDateEdit;
    layDashTMS: TLayout;
    WebBrowser1: TWebBrowser;
    imgDowloads: TImage;
    layExtrato: TLayout;
    ToolBar7: TToolBar;
    Rectangle8: TRectangle;
    Label24: TLabel;
    Image41: TImage;
    Image42: TImage;
    Rectangle12: TRectangle;
    Layout8: TLayout;
    Rectangle13: TRectangle;
    Label33: TLabel;
    Image43: TImage;
    gpPeriodo: TGroupBox;
    Label7: TLabel;
    Label29: TLabel;
    edtExDataIni: TDateEdit;
    edtExDataFim: TDateEdit;
    Label30: TLabel;
    cbxBombaF: TComboBox;
    Label32: TLabel;
    cbxTipoRelatorio: TComboBox;
    edtCentroCusto: TEdit;
    ClearEditButton1: TClearEditButton;
    SearchEditButton1: TSearchEditButton;
    Label9: TLabel;
    TreeViewItem3: TTreeViewItem;
    Image44: TImage;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure edtUsuarioExit(Sender: TObject);
    procedure edtSenhaKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure edtUsuarioKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure TreeExAuxiliaresClick(Sender: TObject);
    procedure TreeExAgriculturaClick(Sender: TObject);
    procedure mnuClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure TreeCadastrosGeraisClick(Sender: TObject);
    procedure TreeViewItem1Click(Sender: TObject);
    procedure TreeAuxMarcaClick(Sender: TObject);
    procedure TreeGrupoMaquinaClick(Sender: TObject);
    procedure TreeSubGrupoClick(Sender: TObject);
    procedure TreeAuxOperadorClick(Sender: TObject);
    procedure TreeAuxAtividadeClick(Sender: TObject);
    procedure TreeProdutosClick(Sender: TObject);
    procedure TreeMaquinasClick(Sender: TObject);
    procedure TreeCentroCustoClick(Sender: TObject);
    procedure TreeAbastecimentoClick(Sender: TObject);
    procedure TreeLocalEstoqueClick(Sender: TObject);
    procedure TreeFornecedoresClick(Sender: TObject);
    procedure TreeEntradaNFClick(Sender: TObject);
    procedure TreeEstoqueClick(Sender: TObject);
    procedure TreeSaidaEstoqueClick(Sender: TObject);
    procedure TreeMovEstoqueClick(Sender: TObject);
    procedure TreeStartDiarioClick(Sender: TObject);
    procedure TreeColetorDadosClick(Sender: TObject);
    procedure TreeLubrificacaoClick(Sender: TObject);
    procedure TreeCompLubClick(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure SearchEditButton4Click(Sender: TObject);
    procedure btnGeraDashMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btnGeraDashMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btnGeraDashClick(Sender: TObject);
    procedure TreeDashBoardClick(Sender: TObject);
    procedure Image29Click(Sender: TObject);
    procedure Image28Click(Sender: TObject);
    procedure TreeChekModeloClick(Sender: TObject);
    procedure TreeCheckClick(Sender: TObject);
    procedure TreeViewItem2Click(Sender: TObject);
    procedure TreeChekRealizadoClick(Sender: TObject);
    procedure TreeManutencaoClick(Sender: TObject);
    procedure TreePlanoManutencaoClick(Sender: TObject);
    procedure TreeMaquinaModeloClick(Sender: TObject);
    procedure TreeViewItem5Click(Sender: TObject);
    procedure SearchEditButton1Click(Sender: TObject);
    procedure cbxBombaFChange(Sender: TObject);
    procedure cbxBombaFClick(Sender: TObject);
    procedure Rectangle13Click(Sender: TObject);
    procedure TreeViewItem3Click(Sender: TObject);
    procedure Image42Click(Sender: TObject);
    procedure cbxTipoRelatorioChange(Sender: TObject);
  private
    vWebBrowser:TWebBrowser;
    procedure ReCreateBrowser(URL: STRING);
  public
    vIdCerntroCusto,vIdLocalEstoque:string;
    vPositionX,vPositionY:Single;
    iTimer,vMsgConfirma,vTSelectTalhao :integer;
    procedure MudarAba(ATabItem: TTabItem; sender: TObject);
    procedure MyShowMessage(msg: string;btnCancel:Boolean);
    function  GetVersaoArq: string;
    procedure Notificacao(Titulo,Notificacao:string);
    procedure GeraDash(idCentroCusto:string);
    procedure AbriGoogleMaps(Latitude,Longitude:string);
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

uses UMsgDlg,UCadPadrao, UdmDB, UUsuarios, UAuxMarcas, UAuxGrupo, UAuxSubGrupo,
  UOperadorMaquinas, UAuxAtividadeAbastecimento, UProdutos, UCadMaquina,
  UCentrodeCusto, UAbastecimento, ULocalEstoque, UFornecedor, UEntradaEstoque,
  USaidaEstoque, UMovEntreLocalEstoque, UStartBomba, UDevice, uFormat,
  UdmReport, ULubrificacao, UAuxCompartimentoLub, UdmDash, UChekListModelo,
  UAuxCheckListGrupo, UChekListRealizado, UPlanoManutencao, UModeloMaquina;

procedure TfrmPrincipal.Notificacao(Titulo,Notificacao:string);
var
  MyNotification: TNotification;
  iOcorrencia,iEvento:integer;
begin
  MyNotification := NotificationCenter1.CreateNotification;
  try
    MyNotification.Name := 'NotificationOcorrencias';
    MyNotification.Title := Titulo;
    MyNotification.AlertBody := Notificacao;
    NotificationCenter1.PresentNotification(MyNotification);
  finally
    MyNotification.Free;
  end;
end;

procedure TfrmPrincipal.ReCreateBrowser(URL: STRING);
begin

end;

procedure TfrmPrincipal.Rectangle13Click(Sender: TObject);
var
 vFiltro:string;
begin
  if cbxTipoRelatorio.ItemIndex=-1 then
  begin
    MyShowMessage('Informe o tipo de Relatório (Extrato ou Saldo Atual)',false);
    Exit;
  end;
  if cbxTipoRelatorio.ItemIndex=0 then
  begin
    if cbxBombaF.ItemIndex=-1 then
    begin
      MyShowMessage('Informe o Local de Estoque!!',false);
      Exit;
    end
    else
    begin
     dmReport2.AbreEstoqueporLocal(vIdCerntroCusto,
      vIdLocalEstoque);
    end;
  end;
  if cbxTipoRelatorio.ItemIndex=1 then
  begin
    if cbxBombaF.ItemIndex<=0 then
    begin
      MyShowMessage('Informe o Local de Estoque!!',false);
      Exit;
    end;
    if edtExDataFim.Date<edtExDataIni.Date then
    begin
      MyShowMessage('Data Final nao pode ser menor que data inicial!',false);
      Exit;
    end;
    dmReport2.GeraExtratoCombustivel(
     edtExDataIni.Text,
     edtExDataFim.Text,
     vIdLocalEstoque);
  end;
  if cbxTipoRelatorio.ItemIndex=2 then
  begin
    if cbxBombaF.ItemIndex<=0 then
    begin
      MyShowMessage('Informe o Local de Estoque!!',false);
      Exit;
    end;
    if edtExDataFim.Date<edtExDataIni.Date then
    begin
      MyShowMessage('Data Final nao pode ser menor que data inicial!',false);
      Exit;
    end;
    dmReport2.AbreExtratoLocal(
     edtExDataIni.Date,
     edtExDataFim.Date,
     vIdLocalEstoque,
     cbxBombaF.Selected.Text);
  end;
end;

procedure TfrmPrincipal.SearchEditButton1Click(Sender: TObject);
begin
 frmCentroCusto := TfrmCentroCusto.Create(Self);
  try
    frmCentroCusto.ShowModal;
  finally
    vIdCerntroCusto      := dmDB.TCentroCustoid.AsString;
    edtCentroCusto.Text  := dmDB.TCentroCustonome.AsString;
    dmdb.AbrirLocalEstoque('and b.id='+vIdCerntroCusto);
    dmdb.TLocalEstoque.First;
    cbxBombaF.Items.Clear;
    cbxBombaF.Items.Add('Todos');
    while not dmdb.TLocalEstoque.eof do
    begin
      cbxBombaF.Items.AddObject(
       dmdb.TLocalEstoquenome.AsString,TObject(dmdb.TLocalEstoqueID.AsInteger));
      dmdb.TLocalEstoque.Next;
    end;
    cbxBombaF.ItemIndex := 0;
  end;
end;

procedure TfrmPrincipal.SearchEditButton4Click(Sender: TObject);
begin
 frmCentroCusto := TfrmCentroCusto.Create(Self);
  try
    frmCentroCusto.ShowModal;
  finally
    vIdCerntroCusto      := dmDB.TCentroCustoid.AsString;
    edtCentroCustoF.Text  := dmDB.TCentroCustonome.AsString;
  end;
end;

procedure TfrmPrincipal.GeraDash(idCentroCusto:string);
begin

end;

function TfrmPrincipal.GetVersaoArq: string;
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

procedure TfrmPrincipal.Image28Click(Sender: TObject);
begin
 layFiltrosGeral.Visible := not layFiltrosGeral.Visible;
end;

procedure TfrmPrincipal.Image29Click(Sender: TObject);
begin
 MudarAba(tbiMenu,sender)
end;

procedure TfrmPrincipal.Image3Click(Sender: TObject);
begin
//  TThread.CreateAnonymousThread(procedure()
//  begin
//   TThread.Synchronize(TThread.CurrentThread,
//   procedure ()
//   begin
//    GeraDash;
//   end);
//  end).Start;
end;

procedure TfrmPrincipal.Image42Click(Sender: TObject);
begin
 layExtrato.Visible         := false;
end;

procedure TfrmPrincipal.AbriGoogleMaps(Latitude, Longitude: string);
begin
 Latitude  := StringReplace(Latitude,',','.',[rfReplaceAll]);
 Longitude := StringReplace(Longitude,',','.',[rfReplaceAll]);
 ShellExecute(0,
              'OPEN',
               PChar('https://www.google.com/maps/search/'+Latitude+','+Longitude+
               '/@'+Latitude+','+Longitude+',17z'),
               '',
               '',
               SW_SHOWMAXIMIZED);
end;

procedure TfrmPrincipal.btnEntrarClick(Sender: TObject);
begin
 if edtUsuario.Text.Length=0 then
 begin
  MyShowMessage('Informe o Usuario',false);
  edtUsuario.SetFocus;
  Exit;
 end;
 if edtSenha.Text.Length=0 then
 begin
  MyShowMessage('Informe a Senha',false);
  edtSenha.SetFocus;
  Exit;
 end;
 if not dmdb.ValidaUsuario(edtUsuario.Text, edtSenha.Text) then
 begin
  MudarAba(tbiMenu,Sender);
  AnimacaoMnu.Start;
 end
 else
 begin
  MyShowMessage('Usuario ou Senha invalidos!',false);
  edtSenha.SetFocus;
  edtSenha.SelectAll;
 end;
end;

procedure TfrmPrincipal.btnFecharClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmPrincipal.btnGeraDashClick(Sender: TObject);
var
 vUrl:string;
begin
 if edtCentroCustoF.Text.Length=0 then
 begin
   MyShowMessage('Informe o centro de custo!',false);
   Exit;
 end;

 vUrl := 'http://13.58.255.43:3000/public/dashboard/'+
  'c188ef79-1db8-47fa-a65c-6aab08356f7d?centro_de_custo='+
   edtCentroCustoF.Text+'&data_%25C3%25BAnica='+
    FormatDateTime('yyyy-mm-dd',edtDataBase.Date)+'#theme=night';

 TMisc.Open(vUrl);


// if vWebBrowser<>nil  then vWebBrowser.Free;
//  TThread.CreateAnonymousThread(procedure()
//  begin
//   TThread.Synchronize(TThread.CurrentThread,
//   procedure ()
//   begin
//     ReCreateBrowser(vUrl);
//   end);
//  end).Start;

// WebBrowser2.URL := vUrl;
// dmDash.GeraDadosFixos(vIdCerntroCusto,edtDataBase.Date);
// layDadosFixos.Visible := true;
// WebCharts1
// // .BackgroundColor('#2e353b')
// .NewProject
// .Rows
//   .Title
//     .Configuracoes
//      .H4('&nbsp&nbsp&nbsp Consumo Por Maquina Dia')
//     .&End
//   .&End
//  .&End
//  .Rows
//   .Title
//   .&End
//   .Tag
//    .Add(
//      WebCharts1
//      .ContinuosProject
//       .Charts
//        ._ChartType(bar)
//          .Attributes
//            .Heigth(100)
//            .Name('ConsumoMaquinaDia')
//            .ColSpan(12)
//            .Options
//              .Legend
//                .display(true)
//                .position('bottom')
//                .Labels
//                  .fontColorHEX('#000000')
//                .&End
//              .&End
//             .Scales
//                .Axes
//                 .yAxe
//                  .Stacked(true)
//                .&End
//               .&End
//             .&End
//            .&End
////            .Labelling
////               .Format('0.0[00]')
////               .RGBColor('0,0,0')
////               .FontSize(12)
////               .FontStyle('bold')
////               .FontFamily('Arial')
////             .&End
//            .DataSet
//               .textLabel('Consumo Dia')
//               .Types('bar')
//               .BackgroundColor('19,169,107')
//               .Fill(true)
//               .DataSet(dmDash.ConsumoMaquinasDia)
//           .&End
//           .DataSet
//                .textLabel('Consumo Médio')
//                .Types('line')
//                .Fill(true)
//                .BorderWidth(2)
//                .BorderColor('30,182,203')
//                .DataSet(dmDash.MediaMaquiana)
//            .&End
//          .&End
//        .&End
//       .&End
//      .HTML
//     )
//    .&End
//  .&End
//  .Rows
//   .Title
//     .Configuracoes
//      .H4('&nbsp&nbsp&nbsp Total de Litros Por Local de Estoque')
//     .&End
//   .&End
//  .&End
//  .Rows
//   .Title
//   .&End
//   .Tag
//    .Add(
//      WebCharts1
//      .ContinuosProject
//       .Charts
//          ._ChartType(bar)
//        .Attributes
//          .Name('ConsumoporLocal')
//          .ColSpan(12)
//          .Options
//           .Legend
//            .display(false)
//            .position('bottom')
//            .Labels
//              .fontColorHEX('#000000')
//           .&End
//          .&End
//          .&End
//          .DataSet
//            .BackgroundColor('19,169,107')
//            .Fill(true)
//            .textLabel('Consumo por Maquina')
//            .DataSet(dmDash.ConsumoLocalEstoque)
//          .&End
//        .&End
//       .&End
//      .HTML
//     )
//    .&End
//  .&End
//  .Rows
//   .Title
//     .Configuracoes
//      .H4('&nbsp&nbsp&nbsp Consumo Total Últimos 7 Dias')
//     .&End
//   .&End
//  .&End
//  .Rows
//   .Title
//   .&End
//   .Tag
//    .Add(
//      WebCharts1
//      .ContinuosProject
//       .Charts
//          ._ChartType(line)
//        .Attributes
//          .Name('ConsumoporLocal7Dias')
//          .ColSpan(12)
//          .Options
//           .Legend
//            .display(false)
//            .position('bottom')
//            .Labels
//              .fontColorHEX('#000000')
//           .&End
//          .&End
//          .&End
//          .DataSet
//            .BackgroundColor('19,169,107')
//            .Fill(false)
//            .DataSet(dmDash.ConsumoUltimos7Dias)
//          .&End
//        .&End
//       .&End
//      .HTML
//     )
//    .&End
//  .&End
// .WebBrowser(WebBrowser1)
// .Generated;
// WebBrowser1.Visible :=true;
end;

procedure TfrmPrincipal.btnGeraDashMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
 TRectangle(Sender).Opacity :=0.5;
end;

procedure TfrmPrincipal.btnGeraDashMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  TRectangle(Sender).Opacity :=1;
end;

procedure TfrmPrincipal.cbxBombaFChange(Sender: TObject);
begin
 if cbxBombaF.ItemIndex>-1 then
  vIdLocalEstoque := IntToStr(Integer(cbxBombaF.Items.Objects[cbxBombaF.ItemIndex]))
 else
  vIdLocalEstoque := '0';
end;

procedure TfrmPrincipal.cbxBombaFClick(Sender: TObject);
begin
 if edtCentroCusto.Text.Length=0 then
 begin
  MyShowMessage('Selecione o Centro de Custo antes de selecionar o Local de Estoque!',false);
  Exit;
 end;
end;

procedure TfrmPrincipal.cbxTipoRelatorioChange(Sender: TObject);
begin
   gpPeriodo.Enabled      := cbxTipoRelatorio.ItemIndex>0;
end;

procedure TfrmPrincipal.edtSenhaKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if key=13 then
  btnEntrarClick(sender);
end;

procedure TfrmPrincipal.edtUsuarioExit(Sender: TObject);
begin
 TThread.CreateAnonymousThread(procedure()
 begin
  TThread.Synchronize(TThread.CurrentThread,
  procedure ()
  begin
    edtSenha.SetFocus;
  end);
 end).Start;
end;

procedure TfrmPrincipal.edtUsuarioKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if key=13 then
  btnEntrarClick(sender);
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
 Timer1.Enabled   := false;
end;

procedure TfrmPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
var
 Arquivo,
 vDataBase,vServer,vUser_name,vPassword,vPorta :string;
begin
 Arquivo := ExtractFilePath(ParamStr(0))+'ReplyAWS.exe';
 if(Key=VK_F5) then
 begin
  if not FileExists(Arquivo) then
  begin
    ShowMessage('Arquivo ReplyAWS.exe não localizado no seguinte diretorio:'+#13+
    Arquivo);
    Exit;
  end
  else
   ShellExecute(GetDesktopWindow,'open',pchar(Arquivo),nil,nil,sw_show);
 end;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  layExtrato.Visible        := false;
  dmdb.ConectaPG;
  TreeMnu.CollapseAll;
  laySync.Visible := false;
  lblVersao.Text            := 'Versão: '+GetVersaoArq;
  lblVersao2.Text           := 'Versão: '+GetVersaoArq;
  layMnu.Opacity            := 0;
  tbPrincipal.TabPosition   := TTabPosition.None;
  tbPrincipal.ActiveTab     := tbiLogin;
  layLoginAnimaiton.Visible := false;
  Timer1.Enabled            := true;
  edtUsuario.SetFocus;
end;

procedure TfrmPrincipal.mnuClick(Sender: TObject);
begin
 if layMnu.Width=250 then
  layMnu.Width:=0
 else
  layMnu.Width:=250
end;

procedure TfrmPrincipal.MudarAba(ATabItem: TTabItem; sender: TObject);
begin
   actMudarAba.Tab := ATabItem;
   actMudarAba.ExecuteTarget(sender);
end;

procedure TfrmPrincipal.MyShowMessage(msg: string; btnCancel: Boolean);
var
 dlg :TFrmmsgDlg;
begin
  dlg := TFrmmsgDlg.Create(nil);
  dlg.Position := TFormPosition.ScreenCenter;
  dlg.msg.Text := msg;
  dlg.btnCancel.Visible := btnCancel;
  dlg.ShowModal(
  procedure(ModalResult: TModalResult)
  begin
  end);
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
 layLoginAnimaiton.Visible := true;
 Animation.Start;
 Timer1.Enabled := false;
end;

procedure TfrmPrincipal.TreeEntradaNFClick(Sender: TObject);
begin
  frmCadEntradaEstoque := TfrmCadEntradaEstoque.Create(Self);
  try
    layMnuPrincipal.Opacity :=0;
    frmCadEntradaEstoque.ShowModal;
  finally
    AnimationPrincipal.Start;
    frmCadEntradaEstoque.Free;
  end;
end;

procedure TfrmPrincipal.TreeExAgriculturaClick(Sender: TObject);
begin
 TreeExAuxiliares.IsExpanded := false;
end;

procedure TfrmPrincipal.TreeExAuxiliaresClick(Sender: TObject);
begin
 if TreeExAuxiliares.IsExpanded then
  TreeExAuxiliares.IsExpanded := false
 else
  TreeExAuxiliares.IsExpanded := true;
end;

procedure TfrmPrincipal.TreeFornecedoresClick(Sender: TObject);
begin
  frmCadFornecedor := TfrmCadFornecedor.Create(Self);
  try
    layMnuPrincipal.Opacity :=0;
    frmCadFornecedor.ShowModal;
  finally
    AnimationPrincipal.Start;
    frmCadFornecedor.Free;
  end;
end;

procedure TfrmPrincipal.TreeGrupoMaquinaClick(Sender: TObject);
begin
  frmAuxGrupo := TfrmAuxGrupo.Create(Self);
  try
    layMnuPrincipal.Opacity :=0;
    frmAuxGrupo.ShowModal;
  finally
    AnimationPrincipal.Start;
    frmAuxGrupo.Free;
  end;
end;

procedure TfrmPrincipal.TreeLocalEstoqueClick(Sender: TObject);
begin
  frmAuxLocalEstoque := TfrmAuxLocalEstoque.Create(nil);
  try
    layMnuPrincipal.Opacity :=0;
    frmAuxLocalEstoque.vFiltro :='';
    frmAuxLocalEstoque.ShowModal;
  finally
    AnimationPrincipal.Start;
    frmAuxLocalEstoque.Free;
  end;
end;

procedure TfrmPrincipal.TreeLubrificacaoClick(Sender: TObject);
begin
 frmLubrificacao := TfrmLubrificacao.Create(Self);
  try
    layMnuPrincipal.Opacity :=0;
    frmLubrificacao.ShowModal;
  finally
    AnimationPrincipal.Start;
    frmLubrificacao.Free;
  end;
end;

procedure TfrmPrincipal.TreeManutencaoClick(Sender: TObject);
begin
 if TreeManutencao.IsExpanded then
  TreeMnu.CollapseAll
 else
  TreeManutencao.IsExpanded := true;
end;

procedure TfrmPrincipal.TreeMaquinaModeloClick(Sender: TObject);
begin
 frmCadModeloMaquina := TfrmCadModeloMaquina.Create(Self);
  try
    layMnuPrincipal.Opacity :=0;
    frmCadModeloMaquina.ShowModal;
  finally
    AnimationPrincipal.Start;
    frmCadModeloMaquina.Free;
  end;
end;

procedure TfrmPrincipal.TreeMaquinasClick(Sender: TObject);
begin
 frmCadMaquinaVeiculo := TfrmCadMaquinaVeiculo.Create(Self);
  try
    layMnuPrincipal.Opacity :=0;
    frmCadMaquinaVeiculo.ShowModal;
  finally
    AnimationPrincipal.Start;
    frmCadMaquinaVeiculo.Free;
  end;
end;

procedure TfrmPrincipal.TreeMovEstoqueClick(Sender: TObject);
begin
  frmMovLocalEstoque := TfrmMovLocalEstoque.Create(Self);
  try
    layMnuPrincipal.Opacity :=0;
    frmMovLocalEstoque.ShowModal;
  finally
    AnimationPrincipal.Start;
    frmMovLocalEstoque.Free;
  end;
end;

procedure TfrmPrincipal.TreePlanoManutencaoClick(Sender: TObject);
begin
  frmPlanoManutencao := TfrmPlanoManutencao.Create(Self);
  try
    layMnuPrincipal.Opacity :=0;
    frmPlanoManutencao.ShowModal;
  finally
    AnimationPrincipal.Start;
    frmPlanoManutencao.Free;
  end;
end;

procedure TfrmPrincipal.TreeProdutosClick(Sender: TObject);
begin
  frmCadProdutos := TfrmCadProdutos.Create(Self);
  try
    layMnuPrincipal.Opacity :=0;
    frmCadProdutos.ShowModal;
  finally
    AnimationPrincipal.Start;
    frmCadProdutos.Free;
  end;
end;

procedure TfrmPrincipal.TreeSaidaEstoqueClick(Sender: TObject);
begin
 frmSaidaEstoque := TfrmSaidaEstoque.Create(Self);
  try
    layMnuPrincipal.Opacity :=0;
    frmSaidaEstoque.ShowModal;
  finally
    AnimationPrincipal.Start;
    frmSaidaEstoque.Free;
  end;
end;

procedure TfrmPrincipal.TreeStartDiarioClick(Sender: TObject);
begin
  frmSatrtDiario := TfrmSatrtDiario.Create(Self);
  try
    layMnuPrincipal.Opacity :=0;
    frmSatrtDiario.ShowModal;
  finally
    AnimationPrincipal.Start;
  end;
end;

procedure TfrmPrincipal.TreeSubGrupoClick(Sender: TObject);
begin
 frmAuxSubgrupo := TfrmAuxSubgrupo.Create(Self);
  try
    layMnuPrincipal.Opacity :=0;
    frmAuxSubgrupo.ShowModal;
  finally
    AnimationPrincipal.Start;
    frmAuxSubgrupo.Free;
  end;
end;

procedure TfrmPrincipal.TreeViewItem1Click(Sender: TObject);
begin
  frmUsuarios := TfrmUsuarios.Create(Self);
  try
    layMnuPrincipal.Opacity :=0;
    frmUsuarios.ShowModal;
  finally
    AnimationPrincipal.Start;
    frmUsuarios.Free;
  end;
end;

procedure TfrmPrincipal.TreeViewItem2Click(Sender: TObject);
begin
 frmCheckListGrupoItems := TfrmCheckListGrupoItems.Create(nil);
  try
    layMnuPrincipal.Opacity :=0;
    frmCheckListGrupoItems.ShowModal;
  finally
    AnimationPrincipal.Start;
    frmCheckListGrupoItems.Free;
  end;
end;

procedure TfrmPrincipal.TreeViewItem3Click(Sender: TObject);
begin
  cbxTipoRelatorio.ItemIndex :=-1;
  edtCentroCusto.Text        :='';
  edtExDataIni.Date          := Date-7;
  layExtrato.Visible         := true;
end;

procedure TfrmPrincipal.TreeViewItem5Click(Sender: TObject);
begin
  frmManutencao := TfrmManutencao.Create(Self);
  try
    layMnuPrincipal.Opacity :=0;
    frmManutencao.ShowModal;
  finally
    AnimationPrincipal.Start;
    frmManutencao.Free;
  end;
end;

procedure TfrmPrincipal.TreeEstoqueClick(Sender: TObject);
begin
if TreeEstoque.IsExpanded then
  TreeEstoque.IsExpanded := false
 else
 begin
  TreeMnu.CollapseAll;
  TreeEstoque.IsExpanded := true;
 end;
end;

procedure TfrmPrincipal.TreeAbastecimentoClick(Sender: TObject);
begin
  frmAbastecimento := TfrmAbastecimento.Create(Self);
  try
    layMnuPrincipal.Opacity :=0;
    frmAbastecimento.ShowModal;
  finally
    AnimationPrincipal.Start;
    frmAbastecimento.Free;
  end;
end;

procedure TfrmPrincipal.TreeAuxAtividadeClick(Sender: TObject);
begin
   frmAuxAtividadeAbastecimento := TfrmAuxAtividadeAbastecimento.Create(Self);
  try
    layMnuPrincipal.Opacity :=0;
    frmAuxAtividadeAbastecimento.ShowModal;
  finally
    AnimationPrincipal.Start;
    frmAuxAtividadeAbastecimento.Free;
  end;
end;

procedure TfrmPrincipal.TreeAuxMarcaClick(Sender: TObject);
begin
  frmCadAuxMarcas := TfrmCadAuxMarcas.Create(Self);
  try
    layMnuPrincipal.Opacity :=0;
    frmCadAuxMarcas.ShowModal;
  finally
    AnimationPrincipal.Start;
    frmCadAuxMarcas.Free;
  end;
end;

procedure TfrmPrincipal.TreeAuxOperadorClick(Sender: TObject);
begin
  frmOperadorMaquinas := TfrmOperadorMaquinas.Create(Self);
  try
    layMnuPrincipal.Opacity :=0;
    frmOperadorMaquinas.ShowModal;
  finally
    AnimationPrincipal.Start;
    frmOperadorMaquinas.Free;
  end;
end;

procedure TfrmPrincipal.TreeCadastrosGeraisClick(Sender: TObject);
begin
 if TreeCadastrosGerais.IsExpanded then
  TreeCadastrosGerais.IsExpanded := false
 else
 begin
  TreeMnu.CollapseAll;
  TreeCadastrosGerais.IsExpanded := true;
 end;
end;

procedure TfrmPrincipal.TreeCentroCustoClick(Sender: TObject);
begin
  frmCentroCusto := TfrmCentroCusto.Create(Self);
  try
    layMnuPrincipal.Opacity :=0;
    frmCentroCusto.ShowModal;
  finally
    AnimationPrincipal.Start;
    frmCentroCusto.Free;
  end;
end;

procedure TfrmPrincipal.TreeCheckClick(Sender: TObject);
begin
 if TreeCheck.IsExpanded then
  TreeCheck.IsExpanded := false
 else
 begin
  TreeMnu.CollapseAll;
  TreeCheck.IsExpanded := true;
 end;
end;

procedure TfrmPrincipal.TreeChekModeloClick(Sender: TObject);
begin
 frmChekListGeneric := TfrmChekListGeneric.Create(Self);
  try
    layMnuPrincipal.Opacity :=0;
    frmChekListGeneric.ShowModal;
  finally
    AnimationPrincipal.Start;
    frmChekListGeneric.Free;
  end;
end;

procedure TfrmPrincipal.TreeChekRealizadoClick(Sender: TObject);
begin
  frmChekListRealizado := TfrmChekListRealizado.Create(Self);
  try
    layMnuPrincipal.Opacity :=0;
    frmChekListRealizado.ShowModal;
  finally
    AnimationPrincipal.Start;
    frmChekListRealizado.Free;
  end;
end;

procedure TfrmPrincipal.TreeColetorDadosClick(Sender: TObject);
begin
  frmCadColetores := TfrmCadColetores.Create(Self);
  try
    layMnuPrincipal.Opacity :=0;
    frmCadColetores.ShowModal;
  finally
    AnimationPrincipal.Start;
    frmCadColetores.Free;
  end;
end;

procedure TfrmPrincipal.TreeCompLubClick(Sender: TObject);
begin
 frmAuxCompLub := TfrmAuxCompLub.Create(nil);
  try
    layMnuPrincipal.Opacity :=0;
    frmAuxCompLub.ShowModal;
  finally
    AnimationPrincipal.Start;
    frmAuxCompLub.Free;
  end;
end;

procedure TfrmPrincipal.TreeDashBoardClick(Sender: TObject);
begin
 edtCentroCustoF.Text  := '';
 edtDataBase.Date      := date;
 MudarAba(tbiDash,sender);
end;

end.

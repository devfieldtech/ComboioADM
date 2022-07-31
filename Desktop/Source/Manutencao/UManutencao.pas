unit UManutencao;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FMX.ActnList,
  System.Actions, FMX.TabControl, FMX.Ani, FMX.ScrollBox, FMX.Grid, FMX.Edit,
  FMX.Objects, FMX.Controls.Presentation, FMX.Layouts, UdmDB, UdmManutencao,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.DateTimeCtrls, FMX.ListBox, FMX.EditBox, FMX.NumberBox, UCadMaquina,
  UPlanoManutencao, UUsuarios,Soap.EncdDecd, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView,
  UAuxCheckListGrupo, UProdutos, FMX.Memo.Types, FMX.Memo, UCentrodeCusto,
  System.Math.Vectors, FMX.Controls3D, FMX.Layers3D, UdmReport2;

type
  TfrmManutencao = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    OpenImg: TOpenDialog;
    layAlerta: TLayout;
    Rectangle2: TRectangle;
    Layout7: TLayout;
    Layout34: TLayout;
    Rectangle23: TRectangle;
    Label33: TLabel;
    cbxTipoAlerta: TComboBox;
    Layout46: TLayout;
    btnConfirmaAlerta: TRectangle;
    Image19: TImage;
    Label36: TLabel;
    ToolBar2: TToolBar;
    Rectangle6: TRectangle;
    Label34: TLabel;
    Image20: TImage;
    layItens: TLayout;
    ToolBar4: TToolBar;
    Label35: TLabel;
    StringGrid3: TStringGrid;
    Layout36: TLayout;
    Rectangle8: TRectangle;
    btnNovoItem: TRectangle;
    Image1: TImage;
    Label37: TLabel;
    btnExluirItem: TRectangle;
    Image21: TImage;
    Label38: TLabel;
    btnEditarItem: TRectangle;
    Image22: TImage;
    Label39: TLabel;
    Layout1: TLayout;
    laySubSubCad: TLayout;
    Rsub: TRectangle;
    laySubSubSubCad: TLayout;
    Layout8: TLayout;
    edtMaquina: TEdit;
    BtnBuscaMaquina: TEditButton;
    Layout2: TLayout;
    Label4: TLabel;
    Label7: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    cbxTipo: TComboBox;
    edtHorimetroMaquina: TNumberBox;
    edtHodometroMaquina: TNumberBox;
    Layout10: TLayout;
    Rectangle10: TRectangle;
    Layout11: TLayout;
    P: TLayout;
    Layout12: TLayout;
    Label12: TLabel;
    Label13: TLabel;
    edtHorimetroAtual: TNumberBox;
    edtHodometroAtual: TNumberBox;
    Layout3: TLayout;
    Rectangle3: TRectangle;
    Layout4: TLayout;
    Layout6: TLayout;
    edtPlanoManutencao: TEdit;
    btnBuscaPlano: TEditButton;
    Layout17: TLayout;
    Label6: TLabel;
    Layout18: TLayout;
    Rectangle4: TRectangle;
    Layout24: TLayout;
    Layout25: TLayout;
    Label5: TLabel;
    lblDataFimManutencao: TLabel;
    Label9: TLabel;
    edtResponsavel: TEdit;
    btnBuscaResponsavel: TEditButton;
    ClearEditButton4: TClearEditButton;
    edtDataIni: TDateEdit;
    edtDataFim: TDateEdit;
    Layout19: TLayout;
    Layout20: TLayout;
    Layout27: TLayout;
    Layout31: TLayout;
    Label19: TLabel;
    Label21: TLabel;
    Layout33: TLayout;
    LayBtnFotoHri: TLayout;
    btnLimpaFotoHorimetro: TRectangle;
    Label27: TLabel;
    Image9: TImage;
    btnNovaFotoHorimetro: TRectangle;
    Label28: TLabel;
    Image10: TImage;
    Rectangle7: TRectangle;
    imgHri: TImage;
    Layout35: TLayout;
    Rectangle17: TRectangle;
    imgHdo: TImage;
    LaybtnFotoHod: TLayout;
    btnLimpaFotoHodometro: TRectangle;
    Label29: TLabel;
    Image17: TImage;
    btnNovaFotoHodometro: TRectangle;
    Label30: TLabel;
    Image18: TImage;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    tbiChekList: TTabItem;
    ToolBar5: TToolBar;
    Rectangle9: TRectangle;
    Label42: TLabel;
    imgVoltar: TImage;
    imgAlerta: TImage;
    imgSemAlerta: TImage;
    recConf: TRectangle;
    Image11: TImage;
    Rectangle12: TRectangle;
    ListaFotos: TListView;
    imgData: TImage;
    imgComboio: TImage;
    imgCombustivel: TImage;
    imgAux: TImage;
    Layout13: TLayout;
    Rectangle13: TRectangle;
    Layout14: TLayout;
    Layout15: TLayout;
    Layout16: TLayout;
    Label10: TLabel;
    lblMaquina: TLabel;
    Label14: TLabel;
    lblPlanoManutencao: TLabel;
    Rectangle14: TRectangle;
    Rectangle15: TRectangle;
    Label11: TLabel;
    Label15: TLabel;
    Rectangle11: TRectangle;
    lblDataInicio: TLabel;
    Rectangle16: TRectangle;
    lblDataFim: TLabel;
    Layout9: TLayout;
    Layout21: TLayout;
    lblHorimetro: TLabel;
    lblHodometro: TLabel;
    Rectangle18: TRectangle;
    Rectangle19: TRectangle;
    imgHorimetro: TImage;
    imgHodometro: TImage;
    imgObrigatoria: TImage;
    imgChecked: TImage;
    imgCheckFalse: TImage;
    LayCads: TLayout;
    RecCads: TRectangle;
    LayCentro: TLayout;
    tbItens: TTabControl;
    tbiItem: TTabItem;
    tbiFoto: TTabItem;
    Rectangle20: TRectangle;
    ToolBar6: TToolBar;
    Rectangle37: TRectangle;
    lblCads: TLabel;
    Image25: TImage;
    Image26: TImage;
    Layout48: TLayout;
    Layout49: TLayout;
    Rectangle29: TRectangle;
    Layout50: TLayout;
    Label44: TLabel;
    edtGrupoItemRevisao: TEdit;
    ClearEditButton5: TClearEditButton;
    btnBuscaItem: TEditButton;
    Layout51: TLayout;
    Rectangle30: TRectangle;
    Layout52: TLayout;
    Label45: TLabel;
    edtqtde: TNumberBox;
    Layout53: TLayout;
    Rectangle31: TRectangle;
    Layout54: TLayout;
    Label46: TLabel;
    edtObsItem: TEdit;
    ClearEditButton7: TClearEditButton;
    Layout55: TLayout;
    Rectangle32: TRectangle;
    Layout56: TLayout;
    Label47: TLabel;
    edtProdutoUtilizado: TEdit;
    EditButton1: TEditButton;
    ClearEditButton1: TClearEditButton;
    Rectangle33: TRectangle;
    Layout57: TLayout;
    Label48: TLabel;
    edtDescricao: TEdit;
    ClearEditButton2: TClearEditButton;
    Rectangle34: TRectangle;
    Layout58: TLayout;
    Label49: TLabel;
    cbxFotoObrigatoria: TComboBox;
    Layout23: TLayout;
    Rectangle21: TRectangle;
    Label18: TLabel;
    Image13: TImage;
    btnSalvarItem: TRectangle;
    Label20: TLabel;
    Image14: TImage;
    Rectangle22: TRectangle;
    Layout26: TLayout;
    Layout37: TLayout;
    Rectangle27: TRectangle;
    Layout43: TLayout;
    Rectangle38: TRectangle;
    Label43: TLabel;
    Image23: TImage;
    btnSalvaImgItem: TRectangle;
    lblsa: TLabel;
    Image24: TImage;
    imgItem: TImage;
    Layout28: TLayout;
    Rectangle25: TRectangle;
    Label23: TLabel;
    Image27: TImage;
    btnNovaFotoItem: TRectangle;
    Label24: TLabel;
    Image28: TImage;
    tbiStatus: TTabItem;
    layStatusManutencao: TLayout;
    Rectangle5: TRectangle;
    Layout29: TLayout;
    Layout30: TLayout;
    Rectangle26: TRectangle;
    Layout32: TLayout;
    Layout38: TLayout;
    Label8: TLabel;
    Label25: TLabel;
    Layout39: TLayout;
    Rectangle28: TRectangle;
    Layout40: TLayout;
    EdtObsStatus: TMemo;
    Layout41: TLayout;
    Label26: TLabel;
    Layout42: TLayout;
    ToolBar9: TToolBar;
    Label50: TLabel;
    Image31: TImage;
    cbxStatusManutencao: TComboBox;
    edtDataStatus: TDateEdit;
    Label51: TLabel;
    edtHoraStatus: TTimeEdit;
    Layout44: TLayout;
    btnCancelaStatus: TRectangle;
    Label40: TLabel;
    Image29: TImage;
    btnConfirmaStatus: TRectangle;
    Label41: TLabel;
    Image30: TImage;
    Layout45: TLayout;
    StringGrid2: TStringGrid;
    Layout47: TLayout;
    Rectangle39: TRectangle;
    btnNovoStatus: TRectangle;
    Image32: TImage;
    Label53: TLabel;
    btnExcluiStatus: TRectangle;
    Image33: TImage;
    Label54: TLabel;
    btnEditaStatus: TRectangle;
    Image34: TImage;
    Label55: TLabel;
    BindSourceDB3: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource;
    Layout22: TLayout;
    Rectangle24: TRectangle;
    Layout59: TLayout;
    edtDataStatusFim: TDateEdit;
    edtHoraStatusFim: TTimeEdit;
    Layout60: TLayout;
    Label22: TLabel;
    Label56: TLabel;
    Label16: TLabel;
    edtStatus: TEdit;
    ClearEditButton3: TClearEditButton;
    Layout61: TLayout;
    Rectangle35: TRectangle;
    btnAddManutencao: TRectangle;
    Image15: TImage;
    Label52: TLabel;
    btnDeletarManutencao: TRectangle;
    Image16: TImage;
    Label57: TLabel;
    btnEditarManutencao: TRectangle;
    Image35: TImage;
    Label58: TLabel;
    btnChekLista: TRectangle;
    Image12: TImage;
    Label17: TLabel;
    btnStatus: TRectangle;
    Image36: TImage;
    Label59: TLabel;
    GroupBox2: TGroupBox;
    Label60: TLabel;
    Label61: TLabel;
    edtDataInicio1: TDateEdit;
    edtDataFim1: TDateEdit;
    Label62: TLabel;
    Rectangle36: TRectangle;
    lblStatus: TLabel;
    imgFotoObrigatoria: TImage;
    Layout62: TLayout;
    Rectangle40: TRectangle;
    Layout63: TLayout;
    Layout64: TLayout;
    edtCentroCusto: TEdit;
    EditButton2: TEditButton;
    Layout65: TLayout;
    Label64: TLabel;
    edtCentroCustoF1: TEdit;
    ClearEditButton13: TClearEditButton;
    SearchEditButton9: TSearchEditButton;
    Label63: TLabel;
    tbiServicos: TTabItem;
    Layout66: TLayout;
    StringGrid4: TStringGrid;
    Layout67: TLayout;
    Rectangle41: TRectangle;
    btnNovoServico: TRectangle;
    Image37: TImage;
    Label65: TLabel;
    btnExcluirServico: TRectangle;
    Image38: TImage;
    Label66: TLabel;
    btnEditaServico: TRectangle;
    Image39: TImage;
    Label67: TLabel;
    layServicos: TLayout;
    Rectangle45: TRectangle;
    Layout69: TLayout;
    Layout76: TLayout;
    Layout77: TLayout;
    Rectangle48: TRectangle;
    Label72: TLabel;
    Image40: TImage;
    btnConfirmaServico: TRectangle;
    Label73: TLabel;
    Image41: TImage;
    ToolBar7: TToolBar;
    Label74: TLabel;
    Image42: TImage;
    layServicosSub: TLayout;
    Layout3D2: TLayout3D;
    Layout70: TLayout;
    Rectangle46: TRectangle;
    Layout71: TLayout;
    Label68: TLabel;
    edtDescricaoServico: TEdit;
    ClearEditButton12: TClearEditButton;
    Layout72: TLayout;
    Rectangle47: TRectangle;
    Layout73: TLayout;
    Label69: TLabel;
    edtResponsavelServico: TEdit;
    ClearEditButton6: TClearEditButton;
    Layout74: TLayout;
    Rectangle50: TRectangle;
    Layout75: TLayout;
    edtValorServico: TNumberBox;
    Layout78: TLayout;
    Rectangle51: TRectangle;
    Layout79: TLayout;
    Label71: TLabel;
    edtDataServico: TDateEdit;
    BindSourceDB4: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB4: TLinkGridToDataSource;
    btnServicos: TRectangle;
    Image43: TImage;
    Label75: TLabel;
    Layout68: TLayout;
    Label70: TLabel;
    Label76: TLabel;
    edtgarantia: TNumberBox;
    btnRelatorio: TRectangle;
    Image44: TImage;
    Label77: TLabel;
    procedure BtnBuscaMaquinaClick(Sender: TObject);
    procedure btnBuscaPlanoClick(Sender: TObject);
    procedure btnBuscaResponsavelClick(Sender: TObject);
    procedure btnNovaFotoHorimetroClick(Sender: TObject);
    procedure btnNovaFotoHodometroClick(Sender: TObject);
    procedure btnLimpaFotoHodometroClick(Sender: TObject);
    procedure btnLimpaFotoHorimetroClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConfirmaAlertaClick(Sender: TObject);
    procedure ListaFotosItemClickEx(const Sender: TObject; ItemIndex: Integer;
      const LocalClickPos: TPointF; const ItemObject: TListItemDrawable);
    procedure btnChekListaClick(Sender: TObject);
    procedure Image26Click(Sender: TObject);
    procedure Rectangle38MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Rectangle21Click(Sender: TObject);
    procedure btnSalvarItemClick(Sender: TObject);
    procedure btnBuscaItemClick(Sender: TObject);
    procedure EditButton1Click(Sender: TObject);
    procedure btnNovaFotoItemClick(Sender: TObject);
    procedure btnSalvaImgItemClick(Sender: TObject);
    procedure btnNovoItemClick(Sender: TObject);
    procedure btnEditarItemClick(Sender: TObject);
    procedure btnExluirItemClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure cbxStatusManutencaoChange(Sender: TObject);
    procedure Image31Click(Sender: TObject);
    procedure btnCancelaStatusClick(Sender: TObject);
    procedure btnConfirmaStatusClick(Sender: TObject);
    procedure btnNovoStatusClick(Sender: TObject);
    procedure btnEditaStatusClick(Sender: TObject);
    procedure btnExcluiStatusClick(Sender: TObject);
    procedure btnStatusClick(Sender: TObject);
    procedure btnEditarManutencaoClick(Sender: TObject);
    procedure btnAddManutencaoClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnBuscarFiltroClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure EditButton2Click(Sender: TObject);
    procedure SearchEditButton9Click(Sender: TObject);
    procedure btnNovoServicoClick(Sender: TObject);
    procedure btnEditaServicoClick(Sender: TObject);
    procedure btnExcluirServicoClick(Sender: TObject);
    procedure btnConfirmaServicoClick(Sender: TObject);
    procedure btnServicosClick(Sender: TObject);
    procedure RecCadsClick(Sender: TObject);
    procedure Rectangle48Click(Sender: TObject);
    procedure Image42Click(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
  private
    vIdMaquina,vIdModelo,vIdPlano,vIdResponsavel,vimgHri,vimgHdo,
    vIdProduto,vIdGrupoItem,vimgItem,vIdCentroCusto :string;
    vTipoMed,vTipoAlerta,vErro,vHorasPlano,vDiasPlano:integer;
    vNewRecord:Boolean;
    procedure FiltraManutencao;
    function  BitmapFromBase64(const base64: string): TBitmap;
    function  Base64FromBitmap(Bitmap: TBitmap): string;
  public
    var
     vIdItem :string;
     vItemChecado,vIdexList,vFotoObrigatoria:integer;
    procedure GerarLista;
  end;

var
  frmManutencao: TfrmManutencao;

implementation

{$R *.fmx}

uses UPrincipal;

procedure TfrmManutencao.btnAddManutencaoClick(Sender: TObject);
begin
 lblDataFimManutencao.Visible := false;
 edtDataFim.Visible           := false;
 vNewRecord                   := true;
 edtPlanoManutencao.Text      :='';
 edtMaquina.Text              :='';
 cbxTipo.ItemIndex            :=0;
 edtHorimetroAtual.Value      :=0;
 edtHodometroAtual.Value      :=0;
 imgHri.Bitmap                :=nil;
 imgHdo.Bitmap                :=nil;
 edtStatus.Text               :='Iniciada';
 edtStatus.Enabled            := false;
 cbxStatusManutencao.ItemIndex:=0;
 dmManutencao.TManutencao.Insert;
 MudarAba(tbiCad,sender)
end;

procedure TfrmManutencao.btnBuscaItemClick(Sender: TObject);
begin
 frmCheckListGrupoItems := TfrmCheckListGrupoItems.Create(Self);
  try
    frmCheckListGrupoItems.ShowModal;
  finally
    vIdGrupoItem              := dmDB.cheklistregrupoitemid.AsString;
    edtGrupoItemRevisao.Text  := dmDB.cheklistregrupoitemnome.AsString;
  end;
end;

procedure TfrmManutencao.BtnBuscaMaquinaClick(Sender: TObject);
begin
  frmCadMaquinaVeiculo := TfrmCadMaquinaVeiculo.Create(Self);
  try
    frmCadMaquinaVeiculo.ShowModal;
  finally
    vIdMaquina                := dmdb.TMaquinasid.AsString;
    vTipoMed                  := dmdb.TMaquinastipomedicao.AsInteger;
    vIdModelo                 := dmdb.TMaquinasidmodelo.AsString;
    edtMaquina.Text           := dmdb.TMaquinasprefixo.AsString;
    edtHorimetroMaquina.Value := dmdb.TMaquinashorimetroatual.Asfloat;
    edtHodometroMaquina.Value := dmdb.TMaquinaskmatual.Asfloat;
    case vTipoMed of
       0:begin
          edtHodometroAtual.Enabled := false;
          edtHorimetroAtual.Enabled := true;
          LayBtnFotoHri.Enabled     := true;
          LaybtnFotoHod.Enabled     := false;
         end;
       1:begin
          edtHodometroAtual.Enabled := true;
          edtHorimetroAtual.Enabled := false;
          LayBtnFotoHri.Enabled     := false;
          LaybtnFotoHod.Enabled     := true;
         end;
       2:begin
          edtHodometroAtual.Enabled := true;
          edtHorimetroAtual.Enabled := true;
          LayBtnFotoHri.Enabled     := true;
          LaybtnFotoHod.Enabled     := true;
         end;
    end;
    frmCadMaquinaVeiculo.Free;
  end;
end;

procedure TfrmManutencao.btnBuscaPlanoClick(Sender: TObject);
begin
 if edtMaquina.Text.Length=0 then
 begin
   MyShowMessage('Selecione a Maquina antes!',false);
   Exit;
 end;
 frmPlanoManutencao := TfrmPlanoManutencao.Create(Self);
  try
    frmPlanoManutencao.vFiltro   :=' and idmaquina='+vIdMaquina+
     ' or p.id in (select idplano from planorevisaomaquinas p2'+
     ' where status=1 and idmodelo='+vIdModelo+')';
    frmPlanoManutencao.ShowModal;
  finally
    vIdPlano                     := dmManutencao.TPlanoManutencaoid.AsString;
    vHorasPlano                  := dmManutencao.TPlanoManutencaointervalohoras.AsInteger;
    vDiasPlano                   := dmManutencao.TPlanoManutencaointervalodias.AsInteger;
    edtPlanoManutencao.Text      := dmManutencao.TPlanoManutencaonome.AsString;
    frmPlanoManutencao.Free;
  end;
end;

procedure TfrmManutencao.btnBuscaResponsavelClick(Sender: TObject);
begin
 frmUsuarios := TfrmUsuarios.Create(Self);
  try
    frmUsuarios.ShowModal;
  finally
    vIdResponsavel       := dmdb.TUsuarioid.AsString;
    edtResponsavel.Text  := dmdb.TUsuarioNome.AsString;
    frmUsuarios.Free;
  end;

end;

procedure TfrmManutencao.btnBuscarFiltroClick(Sender: TObject);
begin
 FiltraManutencao;
end;

procedure TfrmManutencao.btnCancelaClick(Sender: TObject);
begin
  dmManutencao.TManutencao.CancelUpdates;
  inherited;
end;

procedure TfrmManutencao.btnCancelaStatusClick(Sender: TObject);
begin
  layStatusManutencao.Visible := false;
end;

procedure TfrmManutencao.btnChekListaClick(Sender: TObject);
begin
 TThread.CreateAnonymousThread(
 procedure
 begin
  TThread.Synchronize(TThread.CurrentThread,
  procedure()
  begin
   lblMaquina.Text := dmManutencao.TManutencaoprefixo.AsString;
   lblPlanoManutencao.Text := dmManutencao.TManutencaoplanomanutencao.AsString;
   lblDataInicio.Text      := dmManutencao.TManutencaodatainicio.AsString;
   lblDataFim.Text         := dmManutencao.TManutencaodatafim.AsString;
   lblHorimetro.Text       := 'Horimetro: '+dmManutencao.TManutencaohorimetro.AsString;
   lblHodometro.Text       := 'Hodômetro: '+dmManutencao.TManutencaodatafim.AsString;
   lblStatus.Text          := dmManutencao.TManutencaostatusstr.AsString;
   if dmManutencao.TManutencaoimghorimentro.AsString.Length>100 then
    imgHorimetro.Bitmap := BitmapFromBase64(dmManutencao.TManutencaoimghorimentro.AsString);
   if dmManutencao.TManutencaoimghodometro.AsString.Length>100 then
    imgHodometro.Bitmap := BitmapFromBase64(dmManutencao.TManutencaoimghorimentro.AsString);
   GerarLista;
   MudarAba(tbiChekList,sender);
  end)
  end).Start;
end;

procedure TfrmManutencao.btnConfirmaAlertaClick(Sender: TObject);
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

procedure TfrmManutencao.btnConfirmaServicoClick(Sender: TObject);
begin
 edtResponsavelServico.SetFocus;
 if edtResponsavelServico.Text.Length =0 then
 begin
   MyShowMessage('Informe um responsavel !',false);
   Exit;
 end;
 if edtDescricaoServico.Text.Length =0 then
 begin
   MyShowMessage('Informe uma Descrição !',false);
   Exit;
 end;
 if edtValorServico.Value<=0 then
 begin
   MyShowMessage('Informe um Valor !',false);
   Exit;
 end;

 dmManutencao.TManutencaoServicoidrevisao.AsInteger       := dmManutencao.TManutencaoid.AsInteger;
 if dmManutencao.TManutencaoServico.State=dsInsert then
  dmManutencao.TManutencaoServicoidusuario.AsString        := dmdb.vIdUsuarioLogado
 else
 begin
  dmManutencao.TManutencaoServicoidusuarioalteracao.AsString := dmdb.vIdUsuarioLogado;
  dmManutencao.TManutencaoServicodataalteracao.AsDateTime    := now;
 end;
 dmManutencao.TManutencaoServicodatarealizado.AsDateTime     := edtDataServico.Date;
 dmManutencao.TManutencaoServicoresponsavel.AsString         := edtResponsavelServico.Text;
 dmManutencao.TManutencaoServicodescricao.AsString           := edtDescricaoServico.Text;
 dmManutencao.TManutencaoServicovalortotal.AsFloat           := edtValorServico.Value;
 dmManutencao.TManutencaoServicogarantia.AsInteger           := TRUNC(edtgarantia.Value);
 try
  dmManutencao.TManutencaoServico.ApplyUpdates(-1);
  MyShowMessage('Serviço Atualizado com sucesso!',false);
  dmManutencao.TManutencaoServico.Close;
  dmManutencao.TManutencaoServico.Open;
  layServicos.Visible := false;
 except
  on E : Exception do
   ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
 end;

end;

procedure TfrmManutencao.btnConfirmaStatusClick(Sender: TObject);
begin
 dmManutencao.TStatusManutencaoidmanutencao.AsInteger       := dmManutencao.TManutencaoid.AsInteger;
 if dmManutencao.TStatusManutencao.State=dsInsert then
  dmManutencao.TStatusManutencaoidusuario.AsString          := dmdb.vIdUsuarioLogado
 else
 begin
  dmManutencao.TStatusManutencaoidusuarioalteracao.AsString := dmdb.vIdUsuarioLogado;
  dmManutencao.TStatusManutencaodataalteracao.AsDateTime    := now;
 end;
 dmManutencao.TStatusManutencaodatainicio.AsDateTime        := edtDataStatus.Date;
 dmManutencao.TStatusManutencaohorainicio.AsDateTime        := edtHoraStatus.Time;
 if not edtDataStatusFim.IsEmpty then
  dmManutencao.TStatusManutencaodatafim.AsDateTime          := edtDataStatusFim.Date;
 if not edtHoraStatusFim.IsEmpty then
  dmManutencao.TStatusManutencaohorafim.AsDateTime          := edtHoraStatusFim.Time;
 if EdtObsStatus.Text.Length>0 then
  dmManutencao.TStatusManutencaoobservacao.AsString         := edtObsStatus.Text;
 if cbxStatusManutencao.ItemIndex=3 then
 begin
   if not dmManutencao.VerificaItemSemChek(dmManutencao.TManutencaoid.AsString)then
   begin
     MyShowMessage('Existe items sem checar no lista,'+#13+
      ' abra o checklist e marque todos os itens',false);
     Exit;
   end;
   if not dmManutencao.VerificaItemSemFoto(dmManutencao.TManutencaoid.AsString)then
   begin
     MyShowMessage('Existe items com foto obrigatória na lista,'+#13+
      ' indique as imagens antes de finalizar!',false);
     Exit;
   end;
   if edtDataStatusFim.IsEmpty then
   begin
     MyShowMessage('Informe a data Final',false);
     Exit;
   end;
   if edtDataStatusFim.Date<edtDataStatus.Date then
   begin
     MyShowMessage('Data Final nao pode ser menor que a Inicial',false);
     Exit;
   end;
   if edtHoraStatusFim.IsEmpty then
   begin
     MyShowMessage('Informe a Hora Final',false);
     Exit;
   end;
 end;
 dmManutencao.TStatusManutencaoidstatus.AsInteger  := cbxStatusManutencao.ItemIndex+1;
 try
  dmManutencao.TStatusManutencao.ApplyUpdates(-1);
  dmManutencao.AtualizaStatusManutencao(dmManutencao.TManutencaoid.AsSTring);
  MyShowMessage('Status Atualizado com sucesso!',false);
  dmManutencao.TStatusManutencao.Close;
  dmManutencao.TStatusManutencao.Open;
  layStatusManutencao.Visible := false;
 except
  on E : Exception do
   ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
 end;
end;

procedure TfrmManutencao.btnDeletarClick(Sender: TObject);
begin
 frmPrincipal.MyShowMessage('Deseja Realmente Deletar esse registro?',true);
 case frmPrincipal.vMsgConfirma of
   1:begin
      dmManutencao.TManutencao.Edit;
      dmManutencao.TManutencaoStatus.AsInteger             := -1;
      dmManutencao.TManutencaoIdUsuarioAlteracao.AsString  := dmdb.vIdUsuarioLogado;
      dmManutencao.TManutencaoDataAlteracao.AsDateTime     := now;
      try
        dmManutencao.TManutencao.ApplyUpdates(-1);
        frmPrincipal.MyShowMessage('Registro Excluido com sucesso!',false);
        dmManutencao.TManutencao.Close;
        dmManutencao.TManutencao.Open();
      except
       on E : Exception do
        ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
      end;
   end;
 end;

end;

procedure TfrmManutencao.btnEditarItemClick(Sender: TObject);
begin
 dmManutencao.TManutencaoItemsEdit.Filtered := false;
 dmManutencao.TManutencaoItemsEdit.Close;
 dmManutencao.TManutencaoItemsEdit.Filter   := 'id='+dmManutencao.TManutencaoItemsid.AsString;
 dmManutencao.TManutencaoItemsEdit.Filtered := true;
 dmManutencao.TManutencaoItemsEdit.Open;
 dmManutencao.TManutencaoItemsEdit.Edit;
 edtGrupoItemRevisao.Text     := dmManutencao.TManutencaoItemsEditgrupo.AsString;
 vIdGrupoItem                 := dmManutencao.TManutencaoItemsEditidgrupoitenspalno.AsString;
 edtDescricao.Text            := dmManutencao.TManutencaoItemsEditdescricao.AsString;
 cbxFotoObrigatoria.ItemIndex := dmManutencao.TManutencaoItemsEditfotoobrigatoria.AsInteger;
 edtqtde.Value                := dmManutencao.TManutencaoItemsEditqtde.AsFloat;
 edtProdutoUtilizado.Text     := dmManutencao.TManutencaoItemsEditproduto.AsString;
 vIdProduto                   := dmManutencao.TManutencaoItemsEditIdproduto.AsString;
 edtObsItem.Text              := dmManutencao.TManutencaoItemsEditobservacao.AsString;
 tbItens.TabPosition          := TTabPosition.None;
 tbItens.ActiveTab            := tbiItem;
 lblCads.Text                 := 'Items Manutenção';
 LayCads.Visible              := true;
end;

procedure TfrmManutencao.btnEditarManutencaoClick(Sender: TObject);
begin
  vNewRecord                   := false;
  cbxStatusManutencao.ItemIndex:= dmManutencao.TManutencaostatus.AsInteger-1;
  if dmManutencao.TManutencaostatus.AsInteger=4 then
  begin
   lblDataFimManutencao.Visible := true;
   edtDataFim.Visible           := true;
   edtDataFim.Date              := dmManutencao.TManutencaodatafim.AsDateTime;
  end;
  vidPlano                      := dmManutencao.TManutencaoidplanorevisao.AsString;
  vIdResponsavel                := dmManutencao.TManutencaoidresponsavel.AsString;
  edtResponsavel.Text           := dmManutencao.TManutencaoresponsavel.AsString;
  edtPlanoManutencao.Text       := dmManutencao.TManutencaoplanomanutencao.AsString;
  vIdMaquina                    := dmManutencao.TManutencaoidmaquina.AsString;
  edtMaquina.Text               := dmManutencao.TManutencaoprefixo.AsString;
  cbxTipo.ItemIndex             := dmManutencao.TManutencaotipo.AsInteger;
  edtHorimetroAtual.Value       := dmManutencao.TManutencaohorimetro.AsInteger;
  edtHodometroAtual.Value       := dmManutencao.TManutencaohodometro.AsInteger;
  edtHodometroMaquina.Value     := dmManutencao.TManutencaohodometro.AsInteger;
  edtHorimetroMaquina.Value     := dmManutencao.TManutencaohorimetro.AsInteger;
  edtDataFim.Date               := dmManutencao.TManutencaodatafim.AsDateTime;
  vIdCentroCusto                := dmManutencao.TManutencaoidcentrocusto.AsString;
  edtCentroCusto.Text           :=  dmManutencao.TManutencaocentrocusto.AsString;
  vimgHri                       := dmManutencao.TManutencaoimghorimentro.AsString;
  if vimgHri.Length>100 then
   imgHri.Bitmap                := BitmapFromBase64(vimgHri)
  else
   imgHri.Bitmap                := nil;

  vimgHdo                       := dmManutencao.TManutencaoimghodometro.AsString;
  if vimgHdo.Length>100 then
   imgHdo.Bitmap                := BitmapFromBase64(vimgHdo)
  else
   imgHdo.Bitmap                 := nil;

  edtStatus.Text                 := dmManutencao.TManutencaostatusStr.AsString;
  edtStatus.Enabled              := false;
  dmManutencao.TManutencao.Edit;
  MudarAba(tbiCad,sender);
end;

procedure TfrmManutencao.btnEditaServicoClick(Sender: TObject);
begin
 edtgarantia.Value          :=dmManutencao.TManutencaoServicogarantia.AsInteger;
 edtValorServico.Value      :=dmManutencao.TManutencaoServicovalortotal.AsFloat;
 edtDescricaoServico.Text   :=dmManutencao.TManutencaoServicodescricao.AsString;
 edtResponsavelServico.Text :=dmManutencao.TManutencaoServicoresponsavel.AsString;
 dmManutencao.TManutencaoServico.Edit;
 layServicos.Visible        := true;
end;

procedure TfrmManutencao.btnEditaStatusClick(Sender: TObject);
begin
 cbxStatusManutencao.ItemIndex   := dmManutencao.TStatusManutencaostatus.AsInteger-1;
 edtDataStatus.DateTime          := dmManutencao.TStatusManutencaodatainicio.AsDateTime;
 edtHoraStatus.Time              := dmManutencao.TStatusManutencaohorainicio.AsDateTime;
 if dmManutencao.TStatusManutencaodatafim.AsString.Length>0 then
  edtDataStatusFim.DateTime     := dmManutencao.TStatusManutencaodatafim.AsDateTime;
 if dmManutencao.TStatusManutencaohorafim.AsString.Length>0 then
  edtHoraStatusFim.DateTime     := dmManutencao.TStatusManutencaoHorafim.AsDateTime;
 EdtObsStatus.Text              := dmManutencao.TStatusManutencaoobservacao.AsString;
 dmManutencao.TStatusManutencao.Edit;
 layStatusManutencao.Visible := true;
end;

procedure TfrmManutencao.btnExcluirServicoClick(Sender: TObject);
begin
 MyShowMessage('Deseja Realmente Deletar esse registro?',true);
 case frmPrincipal.vMsgConfirma of
   1:begin
      dmManutencao.TManutencaoServico.Edit;
      dmManutencao.TManutencaoServicoStatus.AsInteger             := -1;
      dmManutencao.TManutencaoServicoIdUsuarioAlteracao.AsString  := dmdb.vIdUsuarioLogado;
      dmManutencao.TManutencaoServicoDataAlteracao.AsDateTime     := now;
      try
        dmManutencao.TManutencaoServico.ApplyUpdates(-1);
        MyShowMessage('Registro Excluido com sucesso!',false);
        dmManutencao.TManutencaoServico.Close;
        dmManutencao.TManutencaoServico.Open();
      except
       on E : Exception do
        ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
      end;
   end;
 end;
end;

procedure TfrmManutencao.btnExcluiStatusClick(Sender: TObject);
begin
 MyShowMessage('Deseja Realmente Deletar esse registro?',true);
 case frmPrincipal.vMsgConfirma of
   1:begin
      dmManutencao.TStatusManutencao.Edit;
      dmManutencao.TStatusManutencaoStatus.AsInteger             := -1;
      dmManutencao.TStatusManutencaoIdUsuarioAlteracao.AsString  := dmdb.vIdUsuarioLogado;
      dmManutencao.TStatusManutencaoDataAlteracao.AsDateTime     := now;
      try
        dmManutencao.TStatusManutencao.ApplyUpdates(-1);
        MyShowMessage('Registro Excluido com sucesso!',false);
        dmManutencao.TStatusManutencao.Close;
        dmManutencao.TStatusManutencao.Open();
      except
       on E : Exception do
        ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
      end;
   end;
 end;

end;

procedure TfrmManutencao.btnExluirItemClick(Sender: TObject);
begin
 frmPrincipal.MyShowMessage('Deseja Realmente Deletar esse registro?',true);
 case frmPrincipal.vMsgConfirma of
   1:begin
      dmManutencao.TManutencaoItems.Edit;
      dmManutencao.TManutencaoItemsStatus.AsInteger             := -1;
      dmManutencao.TManutencaoItemsIdUsuarioAlteracao.AsString  := dmdb.vIdUsuarioLogado;
      dmManutencao.TManutencaoItemsDataAlteracao.AsDateTime     := now;
      try
        dmManutencao.TManutencaoItems.ApplyUpdates(-1);
        frmPrincipal.MyShowMessage('Registro Excluido com sucesso!',false);
        dmManutencao.TManutencaoItems.Close;
        dmManutencao.TManutencaoItems.Open();
      except
       on E : Exception do
        ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
      end;
   end;
 end;
end;

procedure TfrmManutencao.btnLimpaFotoHodometroClick(Sender: TObject);
begin
 imgHdo.Bitmap := nil;
 vimgHdo       := '';
end;

procedure TfrmManutencao.btnLimpaFotoHorimetroClick(Sender: TObject);
begin
  imgHri.Bitmap := nil;
  vimgHri       := '';
end;

procedure TfrmManutencao.btnNovaFotoHodometroClick(Sender: TObject);
begin
 if OpenImg.Execute then
 begin
  imgHdo.Bitmap.LoadFromFile(OpenImg.FileName);
  vimgHdo := Base64FromBitmap(imgHdo.Bitmap);
 end;
end;

procedure TfrmManutencao.btnNovaFotoHorimetroClick(Sender: TObject);
begin
 if OpenImg.Execute then
 begin
  imgHri.Bitmap.LoadFromFile(OpenImg.FileName);
  vimgHri := Base64FromBitmap(imgHri.Bitmap);
 end;
end;

procedure TfrmManutencao.btnNovaFotoItemClick(Sender: TObject);
begin
 if OpenImg.Execute then
 begin
  imgItem.Bitmap.LoadFromFile(OpenImg.FileName);
 end;
end;

procedure TfrmManutencao.btnNovoItemClick(Sender: TObject);
begin
 vimgItem                     :='';
 edtGrupoItemRevisao.Text     :='';
 edtDescricao.Text            :='';
 cbxFotoObrigatoria.ItemIndex :=0;
 edtqtde.Value                :=0;
 edtProdutoUtilizado.Text     :='';
 edtObsItem.Text              :='';
 tbItens.TabPosition          := TTabPosition.None;
 tbItens.ActiveTab            := tbiItem;
 dmManutencao.TManutencaoItems.Close;
 dmManutencao.TManutencaoItems.Open;
 dmManutencao.TManutencaoItems.Insert;
 lblCads.Text            := 'Items Manutenção';
 LayCads.Visible         := true;
end;

procedure TfrmManutencao.btnNovoServicoClick(Sender: TObject);
begin
 edtValorServico.Value      :=0;
 edtgarantia.Value          :=0;
 edtDescricaoServico.Text   :='';
 edtResponsavelServico.Text :='';
 dmManutencao.TManutencaoServico.Insert;
 layServicos.Visible        := true;
end;

procedure TfrmManutencao.btnNovoStatusClick(Sender: TObject);
begin
 edtDataFim.IsEmpty       := true;
 edtHoraStatusFim.IsEmpty := true;
 EdtObsStatus.Text        := '';
 dmManutencao.TStatusManutencao.Insert;
 layStatusManutencao.Visible := true;
end;

procedure TfrmManutencao.btnRelatorioClick(Sender: TObject);
begin
 dmReport2.ppRepManutencao.PrintReport;
end;

procedure TfrmManutencao.btnSalvaImgItemClick(Sender: TObject);
begin
 if imgItem.Bitmap<>nil then
  vimgItem := Base64FromBitmap(imgItem.Bitmap);
 try
  dmManutencao.AtualizaFotoItem(vIdItem,vimgItem);
  frmPrincipal.MyShowMessage('Imagem Atualizada com Sucesso!',false);
  dmManutencao.TManutencaoItems.Filtered := false;
  dmManutencao.TManutencaoItems.Close;
  dmManutencao.TManutencaoItems.Open;
  LayCads.Visible := false;
  GerarLista;
 except

 end;
end;

procedure TfrmManutencao.btnSalvarClick(Sender: TObject);
var
 vMaxID:String;
begin
 vErro:=0;
 if edtMaquina.Text.Length=0 then
 begin
   MyShowMessage('Informe a Maquina!!',false);
   edtMaquina.SetFocus;
   Exit;
 end;
 if cbxTipo.ItemIndex=0 then
 begin
   if edtPlanoManutencao.Text.Length=0 then
   begin
     MyShowMessage('Informe o Plano de Manutenção!!',false);
     edtPlanoManutencao.SetFocus;
     Exit;
   end;
 end;
 case vTipoMed of
   0:begin
      if edtHorimetroAtual.Value<=0 then
      begin
        MyShowMessage('Informe o Horimetro Atual',false);
        Exit;
      end;
      if vimgHri.Length=0 then
      begin
        MyShowMessage('Foto do Horimetro é obrigatória',false);
        Exit;
      end;
   end;
   1:begin
      if edtHodometroAtual.Value<=0 then
      begin
        MyShowMessage('Informe o Hodômetro Atual',false);
        Exit;
      end;
      if vimgHdo.Length=0 then
      begin
        MyShowMessage('Foto do Hodometro é obrigatória',false);
        Exit;
      end;
   end;
   2:begin
      if edtHorimetroAtual.Value<=0 then
      begin
        MyShowMessage('Informe o Horimetro Atual',false);
        Exit;
      end;
      if edtHodometroAtual.Value<=0 then
      begin
        MyShowMessage('Informe o Hodômetro Atual',false);
        Exit;
      end;
      if vimgHri.Length=0 then
      begin
        MyShowMessage('Foto do Horimetro é obrigatória',false);
        Exit;
      end;
      if vimgHdo.Length =0 then
      begin
        MyShowMessage('Foto do Hodometro é obrigatória',false);
        Exit;
      end;
   end;
 end;
 if edtResponsavel.Text.Length=0 then
 begin
   ShowMessage('Informe o Respponsavel!!');
   Exit;
 end;

  // checagem Horimetro Hodometro
  if dmDB.TMaquinastipomedicao.AsInteger=0 then // se for Horimetro
  begin
    if(edtHorimetroAtual.Text.Length=0) then
    begin
     ShowMessage('Informe o Horimetro!!');
     edtHorimetroAtual.SetFocus;
     Exit;
    end;
    if (vTipoAlerta=0)and(edtHorimetroMaquina.Value>edtHorimetroAtual.Value) then
    begin
     vErro :=1;
     MessageDlg('Horímetro Atual não pode ser menor que o último'+#13+
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
      if (vTipoAlerta=0)and(edtHorimetroAtual.Value-edtHorimetroMaquina.Value>24) then
      begin
       vErro :=1;
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
    if(edtHorimetroAtual.Value<=0) then
    begin
     ShowMessage('Informe o KM!!');
     edtHorimetroAtual.SetFocus;
     Exit;
    end;
    if(vTipoAlerta=0)and(edtHodometroMaquina.Value>vKM) then
    begin
      vErro :=1;
      MessageDlg('KM Atual não pode ser menor que o último'+#13+
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
      if (vTipoAlerta=0)and(edtHodometroMaquina.Value>0)and
       ((edtHorimetroAtual.Value-edtHodometroMaquina.Value)>600) then
      begin
        vErro :=1;
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
    if(edtHorimetroAtual.Text.Length=0) then
    begin
     ShowMessage('Informe o Horimetro!!');
     edtHorimetroAtual.SetFocus;
     Exit;
    end;
    if (edtHodometroAtual.Value<=0) then
    begin
     ShowMessage('Informe o KM!!');
     edtHodometroAtual.SetFocus;
     Exit;
    end;
    if (vTipoAlerta=0)and(edtHorimetroMaquina.Value>edtHorimetroAtual.Value) then
    begin
      vErro :=1;
      MessageDlg('Horímetro Atual não pode ser menor que o último'+#13+
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
      if (vTipoAlerta=0)and((edtHorimetroAtual.Value-edtHorimetroMaquina.Value)>24) then
      begin
       vErro :=1;
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
      if(vTipoAlerta=0)and(edtHodometroMaquina.Value>edtHodometroAtual.Value) then
      begin
       vErro :=1;
       MessageDlg('KM Atual não pode ser menor que último'+#13+
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
      if (vTipoAlerta=0)and((edtHodometroMaquina.Value-edtHodometroAtual.Value)>600) then
      begin
        vErro :=1;
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
    if dmManutencao.TManutencao.State=dsInsert then
      dmManutencao.TManutencaoidusuario.AsString := dmdb.vIdUsuarioLogado
    else
    begin
      dmManutencao.TManutencaoidusuarioalteracao.AsString := dmdb.vIdUsuarioLogado;
      dmManutencao.TManutencaodataalteracao.AsDateTime    := now;
    end;
    if vIdPlano.Length>0 then
     dmManutencao.TManutencaoidplanorevisao.AsString       := vIdPlano;
    dmManutencao.TManutencaoidmaquina.AsString             := vIdMaquina;
    dmManutencao.TManutencaodatainicio.AsDateTime          := edtDataIni.Date;
    dmManutencao.TManutencaodatafim.AsDateTime             := edtDataFim.Date;
    dmManutencao.TManutencaoidresponsavel.AsString         := vIdResponsavel;
    dmManutencao.TManutencaohorimetro.AsFloat              := edtHorimetroAtual.Value;
    dmManutencao.TManutencaohodometroproxima.AsFloat       := edtHodometroMaquina.Value;
    dmManutencao.TManutencaotipo.AsInteger                 := cbxTipo.ItemIndex;
    dmManutencao.TManutencaohorimetroproxima.AsFloat       := edtHorimetroAtual.Value+vHorasPlano;
    dmManutencao.TManutencaodiasproximarevisao.AsDateTime  := edtDataIni.Date+vDiasPlano;
    dmManutencao.TManutencaoimghorimentro.AsString         := vimgHri;
    dmManutencao.TManutencaoimghodometro.AsString          := vimgHdo;
    try
     dmManutencao.TManutencao.ApplyUpdates(-1);
     if vNewRecord then
     begin
      vMaxID := dmManutencao.RetornoMaxId('manutencao');
      dmManutencao.InsereStatusManutencaoInicial(vMaxID,FormatDateTime('yyyy-mm-dd',
      edtDataIni.DateTime).QuotedString);
     end;
     if vNewRecord and (cbxTipo.ItemIndex=0) then
     begin
      if dmManutencao.CopyItensManutencao(vIdPlano,vMaxID)then
      begin
       FiltraManutencao;
       MudarAba(tbiLista,sender)
      end;
     end
     else
     begin
      FiltraManutencao;
      MudarAba(tbiLista,sender);
     end;
    except
     on E: Exception do
      frmPrincipal.MyShowMessage('Erro ao salvar Revisão:'+E.Message,false);
    end;
  end;
end;

procedure TfrmManutencao.btnSalvarItemClick(Sender: TObject);
begin
 edtDescricao.SetFocus;
 if edtGrupoItemRevisao.Text.Length=0 then
 begin
   frmPrincipal.MyShowMessage('Informe um Grupo par ao Item!',false);
   Exit;
 end;
 if edtDescricao.Text.Length=0 then
 begin
   frmPrincipal.MyShowMessage('Informe a Descrição do Item!',false);
   Exit;
 end;
 if edtProdutoUtilizado.Text.Length>0 then
 begin
  if edtqtde.Value<=0 then
  begin
   frmPrincipal.MyShowMessage('Informe a quantidade do Produto!',false);
   Exit;
  end;
 end;
 if dmManutencao.TManutencaoItemsEdit.State=dsInsert then
 begin
   if not (dmdb.VerificaCadastroExiste('descricao','manutencaoitens',edtDescricao.Text)) then
   begin
     frmPrincipal.MyShowMessage('Já Existe uma Item com essa Descrição!!',false);
     Exit;
   end;
 end
 else
 begin
  dmManutencao.TManutencaoItemsEditidusuarioalteracao.AsString := dmdb.vIdUsuarioLogado;
  dmManutencao.TManutencaoItemsEditdataalteracao.AsDateTime    := now;
 end;
 dmManutencao.TManutencaoItemsEditidusuario.AsString           := dmdb.vIdUsuarioLogado;
 dmManutencao.TManutencaoItemsEditdescricao.AsString           := edtDescricao.Text;
 dmManutencao.TManutencaoItemsEditidgrupoitenspalno.AsString   := vIdGrupoItem;
 dmManutencao.TManutencaoItemsEditfotoobrigatoria.AsInteger    := cbxFotoObrigatoria.ItemIndex;
 dmManutencao.TManutencaoItemsEditobservacao.AsString          := edtObsItem.Text;
 if edtProdutoUtilizado.Text.Length>0 then
 begin
  dmManutencao.TManutencaoItemsEditidproduto.AsString          := vIdProduto;
  dmManutencao.TManutencaoItemsEditqtde.AsFloat                := edtqtde.Value;
 end
 else
  dmManutencao.TManutencaoItemsEditqtde.AsFloat                := 0;
 dmManutencao.TManutencaoItemsEditidmanutencao.AsInteger       := dmManutencao.TManutencaoid.AsInteger;
 try
   dmManutencao.TManutencaoItemsEdit.ApplyUpdates(-1);
   frmPrincipal.MyShowMessage('Registro Atualizado com Sucesso!',false);
   dmManutencao.TManutencaoItems.Close;
   dmManutencao.TManutencaoItems.Open;
   LayCads.Visible := false;
   GerarLista;
 except
  on E: Exception do
   frmPrincipal.MyShowMessage('Erro ao salvar Plano:'+E.Message,false);
 end;
end;

procedure TfrmManutencao.btnServicosClick(Sender: TObject);
begin
 lblCads.Text            := 'Serviços Manutenção';
 tbItens.TabPosition     := TTabPosition.None;
 tbItens.ActiveTab       := tbiServicos;
 LayCads.Visible         := true;
end;

procedure TfrmManutencao.btnStatusClick(Sender: TObject);
begin
 lblCads.Text            := 'Status Manutenção';
 tbItens.TabPosition     := TTabPosition.None;
 tbItens.ActiveTab       := tbiStatus;
 LayCads.Visible         := true;
end;

procedure TfrmManutencao.btnVoltarClick(Sender: TObject);
begin
  if dmManutencao.TManutencao.Active then
   dmManutencao.TManutencao.CancelUpdates;
  inherited;
end;

procedure TfrmManutencao.cbxStatusManutencaoChange(Sender: TObject);
begin
 lblDataFimManutencao.Visible := cbxStatusManutencao.ItemIndex=3;
 edtDataFim.Visible           := cbxStatusManutencao.ItemIndex=3;
end;

procedure TfrmManutencao.EditButton1Click(Sender: TObject);
begin
  frmCadProdutos := TfrmCadProdutos.Create(Self);
  try
    frmCadProdutos.ShowModal;
  finally
    vIdProduto                := dmDB.TProdutosid.AsString;
    edtProdutoUtilizado.Text  := dmDB.TProdutosnome.AsString;
  end;
end;

procedure TfrmManutencao.EditButton2Click(Sender: TObject);
begin
 frmCentroCusto := TfrmCentroCusto.Create(Self);
  try
    frmCentroCusto.ShowModal;
  finally
    vIdCentroCusto           := dmdb.TCentroCustoid.AsString;
    edtCentroCusto.Text      := dmdb.TCentroCustonome.AsString;
    frmCentroCusto.Free;
  end;
end;

function TfrmManutencao.Base64FromBitmap(Bitmap: TBitmap): string;
var
  Input: TBytesStream;
  Output: TStringStream;
begin
  Input := TBytesStream.Create;
  try
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

function TfrmManutencao.BitmapFromBase64(const base64: string): TBitmap;
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


procedure TfrmManutencao.FiltraManutencao;
var
 vFiltro:string;
begin
 vFiltro := 'and datainicio between '+
  FormatDateTime('yyyy-mm-dd',edtDataInicio1.Date).QuotedString+' and '+
  FormatDateTime('yyyy-mm-dd',edtDataFim1.Date).QuotedString;

 if edtNomeFiltro.Text.Length>0 then
  vFiltro := vFiltro + ' and m2.prefixo like '+
   QuotedStr('%'+edtNomeFiltro.Text+'%');
 if edtNomeFiltro.Text.Length>0 then
  vFiltro := vFiltro + ' and m2.idcentrocusto ='+vIdCentroCusto;
  dmManutencao.AbreManutencao(vFiltro);
end;

procedure TfrmManutencao.FormShow(Sender: TObject);
begin
  layServicos.Visible            := false;
  edtDataInicio1.Date            := date-7;
  layStatusManutencao.Visible    := false;
  LayCads.Visible                := false;
  OpenImg.DefaultExt             := 'jpg';
  OpenImg.Filter := 'JPG|*.jpg|Jpeg|*.jpeg|PNG|*.png|GIF|*.gif|Bmp|*.bmp';
  FiltraManutencao;

  dmManutencao.TManutencaoItems.Close;
  dmManutencao.TManutencaoItems.Open;

  dmManutencao.TStatusManutencao.Close;
  dmManutencao.TStatusManutencao.Open;

  dmManutencao.TManutencaoServico.Close;
  dmManutencao.TManutencaoServico.Open;

  listaFotos.Transparent := true;
  inherited;
end;

procedure TfrmManutencao.GerarLista;
var
 item   : TListViewItem;
 txt    : TListItemText;
 txtH   : TListItemPurpose;
 img    : TListItemImage;
 URL,urlBomba,urlHorimetro,urlKM,vChekURL    : string;
 imgCarregaImagem : TImage;
 vLayout  : TLayout;
 FileSize : Int64;
begin
 TThread.CreateAnonymousThread(
 procedure
 begin
    TThread.Synchronize(TThread.CurrentThread,
    procedure()
    var
     C: TControl;
    begin
     ListaFotos.Transparent := true;
     dmManutencao.TManutencaoItems.Close;
     dmManutencao.TManutencaoItems.Open;
     dmManutencao.TManutencaoItems.First;
     ListaFotos.Items.Clear;
     ListaFotos.BeginUpdate;
     while not dmManutencao.TManutencaoItems.eof do
     begin
       item := ListaFotos.Items.Add;
       with frmManutencao do
       begin
         with item  do
         begin
           txt      := TListItemText(Objects.FindDrawable('Text1'));
           txt.Text := dmManutencao.TManutencaoItemsgrupo.AsString;
           txt.TagString := dmManutencao.TManutencaoItemsid.AsString;
           txt.TagFloat  := dmManutencao.TManutencaoItemsitemcheck.AsInteger;

           txt      := TListItemText(Objects.FindDrawable('Text7'));
           txt.Text := 'Descrição';
           txt.TagString := dmManutencao.TManutencaoItemsfotoitem.AsString;
           txt.TagFloat  := dmManutencao.TManutencaoItemsfotoobrigatoria.AsInteger;

           txt      := TListItemText(Objects.FindDrawable('Text6'));
           txt.Text := dmManutencao.TManutencaoItemsdescricao.AsString;

           txt      := TListItemText(Objects.FindDrawable('Text37'));
           txt.Text := 'Observação';
           txt      := TListItemText(Objects.FindDrawable('Text36'));
           txt.Text := dmManutencao.TManutencaoItemsobservacao.AsString;

           txt      := TListItemText(Objects.FindDrawable('Text9'));
           txt.Text := 'Produto';
           txt      := TListItemText(Objects.FindDrawable('Text10'));
           txt.Text := dmManutencao.TManutencaoItemsproduto.AsString;

           txt      := TListItemText(Objects.FindDrawable('Text12'));
           txt.Text := 'Qtde:';
           txt      := TListItemText(Objects.FindDrawable('Text13'));
           txt.Text := dmManutencao.TManutencaoItemsqtde.AsString;

           if dmManutencao.TManutencaoItemsitemcheck.AsInteger=0 then
           begin
            img := TListItemImage(Objects.FindDrawable('Image5'));
            img.Bitmap     := imgCheckFalse.Bitmap;
           end
           else
           begin
            img := TListItemImage(Objects.FindDrawable('Image5'));
            img.Bitmap     := imgChecked.Bitmap;
           end;
           img := TListItemImage(Objects.FindDrawable('Image38'));
           img.Bitmap     := frmPrincipal.imgEdit.Bitmap;
           txt      := TListItemText(Objects.FindDrawable('Text41'));
           txt.Text := 'Editar';

           if dmManutencao.TManutencaoItemsfotoobrigatoria.AsInteger=1 then
           begin
            img            := TListItemImage(Objects.FindDrawable('Image39'));
            img.Visible    := true;
            img.Bitmap     := imgFotoObrigatoria.Bitmap;
            txt            := TListItemText(Objects.FindDrawable('Text40'));
            txt.Text       := 'Foto Obrigatória';
           end
           else
           begin
            img            := TListItemImage(Objects.FindDrawable('Image39'));
            img.Bitmap     := nil;
            img.Visible    := false;
            txt            := TListItemText(Objects.FindDrawable('Text40'));
            txt.Text       := '';
           end;
         end;
         dmManutencao.TManutencaoItems.Next;
       end;
     end;
     for C in ListaFotos.Controls do
      if C is TScrollBar then
       C.Width := 0;
    end);
 end).Start;
end;

procedure TfrmManutencao.Image26Click(Sender: TObject);
begin
 if tbItens.TabIndex=0 then
  dmManutencao.TManutencaoItems.CancelUpdates;
 LayCads.Visible := false;
end;

procedure TfrmManutencao.Image31Click(Sender: TObject);
begin
 dmManutencao.TStatusManutencao.CancelUpdates;
 layStatusManutencao.Visible := false;
end;

procedure TfrmManutencao.Image42Click(Sender: TObject);
begin
  layServicos.Visible := false;
end;

procedure TfrmManutencao.ListaFotosItemClickEx(const Sender: TObject;
  ItemIndex: Integer; const LocalClickPos: TPointF;
  const ItemObject: TListItemDrawable);
begin
 vIdexList        := ListaFotos.ItemIndex;

 vIdItem          := TAppearanceListViewItem(ListaFotos.Selected).Objects.FindObjectT<TListItemText>
 ('Text1').TagString;

 vItemChecado     := trunc(TAppearanceListViewItem(ListaFotos.Selected).Objects.FindObjectT<TListItemText>
 ('Text1').TagFloat);

 vimgItem         := TAppearanceListViewItem(ListaFotos.Selected).Objects.FindObjectT<TListItemText>
 ('Text7').TagString;

 vFotoObrigatoria := trunc(TAppearanceListViewItem(ListaFotos.Selected).Objects.FindObjectT<TListItemText>
 ('Text7').TagFloat);

 if ItemObject is TListItemImage then
  begin
    if TListItemImage(ItemObject).Name='Image5' then
    begin
      if vItemChecado=0 then
      begin
        dmDB.ChecaItem(vIdItem,'1');
        GerarLista;
        ListaFotos.ItemIndex := vIdexList;
        Exit;
      end;
      if vItemChecado=1 then
      begin
        dmDB.ChecaItem(vIdItem,'0');
        GerarLista;
        ListaFotos.ItemIndex := vIdexList;
        Exit;
      end;
    end;
    if TListItemImage(ItemObject).Name='Image38' then
    begin
     dmManutencao.TManutencaoItemsEdit.Filtered := false;
     dmManutencao.TManutencaoItemsEdit.Close;
     dmManutencao.TManutencaoItemsEdit.Open;
     dmManutencao.TManutencaoItemsEdit.Filter  := 'id='+vIdItem;
     dmManutencao.TManutencaoItemsEdit.Filtered := true;
     dmManutencao.TManutencaoItemsEdit.Edit;


     edtGrupoItemRevisao.Text     := dmManutencao.TManutencaoItemsEditgrupo.AsString;
     vIdGrupoItem                 := dmManutencao.TManutencaoItemsEditidgrupoitenspalno.AsString;
     edtDescricao.Text            := dmManutencao.TManutencaoItemsEditdescricao.AsString;
     cbxFotoObrigatoria.ItemIndex := dmManutencao.TManutencaoItemsEditfotoobrigatoria.AsInteger;
     edtqtde.Value                := dmManutencao.TManutencaoItemsEditqtde.AsFloat;
     edtProdutoUtilizado.Text     := dmManutencao.TManutencaoItemsEditproduto.AsString;
     vIdProduto                   := dmManutencao.TManutencaoItemsEditIdproduto.AsString;
     edtObsItem.Text              := dmManutencao.TManutencaoItemsEditobservacao.AsString;
     tbItens.TabPosition          := TTabPosition.None;
     tbItens.ActiveTab            := tbiItem;
     lblCads.Text                 := 'Items Manutenção';
     LayCads.Visible              := true;
    end;
    if (TListItemImage(ItemObject).Name='Image39')and
     (vFotoObrigatoria=1) then
    begin
     tbItens.TabPosition          := TTabPosition.None;
     tbItens.ActiveTab            := tbiFoto;
     lblCads.Text                 := 'Foto Items Manutenção';
     if vimgItem.Length>0 then
      imgItem.Bitmap              := BitmapFromBase64(vimgItem)
     else
      imgItem.Bitmap              := nil;
     LayCads.Visible              := true;
    end;
  end;
end;



procedure TfrmManutencao.RecCadsClick(Sender: TObject);
begin
 LayCads.Visible              := false;
 layServicos.Visible          := false;
 layStatusManutencao.Visible  := false;
end;

procedure TfrmManutencao.Rectangle21Click(Sender: TObject);
begin
 dmManutencao.TManutencaoItems.CancelUpdates;
 LayCads.Visible := false;
end;

procedure TfrmManutencao.Rectangle38MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
 LayCads.Visible := false;
end;

procedure TfrmManutencao.Rectangle48Click(Sender: TObject);
begin
 layServicos.Visible := false;
end;

procedure TfrmManutencao.SearchEditButton9Click(Sender: TObject);
begin
 frmCentroCusto := TfrmCentroCusto.Create(Self);
  try
    frmCentroCusto.ShowModal;
  finally
    vIdCentroCusto         := dmDB.TCentroCustoid.AsString;
    edtCentroCustoF1.Text  := dmDB.TCentroCustonome.AsString;
    frmCentroCusto.Free;
  end;
end;

end.

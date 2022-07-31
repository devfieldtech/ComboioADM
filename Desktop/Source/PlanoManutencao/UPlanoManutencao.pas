unit UPlanoManutencao;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  FMX.Grid.Style, FMX.ScrollBox, FMX.Grid, FMX.StdCtrls, FMX.Edit, FMX.Objects,
  FMX.Controls.Presentation, FMX.Ani, FMX.Layouts, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.TabControl, FMX.EditBox, FMX.NumberBox,DB, FMX.ListBox, UCadMaquina;

type
  TfrmPlanoManutencao = class(TForm)
    layListaP: TLayout;
    AnimacaoMnu: TFloatAnimation;
    ToolBar1: TToolBar;
    recToolBar: TRectangle;
    lblCad: TLabel;
    mnu: TImage;
    btnFechar: TImage;
    RecPrincipalDefault: TRectangle;
    imgLogoCad: TImage;
    layLista: TLayout;
    layFiltros: TLayout;
    RecGro: TRectangle;
    Label1: TLabel;
    edtNomeFiltro: TEdit;
    ClearNameF: TClearEditButton;
    btnBuscarFiltro: TButton;
    Image7: TImage;
    layImg: TLayout;
    Rectangle6: TRectangle;
    Layout17: TLayout;
    Layout18: TLayout;
    ToolBar4: TToolBar;
    lblNomeProduto: TLabel;
    Image10: TImage;
    imgVisualizar: TImage;
    layListaMnu: TLayout;
    recmnulateral: TRectangle;
    btnAdd: TRectangle;
    Image2: TImage;
    lblAdd: TLabel;
    btnDeletar: TRectangle;
    Image4: TImage;
    lblDeleta: TLabel;
    btnEditar: TRectangle;
    Image3: TImage;
    lblEdit: TLabel;
    Layout1: TLayout;
    StringGrid1: TStringGrid;
    Layout2: TLayout;
    layMaquinas: TLayout;
    ToolBar2: TToolBar;
    layItens: TLayout;
    ToolBar3: TToolBar;
    StringGridMaquinas: TStringGrid;
    StringGrid3: TStringGrid;
    Label2: TLabel;
    Label3: TLabel;
    Layout5: TLayout;
    recNovaMaquina: TRectangle;
    btnNovoModelo: TRectangle;
    Image1: TImage;
    Label4: TLabel;
    btnExluiModelo: TRectangle;
    Image5: TImage;
    Label5: TLabel;
    Layout6: TLayout;
    Rectangle4: TRectangle;
    btnNovoItem: TRectangle;
    Image6: TImage;
    Label6: TLabel;
    btnExluirItem: TRectangle;
    Image8: TImage;
    Label7: TLabel;
    btnEditarItem: TRectangle;
    Image9: TImage;
    Label8: TLabel;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    BindSourceDB3: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource;
    LayCads: TLayout;
    RecCads: TRectangle;
    Layout7: TLayout;
    tbCads: TTabControl;
    tbiCadPlano: TTabItem;
    tbiItensPlano: TTabItem;
    tbiMaquinasPlano: TTabItem;
    ToolBar5: TToolBar;
    Rectangle9: TRectangle;
    btnVoltar: TImage;
    lblCads: TLabel;
    LaySubCad: TLayout;
    laySubSubCad: TLayout;
    Rsub: TRectangle;
    laySubSubSubCad: TLayout;
    Layout8: TLayout;
    Layout10: TLayout;
    Rectangle10: TRectangle;
    Layout11: TLayout;
    P: TLayout;
    Layout9: TLayout;
    btnCancela: TRectangle;
    Label10: TLabel;
    Image11: TImage;
    btnSalvarPlano: TRectangle;
    Label11: TLabel;
    Image12: TImage;
    Layout12: TLayout;
    Label12: TLabel;
    Label13: TLabel;
    Layout13: TLayout;
    Rectangle11: TRectangle;
    Label14: TLabel;
    Image13: TImage;
    Rectangle12: TRectangle;
    Label15: TLabel;
    Image14: TImage;
    Layout14: TLayout;
    Layout15: TLayout;
    Layout16: TLayout;
    Label16: TLabel;
    edtGrupoItemRevisao: TEdit;
    ClearEditButton5: TClearEditButton;
    btnBuscaItem: TEditButton;
    Layout19: TLayout;
    Rectangle14: TRectangle;
    Layout20: TLayout;
    Label18: TLabel;
    edtqtde: TNumberBox;
    Layout28: TLayout;
    Rectangle24: TRectangle;
    Layout29: TLayout;
    Label26: TLabel;
    edtObsItem: TEdit;
    ClearEditButton7: TClearEditButton;
    Layout21: TLayout;
    Rectangle15: TRectangle;
    Layout22: TLayout;
    Label17: TLabel;
    edtProdutoUtilizado: TEdit;
    EditButton1: TEditButton;
    ClearEditButton1: TClearEditButton;
    Rectangle13: TRectangle;
    Rectangle16: TRectangle;
    Layout23: TLayout;
    Label19: TLabel;
    edtDescricao: TEdit;
    ClearEditButton2: TClearEditButton;
    LayPlanoPadrao: TLayout;
    Rectangle17: TRectangle;
    Layout25: TLayout;
    Layout26: TLayout;
    edtFabricante: TEdit;
    Label20: TLabel;
    btnBuscaFabricante: TEditButton;
    edtIntervaloHoras: TNumberBox;
    edtIntervaloDias: TNumberBox;
    Rectangle18: TRectangle;
    Layout27: TLayout;
    Label21: TLabel;
    cbxFotoObrigatoria: TComboBox;
    Rectangle19: TRectangle;
    Layout30: TLayout;
    edtModelo: TEdit;
    ClearEditButton3: TClearEditButton;
    EditButton2: TEditButton;
    StringGrid4: TStringGrid;
    LinkGridToDataSourceBindSourceDB22: TLinkGridToDataSource;
    Layout32: TLayout;
    Label22: TLabel;
    edtMarca: TEdit;
    SearchEditButton6: TSearchEditButton;
    ClearEditButton11: TClearEditButton;
    btnAdicionarModelo: TRectangle;
    Image16: TImage;
    Label24: TLabel;
    Label23: TLabel;
    btnExcluirModelo: TRectangle;
    Image15: TImage;
    Label25: TLabel;
    Rectangle20: TRectangle;
    Label27: TLabel;
    edtFabricanteNomeF: TEdit;
    ClearEditButton4: TClearEditButton;
    layPlanoCustomizado: TLayout;
    Rectangle2: TRectangle;
    Layout33: TLayout;
    Layout34: TLayout;
    Layout35: TLayout;
    Label9: TLabel;
    cbxTipoPlano: TComboBox;
    Label28: TLabel;
    edtNome: TEdit;
    Layout36: TLayout;
    lblPlanodrao: TLabel;
    lblMaquina: TLabel;
    edtPlanoPadrao: TEdit;
    btnPlanoPadrao: TEditButton;
    edtMaquina: TEdit;
    btnBuscarMaquina: TEditButton;
    tbiPlanoPadrao: TTabItem;
    Rectangle3: TRectangle;
    Layout24: TLayout;
    edtFiltraModelo2: TEdit;
    ClearEditButton6: TClearEditButton;
    edtFiltraFabricante2: TEdit;
    ClearEditButton8: TClearEditButton;
    Layout31: TLayout;
    Label33: TLabel;
    Label34: TLabel;
    gridPlanosPadrao: TStringGrid;
    BindSourceDB4: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB4: TLinkGridToDataSource;
    Image17: TImage;
    RecMaquinas: TRectangle;
    Layout3: TLayout;
    Label29: TLabel;
    lblPrefixoMaquina: TLabel;
    procedure btnFecharClick(Sender: TObject);
    procedure btnAddMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btnAddMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure FormShow(Sender: TObject);
    procedure btnBuscaFabricanteClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnSalvarPlanoClick(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure edtNomeKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure edtFabricanteKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure btnEditarClick(Sender: TObject);
    procedure btnBuscaItemClick(Sender: TObject);
    procedure edtGrupoItemRevisaoKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtDescricaoKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure cbxFotoObrigatoriaKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtProdutoUtilizadoKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtqtdeKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure Rectangle12Click(Sender: TObject);
    procedure EditButton1Click(Sender: TObject);
    procedure EditButton2Click(Sender: TObject);
    procedure btnAdicionarModeloClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnNovoItemClick(Sender: TObject);
    procedure btnExluiModeloClick(Sender: TObject);
    procedure btnNovoModeloClick(Sender: TObject);
    procedure btnExluirItemClick(Sender: TObject);
    procedure btnEditarItemClick(Sender: TObject);
    procedure btnExcluirModeloClick(Sender: TObject);
    procedure btnBuscarFiltroClick(Sender: TObject);
    procedure btnBuscarMaquinaClick(Sender: TObject);
    procedure cbxTipoPlanoChange(Sender: TObject);
    procedure gridPlanosPadraoCellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure btnPlanoPadraoClick(Sender: TObject);
    procedure Rectangle11Click(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure StringGrid1SelChanged(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image17Click(Sender: TObject);
    procedure StringGrid1CellClick(const Column: TColumn; const Row: Integer);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    vIdFabricante,vIdGrupoItem,vIdProduto,vIdMarca,vIdModelo,vIdMaquina,
    vIdPlanoPadrao,vFiltro:string;

  end;

var
  frmPlanoManutencao: TfrmPlanoManutencao;

implementation

{$R *.fmx}

uses UPrincipal, UdmManutencao, UAuxMarcas, UdmDB, UAuxCheckListGrupo,
  UProdutos, UModeloMaquina, UAbastecimento;

procedure TfrmPlanoManutencao.btnAddClick(Sender: TObject);
begin
 edtNome.Text                :='';
 edtFabricante.Text          :='';
 edtIntervaloHoras.Value     :=0;
 edtIntervaloDias.Value      :=0;
 tbCads.TabPosition          := TTabPosition.None;
 tbCads.ActiveTab            := tbiCadPlano;
 dmManutencao.TPlanoManutencao.Close;
 dmManutencao.TPlanoManutencao.Open;
 dmManutencao.TPlanoManutencao.Insert;
 layPlanoCustomizado.Enabled := false;
 edtPlanoPadrao.Visible      := true;
 lblPlanodrao.Visible        := true;
 cbxTipoPlano.ItemIndex      := 0;
 lblCads.Text                := 'Plano de Manutenção';
 LayCads.Visible             := true;
end;

procedure TfrmPlanoManutencao.btnAddMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
 TRectangle(sender).Opacity :=0.5;
end;

procedure TfrmPlanoManutencao.btnAddMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
 TRectangle(sender).Opacity :=1;
end;

procedure TfrmPlanoManutencao.btnAdicionarModeloClick(Sender: TObject);
begin
 if edtModelo.Text.Length=0 then
 begin
   frmPrincipal.MyShowMessage('Informe o Modelo!',false);
   Exit;
 end;
 if not dmdb.VerificaModeloPlano(vIdModelo,dmManutencao.TPlanoManutencaoid.AsString)then
 begin
  frmPrincipal.MyShowMessage('Modelo ja foi adicionada ao plano!',false);
  Exit;
 end;
 dmManutencao.TPlanoMaquinasidusuario.AsString := dmdb.vIdUsuarioLogado;
 dmManutencao.TPlanoMaquinasidplano.AsString   := dmManutencao.TPlanoManutencaoid.AsString;
 dmManutencao.TPlanoMaquinasidmodelo.AsString  := vIdModelo;
 try
  dmManutencao.TPlanoMaquinas.ApplyUpdates(-1);
  dmManutencao.TPlanoMaquinas.Close;
  dmManutencao.TPlanoMaquinas.Open;
  edtModelo.Text       :='';
  edtMarca.Text   :='';
 except
  on E: Exception do
   frmPrincipal.MyShowMessage('Erro ao salvar Modelo:'+E.Message,false);
 end;
end;

procedure TfrmPlanoManutencao.btnBuscaFabricanteClick(Sender: TObject);
begin
 frmCadAuxMarcas := TfrmCadAuxMarcas.Create(Self);
  try
    frmCadAuxMarcas.ShowModal;
  finally
    vIdFabricante        := dmdb.TAuxMarcaid.AsString;
    edtFabricante.Text   := dmdb.TAuxMarcanome.AsString;
    frmCadAuxMarcas.Free;
  end;
end;

procedure TfrmPlanoManutencao.btnBuscaItemClick(Sender: TObject);
begin
 frmCheckListGrupoItems := TfrmCheckListGrupoItems.Create(Self);
  try
    frmCheckListGrupoItems.ShowModal;
  finally
    vIdGrupoItem              := dmDB.cheklistregrupoitemid.AsString;
    edtGrupoItemRevisao.Text  := dmDB.cheklistregrupoitemnome.AsString;
  end;
end;

procedure TfrmPlanoManutencao.btnBuscarFiltroClick(Sender: TObject);
begin
 if edtNomeFiltro.Text.Length>0 then
  vFiltro := ' and p.nome like '+QuotedStr('%'+edtNomeFiltro.Text+'%');
 if edtFabricanteNomeF.Text.Length>0 then
  vFiltro := ' and m.nome like '+QuotedStr('%'+edtFabricanteNomeF.Text+'%');
 dmManutencao.AbrePlanoManutencao(vFiltro)
end;

procedure TfrmPlanoManutencao.btnBuscarMaquinaClick(Sender: TObject);
begin
  frmCadMaquinaVeiculo := TfrmCadMaquinaVeiculo.Create(Self);
  try
    frmCadMaquinaVeiculo.ShowModal;
  finally
    vIdMaquina        := dmdb.TMaquinasid.AsString;
    edtMaquina.Text   := dmdb.TMaquinasprefixo.AsString;
    frmCadMaquinaVeiculo.Free;
  end;
end;

procedure TfrmPlanoManutencao.btnCancelaClick(Sender: TObject);
begin
  LayCads.Visible := false;
end;

procedure TfrmPlanoManutencao.btnDeletarClick(Sender: TObject);
begin
 frmPrincipal.MyShowMessage('Deseja Realmente Deletar esse registro?',true);
 case frmPrincipal.vMsgConfirma of
   1:begin
      dmManutencao.TPlanoManutencao.Edit;
      dmManutencao.TPlanoManutencaoStatus.AsInteger             := -1;
      dmManutencao.TPlanoManutencaoIdUsuarioAlteracao.AsString  := dmdb.vIdUsuarioLogado;
      dmManutencao.TPlanoManutencaoDataAlteracao.AsDateTime     := now;
      try
        dmManutencao.TPlanoManutencao.ApplyUpdates(-1);
        frmPrincipal.MyShowMessage('Registro Excluido com sucesso!',false);
        dmManutencao.TPlanoManutencao.Close;
        dmManutencao.TPlanoManutencao.Open();
      except
       on E : Exception do
        ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
      end;
   end;
 end;
end;

procedure TfrmPlanoManutencao.btnEditarClick(Sender: TObject);
begin
 dmManutencao.TPlanoManutencao.Edit;
 edtNome.Text            := dmManutencao.TPlanoManutencaonome.AsString;
 vIdFabricante           := dmManutencao.TPlanoManutencaoidfabricante.AsString;
 edtFabricante.Text      := dmManutencao.TPlanoManutencaofabricante.AsString;
 edtIntervaloHoras.Value := dmManutencao.TPlanoManutencaointervalohoras.AsFloat;
 edtIntervaloDias.Value  := dmManutencao.TPlanoManutencaointervalodias.AsFloat;
 cbxTipoPlano.ItemIndex  := dmManutencao.TPlanoManutencaotipo.AsInteger;
 if cbxTipoPlano.ItemIndex=0 then
 begin
  edtMaquina.Text             :='';
  edtPlanoPadrao.Text         :='';
  layPlanoCustomizado.Enabled := false;
 end;
 if cbxTipoPlano.ItemIndex=1 then
 begin
  vIdMaquina                  := dmManutencao.TPlanoManutencaoidmaquina.AsString;
  edtMaquina.Text             := dmManutencao.TPlanoManutencaomaquina.AsString;
  edtPlanoPadrao.Visible      := false;
  lblPlanodrao.Visible        := false;
  layPlanoCustomizado.Enabled := false;
 end;
 dmManutencao.TPlanoManutencao.Edit;


 tbCads.TabPosition      := TTabPosition.None;
 tbCads.ActiveTab        := tbiCadPlano;
 lblCads.Text            :='Plano de Manutenção';
 LayCads.Visible         := true;
end;

procedure TfrmPlanoManutencao.btnEditarItemClick(Sender: TObject);
begin
 dmManutencao.TPlanoItens.Edit;
 edtGrupoItemRevisao.Text     := dmManutencao.TPlanoItensgrupo.AsString;
 vIdGrupoItem                 := dmManutencao.TPlanoItensidgrupoitenspalno.AsString;
 edtDescricao.Text            := dmManutencao.TPlanoItensdescricao.AsString;
 cbxFotoObrigatoria.ItemIndex := dmManutencao.TPlanoItensfotoobrigatoria.AsInteger;
 edtqtde.Value                := dmManutencao.TPlanoItensqtde.AsFloat;
 edtProdutoUtilizado.Text     := dmManutencao.TPlanoItensproduto.AsString;
 vIdProduto                   := dmManutencao.TPlanoItensIdproduto.AsString;
 edtObsItem.Text              := dmManutencao.TPlanoItensobservacao.AsString;
 tbCads.TabPosition           := TTabPosition.None;
 tbCads.ActiveTab             := tbiItensPlano;
 lblCads.Text                 := 'Items Plano de Manutenção';
 LayCads.Visible              := true;
end;

procedure TfrmPlanoManutencao.btnExcluirModeloClick(Sender: TObject);
begin
 frmPrincipal.MyShowMessage('Deseja Realmente Deletar esse registro?',true);
 case frmPrincipal.vMsgConfirma of
   1:begin
      dmManutencao.TPlanoMaquinas.Edit;
      dmManutencao.TPlanoMaquinasStatus.AsInteger             := -1;
      dmManutencao.TPlanoMaquinasIdUsuarioAlteracao.AsString  := dmdb.vIdUsuarioLogado;
      dmManutencao.TPlanoMaquinasDataAlteracao.AsDateTime     := now;
      try
        dmManutencao.TPlanoMaquinas.ApplyUpdates(-1);
        frmPrincipal.MyShowMessage('Registro Excluido com sucesso!',false);
        dmManutencao.TPlanoMaquinas.Close;
        dmManutencao.TPlanoMaquinas.Open();
      except
       on E : Exception do
        ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
      end;
   end;
 end;
end;

procedure TfrmPlanoManutencao.btnExluiModeloClick(Sender: TObject);
begin
frmPrincipal.MyShowMessage('Deseja Realmente Deletar esse registro?',true);
 case frmPrincipal.vMsgConfirma of
   1:begin
      dmManutencao.TPlanoMaquinas.Edit;
      dmManutencao.TPlanoMaquinasStatus.AsInteger             := -1;
      dmManutencao.TPlanoMaquinasIdUsuarioAlteracao.AsString  := dmdb.vIdUsuarioLogado;
      dmManutencao.TPlanoMaquinasDataAlteracao.AsDateTime     := now;
      try
        dmManutencao.TPlanoMaquinas.ApplyUpdates(-1);
        frmPrincipal.MyShowMessage('Registro Excluido com sucesso!',false);
        dmManutencao.TPlanoMaquinas.Close;
        dmManutencao.TPlanoMaquinas.Open();
      except
       on E : Exception do
        ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
      end;
   end;
 end;
end;

procedure TfrmPlanoManutencao.btnExluirItemClick(Sender: TObject);
begin
 frmPrincipal.MyShowMessage('Deseja Realmente Deletar esse registro?',true);
 case frmPrincipal.vMsgConfirma of
   1:begin
      dmManutencao.TPlanoItens.Edit;
      dmManutencao.TPlanoItensStatus.AsInteger             := -1;
      dmManutencao.TPlanoItensIdUsuarioAlteracao.AsString  := dmdb.vIdUsuarioLogado;
      dmManutencao.TPlanoItensDataAlteracao.AsDateTime     := now;
      try
        dmManutencao.TPlanoItens.ApplyUpdates(-1);
        frmPrincipal.MyShowMessage('Registro Excluido com sucesso!',false);
        dmManutencao.TPlanoItens.Close;
        dmManutencao.TPlanoItens.Open();
      except
       on E : Exception do
        ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
      end;
   end;
 end;
end;

procedure TfrmPlanoManutencao.btnFecharClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmPlanoManutencao.btnNovoItemClick(Sender: TObject);
begin
 edtGrupoItemRevisao.Text     :='';
 edtDescricao.Text            :='';
 cbxFotoObrigatoria.ItemIndex :=0;
 edtqtde.Value                :=0;
 edtProdutoUtilizado.Text     :='';
 edtObsItem.Text              :='';
 tbCads.TabPosition           := TTabPosition.None;
 tbCads.ActiveTab             := tbiItensPlano;
 dmManutencao.TPlanoItens.Close;
 dmManutencao.TPlanoItens.Open;
 dmManutencao.TPlanoItens.Insert;
 lblCads.Text            := 'Items Plano de Manutenção';
 LayCads.Visible         := true;
end;

procedure TfrmPlanoManutencao.btnNovoModeloClick(Sender: TObject);
begin
 TbCads.TabPosition          := TTabPosition.None;
 tbCads.ActiveTab            := tbiMaquinasPlano;
 edtModelo.Text              :='';
 edtFabricante.Text          :='';
 lblCads.Text                := 'Plano Modelos';
 edtMarca.Text               := dmManutencao.TPlanoManutencaofabricante.AsString;
 LayCads.Visible             := true;
end;

procedure TfrmPlanoManutencao.btnPlanoPadraoClick(Sender: TObject);
begin
 dmManutencao.AbrePlanoManutencaoPadrao('');
 tbCads.ActiveTab := tbiPlanoPadrao;
end;

procedure TfrmPlanoManutencao.btnSalvarPlanoClick(Sender: TObject);
var
 vMaxIdPlano:string;
begin
 edtNome.SetFocus;
 if edtNome.Text.Length=0 then
 begin
  frmPrincipal.MyShowMessage('Informe o Nome do Plano!!',false);
  Exit;
 end;
 if not dmdb.VerificaCadastroExiste('nome','planorevisao',edtNome.Text)then
 begin
  frmPrincipal.MyShowMessage('Já existe um plano com esse nome!!',false);
  Exit;
 end;
 if edtFabricante.Text.Length=0 then
 begin
  frmPrincipal.MyShowMessage('Informe o Fabricante!!',false);
  Exit;
 end;

 if cbxTipoPlano.ItemIndex=1 then//plano Customizado
 begin
   if edtPlanoPadrao.Text.Length=0 then
   begin
    frmPrincipal.MyShowMessage('Informe o Plano Padrao!!',false);
    Exit;
   end;
   if edtMaquina.Text.Length=0 then
   begin
    frmPrincipal.MyShowMessage('Informe a Maquina!!',false);
    Exit;
   end;
 end;
 if edtIntervaloHoras.Value<=0 then
 begin
  frmPrincipal.MyShowMessage('Informe o Intervalo de Horas!!',false);
  Exit;
 end;
 if edtIntervaloDias.Value<=0 then
 begin
  frmPrincipal.MyShowMessage('Informe o Intervalo de Dias!!',false);
  Exit;
 end;
 if dmManutencao.TPlanoManutencao.State=dsInsert then
 begin
   if not (dmdb.VerificaCadastroExiste('nome','planorevisao',edtNome.Text)) then
   begin
     frmPrincipal.MyShowMessage('Já Existe uma Plano com esse Nome!!',false);
     Exit;
   end;
 end
 else
 begin
  dmManutencao.TPlanoManutencaoidusuarioalteracao.AsString := dmdb.vIdUsuarioLogado;
  dmManutencao.TPlanoManutencaodataalteracao.AsDateTime    := now;
 end;
 dmManutencao.TPlanoManutencaoidusuario.AsString            := dmdb.vIdUsuarioLogado;
 dmManutencao.TPlanoManutencaonome.AsString                 := edtNome.Text;
 dmManutencao.TPlanoManutencaoidfabricante.AsString         := vIdFabricante;
 dmManutencao.TPlanoManutencaointervalohoras.AsFloat        := edtIntervaloHoras.Value;
 dmManutencao.TPlanoManutencaointervalodias.AsFloat         := edtIntervaloDias.Value;
 dmManutencao.TPlanoManutencaotipo.AsInteger                := cbxTipoPlano.ItemIndex;
 if cbxTipoPlano.ItemIndex=1 then
  dmManutencao.TPlanoManutencaoidmaquina.AsString           := vIdMaquina
 else
  dmManutencao.TPlanoManutencaoidmaquina.AsInteger          := 0;
 try
   dmManutencao.TPlanoManutencao.ApplyUpdates(-1);
   if cbxTipoPlano.ItemIndex=1 then
   begin
    vMaxIdPlano := dmManutencao.RetornoMaxId('planorevisao');
    if dmManutencao.CopyItensPlanoManutencao(vIdPlanoPadrao,vMaxIdPlano) then
    begin
     frmPrincipal.MyShowMessage('Registro Atualizado com Sucesso!',false);
     dmManutencao.TPlanoManutencao.Close;
     dmManutencao.TPlanoManutencao.Open;
     LayCads.Visible := false;
    end;
   end
   else
   begin
    frmPrincipal.MyShowMessage('Registro Atualizado com Sucesso!',false);
    dmManutencao.TPlanoManutencao.Close;
    dmManutencao.TPlanoManutencao.Open;
    LayCads.Visible := false;
   end;
 except
  on E: Exception do
   frmPrincipal.MyShowMessage('Erro ao salvar Plano:'+E.Message,false);
 end;
end;

procedure TfrmPlanoManutencao.cbxFotoObrigatoriaKeyUp(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if(key=13) or (key=9) then
 begin
   TThread.CreateAnonymousThread(
  procedure
  begin
    TThread.Synchronize( nil,
      procedure
      begin
        edtProdutoUtilizado.SetFocus;
      end
    );
  end
  ).Start;
 end;
end;

procedure TfrmPlanoManutencao.cbxTipoPlanoChange(Sender: TObject);
begin
 layPlanoCustomizado.Enabled := cbxTipoPlano.ItemIndex=1;
end;

procedure TfrmPlanoManutencao.EditButton1Click(Sender: TObject);
begin
  frmCadProdutos := TfrmCadProdutos.Create(Self);
  try
    frmCadProdutos.ShowModal;
  finally
    vIdProduto                := dmDB.TProdutosid.AsString;
    edtProdutoUtilizado.Text  := dmDB.TProdutosnome.AsString;
  end;
end;

procedure TfrmPlanoManutencao.EditButton2Click(Sender: TObject);
begin
 dmManutencao.TPlanoMaquinas.Insert;
 frmCadModeloMaquina := TfrmCadModeloMaquina.Create(Self);
  try
    frmCadModeloMaquina.ShowModal;
  finally
    vIdModelo      := dmdb.ModeloMaquinaID.AsString;
    edtModelo.Text := dmdb.ModeloMaquinamodelo.AsString;
    vIdMarca       := dmdb.ModeloMaquinaidmarca.AsString;
    edtMarca.Text  := dmdb.ModeloMaquinafabricante.AsString;
    frmCadModeloMaquina.Free;
  end;
end;

procedure TfrmPlanoManutencao.edtDescricaoKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if(key=13) or (key=9) then
 begin
   TThread.CreateAnonymousThread(
  procedure
  begin
    TThread.Synchronize( nil,
      procedure
      begin
        cbxFotoObrigatoria.SetFocus;
      end
    );
  end
  ).Start;
 end;
end;

procedure TfrmPlanoManutencao.edtFabricanteKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if(key=13) or (key=9) then
 begin
   TThread.CreateAnonymousThread(
  procedure
  begin
    TThread.Synchronize( nil,
      procedure
      begin
        edtIntervaloHoras.SetFocus;
      end
    );
  end
  ).Start;
 end;
end;

procedure TfrmPlanoManutencao.edtGrupoItemRevisaoKeyUp(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if(key=13) or (key=9) then
 begin
   TThread.CreateAnonymousThread(
  procedure
  begin
    TThread.Synchronize( nil,
      procedure
      begin
        edtDescricao.SetFocus;
      end
    );
  end
  ).Start;
 end;
end;

procedure TfrmPlanoManutencao.edtNomeKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if(key=13) or (key=9) then
 begin
   TThread.CreateAnonymousThread(
  procedure
  begin
    TThread.Synchronize( nil,
      procedure
      begin
        edtFabricante.SetFocus;
      end
    );
  end
  ).Start;
 end;
end;

procedure TfrmPlanoManutencao.edtProdutoUtilizadoKeyUp(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if(key=13) or (key=9) then
 begin
   TThread.CreateAnonymousThread(
  procedure
  begin
    TThread.Synchronize( nil,
      procedure
      begin
        edtqtde.SetFocus;
      end
    );
  end
  ).Start;
 end;
end;

procedure TfrmPlanoManutencao.edtqtdeKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if(key=13) or (key=9) then
 begin
   TThread.CreateAnonymousThread(
  procedure
  begin
    TThread.Synchronize( nil,
      procedure
      begin
        edtObsItem.SetFocus;
      end
    );
  end
  ).Start;
 end;
end;

procedure TfrmPlanoManutencao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 dmManutencao.TPlanoMaquinas.Close;
end;

procedure TfrmPlanoManutencao.FormCreate(Sender: TObject);
begin
  vFiltro :='';
end;

procedure TfrmPlanoManutencao.FormShow(Sender: TObject);
begin
 layFiltros.Enabled  := vFiltro.Length=0;
 layItens.Enabled    := false;
 layMaquinas.Enabled := false;
 LayCads.Visible     := false;
 dmManutencao.AbrePlanoManutencao(vFiltro);
 dmManutencao.TPlanoItens.Open;
 dmManutencao.TPlanoMaquinas.Open;
end;

procedure TfrmPlanoManutencao.gridPlanosPadraoCellDblClick(
  const Column: TColumn; const Row: Integer);
begin
 edtPlanoPadrao.Text := dmManutencao.TPlanoManutencaoPadraonome.AsString;
 vIdPlanoPadrao      := dmManutencao.TPlanoManutencaoPadraoid.AsString;
 tbCads.TabIndex     := 0;
end;



procedure TfrmPlanoManutencao.Image17Click(Sender: TObject);
begin
   LayCads.Visible := false
end;

procedure TfrmPlanoManutencao.Rectangle11Click(Sender: TObject);
begin
 LayCads.Visible := false;
end;

procedure TfrmPlanoManutencao.Rectangle12Click(Sender: TObject);
begin
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
 if dmManutencao.TPlanoManutencao.State=dsInsert then
 begin
   if not (dmdb.VerificaCadastroExiste('nome','planorevisao',edtNome.Text)) then
   begin
     frmPrincipal.MyShowMessage('Já Existe uma Plano com esse Nome!!',false);
     Exit;
   end;
 end
 else
 begin
  dmManutencao.TPlanoItensidusuarioalteracao.AsString := dmdb.vIdUsuarioLogado;
  dmManutencao.TPlanoItensdataalteracao.AsDateTime    := now;
 end;
 dmManutencao.TPlanoItensidusuario.AsString           := dmdb.vIdUsuarioLogado;
 dmManutencao.TPlanoItensdescricao.AsString           := edtDescricao.Text;
 dmManutencao.TPlanoItensidgrupoitenspalno.AsString   := vIdGrupoItem;
 dmManutencao.TPlanoItensfotoobrigatoria.AsInteger    := cbxFotoObrigatoria.ItemIndex;
 dmManutencao.TPlanoItensobservacao.AsString          := edtObsItem.Text;
 if edtProdutoUtilizado.Text.Length>0 then
 begin
  dmManutencao.TPlanoItensidproduto.AsString          := vIdProduto;
  dmManutencao.TPlanoItensqtde.AsFloat                := edtqtde.Value;
 end
 else
  dmManutencao.TPlanoItensqtde.AsFloat                := 0;
 dmManutencao.TPlanoItensidplano.AsInteger            := dmManutencao.TPlanoManutencaoid.AsInteger;
 try
   dmManutencao.TPlanoItens.ApplyUpdates(-1);
   frmPrincipal.MyShowMessage('Registro Atualizado com Sucesso!',false);
   dmManutencao.TPlanoItens.Close;
   dmManutencao.TPlanoItens.Open;
   LayCads.Visible := false;
 except
  on E: Exception do
   frmPrincipal.MyShowMessage('Erro ao salvar Plano:'+E.Message,false);
 end;
end;

procedure TfrmPlanoManutencao.StringGrid1CellClick(const Column: TColumn;
  const Row: Integer);
begin
  if dmManutencao.TPlanoManutencaoid.AsInteger>0 then
  begin
   layItens.Enabled    := true;
   layMaquinas.Enabled := true;
  end;
  recNovaMaquina.Enabled     := dmManutencao.TPlanoManutencaotipo.AsInteger=0;
  StringGridMaquinas.Visible := dmManutencao.TPlanoManutencaotipo.AsInteger=0;
  lblPrefixoMaquina.Text     := dmManutencao.TPlanoManutencaomaquina.AsString;
end;

procedure TfrmPlanoManutencao.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
 Close;
end;

procedure TfrmPlanoManutencao.StringGrid1SelChanged(Sender: TObject);
begin
 recNovaMaquina.Enabled     := dmManutencao.TPlanoManutencaotipo.AsInteger=0;
 StringGridMaquinas.Visible := dmManutencao.TPlanoManutencaotipo.AsInteger=0;
 lblPrefixoMaquina.Text            := dmManutencao.TPlanoManutencaomaquina.AsString;
end;

end.

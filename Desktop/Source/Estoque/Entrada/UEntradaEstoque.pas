unit UEntradaEstoque;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FMX.ActnList,
  System.Actions, FMX.TabControl, FMX.Ani, FMX.ScrollBox, FMX.Grid, FMX.Edit,
  FMX.Controls.Presentation, FMX.Objects, FMX.Layouts, FMX.EditBox,
  FMX.NumberBox, FMX.DateTimeCtrls, FMX.ListBox, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope;

type
  TfrmCadEntradaEstoque = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Layout13: TLayout;
    Rectangle3: TRectangle;
    Layout14: TLayout;
    Layout15: TLayout;
    Label14: TLabel;
    Layout16: TLayout;
    Label15: TLabel;
    Layout17: TLayout;
    ComboBox3: TComboBox;
    Layout18: TLayout;
    edtFornecedor: TEdit;
    EditButton3: TEditButton;
    edtCodFabF: TEdit;
    Label20: TLabel;
    Label16: TLabel;
    edtNumNFF: TEdit;
    EdtCentroCustoF: TEdit;
    btnBuscaCategoriaF: TSearchEditButton;
    ClearEditButton1: TClearEditButton;
    Label17: TLabel;
    edtLocalEstoqueF: TEdit;
    SearchEditButton1: TSearchEditButton;
    ClearEditButton2: TClearEditButton;
    Label18: TLabel;
    GroupBox1: TGroupBox;
    chkPeriodoEntradaF: TCheckBox;
    Label19: TLabel;
    edtDeF: TDateEdit;
    Label21: TLabel;
    edtAteF: TDateEdit;
    Layout19: TLayout;
    Rectangle4: TRectangle;
    Layout20: TLayout;
    Layout21: TLayout;
    Layout22: TLayout;
    Label22: TLabel;
    Layout23: TLayout;
    Label23: TLabel;
    Layout24: TLayout;
    ComboBox4: TComboBox;
    Layout25: TLayout;
    cbxTipoSaida: TComboBox;
    Layout26: TLayout;
    Layout27: TLayout;
    StringGrid2: TStringGrid;
    Rectangle5: TRectangle;
    Rectangle6: TRectangle;
    Label25: TLabel;
    btnNovoItem: TRectangle;
    No: TLabel;
    btnExcluirItem: TRectangle;
    Image10: TImage;
    Label28: TLabel;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    Label12: TLabel;
    edtCentroCusto: TEdit;
    EditButton1: TEditButton;
    tbiItens: TTabItem;
    Layout29: TLayout;
    Layout30: TLayout;
    Rectangle7: TRectangle;
    Rectangle9: TRectangle;
    Image9: TImage;
    Label26: TLabel;
    Rectangle11: TRectangle;
    Image13: TImage;
    Label29: TLabel;
    Rectangle13: TRectangle;
    Image14: TImage;
    Label31: TLabel;
    StringGrid3: TStringGrid;
    LinkGridToDataSourceBindSourceDB22: TLinkGridToDataSource;
    Layout31: TLayout;
    Layout32: TLayout;
    Rectangle15: TRectangle;
    Label33: TLabel;
    Image16: TImage;
    Rectangle14: TRectangle;
    Label32: TLabel;
    Image15: TImage;
    layItensNota: TLayout;
    Rectangle8: TRectangle;
    Layout46000000: TLayout;
    Rectangle16000000: TRectangle;
    Layout490000000000000: TLayout;
    Layout47000000000: TLayout;
    Label31000000000: TLabel;
    layCapDadosPasto: TLayout;
    Label10: TLabel;
    lbll: TLabel;
    Label7: TLabel;
    Layout48000000000: TLayout;
    cbxCurralPastoGrupo: TComboBox;
    LayValueDadosPasto: TLayout;
    edtProduto: TEdit;
    btnBuscaProduto: TEditButton;
    cbxUnidadeMedida: TComboBox;
    edtqtd: TEdit;
    Layout1: TLayout;
    Layout28: TLayout;
    Rectangle12: TRectangle;
    Label30: TLabel;
    Image12: TImage;
    ToolBar4: TToolBar;
    Rectangle10: TRectangle;
    Label27: TLabel;
    Image11: TImage;
    ToolBar5: TToolBar;
    lblItemNf: TLabel;
    edtFornF: TEdit;
    SearchEditButton2: TSearchEditButton;
    ClearEditButton3: TClearEditButton;
    Label34: TLabel;
    btnImprime: TRectangle;
    Image17: TImage;
    Label35: TLabel;
    laySubSubCad: TLayout;
    Rsub: TRectangle;
    laySubSubSubCad: TLayout;
    Rectangle2: TRectangle;
    Layout3: TLayout;
    Layout4: TLayout;
    Label4: TLabel;
    Layout2: TLayout;
    Label5: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Layout6: TLayout;
    ComboBox1: TComboBox;
    Layout7: TLayout;
    edtEmissaoNF: TDateEdit;
    edtNumNF: TEdit;
    edtDataEntradaFaz: TDateEdit;
    Layout8: TLayout;
    Layout9: TLayout;
    Label8: TLabel;
    Layout10: TLayout;
    Label13: TLabel;
    Label6: TLabel;
    Layout11: TLayout;
    ComboBox2: TComboBox;
    Layout12: TLayout;
    edtLocalEstoque: TEdit;
    EditButton2: TEditButton;
    edtValorTotalNF: TNumberBox;
    SaveDialog1: TSaveDialog;
    btnRepConsumo: TRectangle;
    Image1: TImage;
    Label24: TLabel;
    btnExcel: TRectangle;
    Image18: TImage;
    Label36: TLabel;
    SearchEditButton3: TSearchEditButton;
    Layout33: TLayout;
    Rectangle16: TRectangle;
    btnAddItemNF: TRectangle;
    Image19: TImage;
    Label37: TLabel;
    btnExcluirItemNF: TRectangle;
    Image20: TImage;
    Label38: TLabel;
    btnEditarItemNF: TRectangle;
    Image21: TImage;
    Label39: TLabel;
    btnSaldoAtual: TRectangle;
    Image22: TImage;
    Label40: TLabel;
    ClearEditButton4: TClearEditButton;
    ClearEditButton5: TClearEditButton;
    ClearEditButton6: TClearEditButton;
    procedure btnAddClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure chkPeriodoEntradaFChange(Sender: TObject);
    procedure EditButton3Click(Sender: TObject);
    procedure btnBuscaProdutoClick(Sender: TObject);
    procedure EditButton2Click(Sender: TObject);
    procedure btnBuscaCategoriaFClick(Sender: TObject);
    procedure ClearEditButton1Click(Sender: TObject);
    procedure SearchEditButton1Click(Sender: TObject);
    procedure edtqtdKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure Image11Click(Sender: TObject);
    procedure EditButton1Click(Sender: TObject);
    procedure Rectangle12Click(Sender: TObject);
    procedure btnNovoItemClick(Sender: TObject);
    procedure StringGrid1CellClick(const Column: TColumn; const Row: Integer);
    procedure StringGrid1SelChanged(Sender: TObject);
    procedure btnExcluirItemClick(Sender: TObject);
    procedure Rectangle15Click(Sender: TObject);
    procedure tbPrincipalChange(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure edtProdutoClick(Sender: TObject);
    procedure edtLocalEstoqueClick(Sender: TObject);
    procedure edtCentroCustoClick(Sender: TObject);
    procedure edtFornecedorClick(Sender: TObject);
    procedure EdtCentroCustoFKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure SearchEditButton2Click(Sender: TObject);
    procedure ClearEditButton3Click(Sender: TObject);
    procedure btnImprimeClick(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure btnBuscarFiltroClick(Sender: TObject);
    procedure btnRepConsumoClick(Sender: TObject);
    procedure SearchEditButton3Click(Sender: TObject);
    procedure btnAddItemNFClick(Sender: TObject);
    procedure btnEditarItemNFClick(Sender: TObject);
    procedure btnExcluirItemNFClick(Sender: TObject);
    procedure btnSaldoAtualClick(Sender: TObject);
  private
    vIdProduto,vIdCentroCusto,vIdLocalEstoque,vIdFornecedor,
    vIdNFCAD:string;
    procedure LimpaCampos;
    procedure Filtro;
    procedure FiltroReport;
  public
    { Public declarations }
  end;

var
  frmCadEntradaEstoque: TfrmCadEntradaEstoque;

implementation

{$R *.fmx}

uses UPrincipal,UProdutos, UCentrodeCusto,UCadMaquina, UdmDB, UdmReport,
  ULocalEstoque, UFornecedor;

procedure TfrmCadEntradaEstoque.btnAddClick(Sender: TObject);
begin
  LimpaCampos;
  dmdb.TEstoqueEntrada.Close;
  dmdb.TEstoqueEntrada.Open;
  dmdb.TEstoqueEntrada.Insert;
  inherited;
end;

procedure TfrmCadEntradaEstoque.btnAddItemNFClick(Sender: TObject);
begin
 edtProduto.Text            :='';
 edtCentroCusto.Text        :='';
 edtLocalEstoque.Text       :='';
 cbxUnidadeMedida.ItemIndex :=-1;
 edtqtd.Text                :='0';
 edtValorTotalNF.Text       :='0';

 dmdb.TnotaFiscalIntem.Close;
 dmdb.TnotaFiscalIntem.Open;
 dmdb.TnotaFiscalIntem.Insert;
 layItensNota.Visible:= true;
end;

procedure TfrmCadEntradaEstoque.btnBuscaCategoriaFClick(Sender: TObject);
begin
 frmCentroCusto := TfrmCentroCusto.Create(Self);
  try
    frmCentroCusto.ShowModal;
  finally
    edtCentroCustoF.Text := dmdb.TCentroCustonome.AsString;
    vIdCentroCusto       := dmdb.TCentroCustoID.AsString;
  end;
end;

procedure TfrmCadEntradaEstoque.btnBuscaProdutoClick(Sender: TObject);
begin
 frmCadProdutos := TfrmCadProdutos.Create(Self);
  try
    frmCadProdutos.ShowModal;
  finally
    vIdProduto         := dmdb.TProdutosid.AsString;
    edtProduto.Text    := dmdb.TProdutosnome.AsString;
    if dmdb.TProdutosunidademedida.AsString.Length>0 then
     cbxUnidadeMedida.ItemIndex := cbxUnidadeMedida.Items.IndexOf(dmdb.TProdutosunidademedida.AsString)
  end;
end;

procedure TfrmCadEntradaEstoque.btnBuscarFiltroClick(Sender: TObject);
begin
 Filtro;
end;

procedure TfrmCadEntradaEstoque.btnCancelaClick(Sender: TObject);
begin
  dmdb.AbreEntradaEstoque('');
  inherited;
end;

procedure TfrmCadEntradaEstoque.btnDeletarClick(Sender: TObject);
begin
  if StringGrid2.RowCount=0 then
  begin
   MyShowMessage('Deseja Realmente Deletar esse registro?',true);
   case frmPrincipal.vMsgConfirma of
     1:begin
        dmdb.TEstoqueEntrada.Edit;
        dmdb.TEstoqueEntradaStatus.AsInteger := -1;
        dmdb.TEstoqueEntradaIdUsuarioAlteracao.AsString  := dmdb.vIdUsuarioLogado;
        dmdb.TEstoqueEntradaDataAlteracao.AsDateTime     := now;
        try
          dmdb.TEstoqueEntradasyncaws.AsInteger            :=0;
          dmdb.TEstoqueEntrada.ApplyUpdates(-1);
          MyShowMessage('Registro Excluido com sucesso!',false);
          dmdb.TEstoqueEntrada.Close;
          dmdb.TEstoqueEntrada.Open();
        except
         on E : Exception do
          ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
        end;
     end;
   end;
  end
  else
  begin
    MyShowMessage('Delete os Itens antes de deletar a nota!',false);
  end;
end;

procedure TfrmCadEntradaEstoque.btnEditarClick(Sender: TObject);
begin
  dmdb.TEstoqueEntrada.Edit;
  vIdFornecedor                                      := dmdb.TEstoqueEntradaidfornecedor.AsString;
  edtFornecedor.Text                                 := dmdb.TEstoqueEntradafornecedor.AsString;
  edtNumNF.Text                                      := dmdb.TEstoqueEntradanumeronf.AsString;
  edtEmissaoNF.Date                                  := dmdb.TEstoqueEntradadataemissao.AsDateTime;
  edtDataEntradaFaz.Date                             := dmdb.TEstoqueEntradadataentradaestoque.AsDateTime;
  vIdCentroCusto                                     := dmdb.TEstoqueEntradaidcentrocusto.AsString;
  edtCentroCusto.Text                                := dmdb.TEstoqueEntradacentrocusto.AsString;
  cbxTipoSaida.ItemIndex                             := dmdb.TEstoqueEntradaTipo.asInteger;
  inherited;
end;

procedure TfrmCadEntradaEstoque.btnEditarItemNFClick(Sender: TObject);
begin
 edtProduto.Text            :=dmdb.TnotaFiscalIntemprodutonome.AsString;
 edtLocalEstoque.Text       :=dmdb.TnotaFiscalIntemlocalestoque.AsString;
 cbxUnidadeMedida.ItemIndex :=cbxUnidadeMedida.Items.IndexOf(dmdb.TnotaFiscalIntemunidademedida.AsString);
 edtqtd.Text                :=dmdb.TnotaFiscalIntemqtditens.AsString;
 edtValorTotalNF.Text       :=dmdb.TnotaFiscalIntemvalortotalnf.AsString;
 vIdProduto                 :=dmdb.TnotaFiscalIntemidproduto.AsString;
 vIdLocalEstoque            :=dmdb.TnotaFiscalIntemidlocalestoque.AsString;
 dmdb.TnotaFiscalIntem.Close;
 dmdb.TnotaFiscalIntem.Open;
 dmdb.TnotaFiscalIntem.edit;
 layItensNota.Visible:= true;
end;

procedure TfrmCadEntradaEstoque.btnExcelClick(Sender: TObject);
var
 csv: tstringlist;
 row, col: integer;
 s: string;
begin
 if SaveDialog1.Execute then
 begin
   csv:= tstringlist.create;
   for row:= 1 to StringGrid1.rowcount do
    begin
     s:= '';
     if row=1 then
     begin
       for col:= 0 to StringGrid1.ColumnCount-1 do
        s:= s + StringGrid1.Columns[col].Header + ';';
       csv.add(s)
     end
     else
     begin
       for col:= 0 to StringGrid1.ColumnCount-1 do
        s:= s + StringGrid1.Cells[col, row-1] + ';';
       csv.add(s)
     end;
    end;
   csv.savetofile(SaveDialog1.FileName);
   csv.free;
 end;
end;

procedure TfrmCadEntradaEstoque.btnExcluirItemClick(Sender: TObject);
begin
   MyShowMessage('Deseja Realmente Deletar esse Item?',true);
   case frmPrincipal.vMsgConfirma of
     1:begin
        dmdb.TnotaFiscalIntem.Edit;
        dmdb.TnotaFiscalIntemstatus.AsInteger := -1;
        dmdb.TnotaFiscalIntemIdUsuarioAlteracao.AsString  := dmdb.vIdUsuarioLogado;
        dmdb.TnotaFiscalIntemDataAlteracao.AsDateTime     := now;
        try
          dmdb.TnotaFiscalIntemsyncaws.AsInteger          :=0;
          dmdb.TnotaFiscalIntem.ApplyUpdates(-1);
          MyShowMessage('Registro Excluido com sucesso!',false);
          dmdb.AbreItensNf(dmdb.TEstoqueEntradaid.AsString,'');
        except
         on E : Exception do
          ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
        end;
     end;
   end;
end;

procedure TfrmCadEntradaEstoque.btnExcluirItemNFClick(Sender: TObject);
begin
   MyShowMessage('Deseja Realmente Deletar esse Item?',true);
   case frmPrincipal.vMsgConfirma of
     1:begin
        dmdb.TnotaFiscalIntem.Edit;
        dmdb.TnotaFiscalIntemstatus.AsInteger := -1;
        dmdb.TnotaFiscalIntemIdUsuarioAlteracao.AsString  := dmdb.vIdUsuarioLogado;
        dmdb.TnotaFiscalIntemDataAlteracao.AsDateTime     := now;
        try
          dmdb.TnotaFiscalIntemsyncaws.AsInteger          :=0;
          dmdb.TnotaFiscalIntem.ApplyUpdates(-1);
          MyShowMessage('Registro Excluido com sucesso!',false);
          dmdb.AbreItensNf(dmdb.TEstoqueEntradaid.AsString,'');
        except
         on E : Exception do
          ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
        end;
     end;
   end;
end;

procedure TfrmCadEntradaEstoque.btnImprimeClick(Sender: TObject);
begin
 dmReport.AbreRepNota(dmdb.TEstoqueEntradaid.AsString);
end;

procedure TfrmCadEntradaEstoque.btnNovoItemClick(Sender: TObject);
begin
 edtProduto.Text            :='';
 edtCentroCusto.Text        :='';
 edtLocalEstoque.Text       :='';
 cbxUnidadeMedida.ItemIndex :=-1;
 edtqtd.Text                :='0';
 edtValorTotalNF.Text       :='0';

 dmdb.TnotaFiscalIntem.Close;
 dmdb.TnotaFiscalIntem.Open;
 dmdb.TnotaFiscalIntem.Insert;
 layItensNota.Visible:= true;
end;

procedure TfrmCadEntradaEstoque.btnRepConsumoClick(Sender: TObject);
begin
 if StringGrid1.RowCount>0 then
 begin
   BindSourceDB1.DataSet :=nil;
   dmReport.ppRepListaEntrEstoque.PrintReport;
   BindSourceDB1.DataSet :=dmdb.TEstoqueEntrada;
 end;
// FiltroReport;
end;

procedure TfrmCadEntradaEstoque.btnSaldoAtualClick(Sender: TObject);
var
 vFiltro:string;
begin
 vFiltro   :='';
 if edtNomeFiltro.Text.Length>0 then
  vFiltro := vFiltro+ 'AND a.ID='+vIdProduto;
 if(vIdCentroCusto.Length=0)OR(vIdCentroCusto='0') then
 begin
  dmReport.ppLblCentroCusto.Caption := 'Geral';
  vIdCentroCusto:='0';
 end
 else
  dmReport.ppLblCentroCusto.Caption := EdtCentroCustoF.Text;
 dmReport.SaldoAtualCustoMedio(vIdCentroCusto,vFiltro);
 if not dmReport.QryEstoqueG.IsEmpty then
  dmReport.ppRepEstoqueG.PrintReport;
end;

procedure TfrmCadEntradaEstoque.btnSalvarClick(Sender: TObject);
var
 vTipoInsUp:integer;
begin
 if edtNumNF.Text.Length=0 then
 begin
   MyShowMessage('Informe o N° da NF!',false);
   edtNumNF.SetFocus;
   Exit;
 end;

 if edtFornecedor.Text.Length=0 then
 begin
   MyShowMessage('Informe o Fornecedor da NF!',false);
   edtFornecedor.SetFocus;
   Exit;
 end;

 
 if edtCentroCusto.Text.Length=0 then
 begin
   MyShowMessage('Informe o Centro de Custo!',false);
   edtCentroCusto.SetFocus;
   Exit;
 end;

 if cbxTipoSaida.ItemIndex=-1 then
 begin
   MyShowMessage('Informe o Tipo de Saída!',false);
   cbxTipoSaida.SetFocus;
   Exit;
 end;
 if dmdb.TEstoqueEntrada.State=dsInsert then
 begin
   dmdb.TEstoqueEntradaidusuario.AsString := dmdb.vIdUsuarioLogado;
   vTipoInsUp :=1;
 end
 else
  vTipoInsUp :=0;

 if dmdb.TEstoqueEntrada.State=dsEdit then
 begin
   dmdb.TEstoqueEntradaidusuarioalteracao.AsString := dmdb.vIdUsuarioLogado;
   dmdb.TEstoqueEntradadataalteracao.AsDateTime    := now;
 end;
 dmdb.TEstoqueEntradaidfornecedor.AsString         := vIdFornecedor;
 dmdb.TEstoqueEntradanumeronf.AsString             := edtNumNF.Text;
 dmdb.TEstoqueEntradadataemissao.AsDateTime        := edtEmissaoNF.Date;
 dmdb.TEstoqueEntradadataentradaestoque.AsDateTime := edtDataEntradaFaz.Date;
 dmdb.TEstoqueEntradaidcentrocusto.AsString        := vIdCentroCusto;
 dmdb.TEstoqueEntradaTipo.asInteger                := cbxTipoSaida.ItemIndex;
 try
  dmdb.TEstoqueEntrada.ApplyUpdates(-1);
  MyShowMessage('Entrada Atualizada com sucesso adicione os Itens!',false);
  Filtro;
  MudarAba(tbiLista,sender);
 except
 on E: Exception do
    ShowMessage('Erro ao salvar Registro:'+E.Message);
 end;
end;

procedure TfrmCadEntradaEstoque.chkPeriodoEntradaFChange(Sender: TObject);
begin
 edtAteF.Enabled := chkPeriodoEntradaF.IsChecked;
 edtDeF.Enabled  := chkPeriodoEntradaF.IsChecked;
end;

procedure TfrmCadEntradaEstoque.ClearEditButton1Click(Sender: TObject);
begin
  EdtCentroCustoF.Text :='';
end;

procedure TfrmCadEntradaEstoque.ClearEditButton3Click(Sender: TObject);
begin
 edtFornF.Text :='';
end;

procedure TfrmCadEntradaEstoque.EditButton1Click(Sender: TObject);
begin
 frmCentroCusto := TfrmCentroCusto.Create(Self);
  try
    frmCentroCusto.ShowModal;
  finally
    vIdCentroCusto      := dmdb.TCentroCustoid.AsString;
    edtCentroCusto.Text := dmdb.TCentroCustonome.AsString;
  end;
end;

procedure TfrmCadEntradaEstoque.EditButton2Click(Sender: TObject);
begin
 frmAuxLocalEstoque := TfrmAuxLocalEstoque.Create(Self);
  try
    frmAuxLocalEstoque.edtCentroCustoF.Text    := dmdb.TEstoqueEntradacentrocusto.AsString;
    frmAuxLocalEstoque.edtCentroCustoF.Enabled := false;
    frmAuxLocalEstoque.btnBuscarFiltroClick(Sender);
    frmAuxLocalEstoque.ShowModal;
  finally
    frmAuxLocalEstoque.edtCentroCustoF.Text    := '';
    frmAuxLocalEstoque.edtCentroCustoF.Enabled := true;
    vIdLocalEstoque      := dmdb.TLocalEstoqueid.AsString;
    edtLocalEstoque.Text  := dmdb.TLocalEstoquenome.AsString;
  end;
end;

procedure TfrmCadEntradaEstoque.EditButton3Click(Sender: TObject);
begin
  frmCadFornecedor := TfrmCadFornecedor.Create(Self);
  try
    frmCadFornecedor.ShowModal;
  finally
    vIdFornecedor  := dmdb.TFornecedoresid.AsString;
    edtFornecedor.Text := dmdb.TFornecedoresnome.AsString;
  end;
end;

procedure TfrmCadEntradaEstoque.edtCentroCustoClick(Sender: TObject);
begin
 EditButton1Click(Sender);
end;

procedure TfrmCadEntradaEstoque.EdtCentroCustoFKeyUp(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if key=13 then
  Filtro;
end;

procedure TfrmCadEntradaEstoque.edtFornecedorClick(Sender: TObject);
begin
 EditButton3Click(Sender);
end;

procedure TfrmCadEntradaEstoque.edtLocalEstoqueClick(Sender: TObject);
begin
  EditButton2Click(Sender);
end;

procedure TfrmCadEntradaEstoque.edtProdutoClick(Sender: TObject);
begin
 btnBuscaProdutoClick(Sender);
end;

procedure TfrmCadEntradaEstoque.edtqtdKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if (keyChar in ['0'..'9',','] = false) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmCadEntradaEstoque.Filtro;
var
 vFiltro:string;
begin
 vFiltro   :='';
 if edtNomeFiltro.Text.Length>0 then
   vFiltro := vFiltro+ 'AND a.ID in(select distinct n.idnota from notafiscalitems n where idproduto ='+vIdProduto+')';
 if edtCodFabF.Text.Length>0 then
   vFiltro := vFiltro+ 'AND e.codigofabricante LIKE '+QuotedStr('%'+edtCodFabF.Text+'%');
 if EdtCentroCustoF.Text.Length>0 then
   vFiltro := vFiltro+ 'AND d.nome ='+QuotedStr(EdtCentroCustoF.Text);
 if edtLocalEstoqueF.Text.Length>0 then
   vFiltro := vFiltro+ 'AND c.nome ='+QuotedStr(edtLocalEstoqueF.Text);
 if edtNumNFF.Text.Length>0 then
   vFiltro := vFiltro+ 'AND a.numeronf ='+edtNumNFF.Text;
 if edtFornF.Text.Length>0 then
   vFiltro := vFiltro+ 'AND b.nome ='+QuotedStr(edtFornF.Text);
 if chkPeriodoEntradaF.IsChecked then
 begin
   vFiltro := vFiltro+ 'AND a.dataentradaestoque between '+QuotedStr(FormatDateTime('yyyy-mm-dd',edtDeF.Date))
   +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',edtAteF.Date));
 end;
 dmdb.AbreEntradaEstoque(vFiltro);
 if edtNomeFiltro.Text.Length>0 then
  dmdb.AbreItensNf(dmdb.TEstoqueEntradaid.AsString,' and b.id='+vIdProduto)
 else
  dmdb.AbreItensNf(dmdb.TEstoqueEntradaid.AsString,'')
end;

procedure TfrmCadEntradaEstoque.FiltroReport;
var
 vFiltro:string;
begin
 vFiltro   :='';
 if edtNomeFiltro.Text.Length>0 then
   vFiltro := vFiltro+ 'AND c.idproduto='+vIdProduto;
 if edtCodFabF.Text.Length>0 then
   vFiltro := vFiltro+ 'AND e.codigofabricante LIKE '+QuotedStr('%'+edtCodFabF.Text+'%');
 if EdtCentroCustoF.Text.Length>0 then
   vFiltro := vFiltro+ 'AND d.nome ='+QuotedStr(EdtCentroCustoF.Text);
 if edtLocalEstoqueF.Text.Length>0 then
   vFiltro := vFiltro+ 'AND c.nome ='+QuotedStr(edtLocalEstoqueF.Text);
 if edtNumNFF.Text.Length>0 then
   vFiltro := vFiltro+ 'AND a.numeronf ='+edtNumNFF.Text;
 if edtFornF.Text.Length>0 then
   vFiltro := vFiltro+ 'AND b.nome ='+QuotedStr(edtFornF.Text);
 if chkPeriodoEntradaF.IsChecked then
 begin
   vFiltro := vFiltro+ 'AND a.dataentradaestoque between '+QuotedStr(FormatDateTime('yyyy-mm-dd',edtDeF.Date))
   +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',edtAteF.Date));
 end;
 dmReport.AbreListaEntradas(vFiltro);
 if not dmReport.QryListaEntrEstoque.IsEmpty then
  dmReport.ppRepListaEntrEstoque.PrintReport;
end;

procedure TfrmCadEntradaEstoque.FormShow(Sender: TObject);
begin
  layItensNota.Visible := false;
  lblAdd.Text          := 'Adicionar';
  lblEdit.Text         := 'Editar';
  lblDeleta.Text       := 'Deletar';
  tbPrincipal.TabPosition := TTabPosition.None;
  tbPrincipal.ActiveTab   := tbiLista;
  edtAteF.Enabled := false;
  edtDeF.Enabled  := false;
  dmdb.AbreEntradaEstoque('');
end;

procedure TfrmCadEntradaEstoque.Image11Click(Sender: TObject);
begin
 edtProduto.Text            :='';
 edtCentroCusto.Text        :='';
 edtLocalEstoque.Text       :='';
 cbxUnidadeMedida.ItemIndex :=-1;
 edtqtd.Text                :='0';
 edtValorTotalNF.Text       :='0';
 layItensNota.Visible := false;
end;

procedure TfrmCadEntradaEstoque.LimpaCampos;
begin
 edtNumNF.Text              := '';
 edtEmissaoNF.Date          := date;
 edtValorTotalNF.Value      := 0.00;
 edtDataEntradaFaz.Date     := date;
 edtProduto.Text            := '';
 cbxUnidadeMedida.ItemIndex :=-1;
 edtqtd.Text                :='0';
 edtCentroCusto.Text        := '';
 edtLocalEstoque.Text       := '';
 edtFornecedor.Text         := '';
end;

procedure TfrmCadEntradaEstoque.Rectangle12Click(Sender: TObject);
var
 vQry:TFDQuery;
begin
// vQry:=TFDQuery.Create(nil);
// vQry.Connection := dmdb.FDConPG;
 edtqtd.SetFocus;
 if(edtValorTotalNF.Text.Length=0)or(edtValorTotalNF.Value<=0) then
 begin
   MyShowMessage('Informe o Valor total da NF!',false);
   edtValorTotalNF.SetFocus;
   Exit;
 end;
 if edtProduto.Text.Length=0 then
 begin
   MyShowMessage('Informe o Produto da NF!',false);
   edtProduto.SetFocus;
   Exit;
 end;

 if cbxUnidadeMedida.ItemIndex=-1 then
 begin
   MyShowMessage('Informe a Unidade de Medida!',false);
   cbxUnidadeMedida.SetFocus;
   Exit;
 end;
 if (edtqtd.Text.Length=0)or(edtqtd.Text='0')  then
 begin
   MyShowMessage('Informe a Qtde.!',false);
   edtqtd.SetFocus;
   Exit;
 end;
 if dmdb.TnotaFiscalIntem.State=dsInsert then
  dmdb.TnotaFiscalIntemidusuario.AsString      := dmdb.vIdUsuarioLogado
 else
 begin
  dmdb.TnotaFiscalIntemidusuarioalteracao.AsString  := dmdb.vIdUsuarioLogado;
  dmdb.TnotaFiscalIntemdataalteracao.AsDateTime     := now;
 end;
 dmdb.TnotaFiscalIntemidnota.AsString               := dmdb.TEstoqueEntradaid.AsString;
 dmdb.TnotaFiscalIntemidproduto.AsString            := vIdProduto;
 dmdb.TnotaFiscalIntemvalortotalnf.AsString         := edtValorTotalNF.Text;
 dmdb.TnotaFiscalIntemqtditens.AsString             := edtqtd.Text;
 dmdb.TnotaFiscalIntemunidademedida.AsString        := cbxUnidadeMedida.Selected.Text;
 dmdb.TnotaFiscalIntemidlocalestoque.AsString       := vIdLocalEstoque;
 try
  dmdb.TnotaFiscalIntem.ApplyUpdates(-1);
  MyShowMessage('Item adicionado com sucesso!',false);
  dmdb.AbreItensNf(dmdb.TEstoqueEntradaid.AsString,'');
  Image11Click(Sender);
 except
 on E : Exception do
  ShowMessage('Erro ao inserir Item : '+E.Message);
 end;
//   with vQry,vQry.SQL do
//   begin
//     Clear;
//     Add('INSERT INTO public.notafiscalitems(idusuario,idnota, idproduto,valortotalnf,qtditens,unidademedida,idlocalestoque)');
//     Add('values(');
//     Add(dmdb.vIdUsuarioLogado+',');
//     Add(vIdNFCAD+',');
//     Add(vIdProduto+',');
//     Add(StringReplace(edtValorTotalNF.Text,',','.',[rfReplaceAll])+',');
//     Add(StringReplace(edtqtd.Text,',','.',[rfReplaceAll])+',');
//     Add(cbxUnidadeMedida.Selected.Text.QuotedString+',');
//     Add(vIdLocalEstoque+')');
//     try
//      ExecSQL;
//      MyShowMessage('Item adicionado com sucesso!',false);
//      dmdb.AbreItensNf(vIdNFCAD,'');
//      Image11Click(Sender);
//     except
//     on E : Exception do
//      ShowMessage('Erro ao inserir Item : '+E.Message);
//     end;
//   end;
// vQry.Free;
end;

procedure TfrmCadEntradaEstoque.Rectangle15Click(Sender: TObject);
begin
 dmdb.AbreEntradaEstoque('');
 MudarAba(tbiLista,sender);
end;

procedure TfrmCadEntradaEstoque.SearchEditButton1Click(Sender: TObject);
begin
  frmAuxLocalEstoque := TfrmAuxLocalEstoque.Create(Self);
  try
    frmAuxLocalEstoque.ShowModal;
  finally
    edtLocalEstoqueF.Text := dmdb.TLocalEstoqueNome.AsString;
    Filtro;
  end;
end;

procedure TfrmCadEntradaEstoque.SearchEditButton2Click(Sender: TObject);
begin
 frmCadFornecedor := TfrmCadFornecedor.Create(Self);
  try
    frmCadFornecedor.ShowModal;
  finally
    edtFornF.Text := dmdb.TFornecedoresnome.AsString;
    Filtro;
  end;
end;

procedure TfrmCadEntradaEstoque.SearchEditButton3Click(Sender: TObject);
begin
  frmCadProdutos := TfrmCadProdutos.Create(Self);
  try
    frmCadProdutos.ShowModal;
  finally
    vIdProduto      := dmdb.TProdutosid.AsString;
    edtNomeFiltro.Text := dmdb.TProdutosnome.AsString;
    Filtro;
  end;
end;

procedure TfrmCadEntradaEstoque.StringGrid1CellClick(const Column: TColumn;
  const Row: Integer);
begin
  if edtNomeFiltro.Text.Length>0 then
   dmdb.AbreItensNf(dmdb.TEstoqueEntradaid.AsString,' and b.id='+vIdProduto)
  else
   dmdb.AbreItensNf(dmdb.TEstoqueEntradaid.AsString,'');
end;

procedure TfrmCadEntradaEstoque.StringGrid1SelChanged(Sender: TObject);
begin
  if edtNomeFiltro.Text.Length>0 then
   dmdb.AbreItensNf(dmdb.TEstoqueEntradaid.AsString,' and b.id='+vIdProduto)
  else
   dmdb.AbreItensNf(dmdb.TEstoqueEntradaid.AsString,'');
end;

procedure TfrmCadEntradaEstoque.tbPrincipalChange(Sender: TObject);
begin
 if tbPrincipal.TabIndex=2 then
  lblItemNf.Text := 'Itens da Nota : '+dmdb.TEstoqueEntradanumeronf.AsString;
end;

end.

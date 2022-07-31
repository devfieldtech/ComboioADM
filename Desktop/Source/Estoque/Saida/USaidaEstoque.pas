unit USaidaEstoque;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FMX.ActnList,
  System.Actions, FMX.TabControl, FMX.Ani, FMX.ScrollBox, FMX.Grid, FMX.Edit,
  FMX.Controls.Presentation, FMX.Objects, FMX.Layouts, FMX.ListBox,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.DateTimeCtrls;

type
  TfrmSaidaEstoque = class(TfrmCadPadrao)
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    Label4: TLabel;
    Layout6: TLayout;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Layout7: TLayout;
    ComboBox1: TComboBox;
    Layout8: TLayout;
    edtProduto: TEdit;
    EditButton1: TEditButton;
    cbxUnidadeMedida: TComboBox;
    edtqtd: TEdit;
    Layout9: TLayout;
    Rectangle2: TRectangle;
    Layout10: TLayout;
    Layout11: TLayout;
    Label7: TLabel;
    Layout12: TLayout;
    Label12: TLabel;
    Label13: TLabel;
    Layout13: TLayout;
    ComboBox2: TComboBox;
    Layout14: TLayout;
    edtCentroCusto: TEdit;
    EditButton2: TEditButton;
    edtLocalEstoque: TEdit;
    EditButton3: TEditButton;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    edtCodFabF: TEdit;
    Label20: TLabel;
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
    Layout15: TLayout;
    Rectangle3: TRectangle;
    Layout16: TLayout;
    Layout17: TLayout;
    Label10: TLabel;
    Layout18: TLayout;
    Label11: TLabel;
    Layout19: TLayout;
    ComboBox3: TComboBox;
    Layout20: TLayout;
    edtResponsavel: TEdit;
    EditButton4: TEditButton;
    Label14: TLabel;
    cbxTipoSaidaF: TComboBox;
    laySubSubCad: TLayout;
    Rsub: TRectangle;
    laySubSubSubCad: TLayout;
    Layout490000000000000: TLayout;
    Layout47000000000: TLayout;
    Label31000000000: TLabel;
    layCapDadosPasto: TLayout;
    lbll: TLabel;
    Label9: TLabel;
    Layout48000000000: TLayout;
    cbxCurralPastoGrupo: TComboBox;
    LayValueDadosPasto: TLayout;
    cbxTipoSaida: TComboBox;
    edtDataSaida: TDateEdit;
    ClearEditButton3: TClearEditButton;
    ClearEditButton4: TClearEditButton;
    ClearEditButton5: TClearEditButton;
    btnRepConsumo: TRectangle;
    Image10: TImage;
    Label15: TLabel;
    btnExcel: TRectangle;
    Image11: TImage;
    Label16: TLabel;
    SaveDialog1: TSaveDialog;
    SearchEditButton2: TSearchEditButton;
    procedure EditButton1Click(Sender: TObject);
    procedure EditButton2Click(Sender: TObject);
    procedure EditButton3Click(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure btnBuscaCategoriaFClick(Sender: TObject);
    procedure SearchEditButton1Click(Sender: TObject);
    procedure chkPeriodoEntradaFChange(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure EditButton4Click(Sender: TObject);
    procedure btnBuscarFiltroClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure btnExcelClick(Sender: TObject);
    procedure SearchEditButton2Click(Sender: TObject);
    procedure btnRepConsumoClick(Sender: TObject);
  private
    procedure Filtro;
  public
    vIdProduto,vIdCentroCusto,vIdLocalEstoque,vIDResponsavel:string;
    procedure LimpaCampos;
  end;

var
  frmSaidaEstoque: TfrmSaidaEstoque;

implementation

{$R *.fmx}

uses UProdutos,UCentrodeCusto, ULocalEstoque, UPrincipal,
  UUsuarios, UdmDB, UdmReport;

procedure TfrmSaidaEstoque.btnAddClick(Sender: TObject);
begin
  LimpaCampos;
  dmdb.TEstoqueSaida.Close;
  dmdb.TEstoqueSaida.Open;
  dmdb.TEstoqueSaida.Insert;
  inherited;
end;

procedure TfrmSaidaEstoque.LimpaCampos;
begin
 edtDataSaida.Date          := date;
 edtProduto.Text            := '';
 cbxUnidadeMedida.ItemIndex :=-1;
 edtqtd.Text                :='0';
 edtCentroCusto.Text        := '';
 edtLocalEstoque.Text       := '';
 edtResponsavel.Text        := '';
end;

procedure TfrmSaidaEstoque.btnBuscaCategoriaFClick(Sender: TObject);
begin
  frmCentroCusto := TfrmCentroCusto.Create(Self);
  try
    frmCentroCusto.ShowModal;
  finally
    edtCentroCustoF.Text := dmdb.TCentroCustonome.AsString;
  end;
end;

procedure TfrmSaidaEstoque.btnBuscarFiltroClick(Sender: TObject);
begin
  Filtro;
end;

procedure TfrmSaidaEstoque.btnDeletarClick(Sender: TObject);
begin
   MyShowMessage('Deseja Realmente Deletar esse registro?',true);
   case frmPrincipal.vMsgConfirma of
     1:begin
        dmdb.TEstoqueSaida.Edit;
        dmdb.TEstoqueSaidaStatus.AsInteger := -1;
        dmdb.TEstoqueSaidaIdUsuarioAlteracao.AsString  := dmdb.vIdUsuarioLogado;
        dmdb.TEstoqueSaidaDataAlteracao.AsDateTime     := now;
        try
          dmdb.TEstoqueSaidasyncaws.AsInteger            :=0;
          dmdb.TEstoqueSaida.ApplyUpdates(-1);
          MyShowMessage('Registro Excluido com sucesso!',false);
          dmdb.TEstoqueSaida.Close;
          dmdb.TEstoqueSaida.Open();
        except
         on E : Exception do
          ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
        end;
     end;
   end;
end;

procedure TfrmSaidaEstoque.btnEditarClick(Sender: TObject);
begin
  dmdb.TEstoqueSaida.Edit;
  vIdProduto                                         := dmdb.TEstoqueSaidaidproduto.AsString;
  edtProduto.Text                                    := dmdb.TEstoqueSaidaproduto.AsString;
  edtDataSaida.Date                                  := dmdb.TEstoqueSaidadatasaidaestoque.AsDateTime;
  edtqtd.Text                                        := dmdb.TEstoqueSaidaqtditens.AsString;
  cbxUnidadeMedida.ItemIndex                         := cbxUnidadeMedida.Items.IndexOf(dmdb.TEstoqueSaidaunidademedida.AsString);
  vIdLocalEstoque                                    := dmdb.TEstoqueSaidaidlocalestoque.AsString;
  edtLocalEstoque.Text                               := dmdb.TEstoqueSaidalocalestoque.AsString;
  vIdCentroCusto                                     := dmdb.TEstoqueSaidaidcentrocusto.AsString;
  edtCentroCusto.Text                                := dmdb.TEstoqueSaidacentrocusto.AsString;
  cbxTipoSaida.ItemIndex                             := dmdb.TEstoqueSaidatipo_baixa.AsInteger            ;
  inherited;
end;

procedure TfrmSaidaEstoque.btnExcelClick(Sender: TObject);
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

procedure TfrmSaidaEstoque.btnRepConsumoClick(Sender: TObject);
begin
 if StringGrid1.RowCount>0 then
 begin
   BindSourceDB1.DataSet := nil;
   dmReport.ppRepppListaSaidaEstoque.PrintReport;
   BindSourceDB1.DataSet := dmdb.TEstoqueSaida;
 end;
end;

procedure TfrmSaidaEstoque.btnSalvarClick(Sender: TObject);
begin
  if cbxTipoSaida.ItemIndex=-1 then
  begin
    MyShowMessage('Informe a tipo de baixa!',false);
    Exit;
  end;
  if edtProduto.Text.Length=0 then
  begin
    MyShowMessage('Informe o produto!',false);
    Exit;
  end;
  if cbxUnidadeMedida.ItemIndex=-1 then
  begin
    MyShowMessage('Informe a unidade de medida!',false);
    Exit;
  end;
  if edtResponsavel.Text.Length=0 then
  begin
    MyShowMessage('Informe o Responsavel!',false);
    Exit;
  end;
 if dmdb.TEstoqueSaida.State=dsInsert then
 begin
   dmdb.TEstoqueSaidaidusuario.AsString := dmdb.vIdUsuarioLogado;
 end;
 if dmdb.TEstoqueSaida.State=dsEdit then
 begin
   dmdb.TEstoqueSaidaidusuarioalteracao.AsString := dmdb.vIdUsuarioLogado;
   dmdb.TEstoqueSaidadataalteracao.AsDateTime    := now;
 end;
 dmdb.TEstoqueSaidaidproduto.AsString                 := vIdProduto;
 dmdb.TEstoqueSaidadatasaidaestoque.AsDateTime        := edtDataSaida.Date;
 dmdb.TEstoqueSaidaqtditens.AsString                  := StringReplace(edtqtd.Text,',','.',[rfReplaceAll]);
 dmdb.TEstoqueSaidaunidademedida.AsString             := cbxUnidadeMedida.Selected.Text;
 dmdb.TEstoqueSaidaidlocalestoque.AsString            := vIdLocalEstoque;
 dmdb.TEstoqueSaidaidcentrocusto.AsString             := vIdCentroCusto;
 dmdb.TEstoqueSaidaidresponsavel.AsString             := vIDResponsavel;
 dmdb.TEstoqueSaidatipo_baixa.AsInteger               := cbxTipoSaida.ItemIndex;
 dmdb.TEstoqueSaidavalorsaida.AsFloat                 := dmdb.RetornaCustoMedioProduto(vIdProduto);
 try
  dmdb.TEstoqueSaida.ApplyUpdates(-1);
  dmdb.AtaulizaSaldoAtualCustoMedio(vIdProduto);
  MyShowMessage('Baixa realizada com sucesso!',false);
  dmdb.AbreSaidaEstoque('');
  inherited;
 except
 on E: Exception do
    ShowMessage('Erro ao salvar Registro:'+E.Message);
 end;
end;

procedure TfrmSaidaEstoque.chkPeriodoEntradaFChange(Sender: TObject);
begin
 edtAteF.Enabled := chkPeriodoEntradaF.IsChecked;
 edtDeF.Enabled  := chkPeriodoEntradaF.IsChecked;
end;

procedure TfrmSaidaEstoque.EditButton1Click(Sender: TObject);
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

procedure TfrmSaidaEstoque.EditButton2Click(Sender: TObject);
begin
  frmCentroCusto := TfrmCentroCusto.Create(Self);
  try
    frmCentroCusto.ShowModal;
  finally
    vIdCentroCusto      := dmdb.TCentroCustoid.AsString;
    edtCentroCusto.Text := dmdb.TCentroCustonome.AsString;
  end;
end;

procedure TfrmSaidaEstoque.EditButton3Click(Sender: TObject);
begin
  if edtCentroCusto.Text.Length=0 then
  begin
    MyShowMessage('Informe o centro de custo antes!!',false);
    Exit;
  end;
  frmAuxLocalEstoque := TfrmAuxLocalEstoque.Create(Self);
  try
    frmAuxLocalEstoque.edtCentroCustoF.Text    := edtCentroCusto.Text;
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

procedure TfrmSaidaEstoque.EditButton4Click(Sender: TObject);
begin
  frmUsuarios := TfrmUsuarios.Create(Self);
  try
    frmUsuarios.ShowModal;
  finally
    vIDResponsavel        := dmdb.TUsuarioid.AsString;
    edtResponsavel.Text   := dmdb.TUsuarionome.AsString;
    frmUsuarios.Free;
  end;
end;

procedure TfrmSaidaEstoque.Filtro;
var
 vFiltro:string;
begin
 vFiltro   :='';
 if edtNomeFiltro.Text.Length>0 then
   vFiltro := vFiltro+ 'AND e.id ='+vIdProduto;
 if edtCodFabF.Text.Length>0 then
   vFiltro := vFiltro+ 'AND e.codigofabricante LIKE '+QuotedStr('%'+edtCodFabF.Text+'%');
 if EdtCentroCustoF.Text.Length>0 then
   vFiltro := vFiltro+ 'AND d.nome ='+QuotedStr(EdtCentroCustoF.Text);
 if edtLocalEstoqueF.Text.Length>0 then
   vFiltro := vFiltro+ 'AND c.nome ='+QuotedStr(edtLocalEstoqueF.Text);
 if cbxTipoSaidaF.ItemIndex>0 then
 begin
   if cbxTipoSaidaF.ItemIndex=1 then
    vFiltro := vFiltro+ 'AND tipo_baixa=0';
   if cbxTipoSaidaF.ItemIndex=2 then
    vFiltro := vFiltro+ 'AND tipo_baixa=1';
 end;

 if chkPeriodoEntradaF.IsChecked then
 begin
   vFiltro := vFiltro+ 'AND a.dataentradaestoque between '+QuotedStr(FormatDateTime('yyyy-mm-dd',edtDeF.Date))
   +' and '+QuotedStr(FormatDateTime('yyyy-mm-dd',edtAteF.Date));
 end;
 dmdb.AbreSaidaEstoque(vFiltro);
end;

procedure TfrmSaidaEstoque.FormKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if key=13 then
   Filtro;
end;

procedure TfrmSaidaEstoque.FormShow(Sender: TObject);
begin
  edtAteF.Enabled := chkPeriodoEntradaF.IsChecked;
  edtDeF.Enabled  := chkPeriodoEntradaF.IsChecked;
  lblAdd.Text        := 'Adicionar';
  lblEdit.Text       := 'Editar';
  lblDeleta.Text     := 'Deletar';
  layListaMnu.Width  := 150;
  tbPrincipal.TabPosition := TTabPosition.None;
  tbPrincipal.ActiveTab   := tbiLista;
  edtAteF.Enabled := false;
  edtDeF.Enabled  := false;
  dmdb.AbreSaidaEstoque('');
end;

procedure TfrmSaidaEstoque.SearchEditButton1Click(Sender: TObject);
begin
  frmAuxLocalEstoque := TfrmAuxLocalEstoque.Create(Self);
  try
    frmAuxLocalEstoque.ShowModal;
  finally
    edtLocalEstoqueF.Text := dmdb.TLocalEstoqueNome.AsString;
  end;
end;

procedure TfrmSaidaEstoque.SearchEditButton2Click(Sender: TObject);
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

end.

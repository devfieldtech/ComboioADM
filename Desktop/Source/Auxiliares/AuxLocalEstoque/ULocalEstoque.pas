unit ULocalEstoque;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FMX.ActnList,
  System.Actions, FMX.TabControl, FMX.Ani, FMX.ScrollBox, FMX.Grid, FMX.Edit,
  FMX.Objects, FMX.Controls.Presentation, FMX.Layouts, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope;

type
  TfrmAuxLocalEstoque = class(TfrmCadPadrao)
    Label6: TLabel;
    edtCentroCustoF: TEdit;
    ClearEditButton3: TClearEditButton;
    edtCombustivelF: TEdit;
    ClearEditButton5: TClearEditButton;
    Label8: TLabel;
    Layout4: TLayout;
    Rectangle2: TRectangle;
    laySubSubSubCad: TLayout;
    Label4: TLabel;
    edtNome: TEdit;
    ClearEditButton2: TClearEditButton;
    Layout1: TLayout;
    Rectangle3: TRectangle;
    Layout2: TLayout;
    edtCentroCusto: TEdit;
    SearchEditButton1: TSearchEditButton;
    ClearEditButton1: TClearEditButton;
    Layout3: TLayout;
    Label5: TLabel;
    Label7: TLabel;
    edtCombustivel: TEdit;
    SearchEditButton2: TSearchEditButton;
    ClearEditButton4: TClearEditButton;
    Layout14: TLayout;
    Rectangle5: TRectangle;
    Layout15: TLayout;
    Layout16: TLayout;
    Layout19: TLayout;
    Label17: TLabel;
    edtIdErp: TEdit;
    ClearEditButton13: TClearEditButton;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    procedure btnBuscarFiltroClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure SearchEditButton2Click(Sender: TObject);
    procedure SearchEditButton1Click(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure FormShow(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
  private
    vIdCentroCusto,vIdProduto,vIdLocalEstoque:string;
  public
    vFiltro:string;
    procedure Filtro;
  end;

var
  frmAuxLocalEstoque: TfrmAuxLocalEstoque;

implementation

{$R *.fmx}

uses UdmDB, UProdutos, UCentrodeCusto, UPrincipal;

{ TfrmAuxLocalEstoque }

procedure TfrmAuxLocalEstoque.btnAddClick(Sender: TObject);
begin
  edtNome.Text        :='';
  edtCentroCusto.Text :='';
  edtCombustivel.Text :='';
  edtIdErp.Text       :='';
  dmDB.TLocalEstoque.Close;
  dmDB.TLocalEstoque.Open;
  dmDB.TLocalEstoque.Insert;
  inherited;
end;

procedure TfrmAuxLocalEstoque.btnBuscarFiltroClick(Sender: TObject);
begin
 Filtro
end;

procedure TfrmAuxLocalEstoque.btnDeletarClick(Sender: TObject);
begin
   MyShowMessage('Deseja Realmente Deletar esse registro?',true);
   case frmPrincipal.vMsgConfirma of
     1:begin
        dmDB.TLocalEstoque.Edit;
        dmDB.TLocalEstoquesyncaws.AsInteger            :=0;
        dmDB.TLocalEstoqueStatus.AsInteger             := -1;
        dmDB.TLocalEstoqueIdUsuarioAlteracao.AsString  := dmDB.vIdUsuarioLogado;
        dmDB.TLocalEstoqueDataAlteracao.AsDateTime     := now;
        try
          dmDB.TLocalEstoquesyncaws.AsInteger          :=0;
          dmDB.TLocalEstoque.ApplyUpdates(-1);
          MyShowMessage('Registro Excluido com sucesso!',false);
          dmDB.TLocalEstoque.Close;
          dmDB.TLocalEstoque.Open;
          lblFoterCout.Text := intToStr(StringGrid1.RowCount);
        except
         on E : Exception do
          ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
        end;
     end;
   end;
end;

procedure TfrmAuxLocalEstoque.btnEditarClick(Sender: TObject);
begin
  edtNome.Text             := dmDB.TLocalEstoquenome.AsString;
  edtCentroCusto.Text      := dmDB.TLocalEstoquecentrocusto.AsString;
  vIdCentroCusto           := dmDB.TLocalEstoqueidcentrocusto.AsString;
  vIdProduto               := dmDB.TLocalEstoqueidcombustivel.AsString;
  edtCombustivel.Text      := dmDB.TLocalEstoquecombustivel.AsString;
  edtIdErp.Text            := dmDB.TLocalEstoqueiderp.AsString;

  dmDB.TLocalEstoque.edit;
  inherited;
end;

procedure TfrmAuxLocalEstoque.btnSalvarClick(Sender: TObject);
begin
  if edtNome.Text.Length=0 then
  begin
    MyShowMessage('Informe o Nome!!',false);
    edtNome.SetFocus;
    Exit;
  end;
  if edtCentroCusto.Text.Length=0 then
  begin
    MyShowMessage('Informe o Centro de Custo!!',false);
    edtCentroCusto.SetFocus;
    Exit;
  end;
  if edtCombustivel.Text.Length=0 then
  begin
    MyShowMessage('Informe o Combustivel!!',false);
    edtCombustivel.SetFocus;
    Exit;
  end;
  dmDB.TLocalEstoquenome.AsString         := edtNome.Text;
  if dmDB.TLocalEstoque.State=dsEdit then
  begin
   dmDB.TLocalEstoqueIdUsuarioAlteracao.AsString  := dmDB.vIdUsuarioLogado;
   dmDB.TLocalEstoqueDataAlteracao.AsDateTime     := now;
  end;
  if dmDB.TLocalEstoque.State=dsInsert then
  begin
   if not dmDB.VerificaLocalEstoqueExiste(edtNome.Text,vIdCentroCusto) then
   begin
     MyShowMessage('Ja existe um Local Estoque com esse nome:'+edtNome.Text+#13+
     ' nesse centro de custo',false);
     Exit;
   end;
  end;
  dmDB.TLocalEstoqueIdUsuario.AsString       := dmDB.vIdUsuarioLogado;
  dmDB.TLocalEstoquesyncaws.AsInteger        :=0;
  dmDB.TLocalEstoqueidcentrocusto.AsString   :=vidCentroCusto;
  dmDB.TLocalEstoqueidcombustivel.AsString   :=vIdProduto;
  if edtIdErp.Text.Length>0 then
   dmdb.TLocalEstoqueiderp.AsString          := edtIdErp.Text;
  try
   dmDB.TLocalEstoque.ApplyUpdates(-1);
   dmDB.TLocalEstoque.Close;
   dmDB.TLocalEstoque.Open;
   lblFoterCout.Text := intToStr(StringGrid1.RowCount);
   MyShowMessage('Local Estoque Cadastrada com sucesso!',false);
   MudarAba(tbiLista,Sender);
  except
   on E : Exception do
     MyShowMessage('Erro ao Inserir Local Estoque:'+E.Message,false);
  end;
end;

procedure TfrmAuxLocalEstoque.Filtro;
var
 vFiltro:string;
 vFiltrado:integer;
begin
 vFiltrado :=0;
 if edtNomeFiltro.Text.Length>0 then
 begin
   vFiltro   := 'NOME LIKE '+QuotedStr('%'+edtNomeFiltro.Text+'%');
   vFiltrado :=1;
 end;
 if edtCentroCustoF.Text.Length>0 then
 begin
  if vFiltrado=0 then
   vFiltro   := 'CentroCusto LIKE '+QuotedStr('%'+edtCentroCustoF.Text+'%')
  else
   vFiltro   := vFiltro +' and CentroCusto LIKE '+QuotedStr('%'+edtCentroCustoF.Text+'%');
  vFiltrado :=1;
 end;

 if edtCombustivelF.Text.Length>0 then
 begin
  if vFiltrado=0 then
   vFiltro   := 'Combustivel LIKE '+QuotedStr('%'+edtCombustivelF.Text+'%')
  else
   vFiltro   := vFiltro +' and Combustivel LIKE '+QuotedStr('%'+edtCombustivelF.Text+'%');
  vFiltrado :=1;
 end;

 if vFiltrado=0 then
 begin
   dmDB.TLocalEstoque.Filtered := false;
   dmDB.TLocalEstoque.Close;
   dmDB.TLocalEstoque.Open;
 end
 else
 begin
   dmDB.TLocalEstoque.Filtered := false;
   dmDB.TLocalEstoque.Filter   := vFiltro;
   dmDB.TLocalEstoque.Filtered := true;
 end;
 lblFoterCout.Text := intToStr(StringGrid1.RowCount);
end;

procedure TfrmAuxLocalEstoque.FormKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if key=13 then
   if tbPrincipal.TabIndex=0 then
    Filtro;
end;

procedure TfrmAuxLocalEstoque.FormShow(Sender: TObject);
begin
 dmdb.AbrirLocalEstoque(vFiltro);
 inherited;
end;

procedure TfrmAuxLocalEstoque.SearchEditButton1Click(Sender: TObject);
begin
  frmCentroCusto := TfrmCentroCusto.Create(Self);
  try
    frmCentroCusto.ShowModal;
  finally
    vIdCentroCusto       := dmDB.TCentroCustoid.AsString;
    edtCentroCusto.Text  := dmDB.TCentroCustonome.AsString;
  end;
end;

procedure TfrmAuxLocalEstoque.SearchEditButton2Click(Sender: TObject);
begin
  frmCadProdutos := TfrmCadProdutos.Create(Self);
  try
    frmCadProdutos.ShowModal;
  finally
    vIdProduto           := dmDB.TProdutosid.AsString;
    edtCombustivel.Text  := dmDB.TProdutosnome.AsString;
  end;
end;

procedure TfrmAuxLocalEstoque.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
  Close;
end;

end.

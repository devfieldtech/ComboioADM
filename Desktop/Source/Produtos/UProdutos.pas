unit UProdutos;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FMX.ActnList,
  System.Actions, FMX.TabControl, FMX.Ani, FMX.ScrollBox, FMX.Grid, FMX.Edit,
  FMX.Controls.Presentation, FMX.Objects, FMX.Layouts, FMX.ListBox,Winapi.Windows,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.Menus,System.DateUtils;

type
  TfrmCadProdutos = class(TfrmCadPadrao)
    OpenImg: TOpenDialog;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    PopupMnuGrid: TPopupMenu;
    mnuVerImagem: TMenuItem;
    layImg: TLayout;
    Rectangle6: TRectangle;
    Layout17: TLayout;
    Layout18: TLayout;
    ToolBar4: TToolBar;
    Image10: TImage;
    imgVisualizar: TImage;
    lblNomeProduto: TLabel;
    Layout4: TLayout;
    Rectangle2: TRectangle;
    Layout1: TLayout;
    Layout6: TLayout;
    lblSegmento: TLabel;
    lblNome: TLabel;
    cbxTipo: TComboBox;
    edtNome: TEdit;
    ClearEditButton8: TClearEditButton;
    Layout7: TLayout;
    Rectangle3: TRectangle;
    Layout8: TLayout;
    Layout9: TLayout;
    Label10: TLabel;
    Label14: TLabel;
    Label6: TLabel;
    Label17: TLabel;
    edtCodBarras: TEdit;
    edtCodigoFabricante: TEdit;
    edtEstoqueMin: TEdit;
    cbxUnidadeMedida: TComboBox;
    Layout11: TLayout;
    Label20: TLabel;
    edtCodFabF: TEdit;
    ClearEditButton1: TClearEditButton;
    Layout14: TLayout;
    Rectangle5: TRectangle;
    Layout15: TLayout;
    Layout16: TLayout;
    Layout19: TLayout;
    Label4: TLabel;
    edtIdErp: TEdit;
    ClearEditButton13: TClearEditButton;
    procedure FormShow(Sender: TObject);
    procedure edtEstoqueMinKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure cbxSegmentoFChange(Sender: TObject);
    procedure edtCodFabFChange(Sender: TObject);
    procedure edtCodFabFExit(Sender: TObject);
    procedure chkInativoFChange(Sender: TObject);
    procedure cbxUnidadeMedidaKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure cbxCategoriaFKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure btnConfirmaClick(Sender: TObject);
    procedure edtCodFabFKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure edtNomeFiltroKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure btnBuscarFiltroClick(Sender: TObject);
  private
    LastTimeKeydown:TDatetime;
    Keys:string;
    procedure LimpaCampos;
  public
    vIdCategoriaF,vIdSegmento,vIdGrupoF,vIdSubGrupoF,vIdMarcaF,
    vIdSessao,vIdGrupo,vIdSubGrupo,vIdMarca:string;
    procedure CarregaCombos;
    procedure Filtro;
  end;

var
  frmCadProdutos: TfrmCadProdutos;

implementation

{$R *.fmx}

uses UPrincipal,UdmDB;

{ TfrmCadProdutos }

procedure TfrmCadProdutos.Filtro;
var
 vFiltrado:integer;
 vFiltro:string;
begin
 vFiltrado :=0;
 vFiltro   :='';
 dmdb.TUsuario.Filtered := false;
 if edtNomeFiltro.Text.Length>0 then
 begin
   vFiltrado :=1;
   vFiltro := 'AND NOME LIKE '+QuotedStr('%'+edtNomeFiltro.Text+'%');
 end;
 if edtCodFabF.Text.Length>0 then
 begin
   vFiltro := vFiltro+' and codigofabricante LIKE '+QuotedStr('%'+edtCodFabF.Text+'%');
   vFiltrado :=1;
 end;
 dmdb.AbreProdutos(vFiltro);
 lblFoterCout.Text := intToStr(StringGrid1.RowCount);
end;

procedure TfrmCadProdutos.btnAddClick(Sender: TObject);
begin
  LimpaCampos;
  dmdb.TProdutos.Close;
  dmdb.TProdutos.Open;
  dmdb.TProdutos.Insert;
  inherited;
end;

procedure TfrmCadProdutos.btnConfirmaClick(Sender: TObject);
var
  Stream: TMemoryStream;
begin
 if edtNome.Text.Length=0 then
 begin
   MyShowMessage('Informe o nome!',false);
   edtNome.SetFocus;
   Exit;
 end;
 if cbxTipo.ItemIndex=-1 then
 begin
   MyShowMessage('Informe o Tipo do Produto!',false);
   cbxTipo.SetFocus;
   Exit;
 end;
 if cbxUnidadeMedida.ItemIndex=-1 then
 begin
  MyShowMessage('Informe a Unidade de Medida!',false);
  cbxUnidadeMedida.SetFocus;
  Exit;
 end;
 if edtEstoqueMin.Text.Length=0 then
  edtEstoqueMin.Text :='0';
 if dmdb.TProdutos.State=dsInsert then
  dmdb.TProdutosIdUsuario.AsString          := dmdb.vIdUsuarioLogado
 else
 begin
  dmdb.TProdutosIdUsuarioAlteracao.AsString := dmdb.vIdUsuarioLogado;
  dmdb.TProdutosDataAlteracao.AsDateTime    := now;
 end;
 if cbxUnidadeMedida.ItemIndex>-1 then
  dmdb.TProdutosunidademedida.AsString      := cbxUnidadeMedida.Selected.Text;

 if edtCodigoFabricante.Text.Length>0 then
  dmdb.TProdutoscodigofabricante.AsString   := edtCodigoFabricante.Text;

 dmdb.TProdutosNome.AsString                := edtNome.Text;
 dmdb.TProdutosEstoqueMinimo.AsString       := edtEstoqueMin.Text;
 dmdb.TProdutosCodigoBarras.AsString        := edtCodBarras.Text;
 dmdb.TProdutostipo.AsInteger               := cbxTipo.ItemIndex;
 if edtIdErp.Text.Length>0 then
  dmdb.TMaquinasiderp.AsString              := edtIdErp.Text;
 try
  dmdb.TProdutos.ApplyUpdates(-1);
  MyShowMessage('Produto Cadastrado com Sucesso!',false);
  dmdb.AbreProdutos('');
  lblFoterCout.Text := intToStr(StringGrid1.RowCount);
  CarregaCombos;
  MudarAba(tbiLista,sender);
 except
   on E: Exception do
    myShowMessage('Erro ao salvar produto:'+E.Message,false);
 end;
end;

procedure TfrmCadProdutos.btnDeletarClick(Sender: TObject);
begin
  MyShowMessage('Deseja Realmente Deletar esse registro?',true);
   case frmPrincipal.vMsgConfirma of
     1:begin
        dmdb.TProdutos.Edit;
        dmdb.TProdutosStatus.AsInteger := -1;
        dmdb.TProdutosIdUsuarioAlteracao.AsString  := dmdb.vIdUsuarioLogado;
        dmdb.TProdutosDataAlteracao.AsDateTime     := now;
        try
          dmdb.TProdutos.ApplyUpdates(-1);
          MyShowMessage('Registro Excluido com sucesso!',false);
          dmdb.TProdutos.Close;
          dmdb.TProdutos.Open();
          Filtro;
        except
         on E : Exception do
          ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
        end;
     end;
   end;
end;

procedure TfrmCadProdutos.btnEditarClick(Sender: TObject);
var
 Stream : TMemoryStream;
begin
  edtNome.Text               := dmdb.TProdutosNome.AsString;
  edtEstoqueMin.Text         := dmdb.TProdutosEstoqueMinimo.AsString;
  edtCodBarras.Text          := dmdb.TProdutosCodigoBarras.AsString;
  cbxTipo.ItemIndex          := dmdb.TProdutostipo.AsInteger;
  cbxUnidadeMedida.ItemIndex := cbxUnidadeMedida.Items.IndexOf(dmdb.TProdutosunidademedida.AsString);
  edtCodigoFabricante.Text   := dmdb.TProdutoscodigofabricante.AsString;
  edtIdErp.Text              := dmdb.TProdutosiderp.AsString;
  dmdb.TProdutos.Edit;
  inherited;
end;

procedure TfrmCadProdutos.CarregaCombos;
begin
 TThread.CreateAnonymousThread(
 procedure
 begin
 end).Start;
end;

procedure TfrmCadProdutos.cbxCategoriaFKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
var
  aStr:string;
  I: Integer;
begin
  if key=vkReturn then exit;
  if (keychar in [chr(48)..chr(57)]) or (keychar in [chr(65)..chr(90)]) or (keychar in [chr(97)..chr(122)]) then begin
    if MilliSecondsBetween(LastTimeKeydown,Now)<500 then
      keys:=keys+keychar
    else
      keys:=keychar;
    LastTimeKeydown:=Now;
  end;
  inherited;
end;

procedure TfrmCadProdutos.cbxSegmentoFChange(Sender: TObject);
begin
 Filtro;
end;

procedure TfrmCadProdutos.cbxUnidadeMedidaKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
var
  aStr:string;
  I: Integer;
begin
  if key=vkReturn then exit;
  if (keychar in [chr(48)..chr(57)]) or (keychar in [chr(65)..chr(90)]) or (keychar in [chr(97)..chr(122)]) then begin
    if MilliSecondsBetween(LastTimeKeydown,Now)<500 then
      keys:=keys+keychar
    else
      keys:=keychar;
    LastTimeKeydown:=Now;
    for I := 0 to cbxUnidadeMedida.Items.Count-1 do
      if uppercase(copy(cbxUnidadeMedida.items[i],0,keys.length))=uppercase(keys) then begin
        cbxUnidadeMedida.itemindex:=i;
        exit;  //first item found is good
      end;
  end;
  inherited;
end;

procedure TfrmCadProdutos.chkInativoFChange(Sender: TObject);
begin
 Filtro;
end;

procedure TfrmCadProdutos.edtCodFabFChange(Sender: TObject);
begin
  Filtro;
end;

procedure TfrmCadProdutos.edtCodFabFExit(Sender: TObject);
begin
 Filtro;
end;

procedure TfrmCadProdutos.edtCodFabFKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if key=13 then
   Filtro;
end;

procedure TfrmCadProdutos.edtEstoqueMinKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if ((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmCadProdutos.edtNomeFiltroKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if key=13 then
   Filtro;
end;

procedure TfrmCadProdutos.FormShow(Sender: TObject);
begin
  dmdb.AbreProdutos('');
  lblFoterCout.Text := intToStr(StringGrid1.RowCount);
  inherited;
end;

procedure TfrmCadProdutos.Image10Click(Sender: TObject);
begin
 layImg.Visible := false;
end;

procedure TfrmCadProdutos.LimpaCampos;
begin
 edtCodigoFabricante.Text     :='';
 edtNome.Text                 :='';
 cbxTipo.ItemIndex        :=-1;
 cbxUnidadeMedida.ItemIndex   :=-1;
 edtEstoqueMin.Text           :='';
 edtCodBarras.Text            :='';
end;

procedure TfrmCadProdutos.btnBuscarFiltroClick(Sender: TObject);
begin
 Filtro;
end;

procedure TfrmCadProdutos.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
  Close;
end;

end.

unit UCadMaquina;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FMX.ActnList,
  System.Actions, FMX.TabControl, FMX.Ani, FMX.ScrollBox, FMX.Grid, FMX.Edit,
  FMX.Controls.Presentation, FMX.Objects, FMX.Layouts, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.ListBox,Winapi.Windows, FMX.Menus, FMX.WebBrowser, FMX.DateTimeCtrls;

type
  TfrmCadMaquinaVeiculo = class(TfrmCadPadrao)
    OpenImg: TOpenDialog;
    PopupMnuGrid: TPopupMenu;
    mnuVerImagem: TMenuItem;
    layImg: TLayout;
    Rectangle6: TRectangle;
    Layout17: TLayout;
    Layout18: TLayout;
    ToolBar4: TToolBar;
    lblNomeProduto: TLabel;
    Image10: TImage;
    imgVisualizar: TImage;
    Layout1: TLayout;
    Rectangle2: TRectangle;
    Layout2: TLayout;
    Layout4: TLayout;
    Layout6: TLayout;
    Label15: TLabel;
    Label18: TLabel;
    edtPlaca: TEdit;
    cbxAno: TComboBox;
    edtChassi: TEdit;
    lblPf: TLabel;
    edtPlacaF: TEdit;
    Label14: TLabel;
    edtPrefixoF: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    ClearEditButton1: TClearEditButton;
    ClearEditButton2: TClearEditButton;
    edtMarcaF: TEdit;
    SearchEditButton1: TSearchEditButton;
    ClearEditButton3: TClearEditButton;
    edtGrupoF: TEdit;
    SearchEditButton2: TSearchEditButton;
    ClearEditButton4: TClearEditButton;
    Label4: TLabel;
    edtSubGrupoF: TEdit;
    SearchEditButton3: TSearchEditButton;
    ClearEditButton5: TClearEditButton;
    Layout3: TLayout;
    Rectangle4: TRectangle;
    Layout11: TLayout;
    Layout12: TLayout;
    Layout13: TLayout;
    Label5: TLabel;
    Label13: TLabel;
    edtPrefixo: TEdit;
    ClearEditButton6: TClearEditButton;
    edtGrupo: TEdit;
    SearchEditButton4: TSearchEditButton;
    ClearEditButton7: TClearEditButton;
    Label7: TLabel;
    edtSubGrupo: TEdit;
    SearchEditButton5: TSearchEditButton;
    ClearEditButton8: TClearEditButton;
    Layout7: TLayout;
    Rectangle3: TRectangle;
    Layout8: TLayout;
    Layout9: TLayout;
    Layout10: TLayout;
    Label10: TLabel;
    Label11: TLabel;
    edtHorimetroAtual: TEdit;
    ClearEditButton9: TClearEditButton;
    edtKmAtual: TEdit;
    ClearEditButton10: TClearEditButton;
    Label9: TLabel;
    cbxTipoMedicao: TComboBox;
    Label6: TLabel;
    GridMaquinas: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Layout14: TLayout;
    Rectangle5: TRectangle;
    Layout15: TLayout;
    Layout16: TLayout;
    Layout19: TLayout;
    Label17: TLabel;
    edtIdErp: TEdit;
    ClearEditButton13: TClearEditButton;
    Label8: TLabel;
    edtQrCodeF: TEdit;
    ClearEditButton14: TClearEditButton;
    Label16: TLabel;
    edtVolumeLitros: TEdit;
    ClearEditButton15: TClearEditButton;
    Label21: TLabel;
    edtQrCod: TEdit;
    ClearEditButton16: TClearEditButton;
    btnExcel: TRectangle;
    Image11: TImage;
    Label22: TLabel;
    btnRepConsumo: TRectangle;
    Image1: TImage;
    Label23: TLabel;
    SaveDialog1: TSaveDialog;
    Layout20: TLayout;
    Rectangle7: TRectangle;
    Layout21: TLayout;
    Layout22: TLayout;
    Layout23: TLayout;
    Label24: TLabel;
    Label25: TLabel;
    edtModelo: TEdit;
    ClearEditButton12: TClearEditButton;
    SearchEditButton7: TSearchEditButton;
    edtMarca: TEdit;
    SearchEditButton6: TSearchEditButton;
    ClearEditButton11: TClearEditButton;
    Label12: TLabel;
    edtHorimetroAcumulado: TEdit;
    ClearEditButton17: TClearEditButton;
    procedure btnAddClick(Sender: TObject);
    procedure EditButton4Click(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure edtValorKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure mnuVerImagemClick(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure StringGrid1CellClick(const Column: TColumn; const Row: Integer);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure SearchEditButton1Click(Sender: TObject);
    procedure SearchEditButton2Click(Sender: TObject);
    procedure SearchEditButton3Click(Sender: TObject);
    procedure btnBuscarFiltroClick(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure GridMaquinasCellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure edtIdErpKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure edtVolumeLitrosKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure btnExcelClick(Sender: TObject);
    procedure btnRepConsumoClick(Sender: TObject);
    procedure SearchEditButton7Click(Sender: TObject);
  private
    vIdMarca,vIdGrupo,vIdSubgrupo:string;
  public
    vFilter    :integer;
    vIdMaquina,vIdModelo :string;
    procedure LimpaCampos;
    procedure Filtro;
  end;

var
  frmCadMaquinaVeiculo: TfrmCadMaquinaVeiculo;

implementation

{$R *.fmx}

uses UPrincipal, UAuxMarcas,uFormat,UdmDB, UAuxGrupo, UAuxSubGrupo, UdmReport,
  UModeloMaquina;

procedure TfrmCadMaquinaVeiculo.btnAddClick(Sender: TObject);
begin
  vFilter            :=1;
  LimpaCampos;
  dmdb.TMaquinas.Close;
  dmdb.TMaquinas.Open;
  dmdb.TMaquinas.Insert;
  inherited;
end;

procedure TfrmCadMaquinaVeiculo.btnBuscarClick(Sender: TObject);
begin
 if layFiltros.Height =0 then
  layFiltros.Height  := 140
 else
   layFiltros.Height := 0;
end;

procedure TfrmCadMaquinaVeiculo.btnBuscarFiltroClick(Sender: TObject);
begin
  Filtro;
end;

procedure TfrmCadMaquinaVeiculo.btnCancelaClick(Sender: TObject);
begin
  vFilter       :=0;
  inherited;
end;

procedure TfrmCadMaquinaVeiculo.btnConfirmaClick(Sender: TObject);
var
  Stream: TMemoryStream;
  vValidaQr:string;
begin
 if edtPrefixo.Text.Length=0 then
 begin
  MyShowMessage('Informe o Prefixo!',false);
  edtPrefixo.SetFocus;
  Exit;
 end;
 if edtGrupo.Text.Length=0 then
 begin
  MyShowMessage('Informe o Grupo!',false);
  edtGrupo.SetFocus;
  Exit;
 end;
 if edtSubGrupo.Text.Length=0 then
 begin
  MyShowMessage('Informe o Subgrupo!',false);
  edtSubGrupo.SetFocus;
  Exit;
 end;

 if edtMarca.Text.Length=0 then
 begin
  MyShowMessage('Informe a Marca!',false);
  edtMarca.SetFocus;
  Exit;
 end;
 if edtModelo.Text.Length=0 then
 begin
  MyShowMessage('Informe o Modelo!',false);
  edtModelo.SetFocus;
  Exit;
 end;
 if cbxTipoMedicao.ItemIndex=-1 then
 begin
   MyShowMessage('Informe o Tipo de Medição!',false);
   cbxTipoMedicao.SetFocus;
   Exit;
 end;
 if dmdb.TMaquinas.State=dsInsert then
 begin
  if edtQrCod.Text.Length>0 then
  begin
   vValidaQr  := dmdb.ValidaQrCodUsadoInsert(edtQrCod.Text);
   if vValidaQr<>'OK' then
   begin
     MyShowMessage(vValidaQr,false);
     Exit;
   end;
  end;
  dmdb.TMaquinasIdUsuario.AsString          := dmdb.vIdUsuarioLogado
 end
 else
 begin
  if edtQrCod.Text.Length>0 then
  begin
   vValidaQr  := dmdb.ValidaQrCodUsado(dmdb.TMaquinasId.AsString,edtQrCod.Text);
   if vValidaQr<>'OK' then
   begin
     MyShowMessage(vValidaQr,false);
     Exit;
   end;
  end;
  dmdb.TMaquinasIdUsuarioAlteracao.AsString := dmdb.vIdUsuarioLogado;
  dmdb.TMaquinasDataAlteracao.AsDateTime    := now;
 end;
 dmdb.TMaquinasprefixo.AsString             := edtPrefixo.Text;
 dmdb.TMaquinasidgrupo.AsString             := vIdGrupo;
 dmdb.TMaquinasidsubgrupo.AsString          := vIdSubGrupo;
 dmdb.TMaquinasidmarca.AsString             := vIdMarca;
 dmdb.TMaquinasmodelo.AsString              := edtModelo.Text;
 if edtPlaca.Text.Length>0 then
  dmdb.TMaquinasplaca.AsString              := edtPlaca.Text;
 if cbxAno.ItemIndex>-1 then
  dmdb.TMaquinasano.AsString                := cbxAno.Selected.Text;
 if edtChassi.Text.Length>0 then
  dmdb.TMaquinaschassi.AsString             := edtChassi.Text;
 dmdb.TMaquinastipomedicao.AsInteger        := cbxTipoMedicao.ItemIndex;
 if edtIdErp.Text.Length>0 then
  dmdb.TMaquinasiderp.AsString              := edtIdErp.Text;
  dmdb.TMaquinasvolumetanque.AsString       := edtVolumeLitros.Text;

 if (edtQrCod.Text.Length>0)then
   dmdb.TMaquinasqrcode.AsString              := edtQrCod.Text;

  if edtHorimetroAtual.Text.Length>0 then
   dmdb.TMaquinashorimetroatual.AsString      := edtHorimetroAtual.Text;

  if edtKmAtual.Text.Length>0 then
   dmdb.TMaquinaskmatual.AsString             := edtKmAtual.Text;

  if edtHorimetroAcumulado.Text.Length>0 then
    dmdb.TMaquinashorimetroacumulado.AsString := edtHorimetroAcumulado.Text;

  dmdb.TMaquinasidmodelo.AsString           := vIdModelo;
 try
  dmdb.TMaquinas.ApplyUpdates(-1);
  MyShowMessage('Maquina Cadastrado com Sucesso!',false);
  dmdb.TMaquinas.Close;
  dmdb.TMaquinas.Open;
  vFilter       :=0;
  MudarAba(tbiLista,sender);
 except
   on E: Exception do
    myShowMessage('Erro ao salvar Maquina:'+E.Message,false);
 end;
end;

procedure TfrmCadMaquinaVeiculo.btnDeletarClick(Sender: TObject);
begin
   MyShowMessage('Deseja Realmente Deletar esse registro?',true);
   case frmPrincipal.vMsgConfirma of
     1:begin
        dmdb.TMaquinas.Edit;
        dmdb.TMaquinasStatus.AsInteger := -1;
        dmdb.TMaquinasIdUsuarioAlteracao.AsString  := dmdb.vIdUsuarioLogado;
        dmdb.TMaquinasDataAlteracao.AsDateTime     := now;
        try
          dmdb.TMaquinas.ApplyUpdates(-1);
          MyShowMessage('Registro Excluido com sucesso!',false);
          dmdb.TMaquinas.Close;
          dmdb.TMaquinas.Open();
        except
         on E : Exception do
          ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
        end;
     end;
   end;
end;

procedure TfrmCadMaquinaVeiculo.btnEditarClick(Sender: TObject);
var
 Stream : TMemoryStream;
begin
 vFilter                      :=1;
 edtPrefixo.Text              := dmdb.TMaquinasprefixo.AsString;
 vIdGrupo                     := dmdb.TMaquinasidgrupo.AsString;
 vIdSubgrupo                  := dmdb.TMaquinasidsubgrupo.AsString;
 vIdMarca                     := dmdb.TMaquinasidmarca.AsString;
 edtGrupo.Text                := dmdb.TMaquinasgrupo.AsString;
 edtSubGrupo.Text             := dmdb.TMaquinassubgrupo.AsString;
 edtMarca.Text                := dmdb.TMaquinasmarca.AsString;
 edtModelo.Text               := dmdb.TMaquinasmodelo.AsString;
 edtPlaca.Text                := dmdb.TMaquinasplaca.AsString;
 cbxAno.ItemIndex             := cbxAno.Items.IndexOf(dmdb.TMaquinasano.AsString);
 edtChassi.Text               := dmdb.TMaquinaschassi.AsString;
 cbxTipoMedicao.ItemIndex     := dmdb.TMaquinastipomedicao.AsInteger;
 edtIdErp.Text                := dmdb.TMaquinasiderp.AsString;
 edtVolumeLitros.Text         := dmdb.TMaquinasvolumetanque.AsString;
 edtQrCod.Text                := dmdb.TMaquinasqrcode.AsString;
 edtHorimetroAtual.Text       := dmdb.TMaquinashorimetroatual.AsString;
 edtKmAtual.Text              := dmdb.TMaquinaskmatual.AsString;
 vIdModelo                    := dmdb.TMaquinasidmodelo.AsString;
 edtHorimetroAcumulado.Text   := dmdb.TMaquinashorimetroacumulado.AsString;
 dmdb.TMaquinas.Edit;
 inherited;
end;
procedure TfrmCadMaquinaVeiculo.btnExcelClick(Sender: TObject);
var
 csv: tstringlist;
 row, col: integer;
 s: string;
begin
 if SaveDialog1.Execute then
 begin
   csv:= tstringlist.create;
   for row:= 1 to GridMaquinas.rowcount do
    begin
     s:= '';
     if row=1 then
     begin
       for col:= 0 to GridMaquinas.ColumnCount-1 do
        s:= s + GridMaquinas.Columns[col].Header + ';';
       csv.add(s)
     end
     else
     begin
       for col:= 0 to GridMaquinas.ColumnCount-1 do
        s:= s + GridMaquinas.Cells[col, row-1] + ';';
       csv.add(s)
     end;
    end;
   csv.savetofile(SaveDialog1.FileName);
   csv.free;
 end;
end;

procedure TfrmCadMaquinaVeiculo.btnRepConsumoClick(Sender: TObject);
begin
 if dmdb.Tmaquinas.IsEmpty then
 begin
   MyShowMessage('Sem dados para gerar o relatorio!',false);
   Exit;
 end
 else
  dmReport.ppRepMaquinas.PrintReport;
end;

procedure TfrmCadMaquinaVeiculo.btnVoltarClick(Sender: TObject);
begin
  vFilter       :=0;
  inherited;
end;



procedure TfrmCadMaquinaVeiculo.EditButton4Click(Sender: TObject);
begin
  frmCadAuxMarcas := TfrmCadAuxMarcas.Create(Self);
  try
    frmCadAuxMarcas.ShowModal;
  finally
    vIdMarca      := dmdb.TAuxMarcaid.AsString;
    edtMarca.Text := dmdb.TAuxMarcanome.AsString;
  end;
end;

procedure TfrmCadMaquinaVeiculo.edtIdErpKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if ((keyChar in ['0'..'9'] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmCadMaquinaVeiculo.edtValorKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if ((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmCadMaquinaVeiculo.edtVolumeLitrosKeyUp(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if ((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmCadMaquinaVeiculo.Filtro;
var
 vFiltro:string;
begin
 vFiltro := 'status=1';
 if edtPrefixoF.Text.Length>0 then
   vFiltro := vFiltro+' and prefixo like'+ QuotedStr('%'+edtPrefixoF.Text+'%');

 if edtPlacaF.Text.Length>0 then
   vFiltro := vFiltro+' and placa like'+QuotedStr('%'+edtPlacaF.Text+'%');

 if edtNomeFiltro.Text.Length>0 then
   vFiltro := vFiltro+'and modelo like '+QuotedStr('%'+edtNomeFiltro.Text+'%');

 if edtMarcaF.Text.Length>0 then
  vFiltro := vFiltro+' and idmarca='+vIdMarca;

 if edtGrupoF.Text.Length>0 then
   vFiltro := vFiltro+' and idgrupo ='+vIdGrupo;

 if edtSubGrupoF.Text.Length>0 then
   vFiltro := vFiltro+' and idsubgrupo ='+vIdSubgrupo;

 if edtQrCodeF.Text.Length>0 then
   vFiltro := vFiltro+' and qrcode ='+edtQrCodeF.Text;

 dmdb.AbreMaquinas(vFiltro);
 lblFoterCout.Text := intToStr(GridMaquinas.RowCount)
end;

procedure TfrmCadMaquinaVeiculo.FormKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if(tbPrincipal.TabIndex=0) and (key=13) then
  Filtro;
end;

procedure TfrmCadMaquinaVeiculo.FormShow(Sender: TObject);
begin
  vFilter            :=0;
  layImg.Visible     := false;
  lblAdd.Text        := 'Adicionar';
  lblEdit.Text       := 'Editar';
  lblDeleta.Text     := 'Deletar';
  layListaMnu.Width  := 150;
  tbPrincipal.TabPosition := TTabPosition.None;
  tbPrincipal.ActiveTab   := tbiLista;
  dmdb.AbreMaquinas('');
  lblFoterCout.Text := intToStr(GridMaquinas.RowCount)
end;

procedure TfrmCadMaquinaVeiculo.GridMaquinasCellDblClick(const Column: TColumn;
  const Row: Integer);
begin
 Close;
end;

procedure TfrmCadMaquinaVeiculo.Image10Click(Sender: TObject);
begin
 layImg.Visible := false;
end;

procedure TfrmCadMaquinaVeiculo.LimpaCampos;
begin
 edtModelo.Text               :='';
 edtMarca.Text                :='';
 edtGrupo.Text                :='';
 edtSubGrupo.Text             :='';
 edtPlaca.Text                :='';
 cbxAno.ItemIndex             :=-1;
 cbxTipoMedicao.ItemIndex     :=-1;
 edtChassi.Text               :='';
 edtPrefixo.Text              :='';
 edtIdErp.Text                :='';
 edtVolumeLitros.Text         :='0';
 edtQrCod.Text                :='';
 edtHorimetroAtual.Text       :='';
 edtKmAtual.Text              :='';
 edtHorimetroAcumulado.Text   :='';
end;

procedure TfrmCadMaquinaVeiculo.MenuItem1Click(Sender: TObject);
var
 I:integer;
begin
 vIdMaquina :='1';
 for I := 0 to StringGrid1.RowCount -1 do
 begin
   StringGrid1.Cells[0,i]:='True';
 end;
end;

procedure TfrmCadMaquinaVeiculo.MenuItem2Click(Sender: TObject);
var
 I:integer;
begin
 vIdMaquina :='';
 for I := 0 to StringGrid1.RowCount -1 do
 begin
   StringGrid1.Cells[0,i]:='False';
 end;
end;

procedure TfrmCadMaquinaVeiculo.mnuVerImagemClick(Sender: TObject);
var
 Stream : TMemoryStream;
begin
  if dmdb.TMaquinasImg.AsString.Length>0 then
  begin
   Stream := TMemoryStream.Create;
   dmdb.TMaquinasImg.SaveToStream(Stream);
   imgVisualizar.Bitmap.LoadFromStream(Stream);
   lblNomeProduto.Text  := dmdb.TMaquinasModelo.AsString;
   layImg.Visible := true;
  end
  else
    MyShowMessage('Maquina sem Imagem para Exibir',false);
end;

procedure TfrmCadMaquinaVeiculo.SearchEditButton1Click(Sender: TObject);
begin
  frmCadAuxMarcas := TfrmCadAuxMarcas.Create(Self);
  try
    frmCadAuxMarcas.ShowModal;
  finally
    vIdMarca        := dmdb.TAuxMarcaid.AsString;
    if vFilter=0 then
     edtMarcaF.Text := dmdb.TAuxMarcanome.AsString;
    if vFilter=1 then
     edtMarca.Text  := dmdb.TAuxMarcanome.AsString;
    frmCadAuxMarcas.Free;
  end;
end;

procedure TfrmCadMaquinaVeiculo.SearchEditButton2Click(Sender: TObject);
begin
 frmAuxGrupo := TfrmAuxGrupo.Create(Self);
  try
    frmAuxGrupo.ShowModal;
  finally
    vIdGrupo := dmdb.TAuxGrupoMaquinasid.AsString;
    if vFilter=0 then
     edtGrupoF.Text := dmdb.TAuxGrupoMaquinasnome.AsString;
    if vFilter=1 then
     edtGrupo.Text  := dmdb.TAuxGrupoMaquinasnome.AsString;
    frmAuxGrupo.Free;
  end;
end;

procedure TfrmCadMaquinaVeiculo.SearchEditButton3Click(Sender: TObject);
begin
  frmAuxSubGrupo := TfrmAuxSubGrupo.Create(Self);
  try
    frmAuxSubGrupo.ShowModal;
  finally
    vIdSubGrupo := dmdb.TAuxSubGrupoid.AsString;
    if vFilter=0 then
     edtSubGrupoF.Text := dmdb.TAuxSubGruponome.AsString;
    if vFilter=1 then
     edtSubGrupo.Text  := dmdb.TAuxSubGruponome.AsString;
    frmAuxSubGrupo.Free;
  end;
end;

procedure TfrmCadMaquinaVeiculo.SearchEditButton7Click(Sender: TObject);
begin
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

procedure TfrmCadMaquinaVeiculo.StringGrid1CellClick(const Column: TColumn;
  const Row: Integer);
begin
 vIdMaquina := dmdb.TMaquinasid.AsString;
end;

procedure TfrmCadMaquinaVeiculo.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
 vIdMaquina := dmdb.TMaquinasid.AsString;
 if StringGrid1.ColumnIndex>0 then
  Close
 else
  StringGrid1.Cells[0,StringGrid1.Row]:='True';
end;

end.

unit UChekListModelo;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FMX.ActnList,
  System.Actions, FMX.TabControl, FMX.Ani, FMX.ScrollBox, FMX.Grid, FMX.Edit,
  FMX.Objects, FMX.Controls.Presentation, FMX.Layouts, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.ListBox, FMX.Memo.Types, FMX.Memo, FMX.Menus;

type
  TfrmChekListGeneric = class(TfrmCadPadrao)
    Label4: TLabel;
    layDet: TLayout;
    Layout1: TLayout;
    Rectangle2: TRectangle;
    btnItemNovo: TRectangle;
    Image1: TImage;
    Label5: TLabel;
    btnExcluiItem: TRectangle;
    Image9: TImage;
    Label6: TLabel;
    btnItemEdit: TRectangle;
    Image10: TImage;
    Label7: TLabel;
    GridDet: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    Rectangle6: TRectangle;
    Layout3: TLayout;
    Label8: TLabel;
    edtNome: TEdit;
    layItem: TLayout;
    Rectangle7: TRectangle;
    Layout2: TLayout;
    Layout4: TLayout;
    ToolBar2: TToolBar;
    Rectangle8: TRectangle;
    Label9: TLabel;
    Image12: TImage;
    Rectangle9: TRectangle;
    Layout6: TLayout;
    Rectangle10: TRectangle;
    Layout7: TLayout;
    Label10: TLabel;
    edtItem: TEdit;
    Rectangle11: TRectangle;
    Layout8: TLayout;
    Label11: TLabel;
    edtItemDescricao: TEdit;
    Rectangle12: TRectangle;
    Layout9: TLayout;
    Label12: TLabel;
    cbxFotoObrigatoria: TComboBox;
    Layout10: TLayout;
    btnConfirmaItem: TRectangle;
    Label14: TLabel;
    Image13: TImage;
    btnRep: TRectangle;
    Image11: TImage;
    Label13: TLabel;
    Rectangle3: TRectangle;
    Layout11: TLayout;
    Label15: TLabel;
    edtDescricao: TMemo;
    Label16: TLabel;
    cbxtransferencia: TComboBox;
    StringGrid2: TStringGrid;
    Label17: TLabel;
    edtGrupoItem: TEdit;
    SearchEditButton1: TSearchEditButton;
    ClearEditButton1: TClearEditButton;
    LinkGridToDataSourceBindSourceDB22: TLinkGridToDataSource;
    Rectangle4: TRectangle;
    Layout12: TLayout;
    Label18: TLabel;
    edtGrupo: TEdit;
    SearchEditButton4: TSearchEditButton;
    ClearEditButton7: TClearEditButton;
    Label19: TLabel;
    edtGrupoF: TEdit;
    SearchEditButton2: TSearchEditButton;
    ClearEditButton2: TClearEditButton;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    Layout13: TLayout;
    btnSalvarItens: TRectangle;
    Label20: TLabel;
    Image14: TImage;
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnBuscarFiltroClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnConfirmaItemClick(Sender: TObject);
    procedure btnItemNovoClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnItemEditClick(Sender: TObject);
    procedure btnExcluiItemClick(Sender: TObject);
    procedure btnRepClick(Sender: TObject);
    procedure SearchEditButton1Click(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure SearchEditButton4Click(Sender: TObject);
    procedure SearchEditButton2Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure btnSalvarItensClick(Sender: TObject);
    procedure StringGrid2CellClick(const Column: TColumn; const Row: Integer);
  private
    { Private declarations }
  public
    vIdGrupoItem,vIdGrupo:string;
    vFilter:integer;
  end;

var
  frmChekListGeneric: TfrmChekListGeneric;

implementation

{$R *.fmx}

uses UdmDB, UPrincipal, UdmReport2, UAuxCheckListGrupo, UAuxGrupo;

procedure TfrmChekListGeneric.btnAddClick(Sender: TObject);
begin
  edtNome.Text      := '';
  edtDescricao.Text := '';
  edtGrupo.Text     := '';
  cbxtransferencia.ItemIndex :=0;
  dmdb.cheklistgeneric.Close;
  dmdb.cheklistgeneric.Open;
  dmdb.cheklistgeneric.Insert;
  inherited;
end;

procedure TfrmChekListGeneric.btnBuscarFiltroClick(Sender: TObject);
var
 vFiltrado :integer;
 vFiltro:String;
begin
 if edtNomeFiltro.Text.Length>0 then
 begin
   vFiltro   := 'NOME LIKE '+QuotedStr('%'+edtNomeFiltro.Text+'%');
   vFiltrado :=1;
 end
 else
   vFiltrado :=0;

 if edtGrupoF.Text.Length>0 then
 begin
   if vFiltrado=0 then
    vFiltro   := 'idgrupomaquinas='+vIdGrupo
   else
    vFiltro   := vFiltro+' and idgrupomaquinas='+vIdGrupo;
    vFiltrado :=1;
 end;
 if vFiltrado=1 then
 begin
  dmdb.cheklistgeneric.Filtered := false;
  dmdb.cheklistgeneric.Filter   := vFiltro;
  dmdb.cheklistgeneric.Filtered := true;
 end
 else
 begin
  dmdb.cheklistgeneric.Filtered := false;
  dmdb.cheklistgeneric.Close;
  dmdb.cheklistgeneric.Open;
 end;
end;

procedure TfrmChekListGeneric.btnConfirmaItemClick(Sender: TObject);
begin
  if edtItemDescricao.Text.Length=0 then
  begin
    MyShowMessage('Informe a Descrição!!',false);
    edtItemDescricao.SetFocus;
    Exit;
  end;
  if edtGrupoItem.Text.Length=0 then
  begin
    MyShowMessage('Informe o Grupo!!',false);
    edtGrupoItem.SetFocus;
    Exit;
  end;
  dmdb.detcheklistgenericidcheck.AsString               := dmdb.cheklistgenericid.AsString;
  dmdb.detcheklistgenericdescricao.AsString             := edtItemDescricao.Text;
  dmdb.detcheklistgenericitem.AsString                  := edtItem.Text;
  dmdb.detcheklistgenericitemfotoobrigatoria.AsInteger  := cbxFotoObrigatoria.ItemIndex;
  dmdb.detcheklistgenericidusuario.AsString             := dmdb.vIdUsuarioLogado;
  dmdb.detcheklistgenericidgrupo.AsString               := vIdGrupoItem;

  if dmdb.detcheklistgeneric.State=dsEdit then
  begin
   dmdb.detcheklistgenericIdUsuarioAlteracao.AsString  := dmdb.vIdUsuarioLogado;
   dmdb.detcheklistgenericDataAlteracao.AsDateTime     := now;
  end;
  if dmdb.detcheklistgeneric.State=dsInsert then
  begin
   if not dmdb.VerificaCadastroExiste('DESCRICAO','detcheklistgeneric',edtItemDescricao.Text) then
   begin
     MyShowMessage('Ja existe uma Item com essa Descricao:'+edtNome.Text,false);
     Exit;
   end;
  end;
  try
   dmdb.detcheklistgeneric.ApplyUpdates(-1);
   dmdb.detcheklistgeneric.Close;
   dmdb.detcheklistgeneric.Open();
   dmdb.detcheklistgeneric.Insert;
   edtItem.Text := dmdb.RetornaNumeroItemCheck(dmdb.cheklistgenericid.AsString);
   edtItemDescricao.Text        :='';
   cbxFotoObrigatoria.ItemIndex :=0;
   MyShowMessage('Item adicionado com sucesso!',false);
  except
   on E : Exception do
     MyShowMessage('Erro ao Item Chek:'+E.Message,false);
  end;
end;

procedure TfrmChekListGeneric.btnDeletarClick(Sender: TObject);
begin
   MyShowMessage('Deseja Realmente Deletar esse registro?',true);
   case frmPrincipal.vMsgConfirma of
     1:begin
        dmdb.cheklistgeneric.Edit;
        dmdb.cheklistgenericStatus.AsInteger := -1;
        dmdb.cheklistgenericIdUsuarioAlteracao.AsString  := dmdb.vIdUsuarioLogado;
        dmdb.cheklistgenericDataAlteracao.AsDateTime     := now;
        try
          dmdb.cheklistgeneric.ApplyUpdates(-1);
          MyShowMessage('Registro Excluido com sucesso!',false);
          dmdb.cheklistgeneric.Close;
          dmdb.cheklistgeneric.Open();
        except
         on E : Exception do
          ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
        end;
     end;
   end;
   lblFoterCout.Text := intToStr(StringGrid1.RowCount);
end;

procedure TfrmChekListGeneric.btnEditarClick(Sender: TObject);
begin
  edtNome.Text               := dmdb.cheklistgenericnome.AsString;
  edtGrupo.Text              := dmdb.cheklistgenericgrupomaquina.AsString;
  edtDescricao.Text          := dmdb.cheklistgenericdescricao.AsString;
  cbxtransferencia.ItemIndex := dmdb.cheklistgenerictransferencia.AsInteger;
  dmdb.cheklistgeneric.Edit;
  vIdGrupo                   :=  dmdb.cheklistgenericidgrupomaquinas.AsString;
  inherited;
end;

procedure TfrmChekListGeneric.btnExcluiItemClick(Sender: TObject);
begin
   MyShowMessage('Deseja Realmente Deletar esse registro?',true);
   case frmPrincipal.vMsgConfirma of
     1:begin
        dmdb.detcheklistgeneric.Edit;
        dmdb.detcheklistgenericStatus.AsInteger := -1;
        dmdb.detcheklistgenericIdUsuarioAlteracao.AsString  := dmdb.vIdUsuarioLogado;
        dmdb.detcheklistgenericDataAlteracao.AsDateTime     := now;
        try
          dmdb.detcheklistgeneric.ApplyUpdates(-1);
          dmdb.ReorganizaItem(dmdb.cheklistgenericid.AsString);
          MyShowMessage('Registro Excluido com sucesso!',false);
          dmdb.detcheklistgeneric.Close;
          dmdb.detcheklistgeneric.Open();
        except
         on E : Exception do
          ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
        end;
     end;
   end;
end;

procedure TfrmChekListGeneric.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmChekListGeneric.btnItemEditClick(Sender: TObject);
begin
 btnConfirmaItem.Visible := false;
 if dmdb.cheklistgenericid.AsString.Length>0 then
 begin
  dmdb.detcheklistgeneric.edit;
  edtItem.Text                 := dmdb.detcheklistgenericitem.AsString;
  edtItemDescricao.Text        := dmdb.detcheklistgenericdescricao.AsString;
  cbxFotoObrigatoria.ItemIndex := dmdb.detcheklistgenericitemfotoobrigatoria.AsInteger;
  edtGrupoItem.Text            := dmdb.detcheklistgenericGrupo.AsString;
  vIdGrupoItem                 := dmdb.detcheklistgenericidgrupo.AsString;
  layItem.Visible := true;
 end
 else
   MyShowMessage('Selecione o Check list',false);
end;

procedure TfrmChekListGeneric.btnItemNovoClick(Sender: TObject);
begin
 btnConfirmaItem.Visible := true;
 if dmdb.cheklistgenericid.AsString.Length>0 then
 begin
  dmdb.detcheklistgeneric.Insert;
  edtItem.Text := dmdb.RetornaNumeroItemCheck(dmdb.cheklistgenericid.AsString);
  edtItemDescricao.Text        :='';
  edtGrupoItem.Text            :='';
  cbxFotoObrigatoria.ItemIndex :=0;
  layItem.Visible := true;
 end
 else
   MyShowMessage('Selecione o Check list',false);
end;

procedure TfrmChekListGeneric.btnRepClick(Sender: TObject);
begin
  dmReport2.RepCheckModelo.PrintReport;
end;

procedure TfrmChekListGeneric.btnSalvarClick(Sender: TObject);
begin
 if edtNome.Text.Length=0 then
  begin
    MyShowMessage('Informe o Nome!!',false);
    edtNome.SetFocus;
    Exit;
  end;
  if edtDescricao.Text.Length=0 then
  begin
    MyShowMessage('Informe uma Descrição!!',false);
    edtDescricao.SetFocus;
    Exit;
  end;
  if edtGrupo.Text.Length=0 then
  begin
    MyShowMessage('Informe uma Grupo de Maquinas!!',false);
    edtDescricao.SetFocus;
    Exit;
  end;
  dmdb.cheklistgenericnome.AsString       := edtNome.Text;
  dmdb.cheklistgenericdescricao.AsString  := edtDescricao.Text;
  if dmdb.cheklistgeneric.State=dsEdit then
  begin
   dmdb.cheklistgenericIdUsuarioAlteracao.AsString  := dmdb.vIdUsuarioLogado;
   dmdb.cheklistgenericDataAlteracao.AsDateTime     := now;
  end;
  if dmdb.cheklistgeneric.State=dsInsert then
  begin
   if not dmdb.VerificaCadastroExiste('NOME','cheklistgeneric',edtNome.Text) then
   begin
     MyShowMessage('Ja existe uma Chek List com esse nome:'+edtNome.Text,false);
     Exit;
   end;
   dmdb.cheklistgenericIdUsuario.AsString := dmdb.vIdUsuarioLogado;
  end;
  dmdb.cheklistgenerictransferencia.AsInteger   := cbxtransferencia.ItemIndex;
  dmdb.cheklistgenericidgrupomaquinas.AsString  := vidgrupo;
  try
   dmdb.cheklistgeneric.ApplyUpdates(-1);
   dmdb.cheklistgeneric.Close;
   dmdb.cheklistgeneric.Open();
   MudarAba(tbiLista,sender);
   lblFoterCout.Text := intToStr(StringGrid1.RowCount)
  except
   on E : Exception do
     MyShowMessage('Erro ao Inserir Chek:'+E.Message,false);
  end;

end;

procedure TfrmChekListGeneric.btnSalvarItensClick(Sender: TObject);
begin
  if dmdb.detcheklistgeneric.State=dsEdit then
  begin
   if edtItemDescricao.Text.Length=0 then
    begin
      MyShowMessage('Informe a Descrição!!',false);
      edtItemDescricao.SetFocus;
      Exit;
    end;
    if edtGrupoItem.Text.Length=0 then
    begin
      MyShowMessage('Informe o Grupo!!',false);
      edtGrupoItem.SetFocus;
      Exit;
    end;
    dmdb.detcheklistgenericidcheck.AsString               := dmdb.cheklistgenericid.AsString;
    dmdb.detcheklistgenericdescricao.AsString             := edtItemDescricao.Text;
    dmdb.detcheklistgenericitem.AsString                  := edtItem.Text;
    dmdb.detcheklistgenericitemfotoobrigatoria.AsInteger  := cbxFotoObrigatoria.ItemIndex;
    dmdb.detcheklistgenericidgrupo.AsString               := vIdGrupoItem;
    dmdb.detcheklistgenericIdUsuarioAlteracao.AsString    := dmdb.vIdUsuarioLogado;
    dmdb.detcheklistgenericDataAlteracao.AsDateTime       := now;
    try
     dmdb.detcheklistgeneric.ApplyUpdates(-1);
     dmdb.detcheklistgeneric.Close;
     dmdb.detcheklistgeneric.Open();
     edtItem.Text := dmdb.RetornaNumeroItemCheck(dmdb.cheklistgenericid.AsString);
     edtItemDescricao.Text        :='';
     cbxFotoObrigatoria.ItemIndex :=0;
     MyShowMessage('Item Atualizaddo com sucesso!',false);
    except
     on E : Exception do
       MyShowMessage('Erro ao atualizar Item Chek:'+E.Message,false);
    end;
  end;
end;

procedure TfrmChekListGeneric.FormShow(Sender: TObject);
begin
  layItem.Visible := false;
  dmdb.cheklistgeneric.close;
  dmdb.cheklistgeneric.open;
  dmdb.detcheklistgeneric.open;
  inherited;
end;

procedure TfrmChekListGeneric.Image12Click(Sender: TObject);
begin
  dmdb.detcheklistgeneric.Filtered := false;
  dmdb.detcheklistgeneric.Close;
  dmdb.detcheklistgeneric.Open;
  layItem.Visible                  := false;
end;

procedure TfrmChekListGeneric.MenuItem1Click(Sender: TObject);
begin
 try
   dmdb.CopyChecklist;
   MyShowMessage('Copia realizada com Sucesso!',false);
   btnBuscarFiltroClick(Sender);
 except
  on E : Exception do
   ShowMessage('Erro : '+E.Message);
 end;
end;

procedure TfrmChekListGeneric.SearchEditButton1Click(Sender: TObject);
begin
  frmCheckListGrupoItems := TfrmCheckListGrupoItems.Create(Self);
  try
    frmCheckListGrupoItems.ShowModal;
  finally
    vIdGrupoItem       := dmDB.cheklistregrupoitemid.AsString;
    edtGrupoItem.Text  := dmDB.cheklistregrupoitemnome.AsString;
  end;
end;

procedure TfrmChekListGeneric.SearchEditButton2Click(Sender: TObject);
begin
  frmAuxGrupo := TfrmAuxGrupo.Create(Self);
  try
    frmAuxGrupo.ShowModal;
  finally
    vIdGrupo        := dmdb.TAuxGrupoMaquinasid.AsString;
    edtGrupoF.Text := dmdb.TAuxGrupoMaquinasnome.AsString;
    frmAuxGrupo.Free;
  end;
end;

procedure TfrmChekListGeneric.SearchEditButton4Click(Sender: TObject);
begin
  frmAuxGrupo := TfrmAuxGrupo.Create(Self);
  try
    frmAuxGrupo.ShowModal;
  finally
    vIdGrupo := dmdb.TAuxGrupoMaquinasid.AsString;
    edtGrupo.Text  := dmdb.TAuxGrupoMaquinasnome.AsString;
    frmAuxGrupo.Free;
  end;
end;

procedure TfrmChekListGeneric.StringGrid2CellClick(const Column: TColumn;
  const Row: Integer);
begin
 if dmdb.cheklistgenericid.AsString.Length>0 then
 begin
  dmdb.detcheklistgeneric.edit;
  edtItem.Text                 := dmdb.detcheklistgenericitem.AsString;
  edtItemDescricao.Text        := dmdb.detcheklistgenericdescricao.AsString;
  cbxFotoObrigatoria.ItemIndex := dmdb.detcheklistgenericitemfotoobrigatoria.AsInteger;
  edtGrupoItem.Text            := dmdb.detcheklistgenericGrupo.AsString;
  vIdGrupoItem                 := dmdb.detcheklistgenericidgrupo.AsString;
  layItem.Visible := true;
 end
 else
   MyShowMessage('Selecione o Check list',false);
end;

end.

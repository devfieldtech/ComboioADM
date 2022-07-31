unit UAuxSubGrupo;

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
  FMX.ListBox;

type
  TfrmAuxSubgrupo = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Layout1: TLayout;
    Rectangle3: TRectangle;
    Layout2: TLayout;
    Label5: TLabel;
    cbxTipoMedicao: TComboBox;
    Rectangle2: TRectangle;
    Layout3: TLayout;
    Label4: TLabel;
    edtNome: TEdit;
    procedure btnAddClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure edtNomeFiltroKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure btnBuscarFiltroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAuxSubgrupo: TfrmAuxSubgrupo;

implementation

{$R *.fmx}

uses UPrincipal, UdmDB;

procedure TfrmAuxSubgrupo.btnAddClick(Sender: TObject);
begin
  edtNome.Text := '';
  cbxTipoMedicao.ItemIndex :=-1;
  dmdb.TAuxSubGrupo.Close;
  dmdb.TAuxSubGrupo.Open;
  dmdb.TAuxSubGrupo.Insert;
  inherited;
end;

procedure TfrmAuxSubgrupo.btnBuscarFiltroClick(Sender: TObject);
begin
 if edtNomeFiltro.Text.Length>0 then
 begin
   dmdb.TAuxSubGrupo.Filtered := false;
   dmdb.TAuxSubGrupo.Filter   := 'NOME LIKE '+QuotedStr('%'+edtNomeFiltro.Text+'%');
   dmdb.TAuxSubGrupo.Filtered := true;
 end
 else
 begin
   dmdb.TAuxSubGrupo.Filtered := false;
   dmdb.TAuxSubGrupo.Close;
   dmdb.TAuxSubGrupo.Open;
 end;
 lblFoterCout.Text := intToStr(StringGrid1.RowCount);
end;

procedure TfrmAuxSubgrupo.btnConfirmaClick(Sender: TObject);
begin
  if edtNome.Text.Length=0 then
  begin
    MyShowMessage('Informe o Nome!!',false);
    edtNome.SetFocus;
    Exit;
  end;
  if cbxTipoMedicao.ItemIndex=-1 then
  begin
    MyShowMessage('Informe o Tipo de Medição!!',false);
    Exit;
  end;
  dmdb.TAuxSubGrupotipomedicao.AsInteger  := cbxTipoMedicao.ItemIndex;
  dmdb.TAuxSubGrupoNome.AsString  := edtNome.Text;
  if dmdb.TAuxSubGrupo.State=dsEdit then
  begin
   dmdb.TAuxSubGrupoIdUsuarioAlteracao.AsString  := dmdb.vIdUsuarioLogado;
   dmdb.TAuxSubGrupoDataAlteracao.AsDateTime     := now;
  end;
  if dmdb.TAuxSubGrupo.State=dsInsert then
  begin
   if not dmdb.VerificaCadastroExiste('NOME','auxsubgrupoveiculos',edtNome.Text) then
   begin
     MyShowMessage('Ja existe um Grupo com esse nome:'+edtNome.Text,false);
     Exit;
   end;
   dmdb.TAuxSubGrupoIdUsuario.AsString := dmdb.vIdUsuarioLogado;
  end;
  try
   dmdb.TAuxSubGruposyncaws.AsInteger            :=0;
   dmdb.TAuxSubGrupo.ApplyUpdates(-1);
   dmdb.TAuxSubGrupo.Close;
   dmdb.TAuxSubGrupo.Open();
   lblFoterCout.Text := intToStr(StringGrid1.RowCount);
   MudarAba(tbiLista,sender);
  except
   on E : Exception do
     MyShowMessage('Erro ao Inserir Grupo:'+E.Message,false);
  end;
end;

procedure TfrmAuxSubgrupo.btnDeletarClick(Sender: TObject);
begin
   MyShowMessage('Deseja Realmente Deletar esse registro?',true);
   case frmPrincipal.vMsgConfirma of
     1:begin
        dmdb.TAuxSubGrupo.Edit;
        dmdb.TAuxSubGrupoStatus.AsInteger := -1;
        dmdb.TAuxSubGrupoIdUsuarioAlteracao.AsString  := dmdb.vIdUsuarioLogado;
        dmdb.TAuxSubGrupoDataAlteracao.AsDateTime     := now;
        dmdb.TAuxSubGruposyncaws.AsInteger            :=0;
        try
          dmdb.TAuxSubGrupo.ApplyUpdates(-1);
          MyShowMessage('Registro Excluido com sucesso!',false);
          dmdb.TAuxSubGrupo.Close;
          dmdb.TAuxSubGrupo.Open();
        except
         on E : Exception do
          ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
        end;
     end;
   end;
   lblFoterCout.Text := intToStr(StringGrid1.RowCount);
end;

procedure TfrmAuxSubgrupo.btnEditarClick(Sender: TObject);
begin
  edtNome.Text             := dmdb.TAuxsubGruponome.AsString;
  cbxTipoMedicao.ItemIndex := dmdb.TAuxSubGrupotipomedicao.AsInteger;
  dmdb.TAuxSubGrupo.Edit;
  inherited;
end;

procedure TfrmAuxSubgrupo.edtNomeFiltroKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if key=13 then
 begin
   if edtNomeFiltro.Text.Length>0 then
   begin
     dmdb.TAuxSubGrupo.Filtered := false;
     dmdb.TAuxSubGrupo.Filter   := 'NOME LIKE '+QuotedStr('%'+edtNomeFiltro.Text+'%');
     dmdb.TAuxSubGrupo.Filtered := true;
   end
   else
   begin
     dmdb.TAuxSubGrupo.Filtered := false;
     dmdb.TAuxSubGrupo.Close;
     dmdb.TAuxSubGrupo.Open;
   end;
 end;
end;

procedure TfrmAuxSubgrupo.FormShow(Sender: TObject);
begin
  dmdb.TAuxSubGrupo.Close;
  dmdb.TAuxSubGrupo.Open;
  lblFoterCout.Text := intToStr(StringGrid1.RowCount);
  inherited;
end;

procedure TfrmAuxSubgrupo.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
  Close;
end;

end.

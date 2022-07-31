unit UAuxGrupo;

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
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope;

type
  TfrmAuxGrupo = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Rectangle2: TRectangle;
    Layout2: TLayout;
    Label4: TLabel;
    edtNome: TEdit;
    procedure btnAddClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure btnBuscarFiltroClick(Sender: TObject);
    procedure edtNomeFiltroKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAuxGrupo: TfrmAuxGrupo;

implementation

{$R *.fmx}

uses UdmDB, UPrincipal ;

procedure TfrmAuxGrupo.btnAddClick(Sender: TObject);
begin
  edtNome.Text := '';
  dmDB.TAuxGrupoMaquinas.Close;
  dmDB.TAuxGrupoMaquinas.Open;
  dmDB.TAuxGrupoMaquinas.Append;
  inherited;
end;

procedure TfrmAuxGrupo.btnBuscarFiltroClick(Sender: TObject);
begin
 if edtNomeFiltro.Text.Length>0 then
 begin
   dmDB.TAuxGrupoMaquinas.Filtered := false;
   dmDB.TAuxGrupoMaquinas.Filter   := 'NOME LIKE '+QuotedStr('%'+edtNomeFiltro.Text+'%');
   dmDB.TAuxGrupoMaquinas.Filtered := true;
 end
 else
 begin
   dmDB.TAuxGrupoMaquinas.Filtered := false;
   dmDB.TAuxGrupoMaquinas.Close;
   dmDB.TAuxGrupoMaquinas.Open;
 end;
 lblFoterCout.Text := intToStr(StringGrid1.RowCount);
end;

procedure TfrmAuxGrupo.btnConfirmaClick(Sender: TObject);
begin
  if edtNome.Text.Length=0 then
  begin
    MyShowMessage('Informe o Nome!!',false);
    edtNome.SetFocus;
    Exit;
  end;
  dmDB.TAuxGrupoMaquinasNome.AsString  := edtNome.Text;
  if dmDB.TAuxGrupoMaquinas.State=dsEdit then
  begin
   dmDB.TAuxGrupoMaquinasIdUsuarioAlteracao.AsString  := dmDB.vIdUsuarioLogado;
   dmDB.TAuxGrupoMaquinasDataAlteracao.AsDateTime     := now;
  end;
  if dmDB.TAuxGrupoMaquinas.State=dsInsert then
  begin
   if not dmDB.VerificaCadastroExiste('NOME','auxgrupomaquinaveiculos',edtNome.Text) then
   begin
     MyShowMessage('Ja existe um Grupo com esse nome:'+edtNome.Text,false);
     Exit;
   end;
   dmDB.TAuxGrupoMaquinasIdUsuario.AsString := dmDB.vIdUsuarioLogado;
  end;
  try
   dmDB.TAuxGrupoMaquinassyncaws.asInteger            :=0;
   dmDB.TAuxGrupoMaquinas.ApplyUpdates(-1);
   dmDB.TAuxGrupoMaquinas.Close;
   dmDB.TAuxGrupoMaquinas.Open();
   lblFoterCout.Text := intToStr(StringGrid1.RowCount);
   MudarAba(tbiLista,sender);
  except
   on E : Exception do
     MyShowMessage('Erro ao Inserir Grupo:'+E.Message,false);
  end;
end;

procedure TfrmAuxGrupo.btnDeletarClick(Sender: TObject);
begin
   MyShowMessage('Deseja Realmente Deletar esse registro?',true);
   case frmPrincipal.vMsgConfirma of
     1:begin
        dmDB.TAuxGrupoMaquinas.Edit;
        dmDB.TAuxGrupoMaquinasStatus.AsInteger := -1;
        dmDB.TAuxGrupoMaquinasIdUsuarioAlteracao.AsString  := dmdb.vIdUsuarioLogado;
        dmDB.TAuxGrupoMaquinasDataAlteracao.AsDateTime     := now;
        dmDB.TAuxGrupoMaquinassyncaws.asInteger            :=0;
        try
          dmDB.TAuxGrupoMaquinas.ApplyUpdates(-1);
          MyShowMessage('Registro Excluido com sucesso!',false);
          dmDB.TAuxGrupoMaquinas.Close;
          dmDB.TAuxGrupoMaquinas.Open();
        except
         on E : Exception do
          ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
        end;
     end;
   end;
   lblFoterCout.Text := intToStr(StringGrid1.RowCount);
end;

procedure TfrmAuxGrupo.btnEditarClick(Sender: TObject);
begin
  edtNome.Text           := dmDB.TAuxGrupoMaquinasnome.AsString;
  dmDB.TAuxGrupoMaquinas.Edit;
  inherited;
end;

procedure TfrmAuxGrupo.edtNomeFiltroKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if key=13 then
 begin
   if edtNomeFiltro.Text.Length>0 then
   begin
     dmDB.TAuxGrupoMaquinas.Filtered := false;
     dmDB.TAuxGrupoMaquinas.Filter   := 'NOME LIKE '+QuotedStr('%'+edtNomeFiltro.Text+'%');
     dmDB.TAuxGrupoMaquinas.Filtered := true;
   end
   else
   begin
     dmDB.TAuxGrupoMaquinas.Filtered := false;
     dmDB.TAuxGrupoMaquinas.Close;
     dmDB.TAuxGrupoMaquinas.Open;
   end;
 end;
end;

procedure TfrmAuxGrupo.FormShow(Sender: TObject);
begin
  dmDB.TAuxGrupoMaquinas.Close;
  dmDB.TAuxGrupoMaquinas.Open;
  lblFoterCout.Text := intToStr(StringGrid1.RowCount);
  inherited;
end;

procedure TfrmAuxGrupo.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
 close;
end;

end.

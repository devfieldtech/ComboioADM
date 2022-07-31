unit UAuxCheckListGrupo;

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
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope;

type
  TfrmCheckListGrupoItems = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Rectangle2: TRectangle;
    Layout2: TLayout;
    Label4: TLabel;
    edtNome: TEdit;
    procedure btnBuscarFiltroClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCheckListGrupoItems: TfrmCheckListGrupoItems;

implementation

{$R *.fmx}

uses UdmDB, UPrincipal;

procedure TfrmCheckListGrupoItems.btnAddClick(Sender: TObject);
begin
  edtNome.Text := '';
  dmDB.cheklistregrupoitem.Close;
  dmDB.cheklistregrupoitem.Open;
  dmDB.cheklistregrupoitem.Append;
  inherited;
end;

procedure TfrmCheckListGrupoItems.btnBuscarFiltroClick(Sender: TObject);
begin
 if edtNomeFiltro.Text.Length>0 then
 begin
   dmDB.cheklistregrupoitem.Filtered := false;
   dmDB.cheklistregrupoitem.Filter   := 'NOME LIKE '+QuotedStr('%'+edtNomeFiltro.Text+'%');
   dmDB.cheklistregrupoitem.Filtered := true;
 end
 else
 begin
   dmDB.cheklistregrupoitem.Filtered := false;
   dmDB.cheklistregrupoitem.Close;
   dmDB.cheklistregrupoitem.Open;
 end;
 lblFoterCout.Text := intToStr(StringGrid1.RowCount)

end;

procedure TfrmCheckListGrupoItems.btnDeletarClick(Sender: TObject);
begin
  MyShowMessage('Deseja Realmente Deletar esse registro?',true);
   case frmPrincipal.vMsgConfirma of
     1:begin
        dmDB.cheklistregrupoitem.Edit;
        dmDB.cheklistregrupoitemStatus.AsInteger := -1;
        dmDB.cheklistregrupoitemIdUsuarioAlteracao.AsString  := dmDB.vIdUsuarioLogado;
        dmDB.cheklistregrupoitemDataAlteracao.AsDateTime     := now;
        try
          dmDB.cheklistregrupoitem.ApplyUpdates(-1);
          MyShowMessage('Registro Excluido com sucesso!',false);
          dmDB.cheklistregrupoitem.Close;
          dmDB.cheklistregrupoitem.Open();
        except
         on E : Exception do
          ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
        end;
     end;
   end;
   lblFoterCout.Text := intToStr(StringGrid1.RowCount);
end;

procedure TfrmCheckListGrupoItems.btnEditarClick(Sender: TObject);
begin
  edtNome.Text           := dmDB.cheklistregrupoitemnome.AsString;
  dmDB.cheklistregrupoitem.Edit;
  inherited;
end;

procedure TfrmCheckListGrupoItems.btnSalvarClick(Sender: TObject);
begin
  if edtNome.Text.Length=0 then
  begin
    MyShowMessage('Informe o Nome!!',false);
    edtNome.SetFocus;
    Exit;
  end;
  dmDB.cheklistregrupoitemNome.AsString  := edtNome.Text;
  if dmDB.cheklistregrupoitem.State=dsEdit then
  begin
   dmDB.cheklistregrupoitemIdUsuarioAlteracao.AsString  := dmDB.vIdUsuarioLogado;
   dmDB.cheklistregrupoitemDataAlteracao.AsDateTime     := now;
  end;
  if dmDB.cheklistregrupoitem.State=dsInsert then
  begin
   if not dmDB.VerificaCadastroExiste('NOME','cheklistregrupoitem',edtNome.Text) then
   begin
     MyShowMessage('Ja existe uma Grupo com esse nome:'+edtNome.Text,false);
     Exit;
   end;
   dmDB.cheklistregrupoitemIdUsuario.AsString := dmDB.vIdUsuarioLogado;
  end;
  try
   dmDB.cheklistregrupoitem.ApplyUpdates(-1);
   dmDB.cheklistregrupoitem.Close;
   dmDB.cheklistregrupoitem.Open();
   MyShowMessage('Grupo Cadastrada com sucesso!',false);
   lblFoterCout.Text := intToStr(StringGrid1.RowCount);
   MudarAba(tbiLista,Sender);
  except
   on E : Exception do
     MyShowMessage('Erro ao Inserir Grupo:'+E.Message,false);
  end;
end;

procedure TfrmCheckListGrupoItems.FormShow(Sender: TObject);
begin
  dmdb.cheklistregrupoitem.Close;
  dmdb.cheklistregrupoitem.Open;
  inherited;
end;

end.

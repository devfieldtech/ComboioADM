unit UAuxMarcas;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FMX.ActnList,
  System.Actions, FMX.TabControl, FMX.Ani, FMX.ScrollBox, FMX.Grid, FMX.Edit,
  FMX.Controls.Presentation, FMX.Objects, FMX.Layouts, UCadPadrao, System.Rtti,
  FMX.Grid.Style, FireDAC.Stan.Intf;

type
  TfrmCadAuxMarcas = class(TfrmCadPadrao)
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
  frmCadAuxMarcas: TfrmCadAuxMarcas;

implementation

{$R *.fmx}

uses UPrincipal, UMsgDlg,UdmDB;

procedure TfrmCadAuxMarcas.btnAddClick(Sender: TObject);
begin
  edtNome.Text := '';
  dmDB.TAuxMarca.Close;
  dmDB.TAuxMarca.Open;
  dmDB.TAuxMarca.Append;
  inherited;
end;

procedure TfrmCadAuxMarcas.btnBuscarFiltroClick(Sender: TObject);
begin
 if edtNomeFiltro.Text.Length>0 then
 begin
   dmDB.TAuxMarca.Filtered := false;
   dmDB.TAuxMarca.Filter   := 'NOME LIKE '+QuotedStr('%'+edtNomeFiltro.Text+'%');
   dmDB.TAuxMarca.Filtered := true;
 end
 else
 begin
   dmDB.TAuxMarca.Filtered := false;
   dmDB.TAuxMarca.Close;
   dmDB.TAuxMarca.Open;
 end;
 lblFoterCout.Text := intToStr(StringGrid1.RowCount)
end;

procedure TfrmCadAuxMarcas.btnConfirmaClick(Sender: TObject);
begin
  if edtNome.Text.Length=0 then
  begin
    MyShowMessage('Informe o Nome!!',false);
    edtNome.SetFocus;
    Exit;
  end;
  dmDB.TAuxMarcaNome.AsString  := edtNome.Text;
  if dmDB.TAuxMarca.State=dsEdit then
  begin
   dmDB.TAuxMarcaIdUsuarioAlteracao.AsString  := dmDB.vIdUsuarioLogado;
   dmDB.TAuxMarcaDataAlteracao.AsDateTime     := now;
  end;
  if dmDB.TAuxMarca.State=dsInsert then
  begin
   if not dmDB.VerificaCadastroExiste('NOME','auxmarcas',edtNome.Text) then
   begin
     MyShowMessage('Ja existe uma Marca com esse nome:'+edtNome.Text,false);
     Exit;
   end;
   dmDB.TAuxMarcaIdUsuario.AsString := dmDB.vIdUsuarioLogado;
  end;
  try
   dmDB.TAuxMarcasyncAws.Asinteger            := 0;
   dmDB.TAuxMarca.ApplyUpdates(-1);
   dmDB.TAuxMarca.Close;
   dmDB.TAuxMarca.Open();
   MyShowMessage('Marca Cadastrada com sucesso!',false);
   lblFoterCout.Text := intToStr(StringGrid1.RowCount);
   MudarAba(tbiLista,Sender);
  except
   on E : Exception do
     MyShowMessage('Erro ao Inserir Marca:'+E.Message,false);
  end;
end;

procedure TfrmCadAuxMarcas.btnDeletarClick(Sender: TObject);
begin
   MyShowMessage('Deseja Realmente Deletar esse registro?',true);
   case frmPrincipal.vMsgConfirma of
     1:begin
        dmDB.TAuxMarca.Edit;
        dmDB.TAuxMarcaStatus.AsInteger := -1;
        dmDB.TAuxMarcaIdUsuarioAlteracao.AsString  := dmDB.vIdUsuarioLogado;
        dmDB.TAuxMarcaDataAlteracao.AsDateTime     := now;
        dmDB.TAuxMarcasyncAws.Asinteger            := 0;
        try
          dmDB.TAuxMarca.ApplyUpdates(-1);
          MyShowMessage('Registro Excluido com sucesso!',false);
          dmDB.TAuxMarca.Close;
          dmDB.TAuxMarca.Open();
        except
         on E : Exception do
          ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
        end;
     end;
   end;
   lblFoterCout.Text := intToStr(StringGrid1.RowCount);
end;

procedure TfrmCadAuxMarcas.btnEditarClick(Sender: TObject);
begin
  edtNome.Text           := dmDB.TAuxMarcanome.AsString;
  dmDB.TAuxMarca.Edit;
  inherited;
end;

procedure TfrmCadAuxMarcas.edtNomeFiltroKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if key=13 then
 begin
   if edtNomeFiltro.Text.Length>0 then
   begin
     dmDB.TAuxMarca.Filtered := false;
     dmDB.TAuxMarca.Filter   := 'NOME LIKE '+QuotedStr('%'+edtNomeFiltro.Text+'%');
     dmDB.TAuxMarca.Filtered := true;
   end
   else
   begin
     dmDB.TAuxMarca.Filtered := false;
     dmDB.TAuxMarca.Close;
     dmDB.TAuxMarca.Open;
   end;
 end;
end;

procedure TfrmCadAuxMarcas.FormShow(Sender: TObject);
begin
  dmDB.TAuxMarca.Close;
  dmDB.TAuxMarca.Open;
  inherited;
  lblFoterCout.Text := intToStr(StringGrid1.RowCount)
end;

procedure TfrmCadAuxMarcas.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
 Close;
end;

end.

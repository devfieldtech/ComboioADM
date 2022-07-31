unit UAuxAtividadeAbastecimento;

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
  TfrmAuxAtividadeAbastecimento = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Rectangle2: TRectangle;
    Layout3: TLayout;
    Label4: TLabel;
    edtNome: TEdit;
    procedure btnAddClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
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
  frmAuxAtividadeAbastecimento: TfrmAuxAtividadeAbastecimento;

implementation

{$R *.fmx}

uses UPrincipal, UdmDB;

procedure TfrmAuxAtividadeAbastecimento.btnAddClick(Sender: TObject);
begin
  edtNome.Text := '';
  dmdb.Tauxatividadeabastecimento.Close;
  dmdb.Tauxatividadeabastecimento.Open;
  dmdb.Tauxatividadeabastecimento.Insert;
  inherited;
end;

procedure TfrmAuxAtividadeAbastecimento.btnBuscarFiltroClick(Sender: TObject);
begin
 if edtNomeFiltro.Text.Length>0 then
 begin
   dmdb.Tauxatividadeabastecimento.Filtered := false;
   dmdb.Tauxatividadeabastecimento.Filter   := 'NOME LIKE '+QuotedStr('%'+edtNomeFiltro.Text+'%');
   dmdb.Tauxatividadeabastecimento.Filtered := true;
 end
 else
 begin
   dmdb.Tauxatividadeabastecimento.Filtered := false;
   dmdb.Tauxatividadeabastecimento.Close;
   dmdb.Tauxatividadeabastecimento.Open;
 end;
 lblFoterCout.Text := intToStr(StringGrid1.RowCount)
end;

procedure TfrmAuxAtividadeAbastecimento.btnDeletarClick(Sender: TObject);
begin
  MyShowMessage('Deseja Realmente Deletar esse registro?',true);
   case frmPrincipal.vMsgConfirma of
     1:begin
        dmdb.Tauxatividadeabastecimento.Edit;
        dmdb.TauxatividadeabastecimentoStatus.AsInteger := -1;
        dmdb.TauxatividadeabastecimentoIdUsuarioAlteracao.AsString  := dmdb.vIdUsuarioLogado;
        dmdb.TauxatividadeabastecimentoDataAlteracao.AsDateTime     := now;
        try
          dmdb.Tauxatividadeabastecimento.ApplyUpdates(-1);
          MyShowMessage('Registro Excluido com sucesso!',false);
          dmdb.Tauxatividadeabastecimento.Close;
          dmdb.Tauxatividadeabastecimento.Open();
        except
         on E : Exception do
          ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
        end;
     end;
   end;
   lblFoterCout.Text := intToStr(StringGrid1.RowCount);
end;

procedure TfrmAuxAtividadeAbastecimento.btnEditarClick(Sender: TObject);
begin
  edtNome.Text           := dmdb.Tauxatividadeabastecimentonome.AsString;
  dmdb.Tauxatividadeabastecimento.Edit;
  inherited;
end;

procedure TfrmAuxAtividadeAbastecimento.btnSalvarClick(Sender: TObject);
begin
  if edtNome.Text.Length=0 then
  begin
    MyShowMessage('Informe o Nome!!',false);
    edtNome.SetFocus;
    Exit;
  end;
  dmdb.Tauxatividadeabastecimentonome.AsString  := edtNome.Text;
  if dmdb.Tauxatividadeabastecimento.State=dsEdit then
  begin
   dmdb.TauxatividadeabastecimentoIdUsuarioAlteracao.AsString  := dmdb.vIdUsuarioLogado;
   dmdb.TauxatividadeabastecimentoDataAlteracao.AsDateTime     := now;
  end;
  if dmdb.Tauxatividadeabastecimento.State=dsInsert then
  begin
   if not dmdb.VerificaCadastroExiste('NOME','auxatividadeabastecimento',edtNome.Text) then
   begin
     MyShowMessage('Ja existe uma Atividade com esse nome:'+edtNome.Text,false);
     Exit;
   end;
   dmdb.TauxatividadeabastecimentoIdUsuario.AsString := dmdb.vIdUsuarioLogado;
  end;
  try
   dmdb.Tauxatividadeabastecimento.ApplyUpdates(-1);
   dmdb.Tauxatividadeabastecimento.Close;
   dmdb.Tauxatividadeabastecimento.Open();
   MudarAba(tbiLista,sender);
   lblFoterCout.Text := intToStr(StringGrid1.RowCount)
  except
   on E : Exception do
     MyShowMessage('Erro ao Inserir Atividade:'+E.Message,false);
  end;
end;

procedure TfrmAuxAtividadeAbastecimento.edtNomeFiltroKeyUp(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if Key=13 then
  btnBuscarFiltroClick(Sender);
end;

procedure TfrmAuxAtividadeAbastecimento.FormShow(Sender: TObject);
begin
  dmdb.Tauxatividadeabastecimento.close;
  dmdb.Tauxatividadeabastecimento.open;
  inherited;
  lblFoterCout.Text := intToStr(StringGrid1.RowCount)
end;

procedure TfrmAuxAtividadeAbastecimento.StringGrid1CellDblClick(
  const Column: TColumn; const Row: Integer);
begin
  Close;
end;

end.

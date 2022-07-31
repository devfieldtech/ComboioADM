unit UAuxCompartimentoLub;

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
  TfrmAuxCompLub = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Rectangle2: TRectangle;
    Layout3: TLayout;
    Label4: TLabel;
    edtNome: TEdit;
    procedure btnBuscarFiltroClick(Sender: TObject);
    procedure edtNomeFiltroKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAuxCompLub: TfrmAuxCompLub;

implementation

{$R *.fmx}

uses UPrincipal, UdmDB;

procedure TfrmAuxCompLub.btnAddClick(Sender: TObject);
begin
  edtNome.Text := '';
  dmdb.TAuxCompLub.Close;
  dmdb.TAuxCompLub.Open;
  dmdb.TAuxCompLub.Insert;
  inherited;
end;

procedure TfrmAuxCompLub.btnBuscarFiltroClick(Sender: TObject);
begin
 if edtNomeFiltro.Text.Length>0 then
 begin
   dmDB.TAuxCompLub.Filtered := false;
   dmDB.TAuxCompLub.Filter   := 'NOME LIKE '+QuotedStr('%'+edtNomeFiltro.Text+'%');
   dmDB.TAuxCompLub.Filtered := true;
 end
 else
 begin
   dmDB.TAuxCompLub.Filtered := false;
   dmDB.TAuxCompLub.Close;
   dmDB.TAuxCompLub.Open;
 end;
 lblFoterCout.Text := intToStr(StringGrid1.RowCount)
end;

procedure TfrmAuxCompLub.btnDeletarClick(Sender: TObject);
begin
MyShowMessage('Deseja Realmente Deletar esse registro?',true);
   case frmPrincipal.vMsgConfirma of
     1:begin
        dmdb.TAuxCompLub.Edit;
        dmdb.TAuxCompLubStatus.AsInteger := -1;
        dmdb.TAuxCompLubIdUsuarioAlteracao.AsString  := dmdb.vIdUsuarioLogado;
        dmdb.TAuxCompLubDataAlteracao.AsDateTime     := now;
        try
          dmdb.TAuxCompLub.ApplyUpdates(-1);
          MyShowMessage('Registro Excluido com sucesso!',false);
          dmdb.TAuxCompLub.Close;
          dmdb.TAuxCompLub.Open();
        except
         on E : Exception do
          ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
        end;
     end;
   end;
   lblFoterCout.Text := intToStr(StringGrid1.RowCount);
end;

procedure TfrmAuxCompLub.btnEditarClick(Sender: TObject);
begin
  edtNome.Text           := dmdb.TAuxCompLubnome.AsString;
  dmdb.TAuxCompLub.Edit;
  inherited;
end;

procedure TfrmAuxCompLub.btnSalvarClick(Sender: TObject);
begin
 if edtNome.Text.Length=0 then
  begin
    MyShowMessage('Informe o Nome!!',false);
    edtNome.SetFocus;
    Exit;
  end;
  dmdb.TAuxCompLubNome.AsString  := edtNome.Text;
  if dmdb.TAuxCompLub.State=dsEdit then
  begin
   dmdb.TAuxCompLubIdUsuarioAlteracao.AsString  := dmdb.vIdUsuarioLogado;
   dmdb.TAuxCompLubDataAlteracao.AsDateTime     := now;
  end;
  if dmdb.TAuxCompLub.State=dsInsert then
  begin
   if not dmdb.VerificaCadastroExiste('NOME','compartimentolubricficacao',edtNome.Text) then
   begin
     MyShowMessage('Ja existe um Compartimento com esse nome:'+edtNome.Text,false);
     Exit;
   end;
   dmdb.TAuxCompLubIdUsuario.AsString := dmdb.vIdUsuarioLogado;
  end;
  try
   dmdb.TAuxCompLub.ApplyUpdates(-1);
   dmdb.TAuxCompLub.Close;
   dmdb.TAuxCompLub.Open();
   MudarAba(tbiLista,sender);
   lblFoterCout.Text := intToStr(StringGrid1.RowCount)
  except
   on E : Exception do
     MyShowMessage('Erro ao Inserir Atividade:'+E.Message,false);
  end;
end;

procedure TfrmAuxCompLub.edtNomeFiltroKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if key=13 then
  btnBuscarFiltroClick(sender);
end;

procedure TfrmAuxCompLub.FormShow(Sender: TObject);
begin
  dmdb.TAuxCompLub.close;
  dmdb.TAuxCompLub.open;
  lblFoterCout.Text := intToStr(StringGrid1.RowCount);
  inherited;
end;

end.

unit UOperadorMaquinas;

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
  TfrmOperadorMaquinas = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Layout7: TLayout;
    Rectangle3: TRectangle;
    Layout8: TLayout;
    edtRG: TEdit;
    Layout9: TLayout;
    Label9: TLabel;
    Label12: TLabel;
    Label7: TLabel;
    edtCelular: TEdit;
    edtCPF: TEdit;
    edtCNH: TEdit;
    Label5: TLabel;
    Rectangle2: TRectangle;
    Layout3: TLayout;
    Label4: TLabel;
    edtNome: TEdit;
    procedure btnAddClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtCPFTyping(Sender: TObject);
    procedure edtCelularTyping(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure btnBuscarFiltroClick(Sender: TObject);
    procedure edtNomeFiltroKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
  private
    procedure LimpaCampos;
  public
    { Public declarations }
  end;

var
  frmOperadorMaquinas: TfrmOperadorMaquinas;

implementation

{$R *.fmx}

uses UPrincipal, uFormat, UdmDB;

procedure TfrmOperadorMaquinas.btnAddClick(Sender: TObject);
begin
  LimpaCampos;
  dmdb.TOperadorMaquina.Close;
  dmdb.TOperadorMaquina.Open;
  dmdb.TOperadorMaquina.Insert;
  inherited;
end;

procedure TfrmOperadorMaquinas.btnBuscarFiltroClick(Sender: TObject);
begin
 if edtNomeFiltro.Text.Length>0 then
 begin
   dmdb.TOperadorMaquina.Filtered := false;
   dmdb.TOperadorMaquina.Filter   := 'NOME LIKE '+QuotedStr('%'+edtNomeFiltro.Text+'%');
   dmdb.TOperadorMaquina.Filtered := true;
 end
 else
 begin
   dmdb.TOperadorMaquina.Filtered := false;
   dmdb.TOperadorMaquina.Close;
   dmdb.TOperadorMaquina.Open;
 end;
 lblFoterCout.Text := intToStr(StringGrid1.RowCount)
end;

procedure TfrmOperadorMaquinas.btnDeletarClick(Sender: TObject);
begin
  MyShowMessage('Deseja Realmente Deletar esse registro?',true);
   case frmPrincipal.vMsgConfirma of
     1:begin
        dmdb.TOperadorMaquina.Edit;
        dmdb.TOperadorMaquinaStatus.AsInteger := -1;
        dmdb.TOperadorMaquinaIdUsuarioAlteracao.AsString  := dmdb.vIdUsuarioLogado;
        dmdb.TOperadorMaquinaDataAlteracao.AsDateTime     := now;
        dmdb.TOperadorMaquinasyncaws.asInteger            :=0;
        try
          dmdb.TOperadorMaquina.ApplyUpdates(-1);
          MyShowMessage('Registro Excluido com sucesso!',false);
          dmdb.TOperadorMaquina.Close;
          dmdb.TOperadorMaquina.Open();
        except
         on E : Exception do
          ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
        end;
     end;
   end;
   lblFoterCout.Text := intToStr(StringGrid1.RowCount);
end;

procedure TfrmOperadorMaquinas.btnEditarClick(Sender: TObject);
begin
  edtNome.Text          := dmdb.TOperadorMaquinanome.AsString;
  edtRG.Text            := dmdb.TOperadorMaquinaRG.AsString;
  edtCPF.Text           := dmdb.TOperadorMaquinaCPF.AsString;
  edtCNH.Text           := dmdb.TOperadorMaquinaCNH.AsString;
  edtCelular.Text       := dmdb.TOperadorMaquinacelular.AsString;
  dmdb.TOperadorMaquina.Edit;
  inherited;
end;

procedure TfrmOperadorMaquinas.btnSalvarClick(Sender: TObject);
begin
  if edtNome.Text.Length=0 then
  begin
    MyShowMessage('Informe o Nome!!',false);
    edtNome.SetFocus;
    Exit;
  end;
  dmdb.TOperadorMaquinaNome.AsString  := edtNome.Text;

  if edtCPF.Text.Length>0 then
   dmdb.TOperadorMaquinacpf.AsString     := edtcpf.Text;
  if edtrg.Text.Length>0 then
   dmdb.TOperadorMaquinarg.AsString      := edtRG.Text;
  if edtCNH.Text.Length>0 then
   dmdb.TOperadorMaquinacnh.AsString     := edtCNH.Text;
  if edtCelular.Text.Length>0 then
   dmdb.TOperadorMaquinacelular.AsString := edtCelular.Text;


  if dmdb.TOperadorMaquina.State=dsEdit then
  begin
   dmdb.TOperadorMaquinaIdUsuarioAlteracao.AsString  := dmdb.vIdUsuarioLogado;
   dmdb.TOperadorMaquinaDataAlteracao.AsDateTime     := now;
  end;
  if dmdb.TOperadorMaquina.State=dsInsert then
  begin
   if not dmdb.VerificaCadastroExiste('NOME','operadormaquinas ',edtNome.Text) then
   begin
     MyShowMessage('Ja existe um Operador com esse nome:'+edtNome.Text,false);
     Exit;
   end;
   if not dmdb.VerificaCadastroExiste('RG','OperadorMaquinas',edtRG.Text) then
   begin
     MyShowMessage('Ja existe um Operador com esse RG:'+edtNome.Text,false);
     Exit;
   end;
   if not dmdb.VerificaCadastroExiste('CPF','OperadorMaquinas',edtNome.Text) then
   begin
     MyShowMessage('Ja existe um Operador com esse CPF:'+edtNome.Text,false);
     Exit;
   end;
   if not dmdb.VerificaCadastroExiste('CNH','OperadorMaquinas',edtNome.Text) then
   begin
     MyShowMessage('Ja existe um Operador com essa CNH:'+edtNome.Text,false);
     Exit;
   end;
   dmdb.TOperadorMaquinaIdUsuario.AsString := dmdb.vIdUsuarioLogado;
  end;
  try
   dmdb.TOperadorMaquinasyncaws.asInteger:=0;
   dmdb.TOperadorMaquina.ApplyUpdates(-1);
   dmdb.TOperadorMaquina.Close;
   dmdb.TOperadorMaquina.Open();
   lblFoterCout.Text := intToStr(StringGrid1.RowCount);
   MudarAba(tbiLista,sender);
  except
   on E : Exception do
     MyShowMessage('Erro ao Inserir Grupo:'+E.Message,false);
  end;
end;

procedure TfrmOperadorMaquinas.edtCelularTyping(Sender: TObject);
begin
  Formatar(edtCelular,TFormato.Celular)
end;

procedure TfrmOperadorMaquinas.edtCPFTyping(Sender: TObject);
begin
 Formatar(edtCPF,TFormato.CPF)
end;

procedure TfrmOperadorMaquinas.edtNomeFiltroKeyUp(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if key=13 then
 begin
   if edtNomeFiltro.Text.Length>0 then
   begin
     dmdb.TOperadorMaquina.Filtered := false;
     dmdb.TOperadorMaquina.Filter   := 'NOME LIKE '+QuotedStr('%'+edtNomeFiltro.Text+'%');
     dmdb.TOperadorMaquina.Filtered := true;
   end
   else
   begin
     dmdb.TOperadorMaquina.Filtered := false;
     dmdb.TOperadorMaquina.Close;
     dmdb.TOperadorMaquina.Open;
   end;
 end;
end;

procedure TfrmOperadorMaquinas.FormShow(Sender: TObject);
begin
  dmdb.TOperadorMaquina.Close;
  dmdb.TOperadorMaquina.Open;
  lblFoterCout.Text := intToStr(StringGrid1.RowCount);
  inherited;
end;

procedure TfrmOperadorMaquinas.LimpaCampos;
begin
 edtNome.Text    :='';
 edtrg.Text      :='';
 edtCPF.Text     :='';
 edtcnh.Text     :='';
 edtCelular.Text :='';
end;

procedure TfrmOperadorMaquinas.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
 Close;
end;

end.

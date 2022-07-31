unit UFornecedor;

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
  TfrmCadFornecedor = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Layout4: TLayout;
    Rectangle2: TRectangle;
    Layout1: TLayout;
    edtCidade: TEdit;
    Layout6: TLayout;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cbxUF: TComboBox;
    edtCpfCnpj: TEdit;
    Layout7: TLayout;
    Rectangle3: TRectangle;
    Layout8: TLayout;
    edtNomeContato: TEdit;
    Layout9: TLayout;
    Label9: TLabel;
    Label12: TLabel;
    edtCelular: TEdit;
    Layout11: TLayout;
    Rectangle5: TRectangle;
    Layout12: TLayout;
    edtEmail: TEdit;
    Layout13: TLayout;
    Label10: TLabel;
    Label8: TLabel;
    edtSenha: TEdit;
    EditButton1: TEditButton;
    Label7: TLabel;
    edtTelefoneFixo: TEdit;
    Label13: TLabel;
    edtInscricaoEstadual: TEdit;
    BindSourceDB2: TBindSourceDB;
    laySubSubCad: TLayout;
    Rsub: TRectangle;
    laySubSubSubCad: TLayout;
    edtNome: TEdit;
    Layout2: TLayout;
    lbl: TLabel;
    Label11: TLabel;
    edtRazaoSocial: TEdit;
    procedure btnAddClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure edtCpfCnpjTyping(Sender: TObject);
    procedure edtTelefoneFixoTyping(Sender: TObject);
    procedure edtCelularTyping(Sender: TObject);
    procedure edtEmailExit(Sender: TObject);
    procedure edtNomeExit(Sender: TObject);
    procedure edtTelefoneFixoExit(Sender: TObject);
    procedure edtCelularExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure btnConfirmaClick(Sender: TObject);
    procedure EditButton1Click(Sender: TObject);
    procedure cbxUFKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure edtRazaoSocialExit(Sender: TObject);
    procedure edtInscricaoEstadualExit(Sender: TObject);
    procedure btnBuscarFiltroClick(Sender: TObject);
    procedure btnBuscarFiltroKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
  private
    LastTimeKeydown:TDatetime;
    Keys:string;
    function ValidarEMail(aStr: string): Boolean;
    procedure LimpaCampos;
  public
    { Public declarations }
  end;

var
  frmCadFornecedor: TfrmCadFornecedor;

implementation

{$R *.fmx}

uses UPrincipal, uFormat, UdmDB;

procedure TfrmCadFornecedor.btnAddClick(Sender: TObject);
begin
  LimpaCampos;
  dmdb.TFornecedores.Close;
  dmdb.TFornecedores.Open;
  dmdb.TFornecedores.Insert;
  inherited;
end;

procedure TfrmCadFornecedor.btnBuscarFiltroClick(Sender: TObject);
begin
 if edtNomeFiltro.Text.Length>0 then
 begin
   dmdb.TFornecedores.Filtered := false;
   dmdb.TFornecedores.Filter   := 'nome like '+QuotedStr('%'+edtNomeFiltro.Text+'%');
   dmdb.TFornecedores.Filtered := true;
 end
 else
 begin
   dmdb.TFornecedores.Filtered := false;
   dmdb.TFornecedores.Close;
   dmdb.TFornecedores.Open;
 end
end;

procedure TfrmCadFornecedor.btnBuscarFiltroKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 If key=13 then
  btnBuscarFiltroClick(Sender);

end;

procedure TfrmCadFornecedor.btnConfirmaClick(Sender: TObject);
begin
if edtNome.Text.Length=0 then
  begin
    MyShowMessage('Informe o Nome!',false);
    edtNome.SetFocus;
    Exit;
  end;

  if edtCidade.Text.Length=0 then
  begin
    MyShowMessage('Informe a Cidade!',false);
    edtNome.SetFocus;
    Exit;
  end;

  if cbxUF.ItemIndex=-1 then
  begin
    MyShowMessage('Informe a UF!',false);
    cbxUF.SetFocus;
    Exit;
  end;

  if edtCpfCnpj.Text.Length=0 then
  begin
    MyShowMessage('Informe o CPF/CNPJ!',false);
    edtCpfCnpj.SetFocus;
    Exit;
  end;
  if edtEmail.Text.Length>0 then
   if not ValidarEMail(edtEmail.Text) then
   begin
     MyShowMessage('Email invalido!!',false);
     edtEmail.SelectAll;
     edtEmail.SetFocus;
   end;
   if dmdb.TFornecedores.State=dsInsert then
    dmdb.TFornecedoresIdUsuario.AsString          := dmdb.vIdUsuarioLogado
   else
   begin
    dmdb.TFornecedoresIdUsuarioAlteracao.AsString := dmdb.vIdUsuarioLogado;
    dmdb.TFornecedoresDataAlteracao.AsDateTime    := now;
   end;
   dmdb.TFornecedoresnome.AsString              := edtNome.Text;
   dmdb.TFornecedorescidade.AsString            := edtCidade.Text;
   dmdb.TFornecedoresuf.AsString                := cbxUF.Selected.Text;
   dmdb.TFornecedorescpf_cnpj.AsString          := edtCpfCnpj.Text;
   dmdb.TFornecedorestelefone_fixo.AsString     := edtTelefoneFixo.Text;
   dmdb.TFornecedorescontatopessoa.AsString     := edtNomeContato.Text;
   dmdb.TFornecedorescelular.AsString           := edtCelular.Text;
   dmdb.TFornecedoresemail.AsString             := edtEmail.Text;
   dmdb.TFornecedoresrazaosocial.AsString       := edtRazaoSocial.Text;
   dmdb.TFornecedoresinscricaoestadual.AsString := edtInscricaoEstadual.Text;

   if edtSenha.Text.Length>0 then
     dmdb.TFornecedoresSenha.AsString         := edtSenha.Text;
   try

    dmdb.TFornecedores.ApplyUpdates(-1);
    MyShowMessage('Fornecedor Cadastrado com Sucesso!',false);
    dmdb.TFornecedores.Close;
    dmdb.TFornecedores.Open;
    MudarAba(tbiLista,sender);
   except
     on E: Exception do
      myShowMessage('Erro ao salvar Fornecedor:'+E.Message,false);
   end;
end;

procedure TfrmCadFornecedor.btnDeletarClick(Sender: TObject);
begin
   MyShowMessage('Deseja Realmente Deletar esse registro?',true);
   case frmPrincipal.vMsgConfirma of
     1:begin
        dmdb.TFornecedores.Edit;
        dmdb.TFornecedoresStatus.AsInteger := -1;
        dmdb.TFornecedoresIdUsuarioAlteracao.AsString  := dmdb.vIdUsuarioLogado;
        dmdb.TFornecedoresDataAlteracao.AsDateTime     := now;
        try
          dmdb.TFornecedores.ApplyUpdates(-1);
          MyShowMessage('Registro Excluido com sucesso!',false);
          dmdb.TFornecedores.Close;
          dmdb.TFornecedores.Open();
        except
         on E : Exception do
          ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
        end;
     end;
   end;
end;

procedure TfrmCadFornecedor.btnEditarClick(Sender: TObject);
begin
  edtNome.Text              := dmdb.TFornecedoresnome.AsString;
  edtCidade.Text            := dmdb.TFornecedorescidade.AsString;
  edtCpfCnpj.Text           := dmdb.TFornecedorescpf_cnpj.AsString;
  edtTelefoneFixo.Text      := dmdb.TFornecedorestelefone_fixo.AsString;
  edtNomeContato.Text       := dmdb.TFornecedorescontatopessoa.AsString;
  edtCelular.Text           := dmdb.TFornecedorescelular.AsString;
  edtEmail.Text             := dmdb.TFornecedoresemail.AsString;
  cbxUF.ItemIndex           := cbxUF.Items.IndexOf(dmdb.TFornecedoresuf.AsString);
  edtSenha.Text             := dmdb.TFornecedoresSenha.AsString;
  edtRazaoSocial.Text       := dmdb.TFornecedoresrazaosocial.AsString;
  edtInscricaoEstadual.Text := dmdb.TFornecedoresinscricaoestadual.AsString;
  dmdb.TFornecedores.Edit;
  inherited;
end;

procedure TfrmCadFornecedor.cbxUFKeyDown(Sender: TObject; var Key: Word;
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
    for I := 0 to cbxUF.Items.Count-1 do
      if uppercase(copy(cbxUF.items[i],0,keys.length))=uppercase(keys) then begin
        cbxUF.itemindex:=i;
        exit;  //first item found is good
      end;
  end;
  inherited;
end;

procedure TfrmCadFornecedor.EditButton1Click(Sender: TObject);
begin
 if edtSenha.Password then
  edtSenha.Password := false
 else
  edtSenha.Password := true;
end;

procedure TfrmCadFornecedor.edtCelularExit(Sender: TObject);
begin
 TThread.CreateAnonymousThread(
  procedure
  begin
    TThread.Synchronize( nil,
      procedure
      begin
        edtEmail.SetFocus;
      end
    );
  end
  ).Start;
end;

procedure TfrmCadFornecedor.edtCelularTyping(Sender: TObject);
begin
  Formatar(edtCelular, TFormato.Celular);
end;

procedure TfrmCadFornecedor.edtCpfCnpjTyping(Sender: TObject);
begin
 if edtCpfCnpj.Text.Length<=14 then
  Formatar(edtCpfCnpj, TFormato.CPF)
 else
  Formatar(edtCpfCnpj, TFormato.CNPJ);
end;

procedure TfrmCadFornecedor.edtEmailExit(Sender: TObject);
begin
 if edtEmail.Text.Length>0 then
  if not ValidarEMail(edtEmail.Text) then
  begin
    MyShowMessage('Email invalido!!',false);
    edtEmail.SelectAll;
    edtEmail.SetFocus;
  end;
end;

procedure TfrmCadFornecedor.edtInscricaoEstadualExit(Sender: TObject);
begin
  TThread.CreateAnonymousThread(
  procedure
  begin
    TThread.Synchronize( nil,
      procedure
      begin
        edtNomeContato.SetFocus;
      end
    );
  end
  ).Start;
end;

procedure TfrmCadFornecedor.edtNomeExit(Sender: TObject);
begin
  TThread.CreateAnonymousThread(
  procedure
  begin
    TThread.Synchronize( nil,
      procedure
      begin
        edtRazaoSocial.SetFocus;
      end
    );
  end
  ).Start;
end;

procedure TfrmCadFornecedor.edtRazaoSocialExit(Sender: TObject);
begin
  TThread.CreateAnonymousThread(
  procedure
  begin
    TThread.Synchronize( nil,
      procedure
      begin
        edtCidade.SetFocus;
      end
    );
  end
  ).Start;
end;

procedure TfrmCadFornecedor.edtTelefoneFixoExit(Sender: TObject);
begin
 TThread.CreateAnonymousThread(
  procedure
  begin
    TThread.Synchronize( nil,
      procedure
      begin
        edtNomeContato.SetFocus;
      end
    );
  end
  ).Start;
end;

procedure TfrmCadFornecedor.edtTelefoneFixoTyping(Sender: TObject);
begin
 Formatar(edtTelefoneFixo, TFormato.TelefoneFixo);
end;

procedure TfrmCadFornecedor.FormShow(Sender: TObject);
begin
  dmdb.TFornecedores.Close;
  dmdb.TFornecedores.Open;
  inherited;
end;

procedure TfrmCadFornecedor.LimpaCampos;
begin
  edtNome.Text             := '';
  edtCidade.Text           := '';
  edtCpfCnpj.Text          := '';
  edtTelefoneFixo.Text     := '';
  edtNomeContato.Text      := '';
  edtCelular.Text          := '';
  edtEmail.Text            := '';
  edtRazaoSocial.Text      := '';
  edtInscricaoEstadual.Text:= '';
  cbxUF.ItemIndex          := -1;
end;

procedure TfrmCadFornecedor.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
 Close;
end;

function TfrmCadFornecedor.ValidarEMail(aStr: string): Boolean;
begin
 aStr := Trim(UpperCase(aStr));
 if Pos('@', aStr) > 1 then
 begin
   Delete(aStr, 1, pos('@', aStr));
   Result := (Length(aStr) > 0) and (Pos('.', aStr) > 2);
 end
 else
   Result := False;
end;

end.

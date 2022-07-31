unit UUsuarios;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FMX.ActnList, System.Actions,
  FMX.TabControl, FMX.Ani, FMX.ScrollBox, FMX.Grid, FMX.Edit,
  FMX.Controls.Presentation, FMX.Objects, FMX.Layouts, FMX.ListBox,Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope;

type
  TfrmUsuarios = class(TfrmCadPadrao)
    Layout4: TLayout;
    Rectangle3: TRectangle;
    Layout1: TLayout;
    cbxTipo: TComboBox;
    Layout8: TLayout;
    Layout6: TLayout;
    Rectangle4: TRectangle;
    Layout7: TLayout;
    edtUsuario: TEdit;
    Layout9: TLayout;
    Label5: TLabel;
    Label7: TLabel;
    edtSenha: TEdit;
    Label9: TLabel;
    BindSourceDB1: TBindSourceDB;
    btnReset: TEditButton;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    Rectangle2: TRectangle;
    Layout2: TLayout;
    Label4: TLabel;
    edtNome: TEdit;
    procedure btnConfirmaClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtNomeFiltroChangeTracking(Sender: TObject);
    procedure cbxTipoFChange(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure cbxSegmentoFChange(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
  private
    procedure MyShowMessage(msg: string; btnCancel: Boolean);
    procedure LimpaCampos;
    procedure CarregaSupervisor;
    function  RetornaNomeSupervisor(id:string):string;
    procedure Filtro;
  public
    vIdSupervisor:string;
  end;

var
  frmUsuarios: TfrmUsuarios;

implementation

{$R *.fmx}

uses UMsgDlg,UPrincipal, udmDb;

procedure TfrmUsuarios.btnAddClick(Sender: TObject);
begin
  LimpaCampos;
  btnReset.Visible := false;
  edtSenha.ReadOnly:= false;
  dmdb.TUsuario.Close;
  dmdb.TUsuario.Open;
  dmdb.TUsuario.Insert;
  inherited;
end;

procedure TfrmUsuarios.LimpaCampos;
begin
  edtNome.Text          :='';
  edtUsuario.Text       :='';
  edtSenha.Text         :='';
  cbxTipo.ItemIndex     :=-1;

end;

procedure TfrmUsuarios.btnConfirmaClick(Sender: TObject);
var
  Stream: TMemoryStream;
begin
  if edtNome.Text.Length =0 then
  begin
    MyShowMessage('Informe o Nome*',false);
    edtNome.SetFocus;
    Exit;
  end;
  if edtUsuario.Text.Length =0 then
  begin
    MyShowMessage('Informe o Usuario',false);
    edtUsuario.SetFocus;
    Exit;
  end;
  if edtSenha.Text.Length =0 then
  begin
    MyShowMessage('Informe a Senha',false);
    edtSenha.SetFocus;
    Exit;
  end;
  if cbxTipo.ItemIndex =-1 then
  begin
    MyShowMessage('Informe o Tipo',false);
    cbxTipo.SetFocus;
    Exit;
  end;
  if  dmdb.TUsuario.State =dsInsert then
   if not dmdb.VerificaUsuarioExiste(edtUsuario.Text)then
   begin
    MyShowMessage('Já Existe Um Usuário Cadastrado Com Essa Credencial!',false);
    Exit;
   end;
  dmdb.TUsuarionome.AsString                := edtNome.Text;
  dmdb.TUsuariousuario.AsString             := edtUsuario.Text;
  dmdb.TUsuariosenha.AsString               := edtSenha.Text;
  dmdb.TUsuariotipo.AsInteger               := cbxTipo.ItemIndex;
  dmdb.TUsuarioidusuario.AsString           := dmdb.vIdUsuarioLogado;
  try
   dmdb.TUsuario.ApplyUpdates(-1);
   dmdb.TUsuario.Close;
   dmdb.TUsuario.Open;
   myShowMessage('Usuario cadastrado com sucesso!',false);
   MudarAba(tbiLista,Sender);
  except
   on E : Exception do
      myShowMessage('Erro ao adicionar Usuario:'+E.Message,false);
  end;
end;

procedure TfrmUsuarios.btnDeletarClick(Sender: TObject);
begin
   MyShowMessage('Deseja Realmente Deletar esse registro?',true);
   case frmPrincipal.vMsgConfirma of
     1:begin
        dmdb.TUsuario.Edit;
        dmdb.TUsuarioStatus.AsInteger := -1;
        try
          dmdb.TUsuario.ApplyUpdates(-1);
          MyShowMessage('Registro Excluido com sucesso!',false);
          dmdb.TUsuario.Close;
          dmdb.TUsuario.Open();
        except
         on E : Exception do
          ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
        end;
     end;
   end;
end;

procedure TfrmUsuarios.btnEditarClick(Sender: TObject);
var
 vTipo:integer;
 Stream : TMemoryStream;
begin
  btnReset.Visible           := true;
  edtNome.Text               := dmdb.TUsuarionome.AsString;
  edtUsuario.Text            := dmdb.TUsuariousuario.AsString;
  edtSenha.ReadOnly          := true;
  edtSenha.Text              := dmdb.TUsuariosenha.AsString;
  cbxTipo.ItemIndex          := dmdb.TUsuariotipo.AsInteger;
  dmdb.TUsuario.edit;
  inherited;
end;

procedure TfrmUsuarios.btnResetClick(Sender: TObject);
begin
 edtSenha.ReadOnly          := false;
 edtSenha.Text              := '';
end;

procedure TfrmUsuarios.CarregaSupervisor;
begin

end;

procedure TfrmUsuarios.cbxSegmentoFChange(Sender: TObject);
begin
 Filtro;
end;

procedure TfrmUsuarios.cbxTipoFChange(Sender: TObject);
begin
  Filtro;
end;

procedure TfrmUsuarios.edtNomeFiltroChangeTracking(Sender: TObject);
begin
  Filtro;
end;

procedure TfrmUsuarios.Filtro;
var
 vFiltrado:integer;
 vFiltro:string;
begin
 vFiltrado :=0;
 dmdb.TUsuario.Filtered := false;
 if edtNomeFiltro.Text.Length>0 then
 begin
   vFiltrado :=1;
   vFiltro := 'NOME LIKE '+QuotedStr('%'+edtNomeFiltro.Text+'%');
 end;
 if vFiltrado=1 then
 begin
  dmdb.TUsuario.Filter   := vFiltro;
  dmdb.TUsuario.Filtered := true;
 end
 else
 begin
   dmdb.TUsuario.Filtered := false;
   dmdb.TUsuario.Close;
   dmdb.TUsuario.Open;
 end;
end;

procedure TfrmUsuarios.FormShow(Sender: TObject);
begin
  dmdb.TUsuario.Close;
  dmdb.TUsuario.Open;
  inherited;
end;

procedure TfrmUsuarios.MyShowMessage(msg: string; btnCancel: Boolean);
var
 dlg :TFrmmsgDlg;
begin
  dlg := TFrmmsgDlg.Create(nil);
  dlg.Position := TFormPosition.ScreenCenter;
  dlg.msg.Text := msg;
  dlg.btnCancel.Visible := btnCancel;
  dlg.ShowModal(
  procedure(ModalResult: TModalResult)
  begin
  end);
end;

function TfrmUsuarios.RetornaNomeSupervisor(id: string): string;
begin
 with qryAux,qryAux.SQL do
 begin
   Clear;
   Add('SELECT * FROM USUARIO WHERE Id='+id);
   Open;
   Result:= qryAux.FieldByName('nome').AsString;
 end;
end;

procedure TfrmUsuarios.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
 Close;
end;

end.

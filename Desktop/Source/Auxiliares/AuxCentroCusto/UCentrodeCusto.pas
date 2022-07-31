unit UCentrodeCusto;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FMX.ActnList,
  System.Actions, FMX.TabControl, FMX.Ani, FMX.ScrollBox, FMX.Grid, FMX.Edit,
  FMX.Controls.Presentation, FMX.Objects, FMX.Layouts, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope, FMX.ListBox;

type
  TfrmCentroCusto = class(TfrmCadPadrao)
    Rectangle2: TRectangle;
    Layout2: TLayout;
    Label4: TLabel;
    edtNome: TEdit;
    Label5: TLabel;
    cbxStatus: TComboBox;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Layout14: TLayout;
    Rectangle5: TRectangle;
    Layout15: TLayout;
    Layout16: TLayout;
    Layout19: TLayout;
    Label17: TLabel;
    edtIdErp: TEdit;
    ClearEditButton13: TClearEditButton;
    procedure btnAddClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
  frmCentroCusto: TfrmCentroCusto;

implementation

{$R *.fmx}

uses UDmDB,UPrincipal;

procedure TfrmCentroCusto.btnAddClick(Sender: TObject);
begin
  edtNome.Text :='';
  cbxStatus.ItemIndex :=0;
  dmDB.TCentroCusto.Close;
  dmDB.TCentroCusto.Open;
  dmDB.TCentroCusto.Insert;
  inherited;
end;

procedure TfrmCentroCusto.btnBuscarFiltroClick(Sender: TObject);
begin
 if edtNomeFiltro.Text.Length>0 then
 begin
   dmDB.TCentroCusto.Filtered := false;
   dmDB.TCentroCusto.Filter   := 'NOME LIKE '+QuotedStr('%'+edtNomeFiltro.Text+'%');
   dmDB.TCentroCusto.Filtered := true;
 end
 else
 begin
   dmDB.TCentroCusto.Filtered := false;
   dmDB.TCentroCusto.Close;
   dmDB.TCentroCusto.Open;
 end;
 lblFoterCout.Text := intToStr(StringGrid1.RowCount);
end;

procedure TfrmCentroCusto.btnDeletarClick(Sender: TObject);
begin
   MyShowMessage('Deseja Realmente Deletar esse registro?',true);
   case frmPrincipal.vMsgConfirma of
     1:begin
        dmDB.TCentroCusto.Edit;
        dmDB.TCentroCustosyncaws.AsInteger            :=0;
        dmDB.TCentroCustoStatus.AsInteger             := -1;
        dmDB.TCentroCustoIdUsuarioAlteracao.AsString  := dmDB.vIdUsuarioLogado;
        dmDB.TCentroCustoDataAlteracao.AsDateTime     := now;
        try
          dmDB.TCentroCustosyncaws.AsInteger          :=0;
          dmDB.TCentroCusto.ApplyUpdates(-1);
          MyShowMessage('Registro Excluido com sucesso!',false);
          dmDB.TCentroCusto.Close;
          dmDB.TCentroCusto.Open;
//          lblfo.Text := intToStr(StringGrid1.RowCount);
        except
         on E : Exception do
          ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
        end;
     end;
   end;
end;

procedure TfrmCentroCusto.btnEditarClick(Sender: TObject);
begin
  edtNome.Text             := dmDB.TCentroCustonome.AsString;
  edtIdErp.Text            := dmDB.TCentroCustoiderp.AsString;
  if dmdb.TCentroCustoStatus.AsInteger=1 then
   cbxStatus.ItemIndex:=0
  else
   cbxStatus.ItemIndex:=1;
  dmDB.TCentroCusto.edit;
  inherited;
end;

procedure TfrmCentroCusto.btnSalvarClick(Sender: TObject);
begin
  if cbxStatus.ItemIndex=-1 then
  begin
    MyShowMessage('Informe o Status',false);
    Exit;
  end;
  if edtNome.Text.Length=0 then
  begin
    MyShowMessage('Informe o Nome!!',false);
    edtNome.SetFocus;
    Exit;
  end;
  if dmDB.TCentroCusto.State=dsEdit then
  begin
   dmDB.TCentroCustoIdUsuarioAlteracao.AsString  := dmDB.vIdUsuarioLogado;
   dmDB.TCentroCustoDataAlteracao.AsDateTime     := now;
  end;
  if dmDB.TCentroCusto.State=dsInsert then
  begin
   if not dmDB.VerificaCadastroExiste('NOME','CentroCusto',edtNome.Text) then
   begin
     MyShowMessage('Ja existe um Centro de Custo com esse nome:'+edtNome.Text,false);
     Exit;
   end;
  end;
  dmDB.TCentroCustonome.AsString         := edtNome.Text;
  if cbxStatus.ItemIndex=0 then
   dmdb.TCentroCustoStatus.AsInteger      :=1
  else
   dmdb.TCentroCustoStatus.AsInteger      :=0;

  dmDB.TCentroCustoIdUsuario.AsString := dmDB.vIdUsuarioLogado;
  dmDB.TCentroCustosyncaws.AsInteger :=0;

  if edtIdErp.Text.Length>0 then
   dmDB.TCentroCustoiderp.AsString  := edtIdErp.Text
  else
   dmDB.TCentroCustoiderp.AsVariant := NULL;

  try
   dmDB.TCentroCusto.ApplyUpdates(-1);
   dmDB.TCentroCusto.Close;
   dmDB.TCentroCusto.Open;
   lblFoterCout.Text := intToStr(StringGrid1.RowCount);
   MyShowMessage('Centro de Custo Cadastrado com sucesso!',false);
   MudarAba(tbiLista,Sender);
  except
   on E : Exception do
     MyShowMessage('Erro ao Inserir Centro de Custo:'+E.Message,false);
  end;
end;

procedure TfrmCentroCusto.edtNomeFiltroKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if key=13 then
  btnBuscarFiltroClick(sender);
end;

procedure TfrmCentroCusto.FormShow(Sender: TObject);
begin
  dmDB.TCentroCusto.Close;
  dmDB.TCentroCusto.Open;
  inherited;
end;


procedure TfrmCentroCusto.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
 Close;
end;

end.

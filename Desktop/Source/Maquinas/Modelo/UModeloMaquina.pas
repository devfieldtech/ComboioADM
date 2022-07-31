unit UModeloMaquina;

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
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  UdmManutencao,Winapi.Windows;

type
  TfrmCadModeloMaquina = class(TfrmCadPadrao)
    Layout3: TLayout;
    Rectangle4: TRectangle;
    Layout11: TLayout;
    Layout12: TLayout;
    Layout13: TLayout;
    Label12: TLabel;
    edtMarca: TEdit;
    SearchEditButton6: TSearchEditButton;
    ClearEditButton11: TClearEditButton;
    Layout1: TLayout;
    Rectangle2: TRectangle;
    Layout2: TLayout;
    Layout4: TLayout;
    Layout6: TLayout;
    lblSegmento: TLabel;
    edtModelo: TEdit;
    ClearEditButton12: TClearEditButton;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Layout7: TLayout;
    Rectangle3: TRectangle;
    Layout8: TLayout;
    Layout9: TLayout;
    Layout10: TLayout;
    Label4: TLabel;
    edtMediaConsumo: TEdit;
    ClearEditButton1: TClearEditButton;
    Label5: TLabel;
    edtToleranciaConsumo: TEdit;
    ClearEditButton2: TClearEditButton;
    procedure SearchEditButton6Click(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnBuscarFiltroClick(Sender: TObject);
    procedure edtNomeFiltroKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edtMediaConsumoKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    vIdMarca,vIdFabricante:string;
  end;

var
  frmCadModeloMaquina: TfrmCadModeloMaquina;

implementation

{$R *.fmx}

uses UAuxMarcas, UdmDB, UPrincipal;

procedure TfrmCadModeloMaquina.btnAddClick(Sender: TObject);
begin
  edtMarca.Text  :='';
  edtModelo.Text :='';
  dmdb.ModeloMaquina.close;
  dmdb.ModeloMaquina.Open;
  dmdb.ModeloMaquina.insert;
  inherited;
end;

procedure TfrmCadModeloMaquina.btnBuscarFiltroClick(Sender: TObject);
begin
 if dmManutencao.TPlanoMaquinas.State<>dsInsert then
  begin
   if edtNomeFiltro.Text.Length>0 then
   begin
     dmdb.ModeloMaquina.Filtered := false;
     dmdb.ModeloMaquina.Filter   := 'MODELO LIKE '+QuotedStr('%'+edtNomeFiltro.Text+'%');
     dmdb.ModeloMaquina.Filtered := true;
   end
   else
   begin
     dmdb.ModeloMaquina.Filtered := false;
     dmdb.ModeloMaquina.Close;
     dmdb.ModeloMaquina.Open;
   end;
   lblFoterCout.Text := intToStr(StringGrid1.RowCount)
  end
  else
  begin
   if edtNomeFiltro.Text.Length>0 then
   begin
     dmdb.ModeloMaquina.Filtered := false;
     dmdb.ModeloMaquina.Filter   := 'MODELO LIKE '+QuotedStr('%'+edtNomeFiltro.Text+'%')+
     ' and idmarca='+dmManutencao.TPlanoManutencaoidfabricante.AsString;
     dmdb.ModeloMaquina.Filtered := true;
   end
   else
   begin
     dmdb.ModeloMaquina.Filtered := false;
     dmdb.ModeloMaquina.Filter   := ' idmarca='+dmManutencao.TPlanoManutencaoidfabricante.AsString;
     dmdb.ModeloMaquina.Filtered := true;
   end;
   lblFoterCout.Text := intToStr(StringGrid1.RowCount)
  end;
end;

procedure TfrmCadModeloMaquina.btnDeletarClick(Sender: TObject);
begin
  if not dmdb.VerificaModeloEmUso(dmdb.ModeloMaquinaid.AsString) then
  begin
   MyShowMessage('Existe Maquina(s) vinculada a esse Modelo impossivel deletar!',false);
   Exit;
  end;
  MyShowMessage('Deseja Realmente Deletar esse registro?',true);
   case frmPrincipal.vMsgConfirma of
     1:begin
        dmdb.ModeloMaquina.Edit;
        dmdb.ModeloMaquinaStatus.AsInteger             := -1;
        dmdb.ModeloMaquinaIdUsuarioAlteracao.AsString  := dmdb.vIdUsuarioLogado;
        dmdb.ModeloMaquinaDataAlteracao.AsDateTime     := now;
        try
          dmdb.ModeloMaquina.ApplyUpdates(-1);
          MyShowMessage('Registro Excluido com sucesso!',false);
          dmdb.ModeloMaquina.Close;
          dmdb.ModeloMaquina.Open();
        except
         on E : Exception do
          ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
        end;
     end;
   end;
  inherited;
end;

procedure TfrmCadModeloMaquina.btnEditarClick(Sender: TObject);
begin
  dmdb.ModeloMaquina.Edit;
  edtMarca.Text  :=dmdb.ModeloMaquinaFabricante.AsString;
  vIdMarca       :=dmdb.ModeloMaquinaidmarca.AsString;
  edtModelo.Text :=dmdb.ModeloMaquinaModelo.AsString;
  edtMediaConsumo.Text      :=  dmdb.ModeloMaquinamediaconsumo.AsString;
  edtToleranciaConsumo.Text := dmdb.ModeloMaquinatolerancaconsumopercent.AsString;
  inherited;
end;

procedure TfrmCadModeloMaquina.btnSalvarClick(Sender: TObject);
begin
 if edtMarca.Text.Length=0 then
 begin
  MyShowMessage('Informe a Marca!',false);
  edtMarca.SetFocus;
  Exit;
 end;
 if edtModelo.Text.Length=0 then
 begin
  MyShowMessage('Informe o Modelo!',false);
  edtModelo.SetFocus;
  Exit;
 end;
 if dmdb.ModeloMaquina.State=dsInsert then
 begin
  dmdb.ModeloMaquinaidusuario.AsString := dmdb.vIdUsuarioLogado;
  if not (dmdb.VerificaModeloExite(edtModelo.Text, vIdmarca))then
  begin
   frmPrincipal.MyShowMessage('Já Existe uma Modelo com esse nome para esse fabricante!',false);
   Exit;
  end;
 end
 else
 begin
  dmdb.ModeloMaquinaidusuarioalteracao.AsString := dmdb.vIdUsuarioLogado;
  dmdb.ModeloMaquinadataalteracao.AsDateTime    := now;
 end;
 if edtMediaConsumo.Text.Length>0 then
  dmdb.ModeloMaquinamediaconsumo.AsString  := edtMediaConsumo.Text
 else
  dmdb.ModeloMaquinamediaconsumo.AsInteger := 0;

 if edtToleranciaConsumo.Text.Length>0 then
  dmdb.ModeloMaquinatolerancaconsumopercent.AsString  := edtToleranciaConsumo.Text
 else
  dmdb.ModeloMaquinatolerancaconsumopercent.AsInteger := 0;

 dmdb.ModeloMaquinaidmarca.AsString := vIdMarca;
 dmdb.ModeloMaquinamodelo.AsString  := edtModelo.Text;
 try
   dmdb.ModeloMaquina.ApplyUpdates(-1);
   MyShowMessage('Registro Atualizado com Sucesso!',false);
   dmdb.ModeloMaquina.Close;
   dmdb.ModeloMaquina.Open;
   MudarAba(tbiLista,sender);
 except
  on E: Exception do
   MyShowMessage('Erro ao salvar Plano:'+E.Message,false);
 end;
end;

procedure TfrmCadModeloMaquina.edtMediaConsumoKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
  begin
    KeyChar := #0;
  end;
end;

procedure TfrmCadModeloMaquina.edtNomeFiltroKeyUp(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if key=13 then
  btnBuscarFiltroClick(Sender);
end;

procedure TfrmCadModeloMaquina.FormShow(Sender: TObject);
begin
  if dmManutencao.TPlanoMaquinas.State<>dsInsert then
  begin
   dmdb.ModeloMaquina.Filtered := false;
   dmdb.ModeloMaquina.close;
   dmdb.ModeloMaquina.Open;
  end
  else
  begin
    dmdb.ModeloMaquina.Filtered := false;
    dmdb.ModeloMaquina.Close;
    dmdb.ModeloMaquina.Open;
    dmdb.ModeloMaquina.Filter   := 'idmarca='+dmManutencao.TPlanoManutencaoidfabricante.AsString;
    dmdb.ModeloMaquina.Filtered := true;
  end;
  inherited;
end;

procedure TfrmCadModeloMaquina.SearchEditButton6Click(Sender: TObject);
begin
  frmCadAuxMarcas := TfrmCadAuxMarcas.Create(Self);
  try
    frmCadAuxMarcas.ShowModal;
  finally
    vIdMarca        := dmdb.TAuxMarcaid.AsString;
    edtMarca.Text  := dmdb.TAuxMarcanome.AsString;
    frmCadAuxMarcas.Free;
  end;
end;

end.

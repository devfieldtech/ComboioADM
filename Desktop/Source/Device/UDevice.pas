unit UDevice;

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
  Winapi.Windows;

type
  TfrmCadColetores = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    edtCentroCustoF: TEdit;
    ClearEditButton8: TClearEditButton;
    SearchEditButton4: TSearchEditButton;
    Z: TLabel;
    laySubSubCad: TLayout;
    Rsub: TRectangle;
    laySubSubSubCad: TLayout;
    Layout8: TLayout;
    Label16: TLabel;
    Patrimônio: TLabel;
    edtAtividade: TEdit;
    ClearEditButton4: TClearEditButton;
    SearchEditButton3: TSearchEditButton;
    edtPatrimonio: TEdit;
    ClearEditButton1: TClearEditButton;
    Label4: TLabel;
    edtMarca: TEdit;
    ClearEditButton2: TClearEditButton;
    edtModelo: TEdit;
    ClearEditButton3: TClearEditButton;
    Label5: TLabel;
    Layout1: TLayout;
    Rectangle2: TRectangle;
    Layout2: TLayout;
    Layout3: TLayout;
    Label6: TLabel;
    Label7: TLabel;
    Edit2: TEdit;
    ClearEditButton5: TClearEditButton;
    SearchEditButton1: TSearchEditButton;
    edtCentroCusto: TEdit;
    ClearEditButton6: TClearEditButton;
    SearchEditButton2: TSearchEditButton;
    procedure SearchEditButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnBuscarFiltroClick(Sender: TObject);
    procedure edtNomeFiltroKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure SearchEditButton2Click(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    vIdCerntroCusto:string;
    procedure LimpaCampos;
  public
    { Public declarations }
  end;

var
  frmCadColetores: TfrmCadColetores;

implementation

{$R *.fmx}

uses UPrincipal, UdmDB, UCentrodeCusto;

procedure TfrmCadColetores.btnAddClick(Sender: TObject);
begin
  LimpaCampos;
  dmdb.TDevice.Close;
  dmdb.TDevice.Open;
  dmdb.TDevice.Insert;
  inherited;
end;

procedure TfrmCadColetores.btnBuscarFiltroClick(Sender: TObject);
var
 vFiltro:string;
begin
 if edtNomeFiltro.Text.Length>0 then
  vFiltro := ' and patrimonio='+edtNomeFiltro.Text;
 if edtCentroCustoF.Text.Length>0 then
  vFiltro := ' and idcentrocusto='+vIdCerntroCusto;
 dmdb.AbrirColetores(vFiltro);
end;

procedure TfrmCadColetores.btnEditarClick(Sender: TObject);
begin
 dmdb.TDevice.Edit;
 edtPatrimonio.Text  :=dmdb.TDevicepatrimonio.AsString;
 edtMarca.Text       :=dmdb.TDevicemarca.AsString;
 edtModelo.Text      :=dmdb.TDevicemodelo.AsString;
 edtCentroCusto.Text :=dmdb.TDevicecentrocusto.AsString;
 vIdCerntroCusto     :=dmdb.TDeviceidcentrocusto.AsString;
 MudarAba(tbiCad,sender);
end;

procedure TfrmCadColetores.btnSalvarClick(Sender: TObject);
begin
 if edtPatrimonio.Text.Length=0 then
  begin
    MyShowMessage('Informe o N° de Patrimônio!',false);
    Exit;
  end;
  if edtMarca.Text.Length=0 then
  begin
    MyShowMessage('Informe a Marca!!',false);
    Exit;
  end;
  if edtModelo.Text.Length=0 then
  begin
    MyShowMessage('Informe o Modelo!!',false);
    Exit;
  end;
  if dmdb.TDevice.State =dsInsert then
   dmdb.TDeviceidusuario.AsString    := dmdb.vIdUsuarioLogado;

  dmdb.TDevicepatrimonio.AsString    := edtPatrimonio.Text;
  dmdb.TDevicemarca.AsString         := edtMarca.Text;
  dmdb.TDevicemodelo.AsString        := edtModelo.Text;
  if edtCentroCusto.Text.Length>0 then
   dmdb.TDeviceidcentrocusto.AsString := vIdCerntroCusto;
  try
   dmdb.TDevice.ApplyUpdates(-1);
   myShowMessage('Regisrtro Atualizado com Sucesso!',false);
   btnBuscarFiltroClick(sender);
   MudarAba(tbiLista,sender);
  except
   on E: Exception do
    myShowMessage('Erro ao salvar Registro:'+E.Message,false);
  end;
end;

procedure TfrmCadColetores.edtNomeFiltroKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if((keyChar in ['0'..'9'] = false) and (word(key) <> vk_back)) then
   KeyChar := #0;
end;

procedure TfrmCadColetores.FormShow(Sender: TObject);
begin
  dmdb.AbrirColetores('');
  inherited;
end;

procedure TfrmCadColetores.LimpaCampos;
begin
 edtPatrimonio.Text  :='';
 edtMarca.Text       :='';
 edtModelo.Text      :='';
 edtCentroCusto.Text :='';
end;

procedure TfrmCadColetores.SearchEditButton2Click(Sender: TObject);
begin
  frmCentroCusto := TfrmCentroCusto.Create(Self);
  try
    frmCentroCusto.ShowModal;
  finally
    vIdCerntroCusto      := dmDB.TCentroCustoid.AsString;
    edtCentroCusto.Text  := dmDB.TCentroCustonome.AsString;
  end;
end;

procedure TfrmCadColetores.SearchEditButton4Click(Sender: TObject);
begin
  frmCentroCusto := TfrmCentroCusto.Create(Self);
  try
    frmCentroCusto.ShowModal;
  finally
    vIdCerntroCusto      := dmDB.TCentroCustoid.AsString;
    edtCentroCustoF.Text  := dmDB.TCentroCustonome.AsString;
  end;
end;

end.

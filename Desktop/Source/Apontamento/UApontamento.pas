unit UApontamento;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FMX.ActnList,
  System.Actions, FMX.TabControl, FMX.Ani, FMX.ScrollBox, FMX.Grid, FMX.Edit,
  FMX.Objects, FMX.Controls.Presentation, FMX.Layouts, UdmDB, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.DateTimeCtrls;

type
  TfrmCadApontamento = class(TfrmCadPadrao)
    ToolBar2: TToolBar;
    Label4: TLabel;
    StringGrid2: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    Layout1: TLayout;
    Rectangle2: TRectangle;
    btnNovaViagem: TRectangle;
    Image1: TImage;
    Label5: TLabel;
    btnExcluirViagem: TRectangle;
    Image9: TImage;
    Label6: TLabel;
    btnEditarViagem: TRectangle;
    Image10: TImage;
    Label7: TLabel;
    laySubSubCad: TLayout;
    Rsub: TRectangle;
    laySubSubSubCad: TLayout;
    Layout8: TLayout;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    edtDataAbastecimento: TDateEdit;
    edtAtividade: TEdit;
    ClearEditButton4: TClearEditButton;
    SearchEditButton3: TSearchEditButton;
    edtCentroCusto: TEdit;
    ClearEditButton6: TClearEditButton;
    SearchEditButton2: TSearchEditButton;
    Layout14: TLayout;
    Rectangle13: TRectangle;
    Layout15: TLayout;
    Layout16: TLayout;
    Maquina: TLabel;
    Label23: TLabel;
    edtMaquina: TEdit;
    ClearEditButton3: TClearEditButton;
    EditButton5: TSearchEditButton;
    edtOperador: TEdit;
    ClearEditButton5: TClearEditButton;
    EditButton4: TSearchEditButton;
    Label8: TLabel;
    edtProduto: TEdit;
    ClearEditButton1: TClearEditButton;
    SearchEditButton1: TSearchEditButton;
    Label9: TLabel;
    edtAplicacaoProduto: TEdit;
    ClearEditButton2: TClearEditButton;
    Layout17: TLayout;
    Rectangle14: TRectangle;
    Layout18: TLayout;
    Layout19: TLayout;
    Label24: TLabel;
    edtObs: TEdit;
    Label10: TLabel;
    edtKMAtualEscavadeira: TEdit;
    ClearEditButton7: TClearEditButton;
    GroupBox1: TGroupBox;
    Label25: TLabel;
    Label27: TLabel;
    edtDataInicio: TDateEdit;
    edtDataFim: TDateEdit;
    Z: TLabel;
    edtCentroCustoF: TEdit;
    ClearEditButton8: TClearEditButton;
    SearchEditButton4: TSearchEditButton;
  private
    vIdCerntroCusto,vIdEscavadeira,vIdProduto:string;
  public
    procedure Filtro;
  end;

var
  frmCadApontamento: TfrmCadApontamento;

implementation

{$R *.fmx}

procedure TfrmCadApontamento.Filtro;
var
 vFiltro:string;
begin
 vFiltro := '';

 vFiltro  := vFiltro+' and a.dataoperacao between '+FormatDateTime('yyyy-mm-dd',edtDataInicio.Date).QuotedString+' and '+
    FormatDateTime('yyyy-mm-dd',edtDataFim.Date).QuotedString;

 if edtNomeFiltro.Text.Length>0 then
  vFiltro := ' and m.prefixo like '+QuotedStr('%'+edtNomeFiltro.Text+'%');

 if edtCentroCustoF.Text.Length>0  then
  vFiltro := vFiltro+' and a.idcentrocusto ='+vIdCerntroCusto;

 dmDB.AbreApontamento(vFiltro);
 lblFoterCout.Text := IntToStr(StringGrid1.RowCount)

end;


end.

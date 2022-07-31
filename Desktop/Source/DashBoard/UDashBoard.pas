unit UDashBoard;

interface

uses
   System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.TabControl, FMX.Ani, FMX.ActnList, System.Actions,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit, FMX.TreeView,Winapi.Windows,
  FMX.Effects, System.Notification, FMX.ScrollBox, FMX.Memo, FMX.WebBrowser,
  shellapi, View.WebCharts,Charts.Types, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView,
  FMX.ListBox, FMX.DateTimeCtrls;
type
  TfrmDash = class(TForm)
    ToolBar3: TToolBar;
    btnVoltarPadrao: TSpeedButton;
    ImageVoltaPadrao: TImage;
    Rectangle3: TRectangle;
    Rectangle1: TRectangle;
    WebConf: TWebBrowser;
    Rectangle4: TRectangle;
    WebChartConf: TWebCharts;
    Layout4: TLayout;
    layPasto: TLayout;
    recTotalAbastecimento: TRectangle;
    Layout167: TLayout;
    Image120: TImage;
    Layout170: TLayout;
    ShadowEffect7: TShadowEffect;
    lblTotalAbastecimento: TLabel;
    Label64: TLabel;
    recTotalLitros: TRectangle;
    Layout166: TLayout;
    Image121: TImage;
    Layout171: TLayout;
    ShadowEffect8: TShadowEffect;
    lblTotalLitros: TLabel;
    Label66: TLabel;
    Rectangle9: TRectangle;
    Layout5: TLayout;
    Image18: TImage;
    Layout10: TLayout;
    ShadowEffect2: TShadowEffect;
    lblTotalMaquinas: TLabel;
    Label15: TLabel;
    mnu: TImage;
    layFiltros: TLayout;
    Rectangle10: TRectangle;
    Layout14: TLayout;
    Layout15: TLayout;
    Layout1: TLayout;
    Rectangle2: TRectangle;
    Layout2: TLayout;
    cbxCentroCusto: TComboBox;
    Layout3: TLayout;
    Layout7: TLayout;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label22: TLabel;
    Label27: TLabel;
    edtDataInicio: TDateEdit;
    edtDataFim: TDateEdit;
    btbGerar: TButton;
    Rectangle27: TRectangle;
    Layout177: TLayout;
    Image124: TImage;
    Layout178: TLayout;
    ShadowEffect11: TShadowEffect;
    lblPrimeiroAbastecimento: TLabel;
    Label69: TLabel;
    Rectangle5: TRectangle;
    Layout8: TLayout;
    Image1: TImage;
    Layout9: TLayout;
    ShadowEffect1: TShadowEffect;
    lblUltimoAbastecimento: TLabel;
    Label3: TLabel;
    layDados: TLayout;
    imgLogoDash: TImage;
    procedure cbxCentroCustoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnVoltarPadraoClick(Sender: TObject);
    procedure btbGerarClick(Sender: TObject);
    procedure mnuClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    vIdCentroCusto:string;
    procedure CarregaRetiro;
  end;

var
  frmDash: TfrmDash;

implementation

{$R *.fmx}

uses UPrincipal,UdmDB, UdmDash;

{ TForm1 }

procedure TfrmDash.btbGerarClick(Sender: TObject);
var
 De,Ate,vFiltro:string;
begin
 if cbxCentroCusto.ItemIndex=-1 then
 begin
  frmPrincipal.MyShowMessage('Informe o centro de custo!!',false);
  Exit;
 end;
 de := FormatDateTime('yyyy-mm-dd',edtDataInicio.Date).QuotedString;
 Ate := FormatDateTime('yyyy-mm-dd',edtDataFim.Date).QuotedString;
 vFiltro := 'and dataabastecimento between '+de+' and '+Ate;
 vIdCentroCusto    := IntToStr(Integer(cbxCentroCusto.Items.Objects[cbxCentroCusto.ItemIndex]));
 dmDasch.AbreAtualizaLabel(vIdCentroCusto,vFiltro);
 layDados.Visible := true;
 WebChartConf
 // .BackgroundColor('#2e353b')
 .NewProject
 .Rows
   .Title
     .Configuracoes
      .H4('&nbsp&nbsp&nbsp Consumo Por Combustivel')
     .&End
   .&End
  .&End
  .Rows
   .Title
   .&End
   .Tag
    .Add(
      WebChartConf
      .ContinuosProject
       .Charts
        ._ChartType(bar)
          .Attributes
            .Heigth(100)
            .Name('ConsumoPorCombustivel')
            .ColSpan(12)
            .Options
              .Legend
                .display(false)
                .position('bottom')
                .Labels
                  .fontColorHEX('#000000')
                .&End
              .&End
             .Scales
                .Axes
                 .yAxe
                  .Stacked(true)
                .&End
               .&End
             .&End
            .&End
              .Labelling
                 .Format('0.0[00]')
                 .RGBColor('0,0,0')
                 .FontSize(12)
                 .FontStyle('bold')
                 .FontFamily('Arial')
               .&End
             .DataSet
              .textLabel('Catagoria')
              .Types('bar')
              .BackgroundColor('19,169,107')
              .Fill(true)
              .DataSet(dmDasch.qryLitrosPorCombustivel)
             .&End
          .&End
        .&End
       .&End
      .HTML
     )
    .&End
  .&End
  .Rows
   .Title
     .Configuracoes
      .H4('&nbsp&nbsp&nbsp Consumo Por Maquina')
     .&End
   .&End
  .&End
  .Rows
   .Title
   .&End
   .Tag
    .Add(
      WebChartConf
      .ContinuosProject
       .Charts
          ._ChartType(horizontalBar)
        .Attributes
          .Name('ConsumoporMaquina')
          .ColSpan(12)
          .Options
           .Legend
            .display(false)
            .position('bottom')
            .Labels
              .fontColorHEX('#000000')
           .&End
          .&End
          .&End
          .DataSet
            .BackgroundColor('19,169,107')
            .Fill(true)
            .textLabel('Consumo por Maquina')
            .DataSet(dmDasch.qryConsumoMaquina)
          .&End
        .&End
       .&End
      .HTML
     )
    .&End
  .&End
 .WebBrowser(WebConf)
 .Generated;
end;

procedure TfrmDash.btnVoltarPadraoClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmDash.CarregaRetiro;
var
 i:integer;
begin
   dmdb.TCentroCusto.Close;
   dmdb.TCentroCusto.Open;
   dmdb.TCentroCusto.First;
   cbxCentroCusto.Items.Clear;
   while not dmdb.TCentroCusto.Eof do
   begin
    cbxCentroCusto.Items.AddObject(dmdb.TCentroCustonome.AsString,TObject(dmdb.TCentroCustoID.AsInteger));
    inc(i);
    dmdb.TCentroCusto.Next;
   end;
   cbxCentroCusto.ItemIndex :=-1;
end;

procedure TfrmDash.cbxCentroCustoChange(Sender: TObject);
begin
  if cbxCentroCusto.ItemIndex>-1 then
   vIdCentroCusto    := IntToStr(Integer(cbxCentroCusto.Items.Objects[cbxCentroCusto.ItemIndex]));
end;

procedure TfrmDash.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if dmDasch<>nil then
  dmDasch.DisposeOf;
end;

procedure TfrmDash.FormShow(Sender: TObject);
begin
 layDados.Visible := false;
 if dmDasch=nil then
  dmDasch := TdmDasch.Create(Self);
 CarregaRetiro;
end;


procedure TfrmDash.mnuClick(Sender: TObject);
begin
 if layFiltros.Visible then
  layFiltros.Visible := false
 else
  layFiltros.Visible := true
end;

end.

unit UAbastecimento;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FMX.ActnList,
  System.Actions, FMX.TabControl, FMX.Ani, FMX.ScrollBox, FMX.Grid, FMX.Edit,
  FMX.Controls.Presentation, FMX.Objects, FMX.Layouts, FMX.ListBox,
  FMX.DateTimeCtrls, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope,Winapi.Windows, FMX.Menus,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView,Vcl.Imaging.jpeg,IdHTTP,FMX.BitmapHelper,
  Data.Cloud.CloudAPI, Data.Cloud.AmazonAPI,ShellApi,
  System.Json.writers,System.JSON.Types,FMX.Platform.Win,System.JSON,
  FMX.Memo.Types, FMX.Memo, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, REST.Types, REST.Client, Data.Bind.ObjectScope, FMX.Effects;

type
  TfrmAbastecimento = class(TfrmCadPadrao)
    Label22: TLabel;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    Layout3: TLayout;
    Layout4: TLayout;
    Layout6: TLayout;
    Layout7: TLayout;
    Layout8: TLayout;
    Label7: TLabel;
    edtDataAbastecimento: TDateEdit;
    Label8: TLabel;
    edtHoraAbastecimento: TTimeEdit;
    Maquina: TLabel;
    edtMaquina: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    edtVolumeLitros: TEdit;
    ClearEditButton2: TClearEditButton;
    ToolBar4: TToolBar;
    Label14: TLabel;
    Label13: TLabel;
    Image10: TImage;
    BindSourceDB2: TBindSourceDB;
    layNewOutros: TLayout;
    Rectangle6: TRectangle;
    Rectangle7: TRectangle;
    Label17: TLabel;
    Image13: TImage;
    Rectangle8: TRectangle;
    edtOutroProduto: TEdit;
    SearchEditButton1: TSearchEditButton;
    ClearEditButton3: TClearEditButton;
    Rectangle14: TRectangle;
    edtQuantidade: TEdit;
    edtCentroCusto: TEdit;
    Label15: TLabel;
    edtOperador: TEdit;
    ClearEditButton1: TClearEditButton;
    edtHorimetro: TEdit;
    Label16: TLabel;
    edtAtividade: TEdit;
    ClearEditButton4: TClearEditButton;
    Layout11: TLayout;
    Layout12: TLayout;
    Layout13: TLayout;
    Label19: TLabel;
    edtObs: TEdit;
    btnExcel: TRectangle;
    Label20: TLabel;
    Label21: TLabel;
    Rectangle9: TRectangle;
    Label24: TLabel;
    Image11: TImage;
    Image12: TImage;
    Rectangle5: TRectangle;
    Label23: TLabel;
    edtcombustivel: TEdit;
    ClearEditButton5: TClearEditButton;
    Layout14: TLayout;
    Layout15: TLayout;
    Image14: TImage;
    ClearEditButton6: TClearEditButton;
    Layout16: TLayout;
    btnRepConsumo: TRectangle;
    SaveDialog1: TSaveDialog;
    Label18: TLabel;
    edtKMAtual: TEdit;
    GroupBox1: TGroupBox;
    Label25: TLabel;
    Label27: TLabel;
    edtDataInicio: TDateEdit;
    edtDataFim: TDateEdit;
    Z: TLabel;
    edtCentroCustoF: TEdit;
    ClearEditButton8: TClearEditButton;
    SearchEditButton4: TSearchEditButton;
    edtAtividadeF: TEdit;
    ClearEditButton9: TClearEditButton;
    SearchEditButton5: TSearchEditButton;
    Label26: TLabel;
    cbxBombaF: TComboBox;
    Label28: TLabel;
    edtcombustivelf: TEdit;
    ClearEditButton10: TClearEditButton;
    SearchEditButton7: TSearchEditButton;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    lblTotalLitrosGrid: TLabel;
    layTipoReport: TLayout;
    Rectangle3: TRectangle;
    ToolBar50552: TToolBar;
    Rectangle16: TRectangle;
    Label36: TLabel;
    Image17: TImage;
    Layout10: TLayout;
    Layout20: TLayout;
    btnComFoto: TRectangle;
    btnSemFoto: TRectangle;
    Label32: TLabel;
    Label33: TLabel;
    Image15: TImage;
    Image16: TImage;
    edtLocalEstoque: TEdit;
    ClearEditButton11: TClearEditButton;
    SearchEditButton8: TSearchEditButton;
    chkComAlerta: TCheckBox;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    btnConferencia: TRectangle;
    Image1: TImage;
    Label4: TLabel;
    tbiConf: TTabItem;
    ToolBar2: TToolBar;
    Rectangle2: TRectangle;
    imgVoltar: TImage;
    ListaFotos: TListView;
    imgData: TImage;
    imgComboio: TImage;
    imgCombustivel: TImage;
    imgLitros: TImage;
    imgNoImage: TImage;
    imgFundo: TImage;
    recConf: TRectangle;
    Rectangle4: TRectangle;
    ToolBar5: TToolBar;
    lblFoterCout1: TLabel;
    Label6: TLabel;
    Label34: TLabel;
    lblTotalLitrosGrid1: TLabel;
    Layout1: TLayout;
    Rectangle10: TRectangle;
    Label5: TLabel;
    edtNomeFiltro1: TEdit;
    ClearEditButton12: TClearEditButton;
    Button1: TButton;
    Image9: TImage;
    GroupBox2: TGroupBox;
    Label35: TLabel;
    Label37: TLabel;
    edtDataInicio1: TDateEdit;
    edtDataFim1: TDateEdit;
    Label38: TLabel;
    edtCentroCustoF1: TEdit;
    ClearEditButton13: TClearEditButton;
    SearchEditButton9: TSearchEditButton;
    Edit3: TEdit;
    ClearEditButton14: TClearEditButton;
    SearchEditButton10: TSearchEditButton;
    Label39: TLabel;
    cbxBombaF1: TComboBox;
    Label40: TLabel;
    edtcombustivelf1: TEdit;
    ClearEditButton15: TClearEditButton;
    SearchEditButton11: TSearchEditButton;
    Label41: TLabel;
    chkComAlerta1: TCheckBox;
    imgAlerta: TImage;
    imgSemAlerta: TImage;
    imgFundoAzul: TImage;
    imgMaps: TImage;
    Label42: TLabel;
    Image18: TImage;
    imgDowload: TImage;
    imgHora: TImage;
    SaveDialog2: TSaveDialog;
    imgAux: TImage;
    AmazonConnectionInfo1: TAmazonConnectionInfo;
    recAguarde: TRectangle;
    Label43: TLabel;
    imgDelete: TImage;
    imgEdit: TImage;
    btnIntegracao2: TButton;
    Image19: TImage;
    memoJson: TMemo;
    SaveJson: TSaveDialog;
    IdHTTP1: TIdHTTP;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    layIntegracaoProtheus: TLayout;
    mLog: TMemo;
    Rectangle11: TRectangle;
    Layout2: TLayout;
    Image20: TImage;
    Label44: TLabel;
    ToolBar6: TToolBar;
    Rectangle15: TRectangle;
    Image22: TImage;
    btnIntegracao1: TButton;
    Image21: TImage;
    Layout9: TLayout;
    btnAbreImgInicial: TRectangle;
    Layout21: TLayout;
    Rectangle23: TRectangle;
    ImgBombaEdit: TImage;
    Label45: TLabel;
    btnImgStop: TRectangle;
    Layout23: TLayout;
    Label46: TLabel;
    Rectangle24: TRectangle;
    ImgHorimetroEdit: TImage;
    ShadowEffect1: TShadowEffect;
    Rectangle17: TRectangle;
    Layout25: TLayout;
    Label47: TLabel;
    Rectangle18: TRectangle;
    ImgHodometroEdit: TImage;
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure edtVolumeLitrosChangeTracking(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure EditButton5Click(Sender: TObject);
    procedure EditButton4Click(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure edtVolumeLitrosKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtQuantidadeChangeTracking(Sender: TObject);
    procedure edtQuantidadeKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure btnAdicionarTalhaoClick(Sender: TObject);
    procedure Image13Click(Sender: TObject);
    procedure edtHorimetroKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtHorimetroChangeTracking(Sender: TObject);
    procedure EditButton1Click(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure cbxBombaFChange(Sender: TObject);
    procedure btnBuscaCombustivelClick(Sender: TObject);
    procedure btnBuscaCentroCustoClick(Sender: TObject);
    procedure cbxBombaFClick(Sender: TObject);
    procedure cbxLocalEstoqueClick(Sender: TObject);
    procedure SearchEditButton2Click(Sender: TObject);
    procedure SearchEditButton3Click(Sender: TObject);
    procedure SearchEditButton6Click(Sender: TObject);
    procedure SearchEditButton4Click(Sender: TObject);
    procedure SearchEditButton5Click(Sender: TObject);
    procedure SearchEditButton7Click(Sender: TObject);
    procedure btnBuscarFiltroClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure Rectangle9Click(Sender: TObject);
    procedure btnConfirmaPluviClick(Sender: TObject);
    procedure SearchEditButton1Click(Sender: TObject);
    procedure btnRepConsumoClick(Sender: TObject);
    procedure Image17Click(Sender: TObject);
    procedure btnComFotoClick(Sender: TObject);
    procedure btnSemFotoClick(Sender: TObject);
    procedure btnSemFotoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btnSemFotoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btnComFotoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btnComFotoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure SearchEditButton8Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure btnConferenciaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SearchEditButton9Click(Sender: TObject);
    procedure SearchEditButton11Click(Sender: TObject);
    procedure cbxBombaF1Change(Sender: TObject);
    procedure cbxBombaF1Click(Sender: TObject);
    procedure ListaFotosItemClickEx(const Sender: TObject; ItemIndex: Integer;
      const LocalClickPos: TPointF; const ItemObject: TListItemDrawable);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure btnIntegracao2Click(Sender: TObject);
    procedure Image22Click(Sender: TObject);
  private
    vIdCerntroCusto,vIdMaquina,vIdOperador,vIdLocalEstoque,vIDProduto,vIdAtividade,
    vCombustivelEx,vBombaEx,IdCombustivel,
    vIdAbastecimentoLista,vLatitudeLista,vLongitudeLista,
    vImgBombaLista,vImgHorimetroLista,vImgKMLista:string;
    vTipoMedicao,vListaCheck:integer;
    procedure SomarColunasGrid;
  public
    procedure Filtro;
    procedure Filtro2;
    procedure GerarLista;
    procedure DownloadImgS3(vPath,vImgName:String);
    function CheckFileOnlineExists(url: string): Boolean;
  end;

var
  frmAbastecimento: TfrmAbastecimento;

implementation

{$R *.fmx}

uses UDmDB, UCadMaquina, UOperadorMaquinas, UPrincipal, UProdutos,
  UAuxAtividadeAbastecimento,UCentrodeCusto, UdmReport, ULocalEstoque,
  RESTRequest4D;

procedure TfrmAbastecimento.btnAddClick(Sender: TObject);
begin
  edtAtividade.Text           :='';
  edtMaquina.Text             :='';
  edtHorimetro.Text           :='0';
  edtOperador.Text            :='';
  edtLocalEstoque.Text        :='';
  edtcombustivel.Text         :='';
  edtVolumeLitros.Text        :='0';
  edtCentroCusto.Text         :='';
  edtObs.Text                 :='';
  dmDB.TAbastecimento.Insert;
  inherited;
end;

procedure TfrmAbastecimento.btnAdicionarTalhaoClick(Sender: TObject);
begin
 edtOutroProduto.Text :='';
 edtQuantidade.Text   :='0';
 layNewOutros.Visible := true;
end;

procedure TfrmAbastecimento.btnBuscaCentroCustoClick(Sender: TObject);
begin
  frmCentroCusto := TfrmCentroCusto.Create(Self);
  try
    frmCentroCusto.ShowModal;
  finally
    vIdCerntroCusto      := dmDB.TCentroCustoid.AsString;
    edtCentroCusto.Text  := dmDB.TCentroCustonome.AsString;
  end;
end;

procedure TfrmAbastecimento.btnBuscaCombustivelClick(Sender: TObject);
begin
  frmCadProdutos := TfrmCadProdutos.Create(Self);
  try
    frmCadProdutos.ShowModal;
  finally
    IdCombustivel           := dmDB.TProdutosid.AsString;
    edtcombustivel.Text     := dmDB.TProdutosnome.AsString;
  end;
end;

procedure TfrmAbastecimento.btnBuscarFiltroClick(Sender: TObject);
begin
 Filtro;
end;

procedure TfrmAbastecimento.btnConferenciaClick(Sender: TObject);
begin
 GerarLista;
 MudarAba(tbiConf,sender)
end;

procedure TfrmAbastecimento.btnConfirmaPluviClick(Sender: TObject);
begin
 edtOutroProduto.Text :='';
 edtQuantidade.Text   :='0';
 layNewOutros.Visible := true;
end;

procedure TfrmAbastecimento.btnDeletarClick(Sender: TObject);
begin
 MyShowMessage('Deseja Realmente Deletar esse registro?',true);
   case frmPrincipal.vMsgConfirma of
     1:begin
        dmDB.TAbastecimento.Edit;
        dmDB.TAbastecimentostatus.AsInteger := -1;
        dmDB.TAbastecimentoIdUsuarioAlteracao.AsString  := dmDB.vIdUsuarioLogado;
        dmDB.TAbastecimentoDataAlteracao.AsDateTime     := now;
        dmDB.TAbastecimentosyncaws.AsInteger            :=0;
        try
          dmDB.TAbastecimento.ApplyUpdates(-1);
          MyShowMessage('Registro Excluido com sucesso!',false);
          Filtro;
        except
         on E : Exception do
          ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
        end;
     end;
   end;
end;

procedure TfrmAbastecimento.btnEditarClick(Sender: TObject);
begin
 vListaCheck :=0;
 dmDB.TAbastecimento.Edit;
 edtCentroCusto.Text           := dmDB.TAbastecimentocentrocustonome.AsString;
 vIdCerntroCusto               := dmDB.TAbastecimentoidcentrocusto.AsString;
 vIdAtividade                  := dmDB.TAbastecimentoidAtividade.AsString;
 edtDataAbastecimento.Date     := dmDB.TAbastecimentodataabastecimento.AsDateTime;
 vIdLocalEstoque               := dmDB.TAbastecimentoidlocalestoque.AsString;
 edtLocalEstoque.text          := dmDB.TAbastecimentolocaldeEstoque.AsString;
 vIdMaquina                    := dmDB.TAbastecimentoidmaquina.AsString;
 edtMaquina.Text               := dmDB.TAbastecimentoprefixo.AsString;
 vIdOperador                   := dmDB.TAbastecimentoidoperador.AsString;
 edtVolumeLitros.Text          := dmDB.TAbastecimentovolumelt.AsString;
 edtcombustivel.Text           := dmDB.TAbastecimentoproduto.AsString;
 edtHorimetro.Text             := dmDB.TAbastecimentohorimetro.AsString;
 edtKMAtual.Text               := dmDB.TAbastecimentokmatual.AsString;
 edtObs.Text                   := dmDB.TAbastecimentoobs.AsString;
 IdCombustivel                 := dmDB.TAbastecimentocombustivel.AsString;

 edtDataAbastecimento.DateTime := dmDB.TAbastecimentodataabastecimento.AsDateTime;
 edtHoraAbastecimento.Time     := dmDB.TAbastecimentohora.AsDateTime;

 if dmDB.TAbastecimentoimg.AsString.Length>0 then
   ImgHorimetroEdit.Bitmap.LoadFromUrl(dmDB.TAbastecimentoimg.AsString)
 else
   ImgHorimetroEdit.Bitmap := nil;

 if dmDB.TAbastecimentoimg2.AsString.Length>0 then
   ImgBombaEdit.Bitmap.LoadFromUrl(dmDB.TAbastecimentoimg2.AsString)
 else
   ImgBombaEdit.Bitmap := nil;

 if dmDB.TAbastecimentoimg3.AsString.Length>0 then
   ImgHodometroEdit.Bitmap.LoadFromUrl(dmDB.TAbastecimentoimg3.AsString)
 else
   ImgHodometroEdit.Bitmap := nil;

 inherited;
end;

procedure TfrmAbastecimento.btnExcelClick(Sender: TObject);
var
 csv: tstringlist;
 row, col: integer;
 s: string;
begin
 if SaveDialog1.Execute then
 begin
   csv:= tstringlist.create;
   for row:= 0 to StringGrid1.rowcount do
    begin
     s:= '';
     if row=0 then
     begin
       for col:= 0 to StringGrid1.ColumnCount-1 do
        s:= s + StringGrid1.Columns[col].Header + ';';
       csv.add(s)
     end
     else
     begin
       for col:= 0 to StringGrid1.ColumnCount-1 do
        s:= s + StringGrid1.Cells[col, row-1] + ';';
       csv.add(s)
     end;
    end;
   csv.savetofile(SaveDialog1.FileName);
   csv.free;
 end;
end;

procedure TfrmAbastecimento.btnIntegracao2Click(Sender: TObject);
var
 LJSon       : TJSONArray;
 StrAux      : TStringWriter;
 txtJson     : TJsonTextWriter;
 URL,
 vJsonString,
 vPath       : STRING;
 LResponse   : IResponse;
 jSubObj,
 vJoGetJ     : TJSONObject;
 vJoGet      : TJSONArray;
 I           : Integer;
begin
   URL       :=  'http://172.16.1.206:8030/rest/wsabastecimento/v1/incluir';
   if dmdb.TAbastecimento.IsEmpty then
   begin
     MyShowMessage('Filtre os dados antes!',false);
     Exit;
   end;

   if tbPrincipal.TabIndex=1 then
    if edtCentroCustoF.Text.Length=0 then
    begin
      MyShowMessage('Filtre o centro de custo!',false);
      Exit;
    end;
   if tbPrincipal.TabIndex=2 then
    if edtCentroCustoF1.Text.Length=0 then
    begin
      MyShowMessage('Filtre o centro de custo!',false);
      Exit;
    end;

   layIntegracaoProtheus.Visible := true;
   Application.ProcessMessages;
   dmdb.TAbastecimento.First;
   if not dmdb.TAbastecimento.IsEmpty then
   begin
     mLog.Lines.Clear;
     mLog.Lines.Add(FormatDateTime('dd/mm/yyyy hh:mm:ss',now)+' : Gerando Json');

     StrAux  := TStringWriter.Create;
     txtJson := TJsonTextWriter.Create(StrAux);
     txtJson.Formatting := TJsonFormatting.Indented;
     TxtJSON.WriteStartObject; //Objeto maior
     TxtJSON.WritePropertyName(dmdb.TAbastecimentocentrocustonome.AsString);
     TxtJSON.WriteStartArray; //Objeto pedido
     while not dmdb.TAbastecimento.Eof do
     begin
      txtJson.WriteStartObject;
        txtJson.WritePropertyName('FILIAL');
        txtJson.WriteValue(dmdb.TAbastecimentoid_erp_centrocusto.AsString);
        txtJson.WritePropertyName('ID');
        txtJson.WriteValue(dmdb.TAbastecimentoID.AsString);
        txtJson.WritePropertyName('DATA_ABASTECIMENTO');
        txtJson.WriteValue(dmdb.TAbastecimentodataabastecimento.AsString);
        txtJson.WritePropertyName('HORA_ABASTECIMENTO');
        txtJson.WriteValue(dmdb.TAbastecimentohora.AsString);
        txtJson.WritePropertyName('USUARIO');
        txtJson.WriteValue(dmdb.TAbastecimentousuarinome.AsString);
        txtJson.WritePropertyName('ID_LOCAL_ESTOQUE');
        txtJson.WriteValue(dmdb.TAbastecimentoid_erp_local_estoque.AsString);
        txtJson.WritePropertyName('LOCAL_ESTOQUE');
        txtJson.WriteValue(dmdb.TAbastecimentolocaldeestoque.AsString);
        txtJson.WritePropertyName('ID_MAQUINA');
        txtJson.WriteValue(dmdb.TAbastecimentoidmaquina.AsString);
        txtJson.WritePropertyName('PREFIXO_MAQUINA');
        txtJson.WriteValue(dmdb.TAbastecimentoprefixo.AsString);
        txtJson.WritePropertyName('HORIMETRO');
        txtJson.WriteValue(dmdb.TAbastecimentohorimetro.AsString);
        txtJson.WritePropertyName('HODOMETRO');
        txtJson.WriteValue(dmdb.TAbastecimentokmatual.AsString);
        txtJson.WritePropertyName('ID_COMBUSTIVEL');
        txtJson.WriteValue(dmdb.TAbastecimentocombustivel.AsString);
        txtJson.WritePropertyName('COMBUSTIVEL');
        txtJson.WriteValue(dmdb.TAbastecimentoproduto.AsString);
        txtJson.WritePropertyName('LITROS');
        txtJson.WriteValue(dmdb.TAbastecimentovolumelt.AsString);
        txtJson.WritePropertyName('IMG_HORIMETRO');
        txtJson.WriteValue(dmdb.TAbastecimentoimg.AsString);
        txtJson.WritePropertyName('IMG_BOMBA');
        txtJson.WriteValue(dmdb.TAbastecimentoimg2.AsString);
        txtJson.WritePropertyName('IMG_HODOMETRO');
        txtJson.WriteValue(dmdb.TAbastecimentoimg3.AsString);
        txtJson.WritePropertyName('LATITUDE');
        txtJson.WriteValue(dmdb.TAbastecimentolatitude.AsString);
        txtJson.WritePropertyName('LONGITUDE');
        txtJson.WriteValue(dmdb.TAbastecimentolongitude.AsString);
      txtJson.WriteEndObject;
      dmdb.TAbastecimento.Next;
     end;
     TxtJSON.WriteEndArray; //Fecha Array dos Itens
     TxtJSON.WriteEndObject;  //Fecha Cabecalho do pedido
     memoJson.Lines.add(StrAux.ToString);

     mLog.Lines.Add(FormatDateTime('dd/mm/yyyy hh:mm:ss',now)+' : Enviando para Protheus');

     LResponse := TRequest.New.BaseURL(URL)
    .Accept('application/json')
    .AddBody(memoJson.Lines.Text)
    .Post;

     if LResponse.StatusCode=200 then
       mLog.Lines.add(FormatDateTime('dd/mm/yyyy hh:mm:ss',now)+' : Dados Integrados com Sucesso!')
     else
     begin
       mLog.Lines.add(FormatDateTime('dd/mm/yyyy hh:mm:ss',now)+' : Erro ao Integrar Dados!');
       mLog.Lines.add(LResponse.StatusText);
     end;

     jSubObj  := TJSONObject.ParseJSONValue(LResponse.Content) as TJSONObject;
     vJoGet := jSubObj.GetValue<TJSONArray>('ID') as TJSONArray;
     for I := 0 to vJoGet.Count-1 do
     begin
       vJoGetJ         := vJoGet.Items[i] as TJSONObject;
       mLog.Lines.Add('Abastecimento ID :'+vJoGetJ.GetValue('ID').value +
                                   ' Status :'+ vJoGetJ.GetValue('STATUS').value
        );
     end;
     MyShowMessage('Dados Integrados com Sucesso, total de '+intToStr(I)+' abastecimentos.',false);
     vPath := ExtractFilePath(ParamStr(0))+'LogIntegracao';

     if not DirectoryExists(vPath) then
      ForceDirectories(vPath);
     vPath := vPath+'\Log_Integracao_Protheus_'+FormatDateTime('ddmmyyyyhhmm',now)+'.txt';
     mLog.Lines.SaveToFile(vPath);

//     memoJson.Lines.add(StrAux.ToString);
//     if SaveJson.Execute then
//     begin
//       memoJson.Lines.SaveToFile(SaveJson.FileName);
//       MyShowMessage('Arquivo salvo com sucesso em :'+
//        SaveJson.FileName+'.json',false)
//     end;
   end;
end;

procedure TfrmAbastecimento.DownloadImgS3(vPath,vImgName:String);
var
    StorageService : TAmazonStorageService;
    imgSave    : TImage;
    img_stream : TBytesStream;
    Response : TCloudResponseInfo;
begin
    try
        StorageService := TAmazonStorageService.Create(AmazonConnectionInfo1);
        Response := TCloudResponseInfo.Create;

        img_stream := TBytesStream.Create;
        imgSave    := TImage.Create(nil);
        if StorageService.GetObject('comboiofotos', vImgName, img_stream, Response) then
        begin
          imgSave.Bitmap.LoadFromStream(img_stream);
          imgSave.Bitmap.SaveToFile(vPath)
        end
        else
            showmessage('Erro ao buscar objeto: ' + Response.StatusMessage);

    finally
        imgSave.DisposeOf;
        Response.DisposeOf;
        img_stream.DisposeOf;
        StorageService.DisposeOf;
    end;
end;

procedure TfrmAbastecimento.btnRepConsumoClick(Sender: TObject);
var
 vFiltro:string;
begin
 vFiltro := '';
 if edtNomeFiltro.Text.Length>0 then
  vFiltro := ' and prefixo like '+QuotedStr('%'+edtNomeFiltro.Text+'%');
 if edtcombustivelf.Text.Length>0 then
  vFiltro := vFiltro+' and a.combustivel='+IdCombustivel;
 if cbxBombaF.ItemIndex>-1 then
  vFiltro := vFiltro+' and l.id='+vIdLocalEstoque;
 if edtCentroCustoF.Text.Length>0  then
  vFiltro := vFiltro+' and a.idcentrocusto ='+vIdCerntroCusto;
 vFiltro  := vFiltro+' and a.dataabastecimento between '+FormatDateTime('yyyy-mm-dd',edtDataInicio.Date).QuotedString+' and '+
 FormatDateTime('yyyy-mm-dd',edtDataFim.Date).QuotedString;
 if chkComAlerta.IsChecked then
  vFiltro := ' and alerta>0';
 dmReport.AbreAbastecimento(vFiltro);
 dmReport.ppLblPeriodoSemFoto.Text := 'De '+edtDataInicio.Text+' Ate '+edtDataFim.Text;
 if dmReport.TAbastecimento.IsEmpty then
 begin
   MyShowMessage('Sem dados para gerar o relatorio!',false);
   Exit;
 end
 else
 begin
  BindSourceDB1.DataSet :=nil;
  dmReport.ppRepListaSemFoto.PrintReport;
  BindSourceDB1.DataSet :=dmdb.TAbastecimento;
 end;
end;

procedure TfrmAbastecimento.btnSalvarClick(Sender: TObject);
var
 vIdMax:string;
 vEdit:Integer;
begin
  if edtCentroCusto.Text.Length=0 then
  begin
    MyShowMessage('Informe o Centro de Custo!!',false);
    Exit;
  end;
  if edtMaquina.Text.Length=0 then
  begin
    MyShowMessage('Informe a maquina!!',false);
    Exit;
  end;
//  if edtOperador.Text.Length=0 then
//  begin
//    MyShowMessage('Informe o Operador!!',false);
//    Exit;
//  end;
  if edtLocalEstoque.Text.Length=0  then
  begin
    MyShowMessage('Informe o Local Estoque!!',false);
    Exit;
  end;
  if edtCombustivel.Text.Length=0 then
  begin
    MyShowMessage('Informe o Combustivel!!',false);
    Exit;
  end;

  if edtVolumeLitros.Text='0' then
  begin
    MyShowMessage('Informe a quantidade de Litros!!',false);
    Exit;
  end;

//  if edtAtividade.Text.Length=0 then
//  begin
//    MyShowMessage('Informe a Atividade!!',false);
//    Exit;
//  end;

  if dmDB.TAbastecimento.State=dsInsert then
  begin
   dmDB.TAbastecimentoidusuario.AsString := dmDB.vIdUsuarioLogado;
   vEdit:=0;
  end
  else
  begin
    dmDB.TAbastecimentoidusuarioalteracao.AsString := dmDB.vIdUsuarioLogado;
    dmDB.TAbastecimentodataalteracao.AsDateTime    := now;
    vEdit:=1;
  end;
  case vTipoMedicao of
   0:begin
      if (edtHorimetro.Text.Length=0) or (edtHorimetro.Text='0') then
      begin
        MyShowMessage('Informe o Horimetro Atual!',false);
        Exit;
      end;
     end;
   1:begin
      if(edtKMAtual.Text.Length=0) or (edtKMAtual.Text='0') then
      begin
        MyShowMessage('Informe o KM Atual!',false);
        Exit;
      end;
     end;
   2:begin
      if (edtKMAtual.Text.Length=0) or (edtKMAtual.Text='0') then
      begin
        MyShowMessage('Informe o KM Atual!',false);
        Exit;
      end;
      if(edtHorimetro.Text.Length=0) or (edtHorimetro.Text='0') then
      begin
        MyShowMessage('Informe o Horimetro Atual!',false);
        Exit;
      end;
     end;
  end;
  dmDB.TAbastecimentoidlocalestoque.AsString     := vIdLocalEstoque;
  dmDB.TAbastecimentoidmaquina.AsString          := vIdMaquina;
  dmDB.TAbastecimentovolumelt.AsFloat            := strToFloat(edtVolumeLitros.Text);
  dmDB.TAbastecimentocombustivel.AsString        := IdCombustivel;
  dmDB.TAbastecimentodataabastecimento.AsDateTime:= edtDataAbastecimento.DateTime;
  dmDB.TAbastecimentohora.AsDateTime             := edtHoraAbastecimento.DateTime;
  if edtHorimetro.Text.Length>0 then
   dmDB.TAbastecimentohorimetro.AsFloat           := strToFloat(edtHorimetro.Text);
  if edtKMAtual.Text.Length>0 then
   dmDB.TAbastecimentokmatual.AsFloat             := strToFloat(edtKMAtual.Text);
  dmDB.TAbastecimentoidcentrocusto.Asstring       := vIdCerntroCusto;
  if edtObs.Text.Length>0 then
   dmDB.TAbastecimentoobs.AsString := edtObs.Text;
  try
   dmDB.TAbastecimento.ApplyUpdates(-1);
   dmdb.AtaulizaSaldoAtualCustoMedio(IdCombustivel);
   if vListaCheck =0 then
    begin
      Filtro;
      MudarAba(tbiLista,Sender)
    end;
    if vListaCheck =1 then
    begin
      Filtro2;
      GerarLista;
      MudarAba(tbiConf,Sender)
    end;
  except
   on E: Exception do
    myShowMessage('Erro ao salvar Abastecimento:'+E.Message,false);
  end;
end;


procedure TfrmAbastecimento.cbxBombaF1Change(Sender: TObject);
begin
 if cbxBombaF1.ItemIndex>-1 then
  vIdLocalEstoque := IntToStr(Integer(cbxBombaF1.Items.Objects[cbxBombaF1.ItemIndex]));
end;

procedure TfrmAbastecimento.cbxBombaF1Click(Sender: TObject);
begin
 if edtCentroCustoF1.Text.Length=0 then
 begin
  MyShowMessage('Selecione o Centro de Custo antes de selecionar o Local de Estoque!',false);
  Exit;
 end;
end;

procedure TfrmAbastecimento.cbxBombaFChange(Sender: TObject);
begin
 if cbxBombaF.ItemIndex>-1 then
  vIdLocalEstoque := IntToStr(Integer(cbxBombaF.Items.Objects[cbxBombaF.ItemIndex]));
end;

procedure TfrmAbastecimento.cbxBombaFClick(Sender: TObject);
begin
 if edtCentroCustoF.Text.Length=0 then
 begin
  MyShowMessage('Selecione o Centro de Custo antes de selecionar o Local de Estoque!',false);
  Exit;
 end;
end;

procedure TfrmAbastecimento.cbxLocalEstoqueClick(Sender: TObject);
begin
 if edtCentroCusto.Text.Length=0 then
  MyShowMessage('Selecione o Centro de Custo antes de selecionar o Local de Estoque!',false);
end;

procedure TfrmAbastecimento.EditButton1Click(Sender: TObject);
begin
  frmAuxAtividadeAbastecimento := TfrmAuxAtividadeAbastecimento.Create(Self);
  try
    frmAuxAtividadeAbastecimento.ShowModal;
  finally
    vIdAtividade         := dmDB.Tauxatividadeabastecimentoid.AsString;
    edtAtividade.Text    := dmDB.Tauxatividadeabastecimentonome.AsString;
  end;
end;

procedure TfrmAbastecimento.EditButton4Click(Sender: TObject);
begin
  frmOperadorMaquinas := TfrmOperadorMaquinas.Create(Self);
  try
    frmOperadorMaquinas.ShowModal;
  finally
    vIdOperador      := dmDB.TOperadorMaquinaid.AsString;
    edtOperador.Text  := dmDB.TOperadorMaquinanome.AsString;
  end;
end;

procedure TfrmAbastecimento.EditButton5Click(Sender: TObject);
begin
  frmCadMaquinaVeiculo := TfrmCadMaquinaVeiculo.Create(Self);
  try
    frmCadMaquinaVeiculo.ShowModal;
  finally
    vIdMaquina           := dmDB.TMaquinasid.AsString;
    vTipoMedicao         := dmDB.TMaquinastipomedicao.AsInteger;
    edtMaquina.Text      := dmDB.TMaquinasprefixo.AsString;
    case vTipoMedicao of
      0:begin
         edtHorimetro.Enabled := true;
         edtKMAtual.Enabled   := false
        end;
      1:begin
         edtHorimetro.Enabled := false;
         edtKMAtual.Enabled   := true;
        end;
      2:begin
         edtHorimetro.Enabled := true;
         edtKMAtual.Enabled   := true;
        end;
    end;
  end;
end;

procedure TfrmAbastecimento.edtHorimetroChangeTracking(Sender: TObject);
begin
 if edtHorimetro.Text.Length=0 then
  edtHorimetro.Text:='0';
end;

procedure TfrmAbastecimento.edtHorimetroKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmAbastecimento.edtQuantidadeChangeTracking(Sender: TObject);
begin
 if edtQuantidade.Text.Length=0 then
  edtQuantidade.Text:='0';
end;

procedure TfrmAbastecimento.edtQuantidadeKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmAbastecimento.edtVolumeLitrosChangeTracking(Sender: TObject);
begin
 if edtVolumeLitros.Text.Length=0 then
  edtVolumeLitros.Text:='0';
end;

procedure TfrmAbastecimento.edtVolumeLitrosKeyDown(Sender: TObject;
  var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
 if((keyChar in ['0'..'9',','] = false) and (word(key) <> vk_back)) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmAbastecimento.Filtro;
var
 vFiltro:string;
begin
 vFiltro := '';
 if edtNomeFiltro.Text.Length>0 then
  vFiltro := ' and prefixo like '+QuotedStr('%'+edtNomeFiltro.Text+'%');
 if edtcombustivelf.Text.Length>0 then
  vFiltro := vFiltro+' and a.combustivel='+IdCombustivel;
 if cbxBombaF.ItemIndex>-1 then
  vFiltro := vFiltro+' and l.id='+vIdLocalEstoque;
 if edtCentroCustoF.Text.Length>0  then
  vFiltro := vFiltro+' and a.idcentrocusto ='+vIdCerntroCusto;
 vFiltro  := vFiltro+' and a.dataabastecimento between '+FormatDateTime('yyyy-mm-dd',edtDataInicio.Date).QuotedString+' and '+
 FormatDateTime('yyyy-mm-dd',edtDataFim.Date).QuotedString;
 if chkComAlerta.IsChecked then
  vFiltro := vFiltro+' and alerta>0';
 dmDB.AbreAbastecimento(vFiltro);
 SomarColunasGrid;
end;

procedure TfrmAbastecimento.Filtro2;
var
 vFiltro:string;
begin
 vFiltro := '';
 if edtNomeFiltro1.Text.Length>0 then
  vFiltro := ' and prefixo like '+QuotedStr('%'+edtNomeFiltro1.Text+'%');
 if edtcombustivelf1.Text.Length>0 then
  vFiltro := vFiltro+' and a.combustivel='+edtcombustivelf1.Text;
 if cbxBombaF1.ItemIndex>-1 then
  vFiltro := vFiltro+' and l.id='+vIdLocalEstoque;
 if edtCentroCustoF1.Text.Length>0  then
  vFiltro := vFiltro+' and a.idcentrocusto ='+vIdCerntroCusto;
 vFiltro  := vFiltro+' and a.dataabastecimento between '+FormatDateTime('yyyy-mm-dd',edtDataInicio1.Date).QuotedString+' and '+
 FormatDateTime('yyyy-mm-dd',edtDataFim1.Date).QuotedString;
 if chkComAlerta1.IsChecked then
  vFiltro := vFiltro+' and alerta>0';
 dmDB.AbreAbastecimento(vFiltro);
 SomarColunasGrid;
end;

procedure TfrmAbastecimento.FormKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if(tbPrincipal.TabIndex=0) and (key=13) then
  Filtro;
end;

procedure TfrmAbastecimento.FormShow(Sender: TObject);
begin
  btnIntegracao1.Enabled := dmdb.vTipoUsuario<>2;
  btnIntegracao2.Enabled := dmdb.vTipoUsuario<>2;
  layIntegracaoProtheus.Visible := false;
  recAguarde.Visible      := false;
  layTipoReport.Visible   := false;
  layNewOutros.Visible    := false;
  edtDataInicio.Date      := DATE;
  edtcombustivelF.Text    := '';
  Filtro;
  SomarColunasGrid;
  lblAdd.Text             := 'Adicionar';
  lblEdit.Text            := 'Editar';
  lblDeleta.Text          := 'Deletar';
  layListaMnu.Width       := 200;
  layListaMnu.Enabled     := true;
   btnAdd.Enabled         := dmdb.vTipoUsuario<>2;
  btnEditar.Enabled       := dmdb.vTipoUsuario<>2;
  btnDeletar.Enabled      := dmdb.vTipoUsuario<>2;
  tbPrincipal.TabPosition := TTabPosition.None;
  tbPrincipal.ActiveTab   := tbiLista;
end;

function TfrmAbastecimento.CheckFileOnlineExists(url:string): Boolean;
var
 IdHttp: TIdHTTP;
 vJsonString:string;
begin
  try
    IdHttp := TIdHTTP.Create(nil);
    try
      IdHttp.Request.CustomHeaders.Clear;
      vJsonString := IdHttp.Get(url);
      Result := True
    except on E: EIdHTTPProtocolException do begin
      Result := False;
    end;
    end;
  finally
    IdHttp.Free;
  end;
end;

procedure TfrmAbastecimento.GerarLista;
var
 item   : TListViewItem;
 txt    : TListItemText;
 txtH   : TListItemPurpose;
 img    : TListItemImage;
 URL,urlBomba,urlHorimetro,urlKM,vChekURL    : string;
 StorageService : TAmazonStorageService;
 imgCarregaImagem : TImage;
 Response : TCloudResponseInfo;
 vLayout  : TLayout;
 FileSize : Int64;
begin
 dmdb.ConfigS3.Close;
 dmdb.ConfigS3.Open;
 url := dmdb.ConfigS3urlS3.AsString;
 ListaFotos.Items.Clear;
 dmDB.TAbastecimento.First;
 ListaFotos.BeginUpdate;
 if vLayout <>nil then
  vLayout.free;
 vLayout  := TLayout.Create(ListaFotos);
 BindSourceDB1.DataSet :=nil;
 TThread.CreateAnonymousThread(
 procedure
 begin
    TThread.Synchronize(TThread.CurrentThread,
    procedure()
    begin
     recAguarde.Visible      := true;
    end);
     while not dmDB.TAbastecimento.eof do
     begin
       item := ListaFotos.Items.Add;
       with frmAbastecimento do
       begin
         with item  do
         begin
           txt      := TListItemText(Objects.FindDrawable('Text1'));
           txt.Text := dmDB.TAbastecimentoprefixo.AsString;
           txt.TagString := dmDB.TAbastecimentoid.AsString;

           txt      := TListItemText(Objects.FindDrawable('Text14'));
           txt.Text := 'Bomba';
           txt.TagString := dmDB.TAbastecimentolatitude.AsString;

           txt      := TListItemText(Objects.FindDrawable('Text15'));
           txt.Text := 'Horimetro';
           txt.TagString := dmDB.TAbastecimentolongitude.AsString;

           txt      := TListItemText(Objects.FindDrawable('Text16'));
           txt.Text := 'Hodômetro';

           img := TListItemImage(Objects.FindDrawable('Image5'));
           img.Bitmap := imgData.Bitmap;
           txt      := TListItemText(Objects.FindDrawable('Text7'));
           txt.Text := 'Data';
           txt      := TListItemText(Objects.FindDrawable('Text6'));
           txt.Text := dmDB.TAbastecimentodataabastecimento.AsString;


           img := TListItemImage(Objects.FindDrawable('Image23'));
           img.Bitmap := imgFundoAzul.Bitmap;

           img := TListItemImage(Objects.FindDrawable('Image24'));
           img.Bitmap := imgFundoAzul.Bitmap;
           img.Visible:= false;

           img := TListItemImage(Objects.FindDrawable('Image25'));
           img.Bitmap := imgFundoAzul.Bitmap;
           img.Visible:= false;

           img := TListItemImage(Objects.FindDrawable('Image26'));
           img.Bitmap := imgFundoAzul.Bitmap;
           img.Visible:= false;

           img := TListItemImage(Objects.FindDrawable('Image31'));
           img.Bitmap := imgMaps.Bitmap;

           img := TListItemImage(Objects.FindDrawable('Image31'));
           img.Bitmap := imgMaps.Bitmap;

           img := TListItemImage(Objects.FindDrawable('Image38'));
           img.Bitmap := imgEdit.Bitmap;
           txt      := TListItemText(Objects.FindDrawable('Text41'));
           txt.Text := 'Editar';

           img := TListItemImage(Objects.FindDrawable('Image39'));
           img.Bitmap := imgDelete.Bitmap;
           txt      := TListItemText(Objects.FindDrawable('Text40'));
           txt.Text := 'Deletar';

           img := TListItemImage(Objects.FindDrawable('Image35'));
           img.Bitmap := imgHora.Bitmap;
           txt      := TListItemText(Objects.FindDrawable('Text37'));
           txt.Text := 'Hora:';
           txt      := TListItemText(Objects.FindDrawable('Text36'));
           txt.Text := dmDB.TAbastecimentohora.AsString;


           txt      := TListItemText(Objects.FindDrawable('Text27'));
           txt.Text := 'Latitude:';
           txt      := TListItemText(Objects.FindDrawable('Text28'));
           txt.Text := dmDB.TAbastecimentolatitude.AsString;

           txt      := TListItemText(Objects.FindDrawable('Text30'));
           txt.Text := 'Longitude:';
           txt      := TListItemText(Objects.FindDrawable('Text29'));
           txt.Text := dmDB.TAbastecimentolongitude.AsString;

           txt      := TListItemText(Objects.FindDrawable('Text9'));
           txt.Text := 'Local Estoque:';
           txt      := TListItemText(Objects.FindDrawable('Text10'));
           txt.Text := dmDB.TAbastecimentolocaldeestoque.AsString;


           txt      := TListItemText(Objects.FindDrawable('Text19'));
           txt.Text := 'Alerta';
           if dmDB.TAbastecimentoalerta.AsInteger>0 then
           begin
             img := TListItemImage(Objects.FindDrawable('Image17'));
             img.Bitmap := imgAlerta.Bitmap;
             txt      := TListItemText(Objects.FindDrawable('Text18'));
             txt.Text := dmDB.TAbastecimentotipoalerta.AsString;
           end;

           if dmDB.TAbastecimentoalerta.AsInteger=0 then
           begin
             img := TListItemImage(Objects.FindDrawable('Image17'));
             img.Bitmap := imgSemAlerta.Bitmap;
             txt        := TListItemText(Objects.FindDrawable('Text18'));
             txt.Text   := 'Sem Alerta';
           end;

           img := TListItemImage(Objects.FindDrawable('Image8'));
           img.Bitmap := imgComboio.Bitmap;
           txt      := TListItemText(Objects.FindDrawable('Text9'));
           txt.Text := 'Local Estoque:';
           txt      := TListItemText(Objects.FindDrawable('Text10'));
           txt.Text := dmDB.TAbastecimentolocaldeestoque.AsString;

           img := TListItemImage(Objects.FindDrawable('Image11'));
           img.Bitmap := imgCombustivel.Bitmap;
           txt      := TListItemText(Objects.FindDrawable('Text12'));
           txt.Text := 'Combustivel:';
           txt      := TListItemText(Objects.FindDrawable('Text13'));
           txt.Text := dmDB.TAbastecimentoproduto.AsString;

           txt      := TListItemText(Objects.FindDrawable('Text20'));
           txt.Text := dmDB.TAbastecimentovolumelt.AsString;

           txt      := TListItemText(Objects.FindDrawable('Text21'));
           if dmDB.TAbastecimentohorimetro.AsString.Length>0 then
            txt.Text := dmDB.TAbastecimentohorimetro.AsString
           else
            txt.Text := '0';

           txt      := TListItemText(Objects.FindDrawable('Text22'));
           if dmDB.TAbastecimentokmatual.AsString.Length>0 then
            txt.Text := dmDB.TAbastecimentokmatual.AsString
           else
            txt.Text := '0';

           if (dmDB.TAbastecimentoimg.AsString.Length>0) and
           (dmDB.TAbastecimentoimgsyncs3.AsInteger=1)
           then
           begin
             vChekURL :=copy(dmDB.TAbastecimentoimg.AsString,0,5);
             if vChekURL='https' then
             begin
               TThread.Synchronize(TThread.CurrentThread,
               procedure()
               begin
                urlBomba := dmDB.TAbastecimentoimg.AsString;
                  try
                   imgCarregaImagem:= TImage.Create(vLayout);
                   imgCarregaImagem.Name := 'Bomba_'+dmDB.TAbastecimentoid.asstring;
                   imgCarregaImagem.Bitmap.LoadFromUrl(urlBomba);
                   img := TListItemImage(Objects.FindDrawable('Image3'));
                   img.Bitmap    := imgCarregaImagem.Bitmap;
                   img.TagString := dmDB.TAbastecimentoimg.AsString;
                  except
                   on E : EBitmapLoadingFailed do
                    ShowMessage('Erro ao carregar :'+urlBomba+#13+
                     E.Message)
                  end;
               end);
             end;
           end
           else
           begin
             img := TListItemImage(Objects.FindDrawable('Image3'));
             img.Bitmap := imgNoImage.Bitmap;
             img.Width  := 50;
             img.Height := 50;
           end;
           if (dmDB.TAbastecimentoimg2.AsString.Length>0) and
           (dmDB.TAbastecimentoimgsyncs3.AsInteger=1) then
           begin
            vChekURL :=copy(dmDB.TAbastecimentoimg2.AsString,0,5);
            if vChekURL='https' then
            begin
             TThread.Synchronize(TThread.CurrentThread,
             procedure()
             begin
              urlHorimetro := dmDB.TAbastecimentoimg2.AsString;
                try
                 imgCarregaImagem:= TImage.Create(vLayout);
                 imgCarregaImagem.Name := 'Horimetro_'+dmDB.TAbastecimentoid.asstring;
                 imgCarregaImagem.Bitmap.LoadFromUrl(urlHorimetro);
                 img := TListItemImage(Objects.FindDrawable('Image2'));
                 img.Bitmap := imgCarregaImagem.Bitmap;
                 img.ScalingMode  := TImageScalingMode.Stretch;
                 img.TagString := dmDB.TAbastecimentoimg2.AsString;
                except
                  on E : EBitmapLoadingFailed do
                   ShowMessage('Erro ao carregar :'+urlHorimetro+#13+
                    E.Message)
                end;
             end);
            end;
           end
           else
           begin
             img := TListItemImage(Objects.FindDrawable('Image2'));
             img.Bitmap := imgNoImage.Bitmap;
             img.Width  := 50;
             img.Height := 50;
           end;
           if (dmDB.TAbastecimentoimg3.AsString.Length>0) and
           (dmDB.TAbastecimentoimgsyncs3.AsInteger=1) then
           begin
            vChekURL :=copy(dmDB.TAbastecimentoimg3.AsString,0,5);
            if vChekURL='https' then
            begin
              TThread.Synchronize(TThread.CurrentThread,
              procedure()
              begin
               urlKM :=dmDB.TAbastecimentoimg3.AsString;
                 try
                  imgCarregaImagem:= TImage.Create(vLayout);
                  imgCarregaImagem.Name := 'KM_'+dmDB.TAbastecimentoid.asstring;
                  imgCarregaImagem.Bitmap.LoadFromUrl(urlKM);
                  img := TListItemImage(Objects.FindDrawable('Image4'));
                  img.Bitmap := imgCarregaImagem.Bitmap;
                  img.TagString := dmDB.TAbastecimentoimg3.AsString;
                 except
                  on E : EBitmapLoadingFailed do
                   ShowMessage('Erro ao carregar :'+urlKM+#13+
                    E.Message)
                 end
              end);
            end;
           end
           else
           begin
             img := TListItemImage(Objects.FindDrawable('Image4'));
             img.Bitmap := imgNoImage.Bitmap;
             img.Width  := 50;
             img.Height := 50;
           end;
         end;
       end;
       dmDB.TAbastecimento.Next;
     end;
     TThread.Synchronize(TThread.CurrentThread,
     procedure()
     begin
      ListaFotos.EndUpdate;
      BindSourceDB1.DataSet :=dmdb.TAbastecimento;
      recAguarde.Visible    := false;
      MyShowMessage('Lista Carregada com Sucesso!',false);
      if ListaFotos.items.Count>0 then
        ListaFotos.ItemIndex :=0;
     end);
 end).Start;
end;

procedure TfrmAbastecimento.Image13Click(Sender: TObject);
begin
 layNewOutros.Visible    := false;
end;

procedure TfrmAbastecimento.Image17Click(Sender: TObject);
begin
  layTipoReport.Visible := false;
end;

procedure TfrmAbastecimento.Image22Click(Sender: TObject);
begin
 layIntegracaoProtheus.Visible := false;
end;

procedure TfrmAbastecimento.ListaFotosItemClickEx(const Sender: TObject;
  ItemIndex: Integer; const LocalClickPos: TPointF;
  const ItemObject: TListItemDrawable);
var
  url,urlBomba,urlHorimetro,urlKM:string;
begin
  url := 'https://comboiodemo.s3.sa-east-1.amazonaws.com/';

  vIdAbastecimentoLista   := TAppearanceListViewItem(ListaFotos.Selected).Objects.FindObjectT<TListItemText>
   ('Text1').TagString;

  vLatitudeLista          := TAppearanceListViewItem(ListaFotos.Selected).Objects.FindObjectT<TListItemText>
   ('Text14').TagString;

  vLongitudeLista         := TAppearanceListViewItem(ListaFotos.Selected).Objects.FindObjectT<TListItemText>
   ('Text15').TagString;

  vImgBombaLista          := TAppearanceListViewItem(ListaFotos.Selected).Objects.FindObjectT<TListItemImage>
   ('Image2').TagString;

  vImgHorimetroLista      := TAppearanceListViewItem(ListaFotos.Selected).Objects.FindObjectT<TListItemImage>
   ('Image3').TagString;

  vImgKMLista             := TAppearanceListViewItem(ListaFotos.Selected).Objects.FindObjectT<TListItemImage>
   ('Image4').TagString;



  if ItemObject is TListItemImage then
  begin
    if TListItemImage(ItemObject).Name='Image31' then
    begin
     if (vLatitudeLista.Length=0) then
     begin
       MyShowMessage('Latitude esta em branco!',false);
       Exit;
     end;
     if (vLongitudeLista.Length=0) then
     begin
       MyShowMessage('Longitude esta em branco!',false);
       Exit;
     end;
     frmPrincipal.AbriGoogleMaps(vLatitudeLista,
      vLongitudeLista);
    end;

    if TListItemImage(ItemObject).Name='Image2' then
    begin
     if vImgBombaLista.Length>0 then
      begin
         try
         ShellExecute(FmxHandleToHWND(Handle),
               'open',
               PChar(vImgBombaLista),
               nil,
               nil,
               SW_SHOWMAXIMIZED);
         except
          on E : Exception do
           ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
         end;
      end;
    end;

    if TListItemImage(ItemObject).Name='Image3' then
    begin
     if vImgHorimetroLista.Length>0 then
      begin
         try
          ShellExecute(FmxHandleToHWND(Handle),
               'open',
               PChar(vImgHorimetroLista),
               nil,
               nil,
               SW_SHOWMAXIMIZED);
         except
          on E : Exception do
           ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
         end;
      end;
    end;

    if TListItemImage(ItemObject).Name='Image4' then
    begin
     if vImgKMLista.Length>0 then
      begin
         try
         ShellExecute(FmxHandleToHWND(Handle),
               'open',
               PChar(vImgKMLista),
               nil,
               nil,
               SW_SHOWMAXIMIZED);
         except
          on E : Exception do
           ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
         end;
      end;
    end;
    if TListItemImage(ItemObject).Name='Image39' then
    begin
     MyShowMessage('Deseja Realmente Deletar esse registro?',true);
     case frmPrincipal.vMsgConfirma of
       1:begin
          dmDB.TAbastecimento.Filtered := false;
          dmDB.TAbastecimento.Filter   := 'id='+vIdAbastecimentoLista;
          dmDB.TAbastecimento.Filtered := true;
          dmDB.TAbastecimento.Edit;
          dmDB.TAbastecimentostatus.AsInteger := -1;
          dmDB.TAbastecimentoIdUsuarioAlteracao.AsString  := dmDB.vIdUsuarioLogado;
          dmDB.TAbastecimentoDataAlteracao.AsDateTime     := now;
          dmDB.TAbastecimentosyncaws.AsInteger            :=0;
          try
            dmDB.TAbastecimento.ApplyUpdates(-1);
            MyShowMessage('Registro Excluido com sucesso!',false);
            Filtro;
          except
           on E : Exception do
            ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
          end;
       end;
     end;
    end;
    if TListItemImage(ItemObject).Name='Image38' then
    begin
      vListaCheck :=1;
      dmDB.TAbastecimento.Filtered := false;
      dmDB.TAbastecimento.Filter   := 'id='+vIdAbastecimentoLista;
      dmDB.TAbastecimento.Filtered := true;
      dmDB.TAbastecimento.Edit;
      edtCentroCusto.Text       := dmDB.TAbastecimentocentrocustonome.AsString;
      vIdCerntroCusto           := dmDB.TAbastecimentoidcentrocusto.AsString;
      vIdAtividade              := dmDB.TAbastecimentoidAtividade.AsString;
      edtDataAbastecimento.Date := dmDB.TAbastecimentodataabastecimento.AsDateTime;
      vIdLocalEstoque           := dmDB.TAbastecimentoidlocalestoque.AsString;
      edtLocalEstoque.text      := dmDB.TAbastecimentolocaldeEstoque.AsString;
      vIdMaquina                := dmDB.TAbastecimentoidmaquina.AsString;
      edtMaquina.Text           := dmDB.TAbastecimentoprefixo.AsString;
      vIdOperador               := dmDB.TAbastecimentoidoperador.AsString;
      edtVolumeLitros.Text      := dmDB.TAbastecimentovolumelt.AsString;
      edtcombustivel.Text       := dmDB.TAbastecimentoproduto.AsString;
      edtHorimetro.Text         := dmDB.TAbastecimentohorimetro.AsString;
      edtKMAtual.Text           := dmDB.TAbastecimentokmatual.AsString;
      edtObs.Text               := dmDB.TAbastecimentoobs.AsString;
      IdCombustivel             := dmDB.TAbastecimentocombustivel.AsString;

      if dmDB.TAbastecimentoimg.AsString.Length>0 then
        ImgHorimetroEdit.Bitmap.LoadFromUrl(dmDB.TAbastecimentoimg.AsString)
      else
        ImgHorimetroEdit.Bitmap := nil;

      if dmDB.TAbastecimentoimg2.AsString.Length>0 then
        ImgBombaEdit.Bitmap.LoadFromUrl(dmDB.TAbastecimentoimg2.AsString)
      else
        ImgBombaEdit.Bitmap     := nil;

      if dmDB.TAbastecimentoimg3.AsString.Length>0 then
        ImgHodometroEdit.Bitmap.LoadFromUrl(dmDB.TAbastecimentoimg3.AsString)
      else
        ImgHodometroEdit.Bitmap := nil;

      MudarAba(tbiCad,sender);
    end;
  end;
end;

procedure TfrmAbastecimento.MenuItem1Click(Sender: TObject);
begin
 if (dmdb.TAbastecimentolatitude.AsString.Length=0) then
 begin
   MyShowMessage('Latitude esta em branco!',false);
   Exit;
 end;
 if (dmdb.TAbastecimentolongitude.AsString.Length=0) then
 begin
   MyShowMessage('Longitude esta em branco!',false);
   Exit;
 end;
 frmPrincipal.AbriGoogleMaps(dmdb.TAbastecimentolatitude.AsString,
  dmdb.TAbastecimentolongitude.AsString);
end;

procedure TfrmAbastecimento.btnCancelaClick(Sender: TObject);
begin
 if vListaCheck =0 then
  begin
    Filtro;
    MudarAba(tbiLista,Sender)
  end;
  if vListaCheck =1 then
  begin
    Filtro;
    GerarLista;
    MudarAba(tbiConf,Sender)
  end;
end;

procedure TfrmAbastecimento.btnComFotoClick(Sender: TObject);
begin
 dmReport.ppLblPeriodoLista.Text := 'De '+edtDataInicio.Text+' Ate '+edtDataFim.Text;
 dmReport.ppRepListaFoto.PrintReport;
end;

procedure TfrmAbastecimento.btnComFotoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
 btnComFoto.Opacity :=0.5;
end;

procedure TfrmAbastecimento.btnComFotoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
 btnComFoto.Opacity :=1;
end;

procedure TfrmAbastecimento.btnSemFotoClick(Sender: TObject);
var
 vFiltro:string;
begin
 dmReport.ppLblPeriodoSemFoto.Text := 'De '+edtDataInicio.Text+' Ate '+edtDataFim.Text;
 if dmReport.TAbastecimento.IsEmpty then
 begin
   MyShowMessage('Sem dados para gerar o relatorio!',false);
   Exit;
 end
 else
  dmReport.ppRepListaSemFoto.PrintReport;
end;

procedure TfrmAbastecimento.btnSemFotoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
 btnSemFoto.Opacity :=0.5;
end;

procedure TfrmAbastecimento.btnSemFotoMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
 btnSemFoto.Opacity :=1;
end;

procedure TfrmAbastecimento.btnVoltarClick(Sender: TObject);
begin
  MudarAba(tbiLista,Sender)
end;

procedure TfrmAbastecimento.Button1Click(Sender: TObject);
begin
 Filtro2;
 GerarLista;
end;

procedure TfrmAbastecimento.Rectangle9Click(Sender: TObject);
begin
 layNewOutros.Visible := false;
end;

procedure TfrmAbastecimento.SearchEditButton11Click(Sender: TObject);
begin
  frmCadProdutos := TfrmCadProdutos.Create(Self);
  try
    frmCadProdutos.ShowModal;
  finally
    IdCombustivel             := dmDB.TProdutosid.AsString;
    edtcombustivelF1.Text     := dmDB.TProdutosnome.AsString;
  end;
end;

procedure TfrmAbastecimento.SearchEditButton1Click(Sender: TObject);
begin
  frmCadProdutos := TfrmCadProdutos.Create(Self);
  try
    frmCadProdutos.ShowModal;
  finally
    vIDProduto            := dmDB.TProdutosid.AsString;
    edtOutroProduto.Text  := dmDB.TProdutosnome.AsString;
    frmCadProdutos.Free;
  end;
end;

procedure TfrmAbastecimento.SearchEditButton2Click(Sender: TObject);
begin
  frmCentroCusto := TfrmCentroCusto.Create(Self);
  try
    frmCentroCusto.ShowModal;
  finally
    vIdCerntroCusto      := dmDB.TCentroCustoid.AsString;
    edtCentroCusto.Text  := dmDB.TCentroCustonome.AsString;
  end;
end;

procedure TfrmAbastecimento.SearchEditButton3Click(Sender: TObject);
begin
  frmAuxAtividadeAbastecimento := TfrmAuxAtividadeAbastecimento.Create(Self);
  try
    frmAuxAtividadeAbastecimento.ShowModal;
  finally
    vIdAtividade         := dmDB.Tauxatividadeabastecimentoid.AsString;
    edtAtividade.Text    := dmDB.Tauxatividadeabastecimentonome.AsString;
  end;
end;

procedure TfrmAbastecimento.SearchEditButton4Click(Sender: TObject);
begin
  frmCentroCusto := TfrmCentroCusto.Create(Self);
  try
    frmCentroCusto.ShowModal;
  finally
    vIdCerntroCusto      := dmDB.TCentroCustoid.AsString;
    edtCentroCustoF.Text  := dmDB.TCentroCustonome.AsString;
    dmdb.AbrirLocalEstoque('and b.id='+vIdCerntroCusto);
    dmdb.TLocalEstoque.First;
    cbxBombaF.Items.Clear;
    while not dmdb.TLocalEstoque.eof do
    begin
      cbxBombaF.Items.AddObject(
       dmdb.TLocalEstoquenome.AsString,TObject(dmdb.TLocalEstoqueID.AsInteger));
      dmdb.TLocalEstoque.Next;
    end;
    btnBuscarFiltroClick(Sender);
  end;
end;

procedure TfrmAbastecimento.SearchEditButton5Click(Sender: TObject);
begin
  frmAuxAtividadeAbastecimento := TfrmAuxAtividadeAbastecimento.Create(Self);
  try
    frmAuxAtividadeAbastecimento.ShowModal;
  finally
    vIdAtividade         := dmDB.Tauxatividadeabastecimentoid.AsString;
    edtAtividadef.Text    := dmDB.Tauxatividadeabastecimentonome.AsString;
  end;
end;

procedure TfrmAbastecimento.SearchEditButton6Click(Sender: TObject);
begin
 frmCadProdutos := TfrmCadProdutos.Create(Self);
  try
    frmCadProdutos.ShowModal;
  finally
    IdCombustivel           := dmDB.TProdutosid.AsString;
    edtcombustivel.Text     := dmDB.TProdutosnome.AsString;
  end;
end;

procedure TfrmAbastecimento.SearchEditButton7Click(Sender: TObject);
begin
  frmCadProdutos := TfrmCadProdutos.Create(Self);
  try
    frmCadProdutos.ShowModal;
  finally
    IdCombustivel           := dmDB.TProdutosid.AsString;
    edtcombustivelF.Text     := dmDB.TProdutosnome.AsString;
  end;
end;

procedure TfrmAbastecimento.SearchEditButton8Click(Sender: TObject);
begin
 if edtCentroCusto.Text.Length=0 then
 begin
   MyShowMessage('Informe o Centro de Custo Antes!',false);
   Exit;
 end
 else
 begin
  frmAuxLocalEstoque := TfrmAuxLocalEstoque.Create(Self);
  try
    frmAuxLocalEstoque.vFiltro :=' and idcentrocusto='+vIdCerntroCusto;
    frmAuxLocalEstoque.ShowModal;
  finally
    vIdLocalEstoque       := dmDB.TLocalEstoqueid.AsString;
    edtLocalEstoque.Text  := dmDB.TLocalEstoquenome.AsString;
    IdCombustivel         := dmDB.TLocalEstoqueidcombustivel.AsString;
    edtcombustivel.Text   := dmDB.TLocalEstoquecombustivel.AsString;
  end;
 end;
end;

procedure TfrmAbastecimento.SearchEditButton9Click(Sender: TObject);
begin
  frmCentroCusto := TfrmCentroCusto.Create(Self);
  try
    frmCentroCusto.ShowModal;
  finally
    vIdCerntroCusto       := dmDB.TCentroCustoid.AsString;
    edtCentroCustoF1.Text  := dmDB.TCentroCustonome.AsString;
    dmdb.AbrirLocalEstoque('and b.id='+vIdCerntroCusto);
    dmdb.TLocalEstoque.First;
    cbxBombaF1.Items.Clear;
    while not dmdb.TLocalEstoque.eof do
    begin
      cbxBombaF1.Items.AddObject(
       dmdb.TLocalEstoquenome.AsString,TObject(dmdb.TLocalEstoqueID.AsInteger));
      dmdb.TLocalEstoque.Next;
    end;
    Filtro2;
    GerarLista;
  end;
end;

procedure TfrmAbastecimento.SomarColunasGrid;
var
  Sum : Double;
  Val : Double;
  I   : Integer;
begin
  Sum := 0;
  val := 0;
  I   := 0;
  for I := 0 to StringGrid1.RowCount-1 do
  begin
   if TryStrToFloat(StringGrid1.Cells[5,I],Val) then
    Sum := Sum + Val;
  end;
  if I>0 then
  begin
    lblFoterCout.Text             := IntToStr(I);
    lblFoterCout1.Text            := IntToStr(I);
    lblTotalLitrosGrid.Text       := FormatFloat('####,##.00',(Sum));
    lblTotalLitrosGrid1.Text      := FormatFloat('####,##.00',(Sum));
  end
  else
  begin
    lblFoterCout.Text         := '0';
    lblFoterCout1.Text        := '0';
    lblTotalLitrosGrid.Text   := '0,00';
    lblTotalLitrosGrid1.Text  := '0,00';
  end;
end;

end.


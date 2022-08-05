unit UDmSyncData;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.FMXUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet,System.IOUtils, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, FireDAC.Stan.StorageBin,
  System.JSON,IdHashMessageDigest,System.JSON.Writers,System.JSON.Types,Data.DBXPlatform,
  FireDAC.Stan.StorageJSON,FMX.DialogService;

type
  Tdmsync = class(TDataModule)
    IdHTTP1: TIdHTTP;
    qryAux: TFDQuery;
    TUsuario: TFDQuery;
    TUsuarioid: TIntegerField;
    TUsuariostatus: TWideStringField;
    TUsuariodatareg: TWideStringField;
    TUsuarioidusuario: TWideStringField;
    TUsuariodataalteracao: TWideStringField;
    TUsuarioidusuarioalteracao: TWideStringField;
    TUsuarionome: TStringField;
    TUsuarioemail: TStringField;
    TUsuariocelular: TStringField;
    TUsuariousuario: TStringField;
    TUsuariosenha: TStringField;
    TUsuariotipo: TWideStringField;
    TUsuariosyncaws: TWideStringField;
    TOperadorMaquina: TFDQuery;
    TOperadorMaquinaid: TIntegerField;
    TOperadorMaquinastatus: TWideStringField;
    TOperadorMaquinadatareg: TWideStringField;
    TOperadorMaquinaidusuario: TWideStringField;
    TOperadorMaquinadataalteracao: TWideStringField;
    TOperadorMaquinaidusuarioalteracao: TWideStringField;
    TOperadorMaquinanome: TStringField;
    TOperadorMaquinarg: TStringField;
    TOperadorMaquinacpf: TStringField;
    TOperadorMaquinacnh: TStringField;
    TOperadorMaquinacelular: TStringField;
    TOperadorMaquinasyncaws: TWideStringField;
    TOperadorMaquinasyncfaz: TWideStringField;
    Tauxatividadeabastecimento: TFDQuery;
    Tauxatividadeabastecimentoid: TIntegerField;
    Tauxatividadeabastecimentostatus: TWideStringField;
    Tauxatividadeabastecimentodatareg: TWideStringField;
    Tauxatividadeabastecimentoidusuario: TWideStringField;
    Tauxatividadeabastecimentodataalteracao: TWideStringField;
    Tauxatividadeabastecimentoidusuarioalteracao: TWideStringField;
    Tauxatividadeabastecimentonome: TStringField;
    Tauxatividadeabastecimentosyncaws: TWideStringField;
    TCentroCusto: TFDQuery;
    TCentroCustoid: TIntegerField;
    TCentroCustostatus: TWideStringField;
    TCentroCustodatareg: TWideStringField;
    TCentroCustoidusuario: TWideStringField;
    TCentroCustodataalteracao: TWideStringField;
    TCentroCustoidusuarioalteracao: TWideStringField;
    TCentroCustonome: TStringField;
    TCentroCustosyncaws: TWideStringField;
    TLocalEstoque: TFDQuery;
    TLocalEstoqueid: TIntegerField;
    TLocalEstoquestatus: TWideStringField;
    TLocalEstoquedatareg: TWideStringField;
    TLocalEstoqueidusuario: TWideStringField;
    TLocalEstoquedataalteracao: TWideStringField;
    TLocalEstoqueidusuarioalteracao: TWideStringField;
    TLocalEstoquenome: TStringField;
    TLocalEstoquecapacidade: TBCDField;
    TLocalEstoquesyncaws: TWideStringField;
    TLocalEstoqueidcentrocusto: TWideStringField;
    TProdutos: TFDQuery;
    TProdutosid: TIntegerField;
    TProdutosstatus: TWideStringField;
    TProdutosdatareg: TWideStringField;
    TProdutosidusuario: TWideStringField;
    TProdutosdataalteracao: TWideStringField;
    TProdutosidusuarioalteracao: TWideStringField;
    TProdutosnome: TStringField;
    TProdutostipo: TWideStringField;
    TProdutosunidademedida: TStringField;
    TProdutosestoqueminimo: TBCDField;
    TProdutoscodigobarras: TStringField;
    TProdutosidmarca: TWideStringField;
    TProdutoscodigofabricante: TStringField;
    TProdutossyncaws: TWideStringField;
    TProdutoscustomedio: TBCDField;
    TProdutossaldoatual: TBCDField;
    TMaquinas: TFDQuery;
    TMaquinasid: TIntegerField;
    TMaquinasstatus: TWideStringField;
    TMaquinasidusuario: TWideStringField;
    TMaquinasprefixo: TStringField;
    TMaquinasultimoabastecimento: TDateField;
    TMaquinashorimetroultimarev: TBCDField;
    TMaquinashorimetroatual: TBCDField;
    TMaquinasqrcode: TStringField;
    TMaquinaskmatual: TBCDField;
    TMaquinastipomedicao: TWideStringField;
    TAbastecimento: TFDQuery;
    TAbastecimentoid: TFDAutoIncField;
    TAbastecimentostatus: TWideStringField;
    TAbastecimentodatareg: TWideStringField;
    TAbastecimentoidusuario: TWideStringField;
    TAbastecimentodataalteracao: TWideStringField;
    TAbastecimentoidusuarioalteracao: TWideStringField;
    TAbastecimentoidlocalestoque: TWideStringField;
    TAbastecimentoidmaquina: TWideStringField;
    TAbastecimentovolumelt: TBCDField;
    TAbastecimentocombustivel: TWideStringField;
    TAbastecimentodataabastecimento: TDateField;
    TAbastecimentohora: TTimeField;
    TAbastecimentosyncaws: TWideStringField;
    TAbastecimentohorimetro: TBCDField;
    TAbastecimentoobs: TStringField;
    TAbastecimentoimg: TWideMemoField;
    TAbastecimentoimg2: TWideMemoField;
    TAbastecimentoimg3: TWideMemoField;
    TAbastecimentoimg4: TWideMemoField;
    TAbastecimentoimg5: TWideMemoField;
    TAbastecimentovalorlitro: TBCDField;
    TAbastecimentoexterno: TWideStringField;
    TAbastecimentoidcentrocusto: TIntegerField;
    TAbastecimentokmatual: TBCDField;
    TAbastecimentoOutros: TFDQuery;
    TAbastecimentoOutrosid: TIntegerField;
    TAbastecimentoOutrosstatus: TWideStringField;
    TAbastecimentoOutrosdatareg: TWideStringField;
    TAbastecimentoOutrosidusuario: TWideStringField;
    TAbastecimentoOutrosdataalteracao: TWideStringField;
    TAbastecimentoOutrosidusuarioalteracao: TWideStringField;
    TAbastecimentoOutrosidabastecimento: TWideStringField;
    TAbastecimentoOutrosidproduto: TWideStringField;
    TAbastecimentoOutrosquantidade: TBCDField;
    TAbastecimentoOutrossyncaws: TWideStringField;
    TAbastecimentoOutrossyncfaz: TWideStringField;
    TStartDiario: TFDQuery;
    TStartDiarioid: TFDAutoIncField;
    TStartDiariostatus: TWideStringField;
    TStartDiariodatareg: TWideStringField;
    TStartDiarioidusuario: TWideStringField;
    TStartDiariodataalteracao: TWideStringField;
    TStartDiarioidusuarioalteracao: TWideStringField;
    TStartDiarioidlocalestoque: TWideStringField;
    TStartDiarioidcentrocusto: TWideStringField;
    TStartDiariocombustivel: TWideStringField;
    TStartDiariodataastart: TDateField;
    TStartDiariohorastart: TTimeField;
    TStartDiariodataaend: TDateField;
    TStartDiariohoraend: TTimeField;
    TStartDiariosyncaws: TWideStringField;
    TStartDiariovolumelitrosIni: TBCDField;
    TStartDiarioobs: TStringField;
    TStartDiarioimgStart: TWideMemoField;
    TStartDiarioimgEnd: TWideMemoField;
    TStartDiariovolumelitrosFim: TBCDField;
    QryAuxLoop: TFDQuery;
    TLocalEstoqueidcombustivel: TIntegerField;
    TAbastecimentolatitude: TFMTBCDField;
    TAbastecimentolongitude: TFMTBCDField;
    TMovLocalEstoque: TFDQuery;
    TAbastecimentoalerta: TIntegerField;
    TAbastecimentodescricaoalerta: TWideMemoField;
    TMaquinasvolumetanque: TBCDField;
    TMaquinasmodelo: TStringField;
    TLubrificacaoprodutos: TFDQuery;
    TLubrificacao: TFDQuery;
    TLubrificacaoid: TIntegerField;
    TLubrificacaostatus: TWideStringField;
    TLubrificacaodatareg: TWideStringField;
    TLubrificacaoidusuario: TWideStringField;
    TLubrificacaodataalteracao: TWideStringField;
    TLubrificacaoidusuarioalteracao: TWideStringField;
    TLubrificacaoidmaquina: TWideStringField;
    TLubrificacaodatatroca: TDateField;
    TLubrificacaosyncaws: TWideStringField;
    TLubrificacaosyncfaz: TWideStringField;
    TLubrificacaohorimetro: TBCDField;
    TLubrificacaokm: TBCDField;
    TLubrificacaoidcentrocusto: TWideStringField;
    TLubrificacaoprodutosid: TIntegerField;
    TLubrificacaoprodutosstatus: TWideStringField;
    TLubrificacaoprodutosdatareg: TWideStringField;
    TLubrificacaoprodutosidusuario: TWideStringField;
    TLubrificacaoprodutosdataalteracao: TWideStringField;
    TLubrificacaoprodutosidusuarioalteracao: TWideStringField;
    TLubrificacaoprodutosidlubrificacao: TWideStringField;
    TLubrificacaoprodutosidproduto: TWideStringField;
    TLubrificacaoprodutosqtd: TBCDField;
    TLubrificacaoprodutossyncaws: TWideStringField;
    TLubrificacaoprodutossyncfaz: TWideStringField;
    TLubrificacaoalerta: TWideStringField;
    TLubrificacaodescricaoalerta: TWideMemoField;
    TLubrificacaoidlocalestoque: TIntegerField;
    TAuxCompLub: TFDQuery;
    TAuxCompLubid: TIntegerField;
    TAuxCompLubstatus: TIntegerField;
    TAuxCompLubdatareg: TWideStringField;
    TAuxCompLubidusuario: TWideStringField;
    TAuxCompLubdataalteracao: TWideStringField;
    TAuxCompLubidusuarioalteracao: TWideStringField;
    TAuxCompLubnome: TStringField;
    TAuxCompLubsyncaws: TWideStringField;
    TLubrificacaoidcompartimento: TIntegerField;
    TLubrificacaolatitude: TFMTBCDField;
    TLubrificacaolongitude: TFMTBCDField;
    TMovLocalEstoqueid: TIntegerField;
    TMovLocalEstoquestatus: TWideStringField;
    TMovLocalEstoquedatareg: TWideStringField;
    TMovLocalEstoqueidusuario: TWideStringField;
    TMovLocalEstoquedataalteracao: TWideStringField;
    TMovLocalEstoqueidusuarioalteracao: TWideStringField;
    TMovLocalEstoqueidlocalestoqueorigem: TWideStringField;
    TMovLocalEstoqueidlocalestoquedetino: TWideStringField;
    TMovLocalEstoqueidproduto: TWideStringField;
    TMovLocalEstoqueqtde: TBCDField;
    TMovLocalEstoquedatamov: TDateField;
    TMovLocalEstoquehora: TTimeField;
    TMovLocalEstoquesyncaws: TWideStringField;
    TMovLocalEstoqueimg: TWideMemoField;
    TMovLocalEstoqueimgfim: TWideMemoField;
    TMovLocalEstoquetotalizadorinicial: TLargeintField;
    TMovLocalEstoquetotalizadorfinal: TLargeintField;
    cheklistgeneric: TFDQuery;
    cheklistRealizado: TFDQuery;
    detcheklistgeneric: TFDQuery;
    detcheklistgenericid: TIntegerField;
    detcheklistgenericstatus: TWideStringField;
    detcheklistgenericdatareg: TWideStringField;
    detcheklistgenericidusuario: TWideStringField;
    detcheklistgenericdataalteracao: TWideStringField;
    detcheklistgenericidusuarioalteracao: TWideStringField;
    detcheklistgenericidcheck: TIntegerField;
    detcheklistgenericItem: TIntegerField;
    detcheklistgenericdescricao: TStringField;
    detcheklistgenericItemFotoObrigatoria: TIntegerField;
    detcheklistgenericItemObs: TStringField;
    detcheklistRealizado: TFDQuery;
    detcheklistRealizadoid: TIntegerField;
    detcheklistRealizadostatus: TWideStringField;
    detcheklistRealizadodatareg: TWideStringField;
    detcheklistRealizadoidusuario: TWideStringField;
    detcheklistRealizadodataalteracao: TWideStringField;
    detcheklistRealizadoidusuarioalteracao: TWideStringField;
    detcheklistRealizadoidcheck: TIntegerField;
    detcheklistRealizadoItem: TIntegerField;
    detcheklistRealizadoItemFotoObrigatoria: TIntegerField;
    detcheklistRealizadoItemFoto: TWideMemoField;
    detcheklistRealizadoItemObs: TStringField;
    detcheklistRealizadoitemCheck: TIntegerField;
    TLubrificacaoprodutosidcompartimento: TIntegerField;
    TLubrificacaoprodutostipo: TIntegerField;
    cheklistregrupoitem: TFDQuery;
    cheklistregrupoitemid: TIntegerField;
    cheklistregrupoitemstatus: TWideStringField;
    cheklistregrupoitemdatareg: TWideStringField;
    cheklistregrupoitemidusuario: TWideStringField;
    cheklistregrupoitemdataalteracao: TWideStringField;
    cheklistregrupoitemidusuarioalteracao: TWideStringField;
    cheklistregrupoitemnome: TStringField;
    cheklistregrupoitemdescricao: TStringField;
    detcheklistRealizadodescricao: TStringField;
    detcheklistRealizadoidgrupo: TIntegerField;
    cheklistRealizadoid: TIntegerField;
    cheklistRealizadostatus: TWideStringField;
    cheklistRealizadodatareg: TWideStringField;
    cheklistRealizadoidusuario: TWideStringField;
    cheklistRealizadodataalteracao: TWideStringField;
    cheklistRealizadoidusuarioalteracao: TWideStringField;
    cheklistRealizadonome: TStringField;
    cheklistRealizadoidcheck: TWideStringField;
    cheklistRealizadodescricao: TStringField;
    cheklistRealizadoidcentrocusto: TWideStringField;
    cheklistRealizadoidmaquia: TWideStringField;
    cheklistRealizadoidcentrocustodestino: TWideStringField;
    cheklistRealizadotransferencia: TWideStringField;
    cheklistRealizadohorimetro: TBCDField;
    cheklistRealizadokm: TBCDField;
    cheklistRealizadodata: TDateField;
    TMaquinasidmarca: TWideStringField;
    TMaquinasplaca: TStringField;
    TMaquinasano: TWideStringField;
    TMaquinaschassi: TStringField;
    TMaquinasidcombustivel: TWideStringField;
    TMaquinasidsubgrupo: TWideStringField;
    TMaquinasidgrupo: TWideStringField;
    TCentroCustoOutros: TFDQuery;
    TCentroCustoOutrosid: TIntegerField;
    TCentroCustoOutrosstatus: TWideStringField;
    TCentroCustoOutrosdatareg: TWideStringField;
    TCentroCustoOutrosidusuario: TWideStringField;
    TCentroCustoOutrosdataalteracao: TWideStringField;
    TCentroCustoOutrosidusuarioalteracao: TWideStringField;
    TCentroCustoOutrosnome: TStringField;
    TCentroCustoOutrossyncaws: TWideStringField;
    detcheklistgenericidgrupo: TIntegerField;
    cheklistRealizadoalerta: TIntegerField;
    cheklistRealizadosyncaws: TIntegerField;
    detcheklistRealizadosyncaws: TIntegerField;
    cheklistgenericid: TIntegerField;
    cheklistgenericstatus: TWideStringField;
    cheklistgenericdatareg: TWideStringField;
    cheklistgenericidusuario: TWideStringField;
    cheklistgenericdataalteracao: TWideStringField;
    cheklistgenericidusuarioalteracao: TWideStringField;
    cheklistgenericnome: TStringField;
    cheklistgenericdescricao: TStringField;
    cheklistgenerictransferencia: TWideStringField;
    cheklistgenericidgrupomaquinas: TWideStringField;
    detcheklistRealizadonormal: TBooleanField;
    detcheklistRealizadoreparar: TBooleanField;
    detcheklistRealizadonaoseaplica: TBooleanField;
    cheklistRealizadoobservasao: TStringField;
    TMaquinasidmodelo: TIntegerField;
    TUsuarioabastecimento: TIntegerField;
    TUsuarioapontamento: TIntegerField;
    procedure cheklistgenericReconcileError(DataSet: TFDDataSet;
      E: EFDException; UpdateKind: TFDDatSRowState;
      var Action: TFDDAptReconcileAction);
    procedure detcheklistgenericReconcileError(DataSet: TFDDataSet;
      E: EFDException; UpdateKind: TFDDatSRowState;
      var Action: TFDDAptReconcileAction);
  private
    procedure DeletaTabelaSync(Atabela:string);
    procedure AlteraFlagSync(Atabela,AFlag,Aid:string);
    procedure AtualizaIdSyncAbastecimento(AIdOld,AidNew:string);
    procedure AtualizaIdSyncLubrificacao(AIdOld, AidNew: string);
    procedure AtualizaIdSynccheklistRealizado(AIdOld, AidNew: string);
  public
    Porta,host:string;
    function GetUsuario:string;
    function GetOperadorMaquinas:string;
    function GetAtividadesAbastecimento:string;
    function GetCompartimentoLub:string;
    function GetCentroCusto(idCentroCusto:string):string;
    function GetCentroCustoOutros(idCentroCusto:string):string;

    function GetLocalEstoque(idCentroCusto:string):string;
    function GetProdutos:string;
    function GetMaquinas:string;
    function GetCheckListPadrao:string;
    function GetDetCheckListPadrao:string;
    function Getcheklistregrupoitem: string;
    function TestaServidor: string;

    function PostStartDiario:string;
    function PostAbastecimento:string;
    function PostAbastecimentoOutros:string;
    function PostMovLocalEstoque: string;
    function PostAutenticaPatrimonio(Patrimonio:string):string;

    function PostLubrificacao:string;
    function PostLubrificacaoProdutos:string;

    function PostCheckList:string;
    function PostDetCheckList:string;

  end;

var
  dmsync: Tdmsync;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

uses UDmDB, UPrincipal;

{$R *.dfm}

{ TdmSync }

function TdmSync.PostAutenticaPatrimonio(Patrimonio:string):string;
var
   URL,vReultHTTP:STRING;
   JsonToSend  : TStringStream;
   I:integer;
   Txt         : TextFile;
   Quebra      : TStringList;
   LJSon       : TJSONArray;
   vReultHTTPc,
   ResponseBody,vReultCopy: String;
   StrAux      : TStringWriter;
   txtJson     : TJsonTextWriter;
   LJsonObj    : TJSONObject;
begin
  JsonToSend := TStringStream.Create(nil);
  StrAux  := TStringWriter.Create;
   txtJson := TJsonTextWriter.Create(StrAux);
   txtJson.Formatting := TJsonFormatting.Indented;
   txtJson.WriteStartObject;
   TxtJSON.WritePropertyName('Patrimonio');
    TxtJSON.WriteStartArray;
     txtJson.WriteStartObject;
       txtJson.WritePropertyName('numero');
       txtJson.WriteValue(Patrimonio);
     txtJson.WriteEndObject;
    TxtJSON.WriteEndArray; //Fecha Array dos Itens
   txtJson.WriteEndObject;
   LJsonObj := TJsonObject.ParseJSONValue(TEncoding.UTF8.GetBytes(StrAux.ToString),0)as TJSONObject;
   JsonToSend := TStringStream.Create(LJsonObj.ToJSON);
   Url := 'http://'+Host+':'+Porta+'/AutenticaPatrimonio';
   IdHTTP1.Request.Accept      := 'application/json';
   IdHTTP1.Request.ContentType := 'application/json';
   ResponseBody := IdHTTP1.Post(url,JsonToSend);
   vReultCopy := copy(ResponseBody,0,5);
   if vReultCopy='{"OK"'then
   begin
     vReultHTTP := StringReplace(ResponseBody,'{"OK":"','',[rfReplaceAll]);
     vReultHTTP := StringReplace(vReultHTTP,'"}','',[rfReplaceAll]);
     Result     := vReultHTTP;
   end
   else
   begin
     vReultHTTP := StringReplace(ResponseBody,'{"Erro":"','',[rfReplaceAll]);
     vReultHTTP := StringReplace(vReultHTTP,'"}','',[rfReplaceAll]);
     Result     := 'Erro:'+vReultHTTP;
   end;
end;


function Tdmsync.PostCheckList: string;
var
 URL,vReultHTTP:STRING;
 JsonToSend  : TStringStream;
 I:integer;
begin
 with QryAuxLoop,QryAuxLoop.SQL do
 begin
   Clear;
   Add('select * from cheklistRealizado');
   Add('where status=2 and syncaws=0');
   Open;
   while not QryAuxLoop.Eof do
   begin
     frmprincipal.mlog.text:='Enviando CheckList:'+
      IntToStr(i)+' de '+IntToStr(QryAuxLoop.RecordCount);
     with cheklistRealizado,cheklistRealizado.SQL do
     begin
      Clear;
      Add('select * from cheklistRealizado where id='+QryAuxLoop.FieldByName('id').AsString);
      Open;
     end;
     if not cheklistRealizado.IsEmpty then
     begin
       JsonToSend := TStringStream.Create(nil);
       cheklistRealizado.SaveToStream(JsonToSend,sfJSON);
       Url := 'http://'+Host+':'+Porta+'/CheckList';
       IdHTTP1.Request.CustomHeaders.Clear;
       IdHTTP1.Request.CustomHeaders.Clear;
       IdHTTP1.Request.ContentType := 'application/json';
       IdHTTP1.Request.Accept      := 'application/json';
       try
         vReultHTTP := IdHTTP1.Post(url,JsonToSend);
         if copy(vReultHTTP,0,4)='{"OK'then
         begin
           vReultHTTP := StringReplace(vReultHTTP,'{"OK":"','',[rfReplaceAll]);
           vReultHTTP := StringReplace(vReultHTTP,'"}','',[rfReplaceAll]);
           AlteraFlagSync('cheklistRealizado','1',QryAuxLoop.FieldByName('id').AsString);
           dmsync.AtualizaIdSynccheklistRealizado(QryAuxLoop.FieldByName('id').AsString,
            vReultHTTP);
         end
         else
          TThread.Synchronize(nil, procedure
          begin
           TDialogService.ShowMessage(vReultHTTP);
          end);
         Inc(I);
         QryAuxLoop.Next;
       except
        on E: Exception do
        begin
          TThread.Synchronize(nil, procedure
          begin
           TDialogService.ShowMessage('Erro ao sioncronizar Cheklist Realizado : '+e.Message);
          end);
          Result:='Erro ao sioncronizar Cheklist Realizado : '+e.Message;
        end;
       end;
     end;
   end;
 end;
 Result     := vReultHTTP;
end;

function Tdmsync.PostDetCheckList: string;
var
 URL,vReultHTTP:STRING;
 JsonToSend  : TStringStream;
 I:integer;
begin
 with QryAuxLoop,QryAuxLoop.SQL do
 begin
   Clear;
   Add('select a.* from detcheklistRealizado a');
   Add('join cheklistrealizado b on b.id=a.idcheck');
   Add('where b.status=2 and a.syncaws=0');
   Open;
   while not QryAuxLoop.Eof do
   begin
     frmprincipal.mlog.text:='Enviando Det Cheklist Realizado:'+
      IntToStr(i)+' de '+IntToStr(QryAuxLoop.RecordCount);
     with detcheklistRealizado,detcheklistRealizado.SQL do
     begin
      Clear;
      Add('select * from detcheklistRealizado where id='+QryAuxLoop.FieldByName('id').AsString);
      Open;
     end;
     if not detcheklistRealizado.IsEmpty then
     begin
       JsonToSend := TStringStream.Create(nil);
       detcheklistRealizado.SaveToStream(JsonToSend,sfJSON);
       Url := 'http://'+Host+':'+Porta+'/DetCheckList';
       IdHTTP1.Request.CustomHeaders.Clear;
       IdHTTP1.Request.CustomHeaders.Clear;
       IdHTTP1.Request.ContentType := 'application/json';
       IdHTTP1.Request.Accept      := 'application/json';
       try
         vReultHTTP := IdHTTP1.Post(url,JsonToSend);
         if copy(vReultHTTP,0,4)='{"OK'then
          dmsync.AlteraFlagSync('detcheklistRealizado','1',QryAuxLoop.FieldByName('id').AsString)
         else
          TThread.Synchronize(nil, procedure
          begin
           TDialogService.ShowMessage(vReultHTTP);
          end);
         inc(i);
         QryAuxLoop.Next;
       except
        on E: Exception do
        begin
         TThread.Synchronize(nil, procedure
         begin
          TDialogService.ShowMessage('Erro ao sioncronizar Det Cheklist Realizado: '+e.Message);
         end);
          Result:='Erro ao sioncronizar Det Cheklist Realizado: '+e.Message;
        end;
       end;
     end;
   end;
 end;
 Result     := vReultHTTP;
end;

function Tdmsync.PostLubrificacao: string;
var
 URL,vReultHTTP:STRING;
 JsonToSend  : TStringStream;
 I:integer;
begin
 with QryAuxLoop,QryAuxLoop.SQL do
 begin
   Clear;
   Add('select * from lubrificacao where syncaws=0');
   Add('and id in(select distinct idlubrificacao from lubrificacaoprodutos where status>-1)');
   Open;
   while not QryAuxLoop.Eof do
   begin
     frmprincipal.mlog.text:='Enviando Lubrificaçao:'+
      IntToStr(i)+' de '+IntToStr(QryAuxLoop.RecordCount);
     with TLubrificacao,TLubrificacao.SQL do
     begin
      Clear;
      Add('select * from lubrificacao where id='+QryAuxLoop.FieldByName('id').AsString);
      Open;
     end;
     if not TLubrificacao.IsEmpty then
     begin
       JsonToSend := TStringStream.Create(nil);
       TLubrificacao.SaveToStream(JsonToSend,sfJSON);
       Url := 'http://'+Host+':'+Porta+'/Lubrificacao';
       IdHTTP1.Request.CustomHeaders.Clear;
       IdHTTP1.Request.CustomHeaders.Clear;
       IdHTTP1.Request.ContentType := 'application/json';
       IdHTTP1.Request.Accept      := 'application/json';
       try
         vReultHTTP := IdHTTP1.Post(url,JsonToSend);
         if copy(vReultHTTP,0,4)='{"OK'then
         begin
           vReultHTTP := StringReplace(vReultHTTP,'{"OK":"','',[rfReplaceAll]);
           vReultHTTP := StringReplace(vReultHTTP,'"}','',[rfReplaceAll]);
           AlteraFlagSync('lubrificacao','1',QryAuxLoop.FieldByName('id').AsString);
           dmsync.AtualizaIdSyncLubrificacao(QryAuxLoop.FieldByName('id').AsString,
            vReultHTTP);
         end
         else
          TThread.Synchronize(nil, procedure
          begin
           TDialogService.ShowMessage(vReultHTTP);
          end);
         Inc(I);
         QryAuxLoop.Next;
       except
        on E: Exception do
        begin
          TThread.Synchronize(nil, procedure
          begin
           TDialogService.ShowMessage('Erro ao sioncronizar Start Diario : '+e.Message);
          end);
          Result:='Erro ao sioncronizar Abastecimento : '+e.Message;
        end;
       end;
     end;
   end;
 end;
 Result     := vReultHTTP;
end;

function Tdmsync.PostLubrificacaoProdutos: string;
var
 URL,vReultHTTP:STRING;
 JsonToSend  : TStringStream;
 I:integer;
begin
 with QryAuxLoop,QryAuxLoop.SQL do
 begin
   Clear;
   Add('select * from lubrificacaoprodutos where syncaws=0');
   Open;
   while not QryAuxLoop.Eof do
   begin
     frmprincipal.mlog.text:='Enviando Lubrificacao Produtos:'+
      IntToStr(i)+' de '+IntToStr(QryAuxLoop.RecordCount);
     with TLubrificacaoprodutos,TLubrificacaoprodutos.SQL do
     begin
      Clear;
      Add('select * from lubrificacaoprodutos where id='+QryAuxLoop.FieldByName('id').AsString);
      Open;
     end;
     if not TLubrificacaoprodutos.IsEmpty then
     begin
       JsonToSend := TStringStream.Create(nil);
       TLubrificacaoProdutos.SaveToStream(JsonToSend,sfJSON);
       Url := 'http://'+Host+':'+Porta+'/LubrificacaoProduto';
       IdHTTP1.Request.CustomHeaders.Clear;
       IdHTTP1.Request.CustomHeaders.Clear;
       IdHTTP1.Request.ContentType := 'application/json';
       IdHTTP1.Request.Accept      := 'application/json';
       try
         vReultHTTP := IdHTTP1.Post(url,JsonToSend);
         if copy(vReultHTTP,0,4)='{"OK'then
          dmsync.AlteraFlagSync('lubrificacaoprodutos','1',QryAuxLoop.FieldByName('id').AsString)
         else
          TThread.Synchronize(nil, procedure
          begin
           TDialogService.ShowMessage(vReultHTTP);
          end);
         inc(i);
         QryAuxLoop.Next;
       except
        on E: Exception do
        begin
         TThread.Synchronize(nil, procedure
         begin
          TDialogService.ShowMessage('Erro ao sioncronizar Lubrificacao produtos : '+e.Message);
         end);
          Result:='Erro ao sioncronizar Lubrificacao Produtos: '+e.Message;
        end;
       end;
     end;
   end;
 end;
 Result     := vReultHTTP;
end;

function TdmSync.PostMovLocalEstoque: string;
var
 URL,vReultHTTP:STRING;
 JsonToSend  : TStringStream;
 I:integer;
begin
 with QryAuxLoop,QryAuxLoop.SQL do
 begin
   Clear;
   Add('select * from tranferencialocalestoque where syncaws=0');
   Open;
   while not QryAuxLoop.Eof do
   begin
     frmprincipal.mlog.text:='Enviando Start Diatio:'+
      IntToStr(i)+' de '+IntToStr(QryAuxLoop.RecordCount);
     with TMovLocalEstoque,TMovLocalEstoque.SQL do
     begin
      Clear;
      Add('select id,status,datareg,idusuario,dataalteracao,idusuarioalteracao,');
      Add('idlocalestoqueorigem,idlocalestoquedetino,idproduto,qtde,datamov,hora,syncaws,');
      Add('imgStartSend img,imgStopSend imgfim,totalizadorinicial,totalizadorfinal');
      Add('from tranferencialocalestoque');
      Add('where id='+QryAuxLoop.FieldByName('id').AsString);
      Open;
     end;
     if not TMovLocalEstoque.IsEmpty then
     begin
       JsonToSend := TStringStream.Create(nil);
       TMovLocalEstoque.SaveToStream(JsonToSend,sfJSON);
       Url := 'http://'+Host+':'+Porta+'/Transferencia';
       IdHTTP1.Request.CustomHeaders.Clear;
       IdHTTP1.Request.CustomHeaders.Clear;
       IdHTTP1.Request.ContentType := 'application/json';
       IdHTTP1.Request.Accept      := 'application/json';
       try
         vReultHTTP := IdHTTP1.Post(url,JsonToSend);
         if copy(vReultHTTP,0,4)='{"OK'then
         begin
           vReultHTTP := StringReplace(vReultHTTP,'{"OK":"','',[rfReplaceAll]);
           vReultHTTP := StringReplace(vReultHTTP,'"}','',[rfReplaceAll]);
           dmsync.AlteraFlagSync('tranferencialocalestoque','1',QryAuxLoop.FieldByName('id').AsString);
         end
         else
          TThread.Synchronize(nil, procedure
          begin
           TDialogService.ShowMessage(vReultHTTP);
          end);
         Inc(i);
         QryAuxLoop.Next;
       except
        on E: Exception do
        begin
         TThread.Synchronize(nil, procedure
         begin
          TDialogService.ShowMessage('Erro ao sioncronizar Trasnferencia:'+e.Message);
         end);
         Result:='Erro ao sioncronizar Trasnferencia : '+e.Message;
         break;
        end;
       end;
     end;
   end;
 end;
 Result     := vReultHTTP;
end;

procedure Tdmsync.AlteraFlagSync(Atabela, AFlag,Aid: string);
begin
  with qryAux,qryAux.SQL do
  begin
    Clear;
    Add('update '+Atabela+' set syncaws='+AFlag);
    Add('where id='+Aid);
    try
     ExecSQL;
    except
     on E: Exception do
      TThread.Synchronize(nil, procedure
      begin
       ShowMessage(e.Message);
      end);
    end;
  end;
end;

procedure Tdmsync.AtualizaIdSyncAbastecimento(AIdOld, AidNew: string);
begin
 with qryAux,qryAux.SQL do
 begin
   Clear;
   Add('update abastecimento set id='+AidNew);
   Add('where id='+AIdOld);
   try
    ExecSQL;
   except
     on E: Exception do
      TThread.Synchronize(nil, procedure
      begin
       ShowMessage(e.Message);
      end);
   end;

   Clear;
   Add('update abastecimentooutros set idabastecimento='+AidNew);
   Add('where idabastecimento='+AIdOld);
   try
    ExecSQL;
   except
     on E: Exception do
      TThread.Synchronize(nil, procedure
      begin
       ShowMessage(e.Message);
      end);
   end
 end;
end;

procedure Tdmsync.AtualizaIdSyncLubrificacao(AIdOld, AidNew: string);
begin
 with qryAux,qryAux.SQL do
 begin
   Clear;
   Add('update lubrificacao set id='+AidNew);
   Add('where id='+AIdOld);
   try
    ExecSQL;
   except
     on E: Exception do
      TThread.Synchronize(nil, procedure
      begin
       ShowMessage(e.Message);
      end);
   end;

   Clear;
   Add('update lubrificacaoprodutos set idlubrificacao='+AidNew);
   Add('where idlubrificacao='+AIdOld);
   try
    ExecSQL;
   except
     on E: Exception do
      TThread.Synchronize(nil, procedure
      begin
       ShowMessage(e.Message);
      end);
   end
 end;
end;

procedure Tdmsync.AtualizaIdSynccheklistRealizado(AIdOld, AidNew: string);
begin
 with qryAux,qryAux.SQL do
 begin
   Clear;
   Add('update cheklistrealizado set id='+AidNew);
   Add('where id='+AIdOld);
   try
    ExecSQL;
   except
     on E: Exception do
      TThread.Synchronize(nil, procedure
      begin
       ShowMessage(e.Message);
      end);
   end;

   Clear;
   Add('update detcheklistRealizado set idcheck='+AidNew);
   Add('where idcheck='+AIdOld);
   try
    ExecSQL;
   except
     on E: Exception do
      TThread.Synchronize(nil, procedure
      begin
       ShowMessage(e.Message);
      end);
   end
 end;
end;

procedure Tdmsync.cheklistgenericReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
 ShowMessage(e.Message);
end;

procedure Tdmsync.DeletaTabelaSync(Atabela: string);
begin
 with qryAux,qryAux.SQL do
 begin
   Clear;
   Add('delete from '+Atabela);
   try
    ExecSQL;
   except
     on E: Exception do
      TThread.Synchronize(nil, procedure
      begin
       ShowMessage(e.Message);
      end);
   end
 end;
end;

procedure Tdmsync.detcheklistgenericReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
 ShowMessage(e.Message);
end;

function Tdmsync.GetAtividadesAbastecimento: string;
var
 Url,vJsonString,vIsert,
 vField,vFieldJS,vId:string;
 vJoInsert,vJoItemO,vJoItemO1,jSubObj,vJoGetJ : TJSONObject;
 vJoItem,vJoItem1,vJoGet  : TJSONArray;
 JsonValue,JsonId:TJSONValue;
 I,J,z:integer;
 joName,objJson,joItem : TJSONObject;
 joItems: TJSONArray;
begin
   Url := 'http://'+Host+':'+Porta+'/GetAtividadesAbastecimento';
   IdHTTP1.Request.CustomHeaders.Clear;
   try
    vJsonString        := IdHTTP1.Get(URL);
    if(vJsonString<>'{"TAuxAtividadesAbastecimento":[') then
    begin
       jSubObj  := TJSONObject.ParseJSONValue(vJsonString) as TJSONObject;
       vJoGet := jSubObj.GetValue<TJSONArray>('TAuxAtividadesAbastecimento')as TJSONArray;
       DeletaTabelaSync('auxatividadeabastecimento');
       for i := 0 to vJoGet.Count-1 do
       begin
          vJoGetJ        := vJoGet.Items[i] as TJSONObject;
          Tauxatividadeabastecimento.Close;
          Tauxatividadeabastecimento.Open;
          Tauxatividadeabastecimento.Insert;
          for z := 0 to Tauxatividadeabastecimento.Fields.Count -1 do
          begin
           vField:= StringReplace(Tauxatividadeabastecimento.Fields[z].Name,
            'Tauxatividadeabastecimento','',[rfReplaceAll]);
           Tauxatividadeabastecimento.FieldByName(vField).AsString := vJoGetJ.GetValue(vField).value;
          end;
          try
           Tauxatividadeabastecimento.ApplyUpdates(-1);
          except
           on E: Exception do
             begin
               result:='Erro ao inserir Atividades Abastecimento:'+E.Message;
             end;
          end;
       end;
       Tauxatividadeabastecimento.Close;
       Tauxatividadeabastecimento.Open;;
       result:='Atividades Abastecimento Baixados com Sucesso'
    end
    else
     Result :='Atividades Abastecimento Baixados com Sucesso'
   except
   on E: Exception do
     begin
       result:='Erro ao comunicar com Servidor:'+E.Message;
     end;
   end;
end;

function Tdmsync.GetCentroCusto(idCentroCusto:string):string;
var
 Url,vJsonString,vIsert,
 vField,vFieldJS,vId:string;
 vJoInsert,vJoItemO,vJoItemO1,jSubObj,vJoGetJ : TJSONObject;
 vJoItem,vJoItem1,vJoGet  : TJSONArray;
 JsonValue,JsonId:TJSONValue;
 I,J,z:integer;
 joName,objJson,joItem : TJSONObject;
 joItems: TJSONArray;
 StrAux      : TStringWriter;
 txtJson     : TJsonTextWriter;
 LJsonObj    : TJSONObject;
 JsonToSend   : TStringStream;
begin
  JsonToSend := TStringStream.Create(nil);
  StrAux  := TStringWriter.Create;
   txtJson := TJsonTextWriter.Create(StrAux);
   txtJson.Formatting := TJsonFormatting.Indented;
   txtJson.WriteStartObject;
   TxtJSON.WritePropertyName('CentroCusto');
    TxtJSON.WriteStartArray;
     txtJson.WriteStartObject;
       txtJson.WritePropertyName('id');
       txtJson.WriteValue(idCentroCusto);
     txtJson.WriteEndObject;
    TxtJSON.WriteEndArray; //Fecha Array dos Itens
   txtJson.WriteEndObject;
   LJsonObj := TJsonObject.ParseJSONValue(TEncoding.UTF8.GetBytes(StrAux.ToString),0)as TJSONObject;
   JsonToSend := TStringStream.Create(LJsonObj.ToJSON);
   Url := 'http://'+Host+':'+Porta+'/GetCentroCusto';
   IdHTTP1.Request.CustomHeaders.Clear;
   try
    IdHTTP1.Request.Accept      := 'application/json';
    IdHTTP1.Request.ContentType := 'application/json';
    vJsonString        := IdHTTP1.Post(URL,JsonToSend);
    if(vJsonString<>'{"TCentroCusto":[') then
    begin
       jSubObj  := TJSONObject.ParseJSONValue(vJsonString) as TJSONObject;
       vJoGet := jSubObj.GetValue<TJSONArray>('TCentroCusto') as TJSONArray;
       DeletaTabelaSync('centrocusto');
       for i := 0 to vJoGet.Count-1 do
       begin
          vJoGetJ        := vJoGet.Items[i] as TJSONObject;
          TCentroCusto.Close;
          TCentroCusto.Open;
          TCentroCusto.Insert;
          for z := 0 to TCentroCusto.Fields.Count -1 do
          begin
           vField:= StringReplace(TCentroCusto.Fields[z].Name,
            'TCentroCusto','',[rfReplaceAll]);
           TCentroCusto.FieldByName(vField).AsString := vJoGetJ.GetValue(vField).value;
          end;
          try
           TCentroCusto.ApplyUpdates(-1);
          except
           on E: Exception do
             begin
               result:='Erro ao inserir Centro de Custo:'+E.Message;
             end;
          end;
       end;
       TCentroCusto.Close;
       TCentroCusto.Open;;
       result:='Centro de Custo Baixados com Sucesso'
    end
    else
     Result :='Centro de Custo Baixados com Sucesso'
   except
   on E: Exception do
     begin
       result:='Erro ao comunicar com Servidor:'+E.Message;
     end;
   end;
end;


function Tdmsync.GetCentroCustoOutros(idCentroCusto:string):string;
var
 Url,vJsonString,vIsert,
 vField,vFieldJS,vId:string;
 vJoInsert,vJoItemO,vJoItemO1,jSubObj,vJoGetJ : TJSONObject;
 vJoItem,vJoItem1,vJoGet  : TJSONArray;
 JsonValue,JsonId:TJSONValue;
 I,J,z:integer;
 joName,objJson,joItem : TJSONObject;
 joItems: TJSONArray;
 StrAux      : TStringWriter;
 txtJson     : TJsonTextWriter;
 LJsonObj    : TJSONObject;
 JsonToSend   : TStringStream;
begin
  JsonToSend := TStringStream.Create(nil);
  StrAux  := TStringWriter.Create;
   txtJson := TJsonTextWriter.Create(StrAux);
   txtJson.Formatting := TJsonFormatting.Indented;
   txtJson.WriteStartObject;
   TxtJSON.WritePropertyName('CentroCusto');
    TxtJSON.WriteStartArray;
     txtJson.WriteStartObject;
       txtJson.WritePropertyName('id');
       txtJson.WriteValue(idCentroCusto);
     txtJson.WriteEndObject;
    TxtJSON.WriteEndArray; //Fecha Array dos Itens
   txtJson.WriteEndObject;
   LJsonObj := TJsonObject.ParseJSONValue(TEncoding.UTF8.GetBytes(StrAux.ToString),0)as TJSONObject;
   JsonToSend := TStringStream.Create(LJsonObj.ToJSON);
   Url := 'http://'+Host+':'+Porta+'/GetCentroCustoOutros';
   IdHTTP1.Request.CustomHeaders.Clear;
   try
    IdHTTP1.Request.Accept      := 'application/json';
    IdHTTP1.Request.ContentType := 'application/json';
    vJsonString        := IdHTTP1.Post(URL,JsonToSend);
    if(vJsonString<>'{"TCentroCustoOutros":[') then
    begin
       jSubObj  := TJSONObject.ParseJSONValue(vJsonString) as TJSONObject;
       vJoGet := jSubObj.GetValue<TJSONArray>('TCentroCustoOutros') as TJSONArray;
       DeletaTabelaSync('centrocustoOutros');
       for i := 0 to vJoGet.Count-1 do
       begin
          vJoGetJ        := vJoGet.Items[i] as TJSONObject;
          TCentroCustoOutros.Close;
          TCentroCustoOutros.Open;
          TCentroCustoOutros.Insert;
          for z := 0 to TCentroCustoOutros.Fields.Count -1 do
          begin
           vField:= StringReplace(TCentroCustoOutros.Fields[z].Name,
            'TCentroCustoOutros','',[rfReplaceAll]);
           TCentroCustoOutros.FieldByName(vField).AsString := vJoGetJ.GetValue(vField).value;
          end;
          try
           TCentroCustoOutros.ApplyUpdates(-1);
          except
           on E: Exception do
             begin
               result:='Erro ao inserir Centro de Custo:'+E.Message;
             end;
          end;
       end;
       TCentroCustoOutros.Close;
       TCentroCustoOutros.Open;;
       result:='Centro de Custo Baixados com Sucesso'
    end
    else
     Result :='Centro de Custo Baixados com Sucesso'
   except
   on E: Exception do
     begin
       result:='Erro ao comunicar com Servidor:'+E.Message;
     end;
   end;
end;

function Tdmsync.GetCheckListPadrao: string;
var
 Url,vJsonString,vIsert,
 vField,vFieldJS,vId:string;
 vJoInsert,vJoItemO,vJoItemO1,jSubObj,vJoGetJ : TJSONObject;
 vJoItem,vJoItem1,vJoGet  : TJSONArray;
 JsonValue,JsonId:TJSONValue;
 I,J,z:integer;
 joName,objJson,joItem : TJSONObject;
 joItems: TJSONArray;
begin
   Url := 'http://'+Host+':'+Porta+'/Getcheklistgeneric';
   IdHTTP1.Request.CustomHeaders.Clear;
   try
    vJsonString        := IdHTTP1.Get(URL);
    if(vJsonString<>'{"cheklistgeneric":[') then
    begin
       jSubObj  := TJSONObject.ParseJSONValue(vJsonString) as TJSONObject;
       vJoGet := jSubObj.GetValue<TJSONArray>('cheklistgeneric')as TJSONArray;
       DeletaTabelaSync('cheklistgeneric');
       for i := 0 to vJoGet.Count-1 do
       begin
          vJoGetJ        := vJoGet.Items[i] as TJSONObject;
          cheklistgeneric.Close;
          cheklistgeneric.Open;
          cheklistgeneric.Insert;
          for z := 0 to cheklistgeneric.Fields.Count -1 do
          begin
           vField:= LowerCase(StringReplace(cheklistgeneric.Fields[z].Name,
            'cheklistgeneric','',[rfReplaceAll]));
           cheklistgeneric.FieldByName(vField).AsString := vJoGetJ.GetValue(vField).value;
          end;
          try
           cheklistgeneric.ApplyUpdates(-1);
          except
           on E: Exception do
             begin
               result:='Erro ao inserir Check List Padrao:'+E.Message;
             end;
          end;
       end;
       cheklistgeneric.Close;
       cheklistgeneric.Open;;
       result:='Check List Padrao Baixados com Sucesso'
    end
    else
     Result :='Check List Padrao Baixados com Sucesso'
   except
   on E: Exception do
     begin
       result:='Erro ao comunicar com Servidor:'+E.Message;
     end;
   end;
end;

function Tdmsync.Getcheklistregrupoitem: string;
var
 Url,vJsonString,vIsert,
 vField,vFieldJS,vId:string;
 vJoInsert,vJoItemO,vJoItemO1,jSubObj,vJoGetJ : TJSONObject;
 vJoItem,vJoItem1,vJoGet  : TJSONArray;
 JsonValue,JsonId:TJSONValue;
 I,J,z:integer;
 joName,objJson,joItem : TJSONObject;
 joItems: TJSONArray;
begin
   Url := 'http://'+Host+':'+Porta+'/Getcheklistregrupoitem';
   IdHTTP1.Request.CustomHeaders.Clear;
   try
    vJsonString        := IdHTTP1.Get(URL);
    if(vJsonString<>'{"cheklistregrupoitem":[') then
    begin
       jSubObj  := TJSONObject.ParseJSONValue(vJsonString) as TJSONObject;
       vJoGet := jSubObj.GetValue<TJSONArray>('cheklistregrupoitem')as TJSONArray;
       DeletaTabelaSync('cheklistregrupoitem');
       for i := 0 to vJoGet.Count-1 do
       begin
          vJoGetJ        := vJoGet.Items[i] as TJSONObject;
          cheklistregrupoitem.Close;
          cheklistregrupoitem.Open;
          cheklistregrupoitem.Insert;
          for z := 0 to cheklistregrupoitem.Fields.Count -1 do
          begin
           vField:= LowerCase(StringReplace(cheklistregrupoitem.Fields[z].Name,
            'cheklistregrupoitem','',[rfReplaceAll]));
           cheklistregrupoitem.FieldByName(vField).AsString := vJoGetJ.GetValue(vField).value;
          end;
          try
           cheklistregrupoitem.ApplyUpdates(-1);
          except
           on E: Exception do
             begin
               result:='Erro ao inserir Check List Padrao:'+E.Message;
             end;
          end;
       end;
       cheklistregrupoitem.Close;
       cheklistregrupoitem.Open;;
       result:='Check List Padrao Baixados com Sucesso'
    end
    else
     Result :='Check List Padrao Baixados com Sucesso'
   except
   on E: Exception do
     begin
       result:='Erro ao comunicar com Servidor:'+E.Message;
     end;
   end;
end;


function Tdmsync.GetCompartimentoLub: string;
var
 Url,vJsonString,vIsert,
 vField,vFieldJS,vId:string;
 vJoInsert,vJoItemO,vJoItemO1,jSubObj,vJoGetJ : TJSONObject;
 vJoItem,vJoItem1,vJoGet  : TJSONArray;
 JsonValue,JsonId:TJSONValue;
 I,J,z:integer;
 joName,objJson,joItem : TJSONObject;
 joItems: TJSONArray;
begin
   Url := 'http://'+Host+':'+Porta+'/GetAuxCompLub';
   IdHTTP1.Request.CustomHeaders.Clear;
   try
    vJsonString        := IdHTTP1.Get(URL);
    if(vJsonString<>'{"TAuxCompLub":[') then
    begin
       jSubObj  := TJSONObject.ParseJSONValue(vJsonString) as TJSONObject;
       vJoGet := jSubObj.GetValue<TJSONArray>('TAuxCompLub')as TJSONArray;
       DeletaTabelaSync('compartimentolubricficacao');
       for i := 0 to vJoGet.Count-1 do
       begin
          vJoGetJ        := vJoGet.Items[i] as TJSONObject;
          TAuxCompLub.Close;
          TAuxCompLub.Open;
          TAuxCompLub.Insert;
          for z := 0 to TAuxCompLub.Fields.Count -1 do
          begin
           vField:= StringReplace(TAuxCompLub.Fields[z].Name,
            'TAuxCompLub','',[rfReplaceAll]);
           TAuxCompLub.FieldByName(vField).AsString := vJoGetJ.GetValue(vField).value;
          end;
          try
           TAuxCompLub.ApplyUpdates(-1);
          except
           on E: Exception do
             begin
               result:='Erro ao inserir Auxiliar Compartimento Lub:'+E.Message;
             end;
          end;
       end;
       TAuxCompLub.Close;
       TAuxCompLub.Open;;
       result:='Auxiliar Compartimento Lub Baixados com Sucesso'
    end
    else
     Result :='Auxiliar Compartimento Lub Baixados com Sucesso'
   except
   on E: Exception do
     begin
       result:='Erro ao comunicar com Servidor:'+E.Message;
     end;
   end;
end;

function Tdmsync.GetDetCheckListPadrao: string;
var
 Url,vJsonString,vIsert,
 vField,vFieldJS,vId:string;
 vJoInsert,vJoItemO,vJoItemO1,jSubObj,vJoGetJ : TJSONObject;
 vJoItem,vJoItem1,vJoGet  : TJSONArray;
 JsonValue,JsonId:TJSONValue;
 I,J,z:integer;
 joName,objJson,joItem : TJSONObject;
 joItems: TJSONArray;
begin
   Url := 'http://'+Host+':'+Porta+'/Getdetcheklistgeneric';
   IdHTTP1.Request.CustomHeaders.Clear;
   try
    vJsonString        := IdHTTP1.Get(URL);
    if(vJsonString<>'{"detcheklistgeneric":[') then
    begin
       jSubObj  := TJSONObject.ParseJSONValue(vJsonString) as TJSONObject;
       vJoGet := jSubObj.GetValue<TJSONArray>('detcheklistgeneric')as TJSONArray;
       DeletaTabelaSync('detcheklistgeneric');
       for i := 0 to vJoGet.Count-1 do
       begin
          vJoGetJ        := vJoGet.Items[i] as TJSONObject;
          detcheklistgeneric.Close;
          detcheklistgeneric.Open;
          detcheklistgeneric.Insert;
          for z := 0 to detcheklistgeneric.Fields.Count -1 do
          begin
           vField:= LowerCase(StringReplace(detcheklistgeneric.Fields[z].Name,
            'detcheklistgeneric','',[rfReplaceAll]));
           detcheklistgeneric.FieldByName(vField).AsString := vJoGetJ.GetValue(vField).value;
          end;
          try
           detcheklistgeneric.ApplyUpdates(-1);
          except
           on E: Exception do
             begin
               result:='Erro ao inserir det Check List Padrao:'+E.Message;
             end;
          end;
       end;
       detcheklistgeneric.Close;
       detcheklistgeneric.Open;;
       result:='Det Check List Padrao Baixados com Sucesso'
    end
    else
     Result :='Check List Padrao Baixados com Sucesso'
   except
   on E: Exception do
     begin
       result:='Erro ao comunicar com Servidor:'+E.Message;
     end;
   end;
end;

function Tdmsync.GetLocalEstoque(idCentroCusto:string):string;
var
 Url,vJsonString,vIsert,
 vField,vFieldJS,vId:string;
 vJoInsert,vJoItemO,vJoItemO1,jSubObj,vJoGetJ : TJSONObject;
 vJoItem,vJoItem1,vJoGet  : TJSONArray;
 JsonValue,JsonId:TJSONValue;
 I,J,z:integer;
 joName,objJson,joItem : TJSONObject;
 joItems: TJSONArray;
 StrAux      : TStringWriter;
 txtJson     : TJsonTextWriter;
 LJsonObj    : TJSONObject;
 JsonToSend   : TStringStream;
begin
   JsonToSend := TStringStream.Create(nil);
  StrAux  := TStringWriter.Create;
   txtJson := TJsonTextWriter.Create(StrAux);
   txtJson.Formatting := TJsonFormatting.Indented;
   txtJson.WriteStartObject;
   TxtJSON.WritePropertyName('CentroCusto');
    TxtJSON.WriteStartArray;
     txtJson.WriteStartObject;
       txtJson.WritePropertyName('id');
       txtJson.WriteValue(idCentroCusto);
     txtJson.WriteEndObject;
    TxtJSON.WriteEndArray; //Fecha Array dos Itens
   txtJson.WriteEndObject;
   LJsonObj := TJsonObject.ParseJSONValue(TEncoding.UTF8.GetBytes(StrAux.ToString),0)as TJSONObject;
   JsonToSend := TStringStream.Create(LJsonObj.ToJSON);
   Url := 'http://'+Host+':'+Porta+'/GetLocalEstoque';
   IdHTTP1.Request.CustomHeaders.Clear;
   try
    IdHTTP1.Request.Accept      := 'application/json';
    IdHTTP1.Request.ContentType := 'application/json';
    vJsonString        := IdHTTP1.Post(URL,JsonToSend);
    if(vJsonString<>'{"TLocalEstoque":[') then
    begin
       jSubObj  := TJSONObject.ParseJSONValue(vJsonString) as TJSONObject;
       vJoGet := jSubObj.GetValue<TJSONArray>('TLocalEstoque') as TJSONArray;
       DeletaTabelaSync('localestoque');
       for i := 0 to vJoGet.Count-1 do
       begin
          vJoGetJ        := vJoGet.Items[i] as TJSONObject;
          TLocalEstoque.Close;
          TLocalEstoque.Open;
          TLocalEstoque.Insert;
          for z := 0 to TLocalEstoque.Fields.Count -1 do
          begin
           vField:= StringReplace(TLocalEstoque.Fields[z].Name,
            'TLocalEstoque','',[rfReplaceAll]);
           TLocalEstoque.FieldByName(vField).AsString := vJoGetJ.GetValue(vField).value;
          end;
          try
           TLocalEstoque.ApplyUpdates(-1);
          except
           on E: Exception do
             begin
               result:='Erro ao inserir Local de Estoque:'+E.Message;
             end;
          end;
       end;
       TLocalEstoque.Close;
       TLocalEstoque.Open;;
       result:='Local de Estoque Baixados com Sucesso'
    end
    else
     Result :='Local de Estoque Baixados com Sucesso'
   except
   on E: Exception do
     begin
       result:='Erro ao comunicar com Servidor:'+E.Message;
     end;
   end;
end;

function TdmSync.TestaServidor: string;
var
 Url,vJsonString,vID:string;
 vJoInsert,vJoItemO,vJoItemO1,jSubObj,vJoGetJ : TJSONObject;
 vJoItem,vJoItem1,vJoGet  : TJSONArray;
 JsonValue,JsonId:TJSONValue;
 I,J:integer;
 joName,objJson,joItem : TJSONObject;
 joItems: TJSONArray;
begin
   Url :='http://'+Host+':'+Porta+'/GetTesteServidor';
   IdHTTP1.Request.CustomHeaders.Clear;
   try
    vJsonString        := IdHTTP1.Get(URL);
    Result:= vJsonString;
   except
     Result  := 'Erro';
   end;
end;

function Tdmsync.GetMaquinas: string;
var
 Url,vJsonString,vIsert,
 vField,vFieldJS,vId:string;
 vJoInsert,vJoItemO,vJoItemO1,jSubObj,vJoGetJ : TJSONObject;
 vJoItem,vJoItem1,vJoGet  : TJSONArray;
 JsonValue,JsonId:TJSONValue;
 I,J,z:integer;
 joName,objJson,joItem : TJSONObject;
 joItems: TJSONArray;
begin
   Url := 'http://'+Host+':'+Porta+'/GetMaquinas';
   IdHTTP1.Request.CustomHeaders.Clear;
   try
    vJsonString        := IdHTTP1.Get(URL);
    if(vJsonString<>'{"TMaquinas":[') then
    begin
       jSubObj  := TJSONObject.ParseJSONValue(vJsonString) as TJSONObject;
       vJoGet := jSubObj.GetValue<TJSONArray>('TMaquinas') as TJSONArray;
       DeletaTabelaSync('maquinaveiculo');
       for i := 0 to vJoGet.Count-1 do
       begin
          vJoGetJ        := vJoGet.Items[i] as TJSONObject;
          TMaquinas.Close;
          TMaquinas.Open;
          TMaquinas.Insert;
          for z := 0 to TMaquinas.Fields.Count -1 do
          begin
           vField:= StringReplace(TMaquinas.Fields[z].Name,
            'TMaquinas','',[rfReplaceAll]);
           if vField='ultimoabastecimento' then
           begin
             if vJoGetJ.GetValue(vField).value.Length>0 then
              TMaquinas.FieldByName(vField).AsString := vJoGetJ.GetValue(vField).value;
           end
           else
            TMaquinas.FieldByName(vField).AsString := vJoGetJ.GetValue(vField).value
          end;
          try
           TMaquinas.ApplyUpdates(-1);
          except
           on E: Exception do
             begin
               result:='Erro ao inserir Maquinas:'+E.Message;
             end;
          end;
       end;
       TMaquinas.Close;
       TMaquinas.Open;;
       result:='Maquinas Baixados com Sucesso'
    end
    else
     Result :='Maquinas Baixados com Sucesso'
   except
   on E: Exception do
     begin
       result:='Erro ao comunicar com Servidor:'+E.Message;
     end;
   end;
end;

function Tdmsync.GetOperadorMaquinas: string;
var
 Url,vJsonString,vIsert,
 vField,vFieldJS,vId:string;
 vJoInsert,vJoItemO,vJoItemO1,jSubObj,vJoGetJ : TJSONObject;
 vJoItem,vJoItem1,vJoGet  : TJSONArray;
 JsonValue,JsonId:TJSONValue;
 I,J,z:integer;
 joName,objJson,joItem : TJSONObject;
 joItems: TJSONArray;
begin
   Url := 'http://'+Host+':'+Porta+'/GetOperadorMaquinas';
   IdHTTP1.Request.CustomHeaders.Clear;
   try
    vJsonString        := IdHTTP1.Get(URL);
    if(vJsonString<>'{"TOperadorMaquina":[') then
    begin
       jSubObj  := TJSONObject.ParseJSONValue(vJsonString) as TJSONObject;
       vJoGet := jSubObj.GetValue<TJSONArray>('Toperadormaquinas') as TJSONArray;
       DeletaTabelaSync('operadormaquinas');
       for i := 0 to vJoGet.Count-1 do
       begin
          vJoGetJ        := vJoGet.Items[i] as TJSONObject;
          TOperadorMaquina.Close;
          TOperadorMaquina.Open;
          TOperadorMaquina.Insert;
          for z := 0 to TOperadorMaquina.Fields.Count -1 do
          begin
           vField:= StringReplace(TOperadorMaquina.Fields[z].Name,
            'TOperadorMaquina','',[rfReplaceAll]);
           TOperadorMaquina.FieldByName(vField).AsString := vJoGetJ.GetValue(vField).value;
          end;
          try
           TOperadorMaquina.ApplyUpdates(-1);
          except
           on E: Exception do
             begin
               result:='Erro ao inserir Operador de Maquinas:'+E.Message;
             end;
          end;
       end;
       TOperadorMaquina.Close;
       TOperadorMaquina.Open;;
       result:='Operador de Maquinas Baixados com Sucesso'
    end
    else
     Result :='Operador de Maquinas Baixados com Sucesso'
   except
   on E: Exception do
     begin
       result:='Erro ao comunicar com Servidor:'+E.Message;
     end;
   end;
end;

function Tdmsync.GetProdutos: string;
var
 Url,vJsonString,vIsert,
 vField,vFieldJS,vId:string;
 vJoInsert,vJoItemO,vJoItemO1,jSubObj,vJoGetJ : TJSONObject;
 vJoItem,vJoItem1,vJoGet  : TJSONArray;
 JsonValue,JsonId:TJSONValue;
 I,J,z:integer;
 joName,objJson,joItem : TJSONObject;
 joItems: TJSONArray;
begin
   Url := 'http://'+Host+':'+Porta+'/GetProdutos';
   IdHTTP1.Request.CustomHeaders.Clear;
   try
    vJsonString        := IdHTTP1.Get(URL);
    if(vJsonString<>'{"TProdutos":[') then
    begin
       jSubObj  := TJSONObject.ParseJSONValue(vJsonString) as TJSONObject;
       vJoGet := jSubObj.GetValue<TJSONArray>('TProdutos') as TJSONArray;
       DeletaTabelaSync('produtos');
       for i := 0 to vJoGet.Count-1 do
       begin
          vJoGetJ        := vJoGet.Items[i] as TJSONObject;
          TProdutos.Close;
          TProdutos.Open;
          TProdutos.Insert;
          for z := 0 to TProdutos.Fields.Count -1 do
          begin
           vField:= StringReplace(TProdutos.Fields[z].Name,
            'TProdutos','',[rfReplaceAll]);
           TProdutos.FieldByName(vField).AsString := vJoGetJ.GetValue(vField).value;
          end;
          try
           TProdutos.ApplyUpdates(-1);
          except
           on E: Exception do
             begin
               result:='Erro ao inserir Produtos:'+E.Message;
             end;
          end;
       end;
       TProdutos.Close;
       TProdutos.Open;;
       result:='Produtos Baixados com Sucesso'
    end
    else
     Result :='Produtos Baixados com Sucesso'
   except
   on E: Exception do
     begin
       result:='Erro ao comunicar com Servidor:'+E.Message;
     end;
   end;
end;

function Tdmsync.GetUsuario: string;
var
 Url,vJsonString,vIsert,
 vField,vFieldJS,vId:string;
 vJoInsert,vJoItemO,vJoItemO1,jSubObj,vJoGetJ : TJSONObject;
 vJoItem,vJoItem1,vJoGet  : TJSONArray;
 JsonValue,JsonId:TJSONValue;
 I,J,z:integer;
 joName,objJson,joItem : TJSONObject;
 joItems: TJSONArray;
begin
   Url := 'http://'+Host+':'+Porta+'/GetUsuario';
   IdHTTP1.Request.CustomHeaders.Clear;
   try
    vJsonString        := IdHTTP1.Get(URL);
    if(vJsonString<>'{"TUsuario":[') then
    begin
       jSubObj  := TJSONObject.ParseJSONValue(vJsonString) as TJSONObject;
       vJoGet := jSubObj.GetValue<TJSONArray>('TUsuario') as TJSONArray;
       DeletaTabelaSync('usuario');
       for i := 0 to vJoGet.Count-1 do
       begin
          vJoGetJ        := vJoGet.Items[i] as TJSONObject;
          TUsuario.Close;
          TUsuario.Open;
          TUsuario.Insert;
          for z := 0 to TUsuario.Fields.Count -1 do
          begin
           vField:= StringReplace(TUsuario.Fields[z].Name,
            'TUsuario','',[rfReplaceAll]);
           TUsuario.FieldByName(vField).AsString := vJoGetJ.GetValue(vField).value;
          end;
          try
           TUsuario.ApplyUpdates(-1);
          except
           on E: Exception do
             begin
               result:='Erro ao inserir Usuario:'+E.Message;
             end;
          end;
       end;
       TUsuario.Close;
       TUsuario.Open;
       result:='Usuarios Baixados com Sucesso'
    end
    else
     Result :='Usuarios Baixados com Sucesso'
   except
   on E: Exception do
     begin
       result:='Erro ao comunicar com Servidor:'+E.Message;
     end;
   end;
end;

function Tdmsync.PostAbastecimento: string;
var
 URL,vReultHTTP:STRING;
 JsonToSend  : TStringStream;
 I:integer;
begin
 with QryAuxLoop,QryAuxLoop.SQL do
 begin
   Clear;
   Add('select * from abastecimento where syncaws=0');
   Open;
   while not QryAuxLoop.Eof do
   begin
     frmprincipal.mlog.text:='Enviando Abastecimento:'+
      IntToStr(i)+' de '+IntToStr(QryAuxLoop.RecordCount);
     with TAbastecimento,TAbastecimento.SQL do
     begin
      Clear;
      Add('select * from abastecimento where id='+QryAuxLoop.FieldByName('id').AsString);
      Open;
     end;
     if not TAbastecimento.IsEmpty then
     begin
       JsonToSend := TStringStream.Create(nil);
       TAbastecimento.SaveToStream(JsonToSend,sfJSON);
       Url := 'http://'+Host+':'+Porta+'/Abastecimento';
       IdHTTP1.Request.CustomHeaders.Clear;
       IdHTTP1.Request.CustomHeaders.Clear;
       IdHTTP1.Request.ContentType := 'application/json';
       IdHTTP1.Request.Accept      := 'application/json';
       try
         vReultHTTP := IdHTTP1.Post(url,JsonToSend);
         if copy(vReultHTTP,0,4)='{"OK'then
         begin
           vReultHTTP := StringReplace(vReultHTTP,'{"OK":"','',[rfReplaceAll]);
           vReultHTTP := StringReplace(vReultHTTP,'"}','',[rfReplaceAll]);
           AlteraFlagSync('abastecimento','1',QryAuxLoop.FieldByName('id').AsString);
           AtualizaIdSyncAbastecimento(QryAuxLoop.FieldByName('id').AsString,
            vReultHTTP);
         end
         else
          TThread.Synchronize(nil, procedure
          begin
           TDialogService.ShowMessage(vReultHTTP);
          end);
         Inc(I);
         QryAuxLoop.Next;
       except
        on E: Exception do
        begin
          TThread.Synchronize(nil, procedure
          begin
           TDialogService.ShowMessage('Erro ao sioncronizar Start Diario : '+e.Message);
          end);
          Result:='Erro ao sioncronizar Abastecimento : '+e.Message;
        end;
       end;
     end;
   end;
 end;
 Result     := vReultHTTP;
end;

function Tdmsync.PostAbastecimentoOutros: string;
var
 URL,vReultHTTP:STRING;
 JsonToSend  : TStringStream;
 I:integer;
begin
 with QryAuxLoop,QryAuxLoop.SQL do
 begin
   Clear;
   Add('select * from abastecimentooutros where syncaws=0');
   Open;
   while not QryAuxLoop.Eof do
   begin
     frmprincipal.mlog.text:='Enviando Abastecimento Outros:'+
      IntToStr(i)+' de '+IntToStr(QryAuxLoop.RecordCount);
     with TAbastecimentoOutros,TAbastecimentoOutros.SQL do
     begin
      Clear;
      Add('select * from abastecimentooutros where id='+QryAuxLoop.FieldByName('id').AsString);
      Open;
     end;
     if not TAbastecimentoOutros.IsEmpty then
     begin
       JsonToSend := TStringStream.Create(nil);
       TAbastecimentoOutros.SaveToStream(JsonToSend,sfJSON);
       Url := 'http://'+Host+':'+Porta+'/AbastecimentoOutros';
       IdHTTP1.Request.CustomHeaders.Clear;
       IdHTTP1.Request.CustomHeaders.Clear;
       IdHTTP1.Request.ContentType := 'application/json';
       IdHTTP1.Request.Accept      := 'application/json';
       try
         vReultHTTP := IdHTTP1.Post(url,JsonToSend);
         if copy(vReultHTTP,0,4)='{"OK'then
         begin
           vReultHTTP := StringReplace(vReultHTTP,'{"OK":"','',[rfReplaceAll]);
           vReultHTTP := StringReplace(vReultHTTP,'"}','',[rfReplaceAll]);
           dmsync.AlteraFlagSync('abastecimentooutros','1',vReultHTTP);
         end
         else
          TThread.Synchronize(nil, procedure
          begin
           TDialogService.ShowMessage(vReultHTTP);
          end);
         inc(i);
         QryAuxLoop.Next;
       except
        on E: Exception do
        begin
         TThread.Synchronize(nil, procedure
         begin
          TDialogService.ShowMessage('Erro ao sioncronizar Start Diario : '+e.Message);
         end);
          Result:='Erro ao sioncronizar Abastecimento Outros : '+e.Message;
        end;
       end;
     end;
   end;
 end;
 Result     := vReultHTTP;
end;



function Tdmsync.PostStartDiario: string;
var
 URL,vReultHTTP:STRING;
 JsonToSend  : TStringStream;
 I:integer;
begin
 with QryAuxLoop,QryAuxLoop.SQL do
 begin
   Clear;
   Add('select * from startbomba where syncaws=0 and status=2');
   Open;
   I :=1;
   while not QryAuxLoop.Eof do
   begin
     frmprincipal.mlog.text:='Enviando Start Diatio:'+
      IntToStr(i)+' de '+IntToStr(QryAuxLoop.RecordCount) ;

     with TStartDiario,TStartDiario.SQL do
     begin
      Clear;
      Add('select ');
      Add('id,status,datareg,idusuario,dataalteracao,idusuarioalteracao,');
      Add('idlocalestoque,idcentrocusto,combustivel,');
      Add('dataastart,horastart,dataaend,horaend,syncaws,');
      Add('volumelitrosIni,obs,imgStartSend imgStart,imgStopSend imgEnd,volumelitrosFim');
      Add('from startbomba where id='+QryAuxLoop.FieldByName('id').AsString);
      Open;
     end;
     if not TStartDiario.IsEmpty then
     begin
       JsonToSend := TStringStream.Create(nil);
       TStartDiario.SaveToStream(JsonToSend,sfJSON);
       Url := 'http://'+Host+':'+Porta+'/StartDiario';
       IdHTTP1.Request.CustomHeaders.Clear;
       IdHTTP1.Request.CustomHeaders.Clear;
       IdHTTP1.Request.ContentType := 'application/json';
       IdHTTP1.Request.Accept      := 'application/json';
       try
         vReultHTTP := IdHTTP1.Post(url,JsonToSend);
         if copy(vReultHTTP,0,4)='{"OK'then
         begin
           vReultHTTP := StringReplace(vReultHTTP,'{"OK":"','',[rfReplaceAll]);
           vReultHTTP := StringReplace(vReultHTTP,'"}','',[rfReplaceAll]);
           dmsync.AlteraFlagSync('startbomba','1',vReultHTTP);
         end
         else
          TThread.Synchronize(nil, procedure
          begin
           TDialogService.ShowMessage(vReultHTTP);
          end);
         inc(I);
         QryAuxLoop.Next;
       except
        on E: Exception do
        begin
         TThread.Synchronize(nil, procedure
         begin
           TDialogService.ShowMessage('Erro ao sioncronizar Start Diario : '+e.Message);
         end);
         Result:='Erro ao sioncronizar Start Diario : '+e.Message;
         Break;
        end;
       end;
     end;
   end;
 end;
 Result:= vReultHTTP;
end;

end.


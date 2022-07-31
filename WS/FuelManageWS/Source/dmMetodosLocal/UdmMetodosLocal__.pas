unit UdmMetodosLocal;

interface

uses
  System.SysUtils, System.Classes, System.Json,
  vcl.Forms, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Stan.StorageJSON, FireDAC.Stan.StorageBin,
  System.Json.writers,System.JSON.Types, FireDAC.Phys.PGDef, FireDAC.Phys.PG,
  FireDAC.Phys.ODBCBase,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef,System.IniFiles, FireDAC.FMXUI.Wait,FMX.Dialogs,
  FireDAC.Phys.IBBase,IdSSLOpenSSL,IdSMTP,IdMessage,IdText,IdExplicitTLSClientServerBase,
  IdAttachmentFile, FireDAC.Comp.BatchMove,System.Variants, FireDAC.Comp.BatchMove.JSON,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  System.Net.HttpClient,FMX.Types,System.Net.URLClient,
  System.Net.HttpClientComponent, FireDAC.ConsoleUI.Wait,FireDAC.Comp.ScriptCommands,
  FireDAC.Stan.Util, FireDAC.Comp.Script,IdHashMessageDigest;

type
  TdmLocal = class(TDataModule)
    TUsuario: TFDQuery;
    vQryAux: TFDQuery;
    TUsuarioid: TIntegerField;
    TUsuariostatus: TIntegerField;
    TUsuariodatareg: TSQLTimeStampField;
    TUsuarioidusuario: TIntegerField;
    TUsuariodataalteracao: TSQLTimeStampField;
    TUsuarioidusuarioalteracao: TIntegerField;
    TUsuarionome: TWideStringField;
    TUsuarioemail: TWideStringField;
    TUsuariocelular: TWideStringField;
    TUsuariousuario: TWideStringField;
    TUsuariosenha: TWideStringField;
    TUsuariotipo: TIntegerField;
    TUsuariosyncaws: TIntegerField;
    Toperadormaquinas: TFDQuery;
    TCentroCusto: TFDQuery;
    TLocalEstoque: TFDQuery;
    TProdutos: TFDQuery;
    TMaquinas: TFDQuery;
    TAuxAtividadesAbastecimento: TFDQuery;
    TAbastecimento: TFDQuery;
    TAbastecimentoOutros: TFDQuery;
    Toperadormaquinasid: TIntegerField;
    Toperadormaquinasstatus: TIntegerField;
    Toperadormaquinasdatareg: TSQLTimeStampField;
    Toperadormaquinasidusuario: TIntegerField;
    Toperadormaquinasdataalteracao: TSQLTimeStampField;
    Toperadormaquinasidusuarioalteracao: TIntegerField;
    Toperadormaquinasnome: TWideStringField;
    Toperadormaquinasrg: TWideStringField;
    Toperadormaquinascpf: TWideStringField;
    Toperadormaquinascnh: TWideStringField;
    Toperadormaquinascelular: TWideStringField;
    Toperadormaquinassyncaws: TIntegerField;
    Toperadormaquinassyncfaz: TIntegerField;
    TCentroCustoid: TIntegerField;
    TCentroCustostatus: TIntegerField;
    TCentroCustodatareg: TSQLTimeStampField;
    TCentroCustoidusuario: TIntegerField;
    TCentroCustodataalteracao: TSQLTimeStampField;
    TCentroCustoidusuarioalteracao: TIntegerField;
    TCentroCustonome: TWideStringField;
    TCentroCustosyncaws: TIntegerField;
    TLocalEstoqueid: TIntegerField;
    TLocalEstoquestatus: TIntegerField;
    TLocalEstoquedatareg: TSQLTimeStampField;
    TLocalEstoqueidusuario: TIntegerField;
    TLocalEstoquedataalteracao: TSQLTimeStampField;
    TLocalEstoqueidusuarioalteracao: TIntegerField;
    TLocalEstoquenome: TWideStringField;
    TLocalEstoquecapacidade: TBCDField;
    TLocalEstoquesyncaws: TIntegerField;
    TLocalEstoqueidcentrocusto: TIntegerField;
    TProdutosid: TIntegerField;
    TProdutosstatus: TIntegerField;
    TProdutosdatareg: TSQLTimeStampField;
    TProdutosidusuario: TIntegerField;
    TProdutosdataalteracao: TSQLTimeStampField;
    TProdutosidusuarioalteracao: TIntegerField;
    TProdutosnome: TWideStringField;
    TProdutostipo: TIntegerField;
    TProdutosunidademedida: TWideStringField;
    TProdutosestoqueminimo: TBCDField;
    TProdutoscodigobarras: TWideStringField;
    TProdutosidmarca: TIntegerField;
    TProdutoscodigofabricante: TWideStringField;
    TProdutossyncaws: TIntegerField;
    TProdutoscustomedio: TBCDField;
    TProdutossaldoatual: TBCDField;
    TMaquinasid2: TIntegerField;
    TMaquinasstatus2: TIntegerField;
    TMaquinasdatareg2: TSQLTimeStampField;
    TMaquinasidusuario2: TIntegerField;
    TMaquinasdataalteracao2: TSQLTimeStampField;
    TMaquinasidusuarioalteracao2: TIntegerField;
    TMaquinasidmarca2: TIntegerField;
    TMaquinasmodelo2: TWideStringField;
    TMaquinasplaca2: TWideStringField;
    TMaquinasano2: TIntegerField;
    TMaquinaschassi2: TWideStringField;
    TMaquinasidcombustivel2: TIntegerField;
    TMaquinasimg2: TBlobField;
    TMaquinasprefixo2: TWideStringField;
    TMaquinassyncaws2: TIntegerField;
    TMaquinassyncfaz2: TIntegerField;
    TMaquinashorimetroultimarev2: TBCDField;
    TMaquinashorimetroatual2: TBCDField;
    TMaquinasqrcode2: TWideStringField;
    TMaquinasidtipomaquina2: TIntegerField;
    TAuxAtividadesAbastecimentoid: TIntegerField;
    TAuxAtividadesAbastecimentostatus: TIntegerField;
    TAuxAtividadesAbastecimentodatareg: TSQLTimeStampField;
    TAuxAtividadesAbastecimentoidusuario: TIntegerField;
    TAuxAtividadesAbastecimentodataalteracao: TSQLTimeStampField;
    TAuxAtividadesAbastecimentoidusuarioalteracao: TIntegerField;
    TAuxAtividadesAbastecimentonome: TWideStringField;
    TAuxAtividadesAbastecimentosyncaws: TIntegerField;
    TAbastecimentoid: TIntegerField;
    TAbastecimentostatus: TIntegerField;
    TAbastecimentodatareg: TSQLTimeStampField;
    TAbastecimentoidusuario: TIntegerField;
    TAbastecimentodataalteracao: TSQLTimeStampField;
    TAbastecimentoidusuarioalteracao: TIntegerField;
    TAbastecimentoidlocalestoque: TIntegerField;
    TAbastecimentoidmaquina: TIntegerField;
    TAbastecimentoidoperador: TIntegerField;
    TAbastecimentovolumelt: TBCDField;
    TAbastecimentocombustivel: TIntegerField;
    TAbastecimentodataabastecimento: TDateField;
    TAbastecimentohora: TTimeField;
    TAbastecimentosyncaws: TIntegerField;
    TAbastecimentohorimetro: TBCDField;
    TAbastecimentoidatividade: TIntegerField;
    TAbastecimentoobs: TWideStringField;
    TAbastecimentoimg: TBlobField;
    TAbastecimentoimg2: TBlobField;
    TAbastecimentoimg3: TBlobField;
    TAbastecimentoimg4: TBlobField;
    TAbastecimentoimg5: TBlobField;
    TAbastecimentovalorlitro: TBCDField;
    TAbastecimentoexterno: TIntegerField;
    TAbastecimentoOutrosid: TIntegerField;
    TAbastecimentoOutrosstatus: TIntegerField;
    TAbastecimentoOutrosdatareg: TSQLTimeStampField;
    TAbastecimentoOutrosidusuario: TIntegerField;
    TAbastecimentoOutrosdataalteracao: TSQLTimeStampField;
    TAbastecimentoOutrosidusuarioalteracao: TIntegerField;
    TAbastecimentoOutrosidabastecimento: TIntegerField;
    TAbastecimentoOutrosidproduto: TIntegerField;
    TAbastecimentoOutrosquantidade: TBCDField;
    TAbastecimentoOutrossyncaws: TIntegerField;
    TAbastecimentoOutrossyncfaz: TIntegerField;
    TMaquinasultimoabastecimento: TDateField;
    TAbastecimentoidcentrocusto: TIntegerField;
    TStartDiario: TFDQuery;
    TStartDiarioid: TIntegerField;
    TStartDiariostatus: TIntegerField;
    TStartDiariodatareg: TSQLTimeStampField;
    TStartDiarioidusuario: TIntegerField;
    TStartDiariodataalteracao: TSQLTimeStampField;
    TStartDiarioidusuarioalteracao: TIntegerField;
    TStartDiarioidlocalestoque: TIntegerField;
    TStartDiarioidcentrocusto: TIntegerField;
    TStartDiariocombustivel: TIntegerField;
    TStartDiariodataastart: TDateField;
    TStartDiariohorastart: TTimeField;
    TStartDiariodataaend: TDateField;
    TStartDiariohoraend: TTimeField;
    TStartDiariosyncaws: TIntegerField;
    TStartDiariovolumelitrosini: TBCDField;
    TStartDiarioobs: TWideStringField;
    TStartDiarioimgstart: TWideMemoField;
    TStartDiarioimgend: TWideMemoField;
    TStartDiariovolumelitrosfim: TBCDField;
    TMaquinasidgrupo: TIntegerField;
    TMaquinashorimetroxkm: TIntegerField;
    TMaquinaskmatual: TBCDField;
    TAbastecimentokmatual: TBCDField;
    procedure TStartDiarioReconcileError(DataSet: TFDDataSet; E: EFDException;
      UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
  private
    function RetornaMaxId(Atabela:string):string;
    procedure InsereSaidaAbastecimento(dataSaida, idcentrocusto,
     idlocalestoque, idproduto, qtditens, idresponsavel,idabastecimento: string);
    function AbreStartBomba(vIdlocal,vData:string):Boolean;
  public
    function GetDataSetAsJSON(DataSet: TDataSet): TJSONObject;
    function GetTestaServidor            : TJSONObject;

    function GetUsuario: TJSONObject;
    function GetOperadorMaquinas: TJSONObject;
    function GetAtividadesAbastecimento: TJSONObject;
    function GetCentroCusto: TJSONObject;
    function GetLocalEstoque: TJSONObject;
    function GetProdutos: TJSONObject;
    function GetMaquinas: TJSONObject;
    function AcceptAbastecimento(obj: TJSONObject): TJSONObject;
    function AcceptAbastecimentoOutros(obj: TJSONObject): TJSONObject;
    function AcceptStartDiario(obj: TJSONObject): TJSONObject;
  end;

var
  dmLocal: TdmLocal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UPrincipal;

{$R *.dfm}

{ TdmLocal }

function TdmLocal.AbreStartBomba(vIdlocal, vData: string): Boolean;
begin
 with TStartDiario,TStartDiario.SQL do
 begin
   Clear;
   Add('select * from startbomba');
   Add('where status=1 and idlocalestoque='+vIdlocal);
   Add('and dataastart='+vData);
   Open;
   Result := TStartDiario.IsEmpty;
 end;
end;

function TdmLocal.AcceptAbastecimento(obj: TJSONObject): TJSONObject;
var
  I,X: Integer;
  JsonToSend :TStringStream;
  vField,vFieldJS,vMaxID:string;
  LJSon      : TJSONArray;
  StrAux     : TStringWriter;
  txtJson    : TJsonTextWriter;
  vQry       : TFDQuery;
  vIdResult,vIdProduto  :string;
begin
  vQry       := TFDQuery.Create(nil);
  vQry.Connection := frmPrincipal.FDConPG;
  TAbastecimento.Connection := frmPrincipal.FDConPG;
  TAbastecimento.Open();
  JsonToSend := TStringStream.Create(obj.ToJSON);
  vQry.LoadFromStream(JsonToSend,sfJSON);
  vIdResult:='';
  while not vQry.eof do
  begin
    TAbastecimento.Filtered := false;
    TAbastecimento.Close;
    TAbastecimento.Open;
    TAbastecimento.Insert;
    for x := 0 to TAbastecimento.Fields.Count -1 do
    begin
     vField  := StringReplace(TAbastecimento.Fields[x].Name,
      'TAbastecimento','',[rfReplaceAll]);
     if (vField<>'datareg') and (vField<>'id') and (vQry.FindField(vField) <> nil)
     and (TAbastecimento.FindField(vField) <> nil) then
      TAbastecimento.FieldByName(vField).AsString     := vQry.FieldByName(vField).AsString;
    end;
    try
      TAbastecimento.ApplyUpdates(-1);

      vMaxID := RetornaMaxId('abastecimento');

      InsereSaidaAbastecimento(
      FormatDateTime('yyyy-mm-dd',vQry.FieldByName('dataabastecimento').AsDateTime),'1',
       vQry.FieldByName('idlocalestoque').AsString,
       vQry.FieldByName('combustivel').AsString,
       vQry.FieldByName('volumelt').AsString,
       vQry.FieldByName('idusuario').AsString,
       vMaxID);
      if vIdResult.Length>0 then
       vIdResult:=vIdResult+','+vQry.FieldByName('id').AsString
      else
       vIdResult:=vQry.FieldByName('id').AsString;
      vQry.Next;
     except
       on E: Exception do
       begin
         StrAux  := TStringWriter.Create;
         txtJson := TJsonTextWriter.Create(StrAux);
         txtJson.Formatting := TJsonFormatting.Indented;
         txtJson.WriteStartObject;
         txtJson.WritePropertyName('Erro');
         txtJson.WriteValue('Erro Ao Sincronizar Abastecimento:'+E.Message);
         txtJson.WriteEndObject;
         Result := TJsonObject.ParseJSONValue(TEncoding.UTF8.GetBytes(StrAux.ToString),0)as TJSONObject;
       end;
    end;
  end;
  StrAux  := TStringWriter.Create;
  txtJson := TJsonTextWriter.Create(StrAux);
  txtJson.Formatting := TJsonFormatting.Indented;
  txtJson.WriteStartObject;
  txtJson.WritePropertyName('OK');
  txtJson.WriteValue(vIdResult);
  txtJson.WriteEndObject;
  Result := TJsonObject.ParseJSONValue(TEncoding.UTF8.GetBytes(StrAux.ToString),0)as TJSONObject;
end;

procedure TdmLocal.InsereSaidaAbastecimento(dataSaida, idcentrocusto,
  idlocalestoque, idproduto, qtditens, idresponsavel,idabastecimento: string);
var
 vValorCustoMedio:string;
begin
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from produtos');
   Add('where id='+idproduto);
   Open;
   vValorCustoMedio := FieldByName('customedio').AsString;
   if vValorCustoMedio.Length=0 then
    vValorCustoMedio:='0';

   Clear;
   Add('insert into estoquesaida(datasaidaestoque,idcentrocusto,idlocalestoque,idproduto,qtditens,idresponsavel,valorsaida,idabastecimento)');
   Add('values(');
   Add(dataSaida.QuotedString+',');
   Add(idcentrocusto+',');
   Add(idlocalestoque+',');
   Add(idproduto+',');
   Add(qtditens+',');
   Add(idresponsavel+',');
   Add(StringReplace(vValorCustoMedio,',','.',[rfReplaceAll])+',');
   Add(idabastecimento);
   Add(')');
   ExecSQL;
 end;
end;

function TdmLocal.AcceptAbastecimentoOutros(obj: TJSONObject): TJSONObject;
var
  I,X: Integer;
  JsonToSend :TStringStream;
  vField,vFieldJS:string;
  LJSon      : TJSONArray;
  StrAux     : TStringWriter;
  txtJson    : TJsonTextWriter;
  vQry       : TFDQuery;
  vIdResult  :string;
begin
  vQry       := TFDQuery.Create(nil);
  vQry.Connection := frmPrincipal.FDConPG;
  TAbastecimentooutros.Connection := frmPrincipal.FDConPG;
  TAbastecimentooutros.Open();
  JsonToSend := TStringStream.Create(obj.ToJSON);
  vQry.LoadFromStream(JsonToSend,sfJSON);
  vIdResult:='';
  while not vQry.eof do
  begin
    TAbastecimentooutros.Filtered := false;
    TAbastecimentooutros.Close;
    TAbastecimentooutros.Open;
    TAbastecimentooutros.Insert;
    for x := 0 to TAbastecimentooutros.Fields.Count -1 do
    begin
     vField  := StringReplace(TAbastecimentooutros.Fields[x].Name,
      'TAbastecimentoOutros','',[rfReplaceAll]);
     if (vField<>'datareg') and (vField<>'id') then
      TAbastecimentooutros.FieldByName(vField).AsString     := vQry.FieldByName(vField).AsString;
    end;
    try
      TAbastecimentooutros.ApplyUpdates(-1);
      if vIdResult.Length>0 then
       vIdResult:=vIdResult+','+vQry.FieldByName('id').AsString
      else
       vIdResult:=vQry.FieldByName('id').AsString;
      vQry.Next;
     except
       on E: Exception do
       begin
         StrAux  := TStringWriter.Create;
         txtJson := TJsonTextWriter.Create(StrAux);
         txtJson.Formatting := TJsonFormatting.Indented;
         txtJson.WriteStartObject;
         txtJson.WritePropertyName('Erro');
         txtJson.WriteValue('Erro Ao Sincronizar Abatecimento Outros:'+E.Message);
         txtJson.WriteEndObject;
         Result := TJsonObject.ParseJSONValue(TEncoding.UTF8.GetBytes(StrAux.ToString),0)as TJSONObject;
       end;
    end;
  end;
  StrAux  := TStringWriter.Create;
  txtJson := TJsonTextWriter.Create(StrAux);
  txtJson.Formatting := TJsonFormatting.Indented;
  txtJson.WriteStartObject;
  txtJson.WritePropertyName('OK');
  txtJson.WriteValue(vIdResult);
  txtJson.WriteEndObject;
  Result := TJsonObject.ParseJSONValue(TEncoding.UTF8.GetBytes(StrAux.ToString),0)as TJSONObject;
end;

function TdmLocal.AcceptStartDiario(obj: TJSONObject): TJSONObject;
var
  I,X: Integer;
  JsonToSend :TStringStream;
  vField,vFieldJS,vMaxID:string;
  LJSon      : TJSONArray;
  StrAux     : TStringWriter;
  txtJson    : TJsonTextWriter;
  vQry       : TFDQuery;
  vIdResult,vIdProduto  :string;
begin
  vQry       := TFDQuery.Create(nil);
  vQry.Connection := frmPrincipal.FDConPG;
  TStartDiario.Connection := frmPrincipal.FDConPG;
  TStartDiario.Open();
  JsonToSend := TStringStream.Create(obj.ToJSON);
  vQry.LoadFromStream(JsonToSend,sfJSON);
  vIdResult:='';
  while not vQry.eof do
  begin
    if AbreStartBomba(vQry.FieldByName('idlocalestoque').AsString,
    FormatDateTime('yyyy-mm-dd',vQry.FieldByName('dataastart').AsDateTime).QuotedString)then
     TStartDiario.Insert
    else
     TStartDiario.Edit;
    for x := 0 to TStartDiario.Fields.Count -1 do
    begin
     vField  := StringReplace(TStartDiario.Fields[x].Name,
      'TStartDiario','',[rfReplaceAll]);
     if (vField<>'datareg') and (vField<>'id') and (vQry.FindField(vField) <> nil)
      and (TStartDiario.FindField(vField) <> nil) then
     if (vField='dataalteracao') then
      TStartDiario.FieldByName(vField).AsDateTime     := now
     else
      TStartDiario.FieldByName(vField).AsString     := vQry.FieldByName(vField).AsString;
    end;
    try
      TStartDiario.ApplyUpdates(-1);
      if vIdResult.Length>0 then
       vIdResult:=vIdResult+','+vQry.FieldByName('id').AsString
      else
       vIdResult:=vQry.FieldByName('id').AsString;
      vQry.Next;
     except
       on E: Exception do
       begin
         StrAux  := TStringWriter.Create;
         txtJson := TJsonTextWriter.Create(StrAux);
         txtJson.Formatting := TJsonFormatting.Indented;
         txtJson.WriteStartObject;
         txtJson.WritePropertyName('Erro');
         txtJson.WriteValue('Erro Ao Sincronizar Abastecimento:'+E.Message);
         txtJson.WriteEndObject;
         Result := TJsonObject.ParseJSONValue(TEncoding.UTF8.GetBytes(StrAux.ToString),0)as TJSONObject;
       end;
    end;
  end;
  StrAux  := TStringWriter.Create;
  txtJson := TJsonTextWriter.Create(StrAux);
  txtJson.Formatting := TJsonFormatting.Indented;
  txtJson.WriteStartObject;
  txtJson.WritePropertyName('OK');
  txtJson.WriteValue(vIdResult);
  txtJson.WriteEndObject;
  Result := TJsonObject.ParseJSONValue(TEncoding.UTF8.GetBytes(StrAux.ToString),0)as TJSONObject;
end;

function TdmLocal.GetDataSetAsJSON(DataSet: TDataSet): TJSONObject;
var
  f: TField;
  o: TJSOnObject;
  a: TJSONArray;
begin
  a := TJSONArray.Create;
  DataSet.Active := True;
  DataSet.First;
  while not DataSet.EOF do begin
    o := TJSOnObject.Create;
    for f in DataSet.Fields do
      o.AddPair(f.FieldName, VarToStr(f.Value));
    a.AddElement(o);
    DataSet.Next;
  end;
  DataSet.Active := False;
  Result := TJSONObject.Create;
  Result.AddPair(DataSet.Name, a);
end;

function TdmLocal.GetTestaServidor: TJSONObject;
var
 LJSon      : TJSONArray;
 StrAux     : TStringWriter;
 txtJson    : TJsonTextWriter;
begin
  StrAux  := TStringWriter.Create;
  txtJson := TJsonTextWriter.Create(StrAux);
  txtJson.Formatting := TJsonFormatting.Indented;
  txtJson.WriteStartObject;
  txtJson.WritePropertyName('OK');
  txtJson.WriteValue('OK');
  txtJson.WriteEndObject;
  Result := TJsonObject.ParseJSONValue(TEncoding.UTF8.GetBytes(StrAux.ToString),0)as TJSONObject;
end;

function TdmLocal.GetUsuario: TJSONObject;
begin
 TUsuario.Close;
 TUsuario.Open;
 Result := GetDataSetAsJSON(TUsuario);
end;

function TdmLocal.GetOperadorMaquinas: TJSONObject;
begin
 Toperadormaquinas.Close;
 Toperadormaquinas.Open;
 Result := GetDataSetAsJSON(Toperadormaquinas);
end;

function TdmLocal.GetAtividadesAbastecimento: TJSONObject;
begin
 TAuxAtividadesAbastecimento.Close;
 TAuxAtividadesAbastecimento.Open;
 Result := GetDataSetAsJSON(TAuxAtividadesAbastecimento);
end;

function TdmLocal.GetCentroCusto: TJSONObject;
begin
 TCentroCusto.Close;
 TCentroCusto.Open;
 Result := GetDataSetAsJSON(TCentroCusto);
end;

function TdmLocal.GetLocalEstoque: TJSONObject;
begin
 TLocalEstoque.Close;
 TLocalEstoque.Open;
 Result := GetDataSetAsJSON(TLocalEstoque);
end;

function TdmLocal.GetProdutos: TJSONObject;
begin
 TProdutos.Close;
 TProdutos.Open;
 Result := GetDataSetAsJSON(TProdutos);
end;

function TdmLocal.GetMaquinas: TJSONObject;
begin
 TMaquinas.Close;
 TMaquinas.Open;
 Result := GetDataSetAsJSON(TMaquinas);
end;

function TdmLocal.RetornaMaxId(Atabela: string): string;
begin
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select max(id) max_id from '+Atabela);
   Open;
   Result := FieldByName('max_id').AsString;
 end;
end;
procedure TdmLocal.TStartDiarioReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
 frmPrincipal.mlog.Lines.Add(e.Message);
end;

end.

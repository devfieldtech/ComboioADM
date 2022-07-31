unit UPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.ScrollBox,
  FMX.Memo, FMX.Objects, FMX.Controls.Presentation, FMX.StdCtrls,
  Horse,
  Horse.Jhonson,
  System.JSON, Horse.HandleException,Winapi.Windows, FireDAC.Phys.PGDef,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.PG, FireDAC.FMXUI.Wait, Data.DB,
  FireDAC.Comp.Client,System.Json.writers,System.IniFiles,System.JSON.Types,
  IdBaseComponent, IdComponent, IdIPWatch;

type
  TfrmPrincipal = class(TForm)
    Rectangle1: TRectangle;
    lblWS: TLabel;
    Rectangle2: TRectangle;
    Image1: TImage;
    mlog: TMemo;
    btnFechar: TImage;
    PgDriverLink: TFDPhysPgDriverLink;
    FDConPG: TFDConnection;
    IdIPWatch1: TIdIPWatch;
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    function GetVersaoArq: string;
  public
    function ConectaPG_LOCAL: TJSONObject;
    function LerIni(Diretorio,Chave1, Chave2, ValorPadrao: String): String;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

uses UdmMetodosLocal;

procedure TfrmPrincipal.btnFecharClick(Sender: TObject);
begin
 Application.Terminate;
end;

function TfrmPrincipal.ConectaPG_LOCAL: TJSONObject;
var
 Arquivo,
 vVendorLib,
 dbUser,
 dbPassw,
 dbName,
 dbServer,
 dbPort: String;
 StrAux     : TStringWriter;
 txtJson    : TJsonTextWriter;
begin
 StrAux  := TStringWriter.Create;
 txtJson := TJsonTextWriter.Create(StrAux);
 Arquivo := ExtractFilePath(ParamStr(0))+'FuelManage.ini';
 if not FileExists(Arquivo) then
 begin
   txtJson.WriteStartObject;
   txtJson.WritePropertyName('Erro');
   txtJson.WriteValue('Arquivo FuelManage.ini n�o localizado no seguinte diretorio:'+
   Arquivo);
   txtJson.WriteEndObject;
   Result := TJsonObject.ParseJSONValue(TEncoding.UTF8.GetBytes(StrAux.ToString),0)as TJSONObject;
 end
 else
 begin
   vVendorLib := ExtractFilePath(ParamStr(0))+'libpq_32.dll';
   dbUser     := LerIni(Arquivo,'LOCAL','UserName','');
   dbPassw    := LerIni(Arquivo,'LOCAL','Password','');
   dbName     := LerIni(Arquivo,'LOCAL','Database','');
   dbServer   := LerIni(Arquivo,'LOCAL','Server','');
   dbPort     := LerIni(Arquivo,'LOCAL','Port','');
   with FDConPG do
   begin
    Params.Clear;
    Params.Values['DriverID']        := 'PG';
    Params.Values['User_name']       := dbUser;
    Params.Values['Database']        := dbName;
    Params.Values['Password']        := dbPassw;
    Params.Values['DriverName']      := 'PG';
    Params.Values['Server']          := dbServer;
    Params.Values['Port']            := dbPort;
    PgDriverLink.VendorLib           := vVendorLib;
   try
     Connected := true;
     txtJson.WriteStartObject;
     txtJson.WritePropertyName('Mensagem');
     txtJson.WriteValue('Conexao OK');
     txtJson.WriteEndObject;
     Result := TJsonObject.ParseJSONValue(TEncoding.UTF8.GetBytes(StrAux.ToString),0)as TJSONObject;
    except
     on E: Exception do
     begin
      frmPrincipal.mlog.Lines.Add(E.Message);
      StrAux  := TStringWriter.Create;
      txtJson := TJsonTextWriter.Create(StrAux);
      txtJson.Formatting := TJsonFormatting.Indented;
      txtJson.WriteStartObject;
      txtJson.WritePropertyName('Erro');
      txtJson.WriteValue('Erro Ao Conectar DB LOCAL:'+E.Message);
      txtJson.WriteEndObject;
      Result := TJsonObject.ParseJSONValue(TEncoding.UTF8.GetBytes(StrAux.ToString),0)as TJSONObject;
     end;
    end;
  end;
 end;
end;



function TfrmPrincipal.GetVersaoArq: string;
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;
begin
  VerInfoSize := GetFileVersionInfoSize(PChar(
  ParamStr(0)), Dummy);
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(ParamStr(0)), 0,
  VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue),
  VerValueSize);
  with VerValue^ do
  begin
    Result := IntToStr(dwFileVersionMS shr 16);
    Result := Result + '.' + IntToStr(
    dwFileVersionMS and $FFFF);
    Result := Result + '.' + IntToStr(
    dwFileVersionLS shr 16);
    Result := Result + '.' + IntToStr(
    dwFileVersionLS and $FFFF);
  end;
  FreeMem(VerInfo, VerInfoSize);
end;

function TfrmPrincipal.LerIni(Diretorio, Chave1, Chave2,
  ValorPadrao: String): String;
var
 FileIni: TIniFile;
begin
  result := ValorPadrao;
  try
    FileIni := TIniFile.Create(Diretorio);
    if FileExists(Diretorio) then
      result := FileIni.ReadString(Chave1, Chave2, ValorPadrao);
  finally
    FreeAndNil(FileIni)
  end;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  ConectaPG_LOCAL;
  THorse.Use(Jhonson);
  THorse.Use(HandleException);
  THorse.Get('/ping',
  procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
  begin
    Res.Send('pong');
  end);
  THorse.Listen(8089, procedure(Horse: THorse)
  begin
    lblWS.Text := ('WS Fuel Manje Rodando no ip:'+IdIPWatch1.LocalIP+' na porta: ' + Horse.Port.ToString+' Vers�o:'+GetVersaoArq);
    Application.ProcessMessages;
  end);
 THorse.Get('/conectadblocal',
  procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
  var
   T: TJSONObject;
   vJsonString :string;
  begin
     mLog.Lines.Add(FormatDateTime('dd-mm-yyyy-hh:mm:ss',now)+' : Conecta DB Local');
     try
      T:= ConectaPG_LOCAL;
      vjsonString:=copy(T.ToString,2,6);
      if vjsonString<>'"Erro"' then
      begin
       Res.Send(tjsonobject.Create.AddPair('OK','Conectado com sucesso!')).Status(200);
       mLog.Lines.Add(FormatDateTime('dd-mm-yyyy-hh:mm:ss',now)+' : Conectado Com Sucesso!');
      end
      else
      begin
       mLog.Lines.Add(FormatDateTime('dd-mm-yyyy-hh:mm:ss',now)+' : Error ao conectar db local ');
       Res.Send(tjsonobject.Create.AddPair('Erro','Error ao conectar db!')).Status(201);
      end;
      except on ex:exception do
       begin
        mLog.Lines.Add(FormatDateTime('dd-mm-yyyy-hh:mm:ss',now)+' : Error ao conectar db local '+ex.Message);
        Res.Send(tjsonobject.Create.AddPair('Erro','Error ao conectar db local!')).Status(201);
       end
     end;
  end);

  THorse.Get('/GetTesteServidor',
  procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
  begin
     mLog.Lines.Add(FormatDateTime('dd-mm-yyyy-hh:mm:ss',now)+' : Testando Servidor');
     try
      Res.Send<TJSONObject>(dmLocal.GetTestaServidor);
     except on ex:exception do
      begin
       mLog.Lines.Add(FormatDateTime('dd-mm-yyyy-hh:mm:ss',now)+' : Error '+ex.Message);
       Res.Send(tjsonobject.Create.AddPair('Erro',ex.Message)).Status(201);
      end;
     end;
  end);

  THorse.Get('/GetUsuario',
  procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
  begin
     mLog.Lines.Add(FormatDateTime('dd-mm-yyyy-hh:mm:ss',now)+' : Baixando Usuarios');
     try
      Res.Send<TJSONObject>(dmLocal.GetUsuario);
     except on ex:exception do
      begin
       mLog.Lines.Add(FormatDateTime('dd-mm-yyyy-hh:mm:ss',now)+' : Error '+ex.Message);
       Res.Send(tjsonobject.Create.AddPair('Erro',ex.Message)).Status(201);
      end;
     end;
  end);

  THorse.Get('/GetOperadorMaquinas',
  procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
  begin
     mLog.Lines.Add(FormatDateTime('dd-mm-yyyy-hh:mm:ss',now)+' : Baixando Operador de Maquina');
     try
      Res.Send<TJSONObject>(dmLocal.GetOperadorMaquinas);
     except on ex:exception do
      begin
       mLog.Lines.Add(FormatDateTime('dd-mm-yyyy-hh:mm:ss',now)+' : Error '+ex.Message);
       Res.Send(tjsonobject.Create.AddPair('Erro',ex.Message)).Status(201);
      end;
     end;
  end);
  THorse.Get('/GetAtividadesAbastecimento',
  procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
  begin
     mLog.Lines.Add(FormatDateTime('dd-mm-yyyy-hh:mm:ss',now)+' : Baixando Atividades Abastecimento');
     try
      Res.Send<TJSONObject>(dmLocal.GetAtividadesAbastecimento);
     except on ex:exception do
      begin
       mLog.Lines.Add(FormatDateTime('dd-mm-yyyy-hh:mm:ss',now)+' : Error '+ex.Message);
       Res.Send(tjsonobject.Create.AddPair('Erro',ex.Message)).Status(201);
      end;
     end;
  end);

  THorse.Get('/GetCentroCusto',
  procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
  begin
     mLog.Lines.Add(FormatDateTime('dd-mm-yyyy-hh:mm:ss',now)+' : Baixando Centro de Custo');
     try
      Res.Send<TJSONObject>(dmLocal.GetCentroCusto);
     except on ex:exception do
      begin
       mLog.Lines.Add(FormatDateTime('dd-mm-yyyy-hh:mm:ss',now)+' : Error '+ex.Message);
       Res.Send(tjsonobject.Create.AddPair('Erro',ex.Message)).Status(201);
      end;
     end;
  end);

  THorse.Get('/GetLocalEstoque',
  procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
  begin
     mLog.Lines.Add(FormatDateTime('dd-mm-yyyy-hh:mm:ss',now)+' : Baixando Local Estoque');
     try
      Res.Send<TJSONObject>(dmLocal.GetLocalEstoque);
     except on ex:exception do
      begin
       mLog.Lines.Add(FormatDateTime('dd-mm-yyyy-hh:mm:ss',now)+' : Error '+ex.Message);
       Res.Send(tjsonobject.Create.AddPair('Erro',ex.Message)).Status(201);
      end;
     end;
  end);

  THorse.Get('/GetProdutos',
  procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
  begin
     mLog.Lines.Add(FormatDateTime('dd-mm-yyyy-hh:mm:ss',now)+' : Baixando Produtos');
     try
      Res.Send<TJSONObject>(dmLocal.GetProdutos);
     except on ex:exception do
      begin
       mLog.Lines.Add(FormatDateTime('dd-mm-yyyy-hh:mm:ss',now)+' : Error '+ex.Message);
       Res.Send(tjsonobject.Create.AddPair('Erro',ex.Message)).Status(201);
      end;
     end;
  end);

  THorse.Get('/GetMaquinas',
  procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
  begin
     mLog.Lines.Add(FormatDateTime('dd-mm-yyyy-hh:mm:ss',now)+' : Baixando Maquinas');
     try
      Res.Send<TJSONObject>(dmLocal.GetMaquinas);
     except on ex:exception do
      begin
       mLog.Lines.Add(FormatDateTime('dd-mm-yyyy-hh:mm:ss',now)+' : Error '+ex.Message);
       Res.Send(tjsonobject.Create.AddPair('Erro',ex.Message)).Status(201);
      end;
     end;
  end);

  THorse.Post('/Abastecimento',
  procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
  var
    LBody,LBodyRed: TJSONObject;
  begin
    mLog.Lines.Add(FormatDateTime('dd-mm-yyyy-hh:mm:ss',now)+' Enviando Abastecimento');
    LBody := Req.Body<TJSONObject>;
    try
     LBodyRed:=dmLocal.AcceptAbastecimento(LBody);
     Res.Send(LBodyRed).Status(200)
     except on ex:exception do
     begin
      mLog.Lines.Add(FormatDateTime('dd-mm-yyyy-hh:mm:ss',now)+' Erro :'+ex.Message);
      Res.Send(tjsonobject.Create.AddPair('Mensagem', ex.Message)).Status(500);
     end;
    end;
  end);

  THorse.Post('/AbastecimentoOutros',
  procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
  var
    LBody,LBodyRed: TJSONObject;
  begin
    mLog.Lines.Add(FormatDateTime('dd-mm-yyyy-hh:mm:ss',now)+' Enviando Abastecimento Outros');
    LBody := Req.Body<TJSONObject>;
    try
     LBodyRed:=dmLocal.AcceptAbastecimentoOutros(LBody);
     Res.Send(LBodyRed).Status(200)
     except on ex:exception do
     begin
      mLog.Lines.Add(FormatDateTime('dd-mm-yyyy-hh:mm:ss',now)+' Erro :'+ex.Message);
      Res.Send(tjsonobject.Create.AddPair('Mensagem', ex.Message)).Status(500);
     end;
    end;
  end);

   THorse.Post('/StartDiario',
  procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
  var
    LBody,LBodyRed: TJSONObject;
  begin
    mLog.Lines.Add(FormatDateTime('dd-mm-yyyy-hh:mm:ss',now)+' Enviando Start Diario');
    LBody := Req.Body<TJSONObject>;
    try
     LBodyRed:=dmLocal.AcceptStartDiario(LBody);
     Res.Send(LBodyRed).Status(200)
     except on ex:exception do
     begin
      mLog.Lines.Add(FormatDateTime('dd-mm-yyyy-hh:mm:ss',now)+' Erro :'+ex.Message);
      Res.Send(tjsonobject.Create.AddPair('Mensagem', ex.Message)).Status(500);
     end;
    end;
  end);

end;

end.

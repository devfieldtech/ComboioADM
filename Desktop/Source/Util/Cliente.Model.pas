unit Cliente.Model;

interface

uses System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, FMX.Objects, FMX.Layouts,FMX.TabControl,
  System.Rtti, FMX.Grid.Style, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FMX.ScrollBox, FMX.Grid, FireDAC.Stan.StorageJSON,System.Math,
  IdHTTP,IdSSLOpenSSL,System.JSON,IdSMTP,IdMessage,IdText,
  IdExplicitTLSClientServerBase,IdAttachmentFile,XMLIntf, XMLDoc;
type
  TDescricao = class(TCustomAttribute)
  private
    FDescricao: string;
  public
    constructor Create(const Descricao: string);
    property Descricao: string read FDescricao;
end;
Type
 TCliente = class
 private
  FNome:string;
  FRG: String;
  FEmail: String;
  FCPF: String;
  FTelefone: String;
  FLogradouro: string;
  FIBGE: string;
  FBairro: string;
  FDDD: string;
  FUF: string;
  FCEP: string;
  FLocalidade: string;
  FComplemento: string;
  FGIA: string;
  FNumero: string;
  FPais: string;
  FIdHTTP: TIdHTTP;
  FIdSSLIOHandlerSocketOpenSSL: TIdSSLIOHandlerSocketOpenSSL;
  LResponse: TStringStream;
  const
    URL ='https://viacep.com.br/ws/%s/json';
  procedure SetCPF(const Value: String);
  procedure SetEmail(const Value: String);
  procedure SetNome(const Value: String);
  procedure SetRG(const Value: String);
  procedure SetTelefone(const Value: String);
  procedure SetBairro(const Value: string);
  procedure SetCEP(const Value: string);
  procedure SetComplemento(const Value: string);
  procedure SetLocalidade(const Value: string);
  procedure SetLogradouro(const Value: string);
  procedure SetUF(const Value: string);
  procedure SetNumero(const Value: string);
  procedure SetPais(const Value: string);
 public
  [TDescricao('Nome Cliente')]
  property Nome :String read FNome write SetNome;
  [TDescricao('RG Cliente')]
  property RG :String read FRG write SetRG;
  [TDescricao('CPF Cliente')]
  property CPF :String read FCPF write SetCPF;
  [TDescricao('Telefone Cliente')]
  property Telefone :String read FTelefone write SetTelefone;
  [TDescricao('Email Cliente')]
  property Email :String read FEmail write SetEmail;
  [TDescricao('CEP')]
  property CEP: string read FCEP write SetCEP;
  [TDescricao('Endereço Logradouro')]
  property Logradouro: string read FLogradouro write SetLogradouro;
  [TDescricao('Endereço Complemento')]
  property Complemento: string read FComplemento write SetComplemento;
  [TDescricao('Endereço Numero')]
  property Numero: string read FNumero write SetNumero;
  [TDescricao('Endereço Bairro')]
  property Bairro: string read FBairro write SetBairro;
  [TDescricao('Endereço Localidade')]
  property Localidade: string read FLocalidade write SetLocalidade;
  [TDescricao('Endereço Estado')]
  property UF: string read FUF write SetUF;
  [TDescricao('Endereço Pais')]

  var
   vMemCliente:TFDMemTable;
   vPathDados :string;
  property  Pais: string read FPais write SetPais;
  procedure ValidarDados;
  function  ConsultaCEP:Integer;
  function  IsValidCPF(pCPF: string): Boolean;
  function  isValidEMail(aStr: string): Boolean;
  function  SalvaCadastroMemoria(vTipo:integer;vPath:string):Boolean;
  function  VerificaCpfCadastrado(vCPF:string):Boolean;
  function  DeletaCpfCadastrado(vCPF:string):Boolean;
  procedure FiltraCPF(cpf: String);
  procedure EnviaEmail(EmailDestino,vCPF:string);
  procedure CriaXML(vPaht:String);
  constructor Create;
  destructor  Destroy; override;

end;
implementation

{ TCliente }

uses UPrincipal;


function TCliente.ConsultaCEP: integer;
var
 vJsonResult : TJSONObject;
 vCep:string;
begin
  vCep := StringReplace(CEP,'.','',[rfReplaceAll]);
  vCep := StringReplace(vCep,'-','',[rfReplaceAll]);
  if vCep.Length<>8 then
   raise Exception.Create('CEP invalido!');
  LResponse := TStringStream.Create;
  FIdHTTP.Create(nil);
  try
    FIdHTTP.Get(Format(URL, [vCep]), LResponse);
    if (FIdHTTP.ResponseCode = 200)then
    begin
     if LResponse.DataString='{'#$A'  "erro": true'#$A'}' then
      Result :=2
     else
     begin
       vJsonResult := TJSONObject.ParseJSONValue(UTF8ToString(LResponse.DataString)) as TJSONObject;
       FCEP        := vJsonResult.GetValue('cep').Value;
       Flogradouro := vJsonResult.GetValue('logradouro').Value;
       FComplemento:= vJsonResult.GetValue('complemento').Value;
       Fbairro     := vJsonResult.GetValue('bairro').Value;
       FLocalidade := vJsonResult.GetValue('localidade').Value;
       Fuf         := vJsonResult.GetValue('uf').Value;
       Result      :=1;
     end;
    end
    else
     Result :=3;
  finally
    FIdHTTP.Free;
    LResponse.Free;
  end;
end;

constructor TCliente.Create;
begin
  vPathDados := ExtractFilePath(ParamStr(0))+'data.Json';
  vMemCliente:= TFDMemTable.Create(nil);
  with vMemCliente.FieldDefs do
  begin
     with AddFieldDef do
     begin
       Name     := 'Nome';
       DataType := ftString;
       Size     :=100;
     end;
     with AddFieldDef do
     begin
       Name     := 'RG';
       DataType := ftString;
       Size     :=10;
     end;
     with AddFieldDef do
     begin
       Name     := 'CPF';
       DataType := ftString;
       Size     := 14;
     end;
     with AddFieldDef do
     begin
       Name     := 'Telefone';
       DataType := ftString;
       Size     := 100;
     end;
     with AddFieldDef do
     begin
       Name     := 'Email';
       DataType := ftString;
       Size     :=100;
     end;
     with AddFieldDef do
     begin
       Name     := 'Cep';
       DataType := ftString;
       Size     := 10;
     end;
     with AddFieldDef do
     begin
       Name     := 'Logradouro';
       DataType := ftString;
       Size     := 200;
     end;
     with AddFieldDef do
     begin
       Name     := 'Numero';
       DataType := ftString;
     end;
     with AddFieldDef do
     begin
       Name     := 'Complemento';
       DataType := ftString;
       Size     := 100;
     end;
     with AddFieldDef do
     begin
       Name     := 'Bairro';
       DataType := ftString;
       Size     :=100;
     end;
     with AddFieldDef do
     begin
       Name     := 'Cidade';
       DataType := ftString;
       Size     :=100;
     end;
     with AddFieldDef do
     begin
       Name     := 'Estado';
       DataType := ftString;
       Size     :=2;
     end;
     with AddFieldDef do
     begin
       Name     := 'Pais';
       DataType := ftString;
       Size     :=100;
     end;
     vMemCliente.IndexDefs.Add('Index1', 'CPF', [ixPrimary]);
  end;
  if FileExists(vPathDados) then
   vMemCliente.LoadFromFile(vPathDados);

  FIdHTTP := TIdHTTP.Create;
  FIdSSLIOHandlerSocketOpenSSL := TIdSSLIOHandlerSocketOpenSSL.Create;
  FIdHTTP.IOHandler := FIdSSLIOHandlerSocketOpenSSL;
  FIdSSLIOHandlerSocketOpenSSL.SSLOptions.SSLVersions := [sslvTLSv1, sslvTLSv1_1, sslvTLSv1_2];
end;

procedure TCliente.CriaXML(vPaht:String);
var
  XMLDocument: TXMLDocument;
  NodeTabela, NodeRegistro, NodeEndereco: IXMLNode;
  I: Integer;
begin
  XMLDocument := TXMLDocument.Create(NIL);
  try
    XMLDocument.Active := True;
    NodeTabela := XMLDocument.AddChild('Cadastro');
    NodeRegistro := NodeTabela.AddChild('Cliente');
    NodeRegistro.ChildValues['Nome']      := NOME;
    NodeRegistro.ChildValues['RG']        := RG;
    NodeRegistro.ChildValues['CPF']       := CPF;
    NodeRegistro.ChildValues['Telefone']  := Telefone;
    NodeRegistro.ChildValues['Email']     := Email;
    NodeEndereco := NodeRegistro.AddChild('Endereco');
    NodeEndereco.ChildValues['CEP']        := CEP;
    NodeEndereco.ChildValues['Logradouro'] := Logradouro;
    NodeEndereco.ChildValues['Numero']     := Numero;
    NodeEndereco.ChildValues['Complemento']:= Complemento;
    NodeEndereco.ChildValues['Bairro']     := Bairro;
    NodeEndereco.ChildValues['Cidade']     := Localidade;
    NodeEndereco.ChildValues['UF']         := UF;
    NodeEndereco.ChildValues['Pais']       := Pais;
    XMLDocument.SaveToFile(vPaht);
  finally
  end;
end;

function TCliente.DeletaCpfCadastrado(vCPF: string): Boolean;
begin
  vMemCliente.Filtered := false;
  vMemCliente.Filter   := 'cpf='+vCPF.QuotedString;
  vMemCliente.Filtered := True;
  if vMemCliente.RecordCount>0 then
  begin
   try
     vMemCliente.Delete;
     vMemCliente.Refresh;
    except
     on E : Exception do
      raise Exception.Create('Erro ao Deletar Registro :'+e.Message);
    end;
  end;
end;

destructor TCliente.Destroy;
begin
  FIdSSLIOHandlerSocketOpenSSL.Free;
  FIdHTTP.Free;
  inherited;
end;

procedure TCliente.EnviaEmail(EmailDestino,vCPF: string);
var
 IdSSLIOHandlerSocket: TIdSSLIOHandlerSocketOpenSSL;
 IdSMTP: TIdSMTP;
 IdMessage: TIdMessage;
 IdText: TIdText;
 sAnexo,sAnexo2: string;
 StrAux  : TStringWriter;
 Dir,DirArq :string;
 x:integer;
begin
   Dir := ExtractFilePath(ParamStr(0))+'xmls';
   if not DirectoryExists(Dir) then
    CreateDir(Dir);
   vCPF := StringReplace(vCPF,'.','',[rfReplaceAll]);
   vCPF := StringReplace(vCPF,'-','',[rfReplaceAll]);
   DirArq:=Dir+'\xml_'+vCPF+'.xml';
   CriaXML(DirArq);
   IdSSLIOHandlerSocket := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
   IdSMTP := TIdSMTP.Create(nil);
   IdMessage := TIdMessage.Create(nil);
    try
     IdSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv23;
     IdSSLIOHandlerSocket.SSLOptions.Mode := sslmClient;
     IdSMTP.IOHandler := IdSSLIOHandlerSocket;
     IdSMTP.UseTLS := utUseImplicitTLS;
     IdSMTP.AuthType := satDefault;
     IdSMTP.Port := 465;
     IdSMTP.Host := 'smtp.gmail.com';
     IdSMTP.Username := 'cadclientes2022@gmail.com';
     IdSMTP.Password := 'Cad#110485';
     IdMessage.From.Address := EmailDestino;
     IdMessage.Recipients.Add.Text := EmailDestino;
     IdMessage.From.Name := 'Confirmação de Cadastro';
     IdMessage.Subject := 'Cadastro de Clientes';
     IdMessage.Encoding := meMIME;
     IdText := TIdText.Create(IdMessage.MessageParts);
     IdText.Body.Add('Seu CPF Foi cadastrado no sistema Cadastro de Clientes'+
     ', segue em anexo o xml do cadastro!');
     IdText.ContentType := 'text/plain; charset=iso-8859-1';
     sAnexo := DirArq;
     TIdAttachmentFile.Create(IdMessage.MessageParts, sAnexo);
     try
       IdSMTP.Connect;
       IdSMTP.Authenticate;
     except
     on E:Exception do
     begin
       ShowMessage('Erro ao Conectar ao servidor de Email '+e.Message);
     end;
     end;
     try
       IdSMTP.Send(IdMessage);
       ShowMessage('Emial enviado com Sucesso para :'+EmailDestino);
      except
      On E:Exception do
      begin
        ShowMessage('Erro ao Enviar Email :'+e.Message);
      end;
     end;
     finally
      IdSMTP.Disconnect;
      UnLoadOpenSSLLibrary;
      FreeAndNil(IdMessage);
      FreeAndNil(IdSSLIOHandlerSocket);
      FreeAndNil(IdSMTP);
    end;
end;

procedure TCliente.FiltraCPF(cpf: String);
begin
 vMemCliente.Filtered := false;
 vMemCliente.Filter   := 'cpf='+CPF.QuotedString;
 vMemCliente.Filtered := True;
 Nome          :=vMemCliente.FieldByName('Nome').AsString;
 CEP           :=vMemCliente.FieldByName('Cep').AsString;
 Logradouro    :=vMemCliente.FieldByName('Logradouro').AsString;
 Numero        :=vMemCliente.FieldByName('Numero').AsString;
 Complemento   :=vMemCliente.FieldByName('Complemento').AsString;
 Bairro        :=vMemCliente.FieldByName('Bairro').AsString;
 Localidade    :=vMemCliente.FieldByName('Cidade').AsString;
 UF            :=vMemCliente.FieldByName('Estado').AsString;
 Pais          :=vMemCliente.FieldByName('Pais').AsString;
 Telefone      :=vMemCliente.FieldByName('Telefone').AsString;
 Email         :=vMemCliente.FieldByName('Email').AsString;
 RG            :=vMemCliente.FieldByName('RG').AsString;
 CPF           :=vMemCliente.FieldByName('CPF').AsString;
end;

function TCliente.IsValidCPF(pCPF: string): Boolean;
var
  v: array [0 .. 1] of Word;
  cpf: array [0 .. 10] of Byte;
  I: Byte;
begin
  pCPF := StringReplace(pCPF,'.','',[rfReplaceAll]);
  pCPF := StringReplace(pCPF,'-','',[rfReplaceAll]);
  Result := False;
  if Length(pCPF) <> 11 then
  begin
    Exit;
  end;
  if pCPF = StringOfChar('0', 11) then
    Exit;
  if pCPF = StringOfChar('1', 11) then
    Exit;
  if pCPF = StringOfChar('2', 11) then
    Exit;
  if pCPF = StringOfChar('3', 11) then
    Exit;
  if pCPF = StringOfChar('4', 11) then
    Exit;
  if pCPF = StringOfChar('5', 11) then
    Exit;
  if pCPF = StringOfChar('6', 11) then
    Exit;
  if pCPF = StringOfChar('7', 11) then
    Exit;
  if pCPF = StringOfChar('8', 11) then
    Exit;
  if pCPF = StringOfChar('9', 11) then
    Exit;
  try
    for I := 1 to 11 do
      cpf[I - 1] := StrToInt(pCPF[I]);

    v[0] := 10 * cpf[0] + 9 * cpf[1] + 8 * cpf[2];
    v[0] := v[0] + 7 * cpf[3] + 6 * cpf[4] + 5 * cpf[5];
    v[0] := v[0] + 4 * cpf[6] + 3 * cpf[7] + 2 * cpf[8];
    v[0] := 11 - v[0] mod 11;
    v[0] := IfThen(v[0] >= 10, 0, v[0]);

    v[1] := 11 * cpf[0] + 10 * cpf[1] + 9 * cpf[2];
    v[1] := v[1] + 8 * cpf[3] + 7 * cpf[4] + 6 * cpf[5];
    v[1] := v[1] + 5 * cpf[6] + 4 * cpf[7] + 3 * cpf[8];
    v[1] := v[1] + 2 * v[0];
    v[1] := 11 - v[1] mod 11;
    v[1] := IfThen(v[1] >= 10, 0, v[1]);

    Result := ((v[0] = cpf[9]) and (v[1] = cpf[10]));
  except
    on E: Exception do
      Result := False;
  end;
end;

function TCliente.isValidEMail(aStr: string): Boolean;
begin
 aStr := Trim(UpperCase(aStr));
 if Pos('@', aStr) > 1 then
 begin
   Delete(aStr, 1, pos('@', aStr));
   Result := (Length(aStr) > 0) and (Pos('.', aStr) > 2);
 end
 else
   Result := False;
end;

function TCliente.SalvaCadastroMemoria(vTipo:Integer;vPath:string): Boolean;
begin
  ValidarDados;
  with vMemCliente do
  begin
    Open;
    vMemCliente.RecordCount;

    if vTipo=1 then
     Append;
    if vTipo=2 then
     Edit;
    FieldByName('Nome').AsString        :=Nome;
    FieldByName('RG').AsString          :=RG;
    FieldByName('CPF').AsString         :=CPF;
    FieldByName('Telefone').AsString    :=Telefone;
    FieldByName('Email').AsString       :=Email;
    FieldByName('Cep').AsString         :=Cep;
    FieldByName('Logradouro').AsString  :=Logradouro;
    FieldByName('Complemento').AsString :=Complemento;
    FieldByName('Bairro').AsString      :=Bairro;
    FieldByName('Cidade').AsString      :=Localidade;
    FieldByName('Estado').AsString      :=UF;
    FieldByName('Pais').AsString        :=Pais;
    FieldByName('Numero').AsString      :=Numero;
    try
     Post;
     TThread.CreateAnonymousThread(
     procedure
     begin
      TThread.Synchronize( nil,
      procedure
      begin
        EnviaEmail(Email,CPF);
      end);
     end).Start;
    except
     on E : Exception do
     begin
      raise Exception.Create('Erro ao salvar dados :'+e.Message);
     end;
    end;
  end;
end;

procedure TCliente.SetBairro(const Value: string);
begin
  FBairro := Value;
end;

procedure TCliente.SetCEP(const Value: string);
begin
  FCEP := Value;
end;

procedure TCliente.SetComplemento(const Value: string);
begin
  FComplemento := Value;
end;

procedure TCliente.SetCPF(const Value: String);
begin
  FCPF := Value;
end;



procedure TCliente.SetEmail(const Value: String);
begin
 FEmail := Value;
end;


procedure TCliente.SetLocalidade(const Value: string);
begin
  FLocalidade := Value;
end;

procedure TCliente.SetLogradouro(const Value: string);
begin
  FLogradouro := Value;
end;

procedure TCliente.SetNome(const Value: String);
begin
 FNome := Value;
end;

procedure TCliente.SetNumero(const Value: string);
begin
  FNumero := Value;
end;

procedure TCliente.SetPais(const Value: string);
begin
  FPais := Value;
end;

procedure TCliente.SetRG(const Value: String);
begin
 FRG := Value;
end;

procedure TCliente.SetTelefone(const Value: String);
begin
 FTelefone := Value;
end;

procedure TCliente.SetUF(const Value: string);
begin
  FUF := Value;
end;

procedure TCliente.ValidarDados;
var
 Contexto: TRttiContext;
 Tipo: TRttiType;
 Propriedade: TRttiProperty;
 Atributo: TCustomAttribute;
 Valor: variant;
 Preenchido: boolean;
begin
  Contexto := TRttiContext.Create;
  Tipo := Contexto.GetType(TCliente.ClassInfo);

  for Propriedade in Tipo.GetProperties do
  begin
   Valor := Propriedade.GetValue(Self).AsVariant;
   if Propriedade.Name='CPF' then
    if not IsValidCPF(Valor) then
     raise Exception.Create('CPF Invalido!');
   if Propriedade.Name='EMAIL' then
    if not isValidEMail(Valor) then
     raise Exception.Create('Email invalido!');
   Preenchido := (VarToStr(Valor) <> EmptyStr);
   if not Preenchido then
    for Atributo in Propriedade.GetAttributes do
      if Atributo is TDescricao then
      begin
        ShowMessage('Valor não preenchido: ' + (Atributo as TDescricao).Descricao);
        Abort;
      end;
  end;
end;

function TCliente.VerificaCpfCadastrado(vCPF: string): Boolean;
begin
  vMemCliente.Filtered := false;
  vMemCliente.Filter   := 'cpf='+vcpf.QuotedString;
  vMemCliente.Filtered := True;
  Result := vMemCliente.RecordCount>0;
end;

{ TDescricao }

constructor TDescricao.Create(const Descricao: string);
begin
 FDescricao := Descricao;
end;

end.

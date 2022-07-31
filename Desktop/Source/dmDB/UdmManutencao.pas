unit UdmManutencao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,FMX.Dialogs;

type
  TdmManutencao = class(TDataModule)
    TPlanoManutencao: TFDQuery;
    TPlanoItens: TFDQuery;
    TPlanoMaquinas: TFDQuery;
    TPlanoManutencaoid: TIntegerField;
    TPlanoManutencaostatus: TIntegerField;
    TPlanoManutencaodatareg: TSQLTimeStampField;
    TPlanoManutencaoidusuario: TIntegerField;
    TPlanoManutencaodataalteracao: TSQLTimeStampField;
    TPlanoManutencaoidusuarioalteracao: TIntegerField;
    TPlanoManutencaonome: TWideStringField;
    TPlanoManutencaointervalohoras: TBCDField;
    TPlanoManutencaointervalodias: TBCDField;
    dsPlanoManutencao: TDataSource;
    TPlanoItensid: TIntegerField;
    TPlanoItensstatus: TIntegerField;
    TPlanoItensdatareg: TSQLTimeStampField;
    TPlanoItensidusuario: TIntegerField;
    TPlanoItensdataalteracao: TSQLTimeStampField;
    TPlanoItensidusuarioalteracao: TIntegerField;
    TPlanoItensidgrupoitenspalno: TIntegerField;
    TPlanoItensidplano: TIntegerField;
    TPlanoItensdescricao: TWideStringField;
    TPlanoItensidproduto: TIntegerField;
    TPlanoItensqtde: TBCDField;
    TPlanoItensobservacao: TWideStringField;
    TPlanoItensfotoobrigatoria: TIntegerField;
    TPlanoItensproduto: TWideStringField;
    TPlanoManutencaoidfabricante: TIntegerField;
    TPlanoManutencaofabricante: TWideStringField;
    TPlanoItensgrupo: TWideStringField;
    TPlanoMaquinasid: TIntegerField;
    TPlanoMaquinasstatus: TIntegerField;
    TPlanoMaquinasdatareg: TSQLTimeStampField;
    TPlanoMaquinasidusuario: TIntegerField;
    TPlanoMaquinasdataalteracao: TSQLTimeStampField;
    TPlanoMaquinasidusuarioalteracao: TIntegerField;
    TPlanoMaquinasidplano: TIntegerField;
    TPlanoMaquinasidmodelo: TIntegerField;
    TPlanoMaquinasmodelo: TWideStringField;
    TPlanoMaquinasmarca: TWideStringField;
    TManutencao: TFDQuery;
    TManutencaoid: TIntegerField;
    TManutencaostatus: TIntegerField;
    TManutencaodatareg: TSQLTimeStampField;
    TManutencaoidusuario: TIntegerField;
    TManutencaodataalteracao: TSQLTimeStampField;
    TManutencaoidusuarioalteracao: TIntegerField;
    TManutencaoidplanorevisao: TIntegerField;
    TManutencaoidmaquina: TIntegerField;
    TManutencaoobservacao: TWideStringField;
    TManutencaodatainicio: TDateField;
    TManutencaodatafim: TDateField;
    TManutencaoidresponsavel: TIntegerField;
    TManutencaohorimetro: TBCDField;
    TManutencaohodometro: TBCDField;
    TManutencaotipo: TIntegerField;
    TManutencaohorimetroproxima: TBCDField;
    TManutencaohodometroproxima: TBCDField;
    TManutencaosyncaws: TIntegerField;
    TManutencaosyncfaz: TIntegerField;
    TManutencaoimghorimentro: TWideMemoField;
    TManutencaoimghodometro: TWideMemoField;
    TManutencaoprefixo: TWideStringField;
    TManutencaoplanomanutencao: TWideStringField;
    TManutencaoItems: TFDQuery;
    dsManutencao: TDataSource;
    TManutencaodiasproximarevisao: TDateField;
    TPlanoManutencaotipo: TIntegerField;
    TPlanoManutencaoidmaquina: TIntegerField;
    TPlanoManutencaoPadrao: TFDQuery;
    TPlanoManutencaoPadraoid: TIntegerField;
    TPlanoManutencaoPadraostatus: TIntegerField;
    TPlanoManutencaoPadraodatareg: TSQLTimeStampField;
    TPlanoManutencaoPadraoidusuario: TIntegerField;
    TPlanoManutencaoPadraodataalteracao: TSQLTimeStampField;
    TPlanoManutencaoPadraoidusuarioalteracao: TIntegerField;
    TPlanoManutencaoPadraonome: TWideStringField;
    TPlanoManutencaoPadraointervalohoras: TBCDField;
    TPlanoManutencaoPadraointervalodias: TBCDField;
    TPlanoManutencaoPadraoidfabricante: TIntegerField;
    TPlanoManutencaoPadraotipo: TIntegerField;
    TPlanoManutencaoPadraoidmaquina: TIntegerField;
    TPlanoManutencaoPadraofabricante: TWideStringField;
    TPlanoManutencaomaquina: TWideStringField;
    TPlanoManutencaotipostr: TWideMemoField;
    TManutencaoItemsid: TIntegerField;
    TManutencaoItemsstatus: TIntegerField;
    TManutencaoItemsdatareg: TSQLTimeStampField;
    TManutencaoItemsidusuario: TIntegerField;
    TManutencaoItemsdataalteracao: TSQLTimeStampField;
    TManutencaoItemsidusuarioalteracao: TIntegerField;
    TManutencaoItemsidgrupoitenspalno: TIntegerField;
    TManutencaoItemsidmanutencao: TIntegerField;
    TManutencaoItemsdescricao: TWideStringField;
    TManutencaoItemsidproduto: TIntegerField;
    TManutencaoItemsqtde: TBCDField;
    TManutencaoItemsobservacao: TWideStringField;
    TManutencaoItemsfotoobrigatoria: TIntegerField;
    TManutencaoItemsfotoitem: TWideMemoField;
    TManutencaoItemsgrupo: TWideStringField;
    TManutencaoItemsproduto: TWideStringField;
    TManutencaoItemscodigofabricante: TWideStringField;
    TManutencaoItemsitemcheck: TIntegerField;
    TManutencaoItemsEdit: TFDQuery;
    TManutencaoItemsEditid: TIntegerField;
    TManutencaoItemsEditstatus: TIntegerField;
    TManutencaoItemsEditdatareg: TSQLTimeStampField;
    TManutencaoItemsEditidusuario: TIntegerField;
    TManutencaoItemsEditdataalteracao: TSQLTimeStampField;
    TManutencaoItemsEditidusuarioalteracao: TIntegerField;
    TManutencaoItemsEditidgrupoitenspalno: TIntegerField;
    TManutencaoItemsEditidmanutencao: TIntegerField;
    TManutencaoItemsEditdescricao: TWideStringField;
    TManutencaoItemsEditidproduto: TIntegerField;
    TManutencaoItemsEditqtde: TBCDField;
    TManutencaoItemsEditobservacao: TWideStringField;
    TManutencaoItemsEditfotoobrigatoria: TIntegerField;
    TManutencaoItemsEditfotoitem: TWideMemoField;
    TManutencaoItemsEdititemcheck: TIntegerField;
    TManutencaoItemsEditgrupo: TWideStringField;
    TManutencaoItemsEditproduto: TWideStringField;
    TManutencaoItemsEditcodigofabricante: TWideStringField;
    TManutencaostatusstr: TWideMemoField;
    TStatusManutencaoid: TIntegerField;
    TStatusManutencaostatus: TIntegerField;
    TStatusManutencaodatareg: TSQLTimeStampField;
    TStatusManutencaoidusuario: TIntegerField;
    TStatusManutencaodataalteracao: TSQLTimeStampField;
    TStatusManutencaoidusuarioalteracao: TIntegerField;
    TStatusManutencaoidmanutencao: TIntegerField;
    TStatusManutencaoidstatus: TWideStringField;
    TStatusManutencaodatastatus: TDateField;
    TStatusManutencaohorainicio: TTimeField;
    TStatusManutencaohorafim: TTimeField;
    TStatusManutencaoobservacao: TWideStringField;
    TStatusManutencaodatainicio: TDateField;
    TStatusManutencaodatafim: TDateField;
    TStatusManutencaostatusstr: TWideMemoField;
    TStatusManutencao: TFDQuery;
    TManutencaoresponsavel: TWideStringField;
    TManutencaoServico: TFDQuery;
    TManutencaoServicoid: TIntegerField;
    TManutencaoServicostatus: TIntegerField;
    TManutencaoServicodatareg: TSQLTimeStampField;
    TManutencaoServicoidusuario: TIntegerField;
    TManutencaoServicodataalteracao: TSQLTimeStampField;
    TManutencaoServicoidusuarioalteracao: TIntegerField;
    TManutencaoServicoidrevisao: TIntegerField;
    TManutencaoServicodescricao: TWideStringField;
    TManutencaoServicoresponsavel: TWideStringField;
    TManutencaoServicovalortotal: TBCDField;
    TManutencaoServicodatarealizado: TDateField;
    TManutencaoidcentrocusto: TIntegerField;
    TManutencaocentrocusto: TWideStringField;
    TManutencaoServicogarantia: TIntegerField;
    TManutencaotipostr: TWideMemoField;
    procedure TPlanoItensReconcileError(DataSet: TFDDataSet; E: EFDException;
      UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
    procedure TStatusManutencaoReconcileError(DataSet: TFDDataSet;
      E: EFDException; UpdateKind: TFDDatSRowState;
      var Action: TFDDAptReconcileAction);
  private
    { Private declarations }
  public

    procedure AbrePlanoManutencao(vFiltro: string);
    procedure AbreManutencao(vFiltro: string);
    procedure AbrePlanoManutencaoPadrao(vFiltro: string);
    procedure AtualizaFotoItem(vIdItem,vFoto:string);
    procedure AtualizaStatusManutencao(vIdManuentecao:string);
    procedure InsereStatusManutencaoInicial(vIdManuentecao,DataInicio:string);

    function  CopyItensPlanoManutencao(vIdDefault,vIdNew:string):Boolean;
    function  CopyItensManutencao(vIdDefault,vIdNew:string):Boolean;
    function  RetornoMaxId(Atable:string):string;
    function  VerificaItemSemChek(vIdManutencao:string):Boolean;
    function  VerificaItemSemFoto(vIdManutencao: string): Boolean;
  end;

var
  dmManutencao: TdmManutencao;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

uses UdmDB, UPrincipal;

{$R *.dfm}

procedure TdmManutencao.AbreManutencao(vFiltro: string);
begin
 with TManutencao,TManutencao.SQL do
 begin
   Clear;
   Add('select');
   Add(' m.*,');
   Add(' m2.prefixo,');
   Add(' case');
   Add('  when p.nome is null then ''Preventiva''');
   Add('   else');
   Add('   p.nome');
   Add('  end PlanoManutencao,');
   Add('  case');
   Add('  when m.status =1 then ''Iniciada''');
   Add('  when m.status =2 then ''Aguardando Compras''');
   Add('  when m.status =3 then ''Aguardando Serviços''');
   Add('  when m.status =4 then ''Finalizada''');
   Add('  end statusStr,');
   Add('  u.nome Responsavel,');
   Add('  c.nome Centrocusto,');
   Add('case');
   Add(' when m.tipo=0 then ''Preventiva''');
   Add(' when m.tipo=1 then ''Corretiva''');
   Add('end TipoStr');
   Add('from manutencao m');
   Add('join usuario u on u.id=m.idresponsavel');
   Add('join maquinaveiculo m2 on m.idmaquina=m2.id');
   Add('join centrocusto c on c.id=m.idcentrocusto');
   Add('left join planorevisao p on p.id=m.idplanorevisao');
   Add('where m.status>-1');
   Add(vFiltro);
   Add('order by m.id desc');
   try
    Open;
   except
    on E: Exception do
     ShowMessage('Erro ao Abrir Tabela:'+E.Message);
   end;
 end;
end;

procedure TdmManutencao.AbrePlanoManutencao(vFiltro: string);
begin
 with TPlanoManutencao,TPlanoManutencao.SQL do
 begin
   Clear;
   Add('select');
   Add(' p.*,');
   Add(' m.nome Fabricante,');
   Add(' m2.prefixo Maquina,');
   Add(' case ');
   Add('  when tipo=0 then '+QuotedStr('PADRÃO'));
   Add('  when tipo=1 then '+QuotedStr('CUSTOMIZADO'));
   Add(' end tipoStr ');
   Add('from planorevisao p');
   Add('join auxmarcas m on m.id=p.idfabricante');
   Add('left join maquinaveiculo m2 on m2.id=p.idmaquina');
   Add('where p.status =1');
   Add(vFiltro);
   Add('order by p.id desc');
   try
    Open;
    TPlanoManutencao.RecordCount;
   except
    on E: Exception do
     ShowMessage('Erro ao Abrir Tabela:'+E.Message);
   end;
 end;
end;

procedure TdmManutencao.AbrePlanoManutencaoPadrao(vFiltro: string);
begin
 with TPlanoManutencaoPadrao,TPlanoManutencaoPadrao.SQL do
 begin
   Clear;
   Add('select');
   Add(' p.*,');
   Add(' m.nome Fabricante,');
   Add(' m2.prefixo Maquina,');
   Add(' case ');
   Add('  when tipo=0 then '+QuotedStr('PADRÃO'));
   Add('  when tipo=1 then '+QuotedStr('CUSTOMIZADO'));
   Add(' end tipoStr ');
   Add('from planorevisao p');
   Add('join auxmarcas m on m.id=p.idfabricante');
   Add('left join maquinaveiculo m2 on m2.id=p.idmaquina');
   Add('where p.status =1 and p.tipo=0');
   Add(vFiltro);
   Add('order by p.id desc');
   try
    Open;
   except
    on E: Exception do
     ShowMessage('Erro ao Abrir Tabela:'+E.Message);
   end;
 end;
end;

procedure TdmManutencao.AtualizaFotoItem(vIdItem, vFoto: string);
var
 vQryAux:TFDQuery;
begin
 vQryAux := TFDQuery.Create(self);
 vQryAux.Connection := dmdb.FDConPG;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('update manutencaoitens set fotoitem='+vFoto.QuotedString);
   Add('where id=:id');
   ParamByName('id').AsInteger      := strToInt(vIdItem);
   try
    ExecSQL;
   except
    on E: Exception do
    begin
     ShowMessage('Erro ao Abrir Atualizar Foto:'+E.Message);
    end;
   end;
 end;
 vQryAux.Free;
end;

function TdmManutencao.CopyItensManutencao(vIdDefault, vIdNew: string): Boolean;
var
 vQryAux:TFDQuery;
begin
 vQryAux := TFDQuery.Create(self);
 vQryAux.Connection := dmdb.FDConPG;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('INSERT INTO manutencaoitens');
   Add('(idusuario,idgrupoitenspalno,idmanutencao,descricao,idproduto,qtde,observacao,fotoobrigatoria)');
   Add('select :idusuario,idgrupoitenspalno,:idplano,descricao,idproduto,qtde,observacao,fotoobrigatoria');
   Add('from planorevisaoitens');
   Add('where status =1 and idplano=:idplanoDefault');
   ParamByName('idusuario').AsInteger      := strToInt(dmdb.vIdUsuarioLogado);
   ParamByName('idplano').AsInteger        := strToInt(vIdNew);
   ParamByName('idplanoDefault').AsInteger := strToInt(vIdDefault);
   try
    ExecSQL;
    Result := true;
   except
    on E: Exception do
    begin
     ShowMessage('Erro ao Abrir Tabela:'+E.Message);
     Result :=false;
    end;
   end;
 end;
 vQryAux.Free;
end;

function TdmManutencao.CopyItensPlanoManutencao(vIdDefault,
  vIdNew: string): Boolean;
var
 vQryAux:TFDQuery;
begin
 vQryAux := TFDQuery.Create(self);
 vQryAux.Connection := dmdb.FDConPG;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('INSERT INTO planorevisaoitens');
   Add('(idusuario,idgrupoitenspalno,idplano,descricao,idproduto,qtde,observacao,fotoobrigatoria)');
   Add('select :idusuario,idgrupoitenspalno,:idplano,descricao,idproduto,qtde,observacao,fotoobrigatoria');
   Add('from planorevisaoitens');
   Add('where status =1 and idplano=:idplanoDefault');
   ParamByName('idusuario').AsInteger      := strToInt(dmdb.vIdUsuarioLogado);
   ParamByName('idplano').AsInteger        := strToInt(vIdNew);
   ParamByName('idplanoDefault').AsInteger := strToInt(vIdDefault);
   try
    ExecSQL;
    Result := true;
   except
    on E: Exception do
    begin
     ShowMessage('Erro ao Abrir Tabela:'+E.Message);
     Result :=false;
    end;
   end;
 end;
 vQryAux.Free;
end;

procedure TdmManutencao.InsereStatusManutencaoInicial(vIdManuentecao,
  DataInicio: string);
var
 vQryAux:TFDQuery;
 vIdStatus:string;
begin
 vQryAux := TFDQuery.Create(self);
 vQryAux.Connection := dmdb.FDConPG;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('insert into manutencaostatus(idusuario,idmanutencao,idstatus,datainicio,horainicio)values(');
   Add(dmdb.vIdUsuarioLogado+',');
   Add(vIdManuentecao+',');
   Add('1,');
   Add(DataInicio+',');
   Add(FormatDateTime('hh:mm:ss',now).QuotedString+')');
   ExecSQL;
 end;
 vQryAux.Free;
end;

procedure TdmManutencao.AtualizaStatusManutencao(vIdManuentecao: string);
var
 vQryAux:TFDQuery;
 vIdStatus:string;
begin
 vQryAux := TFDQuery.Create(self);
 vQryAux.Connection := dmdb.FDConPG;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select idstatus from manutencaostatus where status=1 and idmanutencao='+vIdManuentecao);
   Add('ORDER BY id desc limit 1');
   Open;
   vIdStatus :=  FieldByName('idstatus').AsString;

   Clear;
   Add('update manutencao m set status ='+vIdStatus);
   Add('where id='+vIdManuentecao);
   ExecSQL;
 end;
 vQryAux.Free;
end;

function TdmManutencao.RetornoMaxId(Atable: string): string;
var
 vQryAux:TFDQuery;
begin
 vQryAux := TFDQuery.Create(self);
 vQryAux.Connection := dmdb.FDConPG;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select max(id) maxId from '+Atable);
   Add('where status=1');
   Open;
   Result := FieldByName('maxId').AsString;
 end;
 vQryAux.Free;
end;

procedure TdmManutencao.TPlanoItensReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
  frmPrincipal.MyShowMessage('Erro ao gravar item :'+e.Message,false)
end;

procedure TdmManutencao.TStatusManutencaoReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
 frmPrincipal.MyShowMessage('Erro ao gravar item :'+e.Message,false)
end;

function TdmManutencao.VerificaItemSemChek(vIdManutencao: string): Boolean;
var
 vQryAux:TFDQuery;
begin
 vQryAux := TFDQuery.Create(self);
 vQryAux.Connection := dmdb.FDConPG;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from manutencaoitens m');
   Add('where status=1 and idmanutencao='+vIdManutencao);
   Add('and itemcheck=0');
   Open;
   Result := vQryAux.IsEmpty;
 end;
 vQryAux.Free;
end;

function TdmManutencao.VerificaItemSemFoto(vIdManutencao: string): Boolean;
var
 vQryAux:TFDQuery;
begin
 vQryAux := TFDQuery.Create(self);
 vQryAux.Connection := dmdb.FDConPG;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select * from manutencaoitens m');
   Add('where status =1');
   Add('and idmanutencao ='+vIdManutencao);
   Add('and fotoobrigatoria=1');
   Add('and fotoitem is null');
   Open;
   Result := vQryAux.IsEmpty;
 end;
 vQryAux.Free;
end;

end.

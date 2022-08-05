unit UdmDB;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Phys.PGDef, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.PG, FireDAC.FMXUI.Wait, Data.DB, FireDAC.Comp.Client,
  IdHashMessageDigest, FireDAC.Comp.UI, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,FMX.Dialogs,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,System.JSON,
  System.JSON.Writers,System.JSON.Types,System.IniFiles,
  FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util, FireDAC.Comp.Script,
  FireDAC.VCLUI.Wait;


type
  Tdmdb = class(TDataModule)
    FDConPG: TFDConnection;
    PgDriverLink: TFDPhysPgDriverLink;
    vQry: TFDQuery;
    TUsuario: TFDQuery;
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
    TUsuariotipostr: TWideMemoField;
    TAuxMarca: TFDQuery;
    TAuxMarcaid: TIntegerField;
    TAuxMarcastatus: TIntegerField;
    TAuxMarcadatareg: TSQLTimeStampField;
    TAuxMarcaidusuario: TIntegerField;
    TAuxMarcadataalteracao: TSQLTimeStampField;
    TAuxMarcaidusuarioalteracao: TIntegerField;
    TAuxMarcanome: TWideStringField;
    TAuxMarcasyncaws: TIntegerField;
    TAuxGrupoMaquinas: TFDQuery;
    TAuxGrupoMaquinasid: TIntegerField;
    TAuxGrupoMaquinasstatus: TIntegerField;
    TAuxGrupoMaquinasdatareg: TSQLTimeStampField;
    TAuxGrupoMaquinasidusuario: TIntegerField;
    TAuxGrupoMaquinasdataalteracao: TSQLTimeStampField;
    TAuxGrupoMaquinasidusuarioalteracao: TIntegerField;
    TAuxGrupoMaquinasnome: TWideStringField;
    TAuxGrupoMaquinassyncaws: TIntegerField;
    TAuxSubGrupo: TFDQuery;
    TAuxSubGrupoid: TIntegerField;
    TAuxSubGrupostatus: TIntegerField;
    TAuxSubGrupodatareg: TSQLTimeStampField;
    TAuxSubGrupoidusuario: TIntegerField;
    TAuxSubGrupodataalteracao: TSQLTimeStampField;
    TAuxSubGrupoidusuarioalteracao: TIntegerField;
    TAuxSubGruponome: TWideStringField;
    TAuxSubGruposyncaws: TIntegerField;
    TAuxSubGrupotipomedicao: TIntegerField;
    TAuxSubGrupotipomedicaostr: TWideMemoField;
    TOperadorMaquina: TFDQuery;
    TOperadorMaquinaid: TIntegerField;
    TOperadorMaquinastatus: TIntegerField;
    TOperadorMaquinadatareg: TSQLTimeStampField;
    TOperadorMaquinaidusuario: TIntegerField;
    TOperadorMaquinadataalteracao: TSQLTimeStampField;
    TOperadorMaquinaidusuarioalteracao: TIntegerField;
    TOperadorMaquinanome: TWideStringField;
    TOperadorMaquinarg: TWideStringField;
    TOperadorMaquinacpf: TWideStringField;
    TOperadorMaquinacnh: TWideStringField;
    TOperadorMaquinacelular: TWideStringField;
    TOperadorMaquinasyncaws: TIntegerField;
    TOperadorMaquinasyncfaz: TIntegerField;
    Tauxatividadeabastecimento: TFDQuery;
    Tauxatividadeabastecimentoid: TIntegerField;
    Tauxatividadeabastecimentostatus: TIntegerField;
    Tauxatividadeabastecimentodatareg: TSQLTimeStampField;
    Tauxatividadeabastecimentoidusuario: TIntegerField;
    Tauxatividadeabastecimentodataalteracao: TSQLTimeStampField;
    Tauxatividadeabastecimentoidusuarioalteracao: TIntegerField;
    Tauxatividadeabastecimentonome: TWideStringField;
    Tauxatividadeabastecimentosyncaws: TIntegerField;
    TProdutos: TFDQuery;
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
    TMaquinas: TFDQuery;
    TMaquinasid: TIntegerField;
    TMaquinasstatus: TIntegerField;
    TMaquinasdatareg: TSQLTimeStampField;
    TMaquinasidusuario: TIntegerField;
    TMaquinasdataalteracao: TSQLTimeStampField;
    TMaquinasidusuarioalteracao: TIntegerField;
    TMaquinasidmarca: TIntegerField;
    TMaquinasmodelo: TWideStringField;
    TMaquinasplaca: TWideStringField;
    TMaquinasano: TIntegerField;
    TMaquinaschassi: TWideStringField;
    TMaquinasidcombustivel: TIntegerField;
    TMaquinasimg: TBlobField;
    TMaquinasprefixo: TWideStringField;
    TMaquinassyncaws: TIntegerField;
    TMaquinassyncfaz: TIntegerField;
    TMaquinasultimoabastecimento: TDateField;
    TMaquinashorimetroultimarev: TBCDField;
    TMaquinashorimetroatual: TBCDField;
    TMaquinasqrcode: TWideStringField;
    TMaquinasidsubgrupo: TIntegerField;
    TMaquinasidgrupo: TIntegerField;
    TMaquinaskmatual: TBCDField;
    TMaquinasgrupo: TWideStringField;
    TMaquinassubgrupo: TWideStringField;
    TMaquinasmarca: TWideStringField;
    TMaquinastipomedicao: TIntegerField;
    TMaquinastipomedicaostr: TWideMemoField;
    TCentroCusto: TFDQuery;
    TCentroCustoid: TIntegerField;
    TCentroCustostatus: TIntegerField;
    TCentroCustodatareg: TSQLTimeStampField;
    TCentroCustoidusuario: TIntegerField;
    TCentroCustodataalteracao: TSQLTimeStampField;
    TCentroCustoidusuarioalteracao: TIntegerField;
    TCentroCustonome: TWideStringField;
    TCentroCustosyncaws: TIntegerField;
    TCentroCustostatusstr: TWideMemoField;
    TAbastecimento: TFDQuery;
    TEstoqueEntrada: TFDQuery;
    TEstoqueSaida: TFDQuery;
    TnotaFiscalIntem: TFDQuery;
    TEstoqueEntradaid: TIntegerField;
    TEstoqueEntradastatus: TIntegerField;
    TEstoqueEntradadatareg: TSQLTimeStampField;
    TEstoqueEntradaidusuario: TIntegerField;
    TEstoqueEntradadataalteracao: TSQLTimeStampField;
    TEstoqueEntradaidusuarioalteracao: TIntegerField;
    TEstoqueEntradaidfornecedor: TIntegerField;
    TEstoqueEntradaidpedido: TIntegerField;
    TEstoqueEntradanumeronf: TIntegerField;
    TEstoqueEntradadataemissao: TDateField;
    TEstoqueEntradadataentradaestoque: TDateField;
    TEstoqueEntradavalortotalnf: TFMTBCDField;
    TEstoqueEntradaidcentrocusto: TIntegerField;
    TEstoqueEntradasyncaws: TIntegerField;
    TEstoqueEntradatipo: TIntegerField;
    TEstoqueEntradafornecedor: TWideStringField;
    TEstoqueEntradacentrocusto: TWideStringField;
    TLocalEstoque: TFDQuery;
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
    TLocalEstoquecentrocusto: TWideStringField;
    TFornecedores: TFDQuery;
    TFornecedoresid: TIntegerField;
    TFornecedoresstatus: TIntegerField;
    TFornecedoresdatareg: TSQLTimeStampField;
    TFornecedoresidusuario: TIntegerField;
    TFornecedoresdataalteracao: TSQLTimeStampField;
    TFornecedoresidusuarioalteracao: TIntegerField;
    TFornecedoresnome: TWideStringField;
    TFornecedorescidade: TWideStringField;
    TFornecedoresuf: TWideStringField;
    TFornecedorescpf_cnpj: TWideStringField;
    TFornecedorestelefone_fixo: TWideStringField;
    TFornecedorescelular: TWideStringField;
    TFornecedoresemail: TWideStringField;
    TFornecedorescontatopessoa: TWideStringField;
    TFornecedoressenha: TWideStringField;
    TFornecedoressyncaws: TIntegerField;
    TFornecedoresrazaosocial: TWideStringField;
    TFornecedoresinscricaoestadual: TWideStringField;
    TnotaFiscalIntemitem: TLargeintField;
    TnotaFiscalIntemid: TIntegerField;
    TnotaFiscalIntemstatus: TIntegerField;
    TnotaFiscalIntemdatareg: TSQLTimeStampField;
    TnotaFiscalIntemidusuario: TIntegerField;
    TnotaFiscalIntemdataalteracao: TSQLTimeStampField;
    TnotaFiscalIntemidusuarioalteracao: TIntegerField;
    TnotaFiscalIntemidnota: TIntegerField;
    TnotaFiscalIntemidproduto: TIntegerField;
    TnotaFiscalIntemvalortotalnf: TFMTBCDField;
    TnotaFiscalIntemqtditens: TFMTBCDField;
    TnotaFiscalIntemunidademedida: TWideStringField;
    TnotaFiscalIntempesoembalagem: TFMTBCDField;
    TnotaFiscalIntemidlocalestoque: TIntegerField;
    TnotaFiscalIntemsyncaws: TIntegerField;
    TnotaFiscalIntemprodutoid: TIntegerField;
    TnotaFiscalIntemprodutounidade: TWideStringField;
    TnotaFiscalIntemprodutonome: TWideStringField;
    TnotaFiscalIntemprodutofabricante: TWideStringField;
    TEstoqueSaidaid: TIntegerField;
    TEstoqueSaidastatus: TIntegerField;
    TEstoqueSaidadatareg: TSQLTimeStampField;
    TEstoqueSaidaidusuario: TIntegerField;
    TEstoqueSaidadataalteracao: TSQLTimeStampField;
    TEstoqueSaidaidusuarioalteracao: TIntegerField;
    TEstoqueSaidaidproduto: TIntegerField;
    TEstoqueSaidadatasaidaestoque: TDateField;
    TEstoqueSaidaqtditens: TFMTBCDField;
    TEstoqueSaidaunidademedida: TWideStringField;
    TEstoqueSaidaidlocalestoque: TIntegerField;
    TEstoqueSaidaidcentrocusto: TIntegerField;
    TEstoqueSaidasyncaws: TIntegerField;
    TEstoqueSaidatipo_baixa: TIntegerField;
    TEstoqueSaidaidresponsavel: TIntegerField;
    TEstoqueSaidavalorsaida: TBCDField;
    TEstoqueSaidaidabastecimento: TIntegerField;
    TEstoqueSaidaidreceiturario: TIntegerField;
    TEstoqueSaidaidlocaldestino: TIntegerField;
    TEstoqueSaidalocalestoque: TWideStringField;
    TEstoqueSaidacentrocusto: TWideStringField;
    TEstoqueSaidaproduto: TWideStringField;
    TEstoqueSaidaprodutocodfabricante: TWideStringField;
    TEstoqueSaidatipostr: TWideMemoField;
    TnotaFiscalIntemlocalestoque: TWideStringField;
    TnotaFiscalIntemvaloruni: TFMTBCDField;
    TEstoqueSaidavalototal: TFMTBCDField;
    TMovLocalEstoque: TFDQuery;
    TMovLocalEstoqueid: TIntegerField;
    TMovLocalEstoquestatus: TIntegerField;
    TMovLocalEstoquedatareg: TSQLTimeStampField;
    TMovLocalEstoqueidusuario: TIntegerField;
    TMovLocalEstoquedataalteracao: TSQLTimeStampField;
    TMovLocalEstoqueidusuarioalteracao: TIntegerField;
    TMovLocalEstoqueidlocalestoqueorigem: TIntegerField;
    TMovLocalEstoqueidlocalestoquedetino: TIntegerField;
    TMovLocalEstoqueidproduto: TIntegerField;
    TMovLocalEstoqueqtde: TBCDField;
    TMovLocalEstoquedatamov: TDateField;
    TMovLocalEstoquehora: TTimeField;
    TMovLocalEstoquesyncaws: TIntegerField;
    TMovLocalEstoquelocalorigem: TWideStringField;
    TMovLocalEstoquelocaldestino: TWideStringField;
    TMovLocalEstoqueproduto: TWideStringField;
    TMovLocalEstoquecentrocustoorigem: TWideStringField;
    TMovLocalEstoquecentrocustodestino: TWideStringField;
    TStartBomba: TFDQuery;
    TStartBombaid: TIntegerField;
    TStartBombastatus: TIntegerField;
    TStartBombadatareg: TSQLTimeStampField;
    TStartBombaidusuario: TIntegerField;
    TStartBombadataalteracao: TSQLTimeStampField;
    TStartBombaidusuarioalteracao: TIntegerField;
    TStartBombaidlocalestoque: TIntegerField;
    TStartBombaidcentrocusto: TIntegerField;
    TStartBombacombustivel: TIntegerField;
    TStartBombadataastart: TDateField;
    TStartBombahorastart: TTimeField;
    TStartBombadataaend: TDateField;
    TStartBombahoraend: TTimeField;
    TStartBombasyncaws: TIntegerField;
    TStartBombavolumelitrosini: TBCDField;
    TStartBombaobs: TWideStringField;
    TStartBombaimgstart: TWideMemoField;
    TStartBombaimgend: TWideMemoField;
    TStartBombavolumelitrosfim: TBCDField;
    TStartBombalocalestoque: TWideStringField;
    TStartBombacombustivelnome: TWideStringField;
    TStartBombacentrocusto: TWideStringField;
    TStartBombasaldo: TFMTBCDField;
    TStartBombavolumeutilizado: TFMTBCDField;
    TUsuarioiderp: TIntegerField;
    TProdutosiderp: TIntegerField;
    TMaquinasiderp: TIntegerField;
    TCentroCustoiderp: TIntegerField;
    TLocalEstoqueidcombustivel: TIntegerField;
    TLocalEstoqueiderp: TIntegerField;
    TLocalEstoquecombustivel: TWideStringField;
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
    TAbastecimentoidcentrocusto: TIntegerField;
    TAbastecimentokmatual: TBCDField;
    TAbastecimentolatitude: TFMTBCDField;
    TAbastecimentolongitude: TFMTBCDField;
    TAbastecimentolocaldeestoque: TWideStringField;
    TAbastecimentoprefixo: TWideStringField;
    TAbastecimentoproduto: TWideStringField;
    TAbastecimentocentrocustonome: TWideStringField;
    TAbastecimentoalerta: TIntegerField;
    TAbastecimentodescricaoalerta: TWideMemoField;
    TAbastecimentotipoalerta: TWideMemoField;
    TDevice: TFDQuery;
    TDeviceid: TIntegerField;
    TDevicestatus: TIntegerField;
    TDevicedatareg: TSQLTimeStampField;
    TDeviceidusuario: TIntegerField;
    TDevicedataalteracao: TSQLTimeStampField;
    TDevicepatrimonio: TIntegerField;
    TDevicemarca: TWideStringField;
    TDevicemodelo: TWideStringField;
    TDeviceidcentrocusto: TIntegerField;
    TDevicesyncaws: TIntegerField;
    TDevicecentrocusto: TWideStringField;
    TMaquinasvolumetanque: TBCDField;
    TLubrificacao: TFDQuery;
    TLubrificacaoprodutos: TFDQuery;
    TLubrificacaoid: TIntegerField;
    TLubrificacaostatus: TIntegerField;
    TLubrificacaodatareg: TSQLTimeStampField;
    TLubrificacaoidusuario: TIntegerField;
    TLubrificacaodataalteracao: TSQLTimeStampField;
    TLubrificacaoidusuarioalteracao: TIntegerField;
    TLubrificacaoidmaquina: TIntegerField;
    TLubrificacaodatatroca: TDateField;
    TLubrificacaosyncaws: TIntegerField;
    TLubrificacaosyncfaz: TIntegerField;
    TLubrificacaohorimetro: TBCDField;
    TLubrificacaokm: TBCDField;
    TLubrificacaomaquina: TWideStringField;
    TLubrificacaoprodutosid: TIntegerField;
    TLubrificacaoprodutosstatus: TIntegerField;
    TLubrificacaoprodutosdatareg: TSQLTimeStampField;
    TLubrificacaoprodutosidusuario: TIntegerField;
    TLubrificacaoprodutosdataalteracao: TSQLTimeStampField;
    TLubrificacaoprodutosidusuarioalteracao: TIntegerField;
    TLubrificacaoprodutosidlubrificacao: TIntegerField;
    TLubrificacaoprodutosidproduto: TIntegerField;
    TLubrificacaoprodutosqtd: TBCDField;
    TLubrificacaoprodutossyncaws: TIntegerField;
    TLubrificacaoprodutossyncfaz: TIntegerField;
    TLubrificacaoprodutosproduto: TWideStringField;
    TLubrificacaoprodutoscodigofabricante: TWideStringField;
    TLubrificacaoidcentrocusto: TIntegerField;
    TLubrificacaocentrocusto: TWideStringField;
    TLubrificacaoalerta: TIntegerField;
    TLubrificacaodescricaoalerta: TWideMemoField;
    TLubrificacaotipoalerta: TWideMemoField;
    TMovLocalEstoqueimg: TBlobField;
    TMovLocalEstoqueimgfim: TBlobField;
    TLubrificacaoidlocalestoque: TIntegerField;
    TLubrificacaolocalestoque: TWideStringField;
    TAuxCompLub: TFDQuery;
    TAuxCompLubid: TIntegerField;
    TAuxCompLubstatus: TIntegerField;
    TAuxCompLubdatareg: TSQLTimeStampField;
    TAuxCompLubidusuario: TIntegerField;
    TAuxCompLubdataalteracao: TSQLTimeStampField;
    TAuxCompLubidusuarioalteracao: TIntegerField;
    TAuxCompLubnome: TWideStringField;
    TAuxCompLubsyncaws: TIntegerField;
    TLubrificacaoidcompartimento: TIntegerField;
    TLubrificacaolatitude: TFMTBCDField;
    TLubrificacaolongitude: TFMTBCDField;
    cheklistgeneric: TFDQuery;
    cheklistRealizado: TFDQuery;
    cheklistgenericid: TIntegerField;
    cheklistgenericstatus: TIntegerField;
    cheklistgenericdatareg: TSQLTimeStampField;
    cheklistgenericidusuario: TIntegerField;
    cheklistgenericdataalteracao: TSQLTimeStampField;
    cheklistgenericidusuarioalteracao: TIntegerField;
    cheklistgenericnome: TWideStringField;
    cheklistRealizadoid: TIntegerField;
    cheklistRealizadostatus: TIntegerField;
    cheklistRealizadodatareg: TSQLTimeStampField;
    cheklistRealizadoidusuario: TIntegerField;
    cheklistRealizadodataalteracao: TSQLTimeStampField;
    cheklistRealizadoidusuarioalteracao: TIntegerField;
    cheklistRealizadonome: TWideStringField;
    cheklistRealizadoidcheck: TIntegerField;
    detcheklistgeneric: TFDQuery;
    detcheklistgenericid: TIntegerField;
    detcheklistgenericstatus: TIntegerField;
    detcheklistgenericdatareg: TSQLTimeStampField;
    detcheklistgenericidusuario: TIntegerField;
    detcheklistgenericdataalteracao: TSQLTimeStampField;
    detcheklistgenericidusuarioalteracao: TIntegerField;
    detcheklistgenericidcheck: TIntegerField;
    detcheklistgenericitem: TIntegerField;
    detcheklistgenericitemfotoobrigatoria: TIntegerField;
    detcheklistgenericitemobs: TWideStringField;
    dscheklistGeneric: TDataSource;
    dscheklistRealizado: TDataSource;
    detcheklistgenericdescricao: TWideStringField;
    detcheklistgenericfotoobrigatoria: TWideMemoField;
    cheklistgenericdescricao: TWideStringField;
    cheklistRealizadodescricao: TWideStringField;
    cheklistRealizadoidcentrocusto: TIntegerField;
    cheklistRealizadoidmaquia: TIntegerField;
    cheklistgenerictransferencia: TIntegerField;
    cheklistgenerictransf: TWideMemoField;
    cheklistregrupoitem: TFDQuery;
    cheklistregrupoitemid: TIntegerField;
    cheklistregrupoitemstatus: TIntegerField;
    cheklistregrupoitemdatareg: TSQLTimeStampField;
    cheklistregrupoitemidusuario: TIntegerField;
    cheklistregrupoitemdataalteracao: TSQLTimeStampField;
    cheklistregrupoitemidusuarioalteracao: TIntegerField;
    cheklistregrupoitemnome: TWideStringField;
    cheklistregrupoitemdescricao: TWideStringField;
    detcheklistgenericidgrupo: TIntegerField;
    detcheklistgenericgrupo: TWideStringField;
    TLubrificacaoprodutosidcompartimento: TIntegerField;
    TLubrificacaoprodutoscompartimento: TWideStringField;
    TLubrificacaoprodutostipo: TIntegerField;
    TLubrificacaoprodutostipostr: TWideMemoField;
    cheklistgenericidgrupomaquinas: TIntegerField;
    cheklistgenericgrupomaquina: TWideStringField;
    cheklistRealizadoidcentrocustodestino: TIntegerField;
    cheklistRealizadotransferencia: TIntegerField;
    cheklistRealizadohorimetro: TBCDField;
    cheklistRealizadokm: TBCDField;
    cheklistRealizadodata: TDateField;
    cheklistRealizadoalerta: TIntegerField;
    cheklistRealizadostatusstr: TWideMemoField;
    cheklistRealizadoprefixo: TWideStringField;
    cheklistRealizadoidmaquina: TIntegerField;
    cheklistRealizadocentrocustodestino: TWideStringField;
    cheklistRealizadoidcentrocustodestino_1: TIntegerField;
    cheklistRealizadocentrocusto: TWideStringField;
    detCheckListReal: TFDQuery;
    detCheckListRealid: TIntegerField;
    detCheckListRealstatus: TIntegerField;
    detCheckListRealdatareg: TSQLTimeStampField;
    detCheckListRealidusuario: TIntegerField;
    detCheckListRealdataalteracao: TSQLTimeStampField;
    detCheckListRealidusuarioalteracao: TIntegerField;
    detCheckListRealidcheck: TIntegerField;
    detCheckListRealitem: TIntegerField;
    detCheckListRealitemfotoobrigatoria: TIntegerField;
    detCheckListRealitemfoto: TWideMemoField;
    detCheckListRealitemobs: TWideStringField;
    detCheckListRealdescricao: TWideStringField;
    detCheckListRealitemcheck: TIntegerField;
    detCheckListRealidgrupo: TIntegerField;
    detCheckListRealnormal: TBooleanField;
    detCheckListRealreparar: TBooleanField;
    detCheckListRealnaoseaplica: TBooleanField;
    detCheckListRealchecado: TBooleanField;
    detCheckListRealgrupo: TWideStringField;
    cheklistRealizadoobservasao: TWideStringField;
    ModeloMaquina: TFDQuery;
    ModeloMaquinaid: TIntegerField;
    ModeloMaquinastatus: TIntegerField;
    ModeloMaquinadatareg: TSQLTimeStampField;
    ModeloMaquinaidusuario: TIntegerField;
    ModeloMaquinadataalteracao: TSQLTimeStampField;
    ModeloMaquinaidmarca: TIntegerField;
    ModeloMaquinamodelo: TWideStringField;
    ModeloMaquinasyncaws: TIntegerField;
    ModeloMaquinafabricante: TWideStringField;
    ModeloMaquinaidusuarioalteracao: TIntegerField;
    TMaquinasidmodelo: TIntegerField;
    ModeloMaquinamediaconsumo: TBCDField;
    ModeloMaquinatolerancaconsumopercent: TBCDField;
    ConfigS3: TFDQuery;
    ConfigS3urlS3: TWideStringField;
    ConfigS3usuarios3: TWideStringField;
    ConfigS3senhas3: TWideStringField;
    ConfigS3region: TWideStringField;
    ConfigS3queueendpoint: TWideStringField;
    ConfigS3storageendpoint: TWideStringField;
    ConfigS3accontkey: TWideStringField;
    ConfigS3accontname: TWideStringField;
    ConfigS3nomes3: TWideStringField;
    ConfigS3tableendpoints3: TWideStringField;
    TMaquinashoraultimoabastecimento: TTimeField;
    TMaquinashorimetroacumulado: TBCDField;
    TStartBombaimgsyncs3: TIntegerField;
    TAbastecimentoimgsyncs3: TIntegerField;
    TMovLocalEstoqueimgsyncs3: TIntegerField;
    TAbastecimentousuarinome: TWideStringField;
    TAbastecimentoid_erp_centrocusto: TIntegerField;
    TAbastecimentoid_erp_local_estoque: TIntegerField;
    TProdutosproducao: TIntegerField;
    TApontamento: TFDQuery;
    TApontamentoid: TIntegerField;
    TApontamentostatus: TIntegerField;
    TApontamentodatareg: TSQLTimeStampField;
    TApontamentoidusuario: TIntegerField;
    TApontamentodataalteracao: TSQLTimeStampField;
    TApontamentodataoperacao: TDateField;
    TApontamentoidusuarioalteracao: TIntegerField;
    TApontamentoidcentrocusto: TIntegerField;
    TApontamentoidescavadeira: TIntegerField;
    TApontamentoidproduto: TIntegerField;
    TApontamentoaplicacaoproduto: TWideStringField;
    TApontamentokmatualescavadeira: TWideStringField;
    TApontamentoobservacao: TWideStringField;
    TApontamentomaquina: TWideStringField;
    TApontamentocentrocusto: TWideStringField;
    TApontamentoprodutos: TWideStringField;
    TApontamentoValores: TFDQuery;
    TApontamentoValoresid: TIntegerField;
    TApontamentoValoresstatus: TIntegerField;
    TApontamentoValoresdatareg: TSQLTimeStampField;
    TApontamentoValoresidusuario: TIntegerField;
    TApontamentoValoresdataalteracao: TSQLTimeStampField;
    TApontamentoValoresdataoperacao: TDateField;
    TApontamentoValoreshoraoperacao: TTimeField;
    TApontamentoValoresidusuarioalteracao: TIntegerField;
    TApontamentoValoresidapontamento: TIntegerField;
    TApontamentoValoresidmaquina: TIntegerField;
    TApontamentoValoreslatitude: TFMTBCDField;
    TApontamentoValoreslongitude: TFMTBCDField;
    TApontamentoValorestipoidentificacaomaquina: TIntegerField;
    TApontamentoValoresimgveiculo: TBlobField;
    TApontamentoValoresobservacao: TWideStringField;
    TApontamentoValoresmaquina: TWideStringField;
    dsApontamento: TDataSource;
    TApontamentoValoresimgsyncs3: TIntegerField;
    TApontamentoValoresitem: TLargeintField;
    TApontamentohorainicio: TTimeField;
    procedure TUsuarioReconcileError(DataSet: TFDDataSet; E: EFDException;
      UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
    procedure TAuxMarcaReconcileError(DataSet: TFDDataSet; E: EFDException;
      UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
    procedure TAuxGrupoMaquinasReconcileError(DataSet: TFDDataSet;
      E: EFDException; UpdateKind: TFDDatSRowState;
      var Action: TFDDAptReconcileAction);
    procedure TAuxSubGrupoReconcileError(DataSet: TFDDataSet; E: EFDException;
      UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
    procedure TAbastecimentoReconcileError(DataSet: TFDDataSet; E: EFDException;
      UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
    procedure TFornecedoresReconcileError(DataSet: TFDDataSet; E: EFDException;
      UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
    procedure TnotaFiscalIntemReconcileError(DataSet: TFDDataSet;
      E: EFDException; UpdateKind: TFDDatSRowState;
      var Action: TFDDAptReconcileAction);
    procedure TMaquinasReconcileError(DataSet: TFDDataSet; E: EFDException;
      UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
    procedure detcheklistgenericReconcileError(DataSet: TFDDataSet;
      E: EFDException; UpdateKind: TFDDatSRowState;
      var Action: TFDDAptReconcileAction);
    procedure FDConPGLost(Sender: TObject);
    procedure TApontamentoReconcileError(DataSet: TFDDataSet; E: EFDException;
      UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
    procedure TApontamentoValoresReconcileError(DataSet: TFDDataSet;
      E: EFDException; UpdateKind: TFDDatSRowState;
      var Action: TFDDAptReconcileAction);
  private
    function  LerIni(Diretorio,Chave1, Chave2, ValorPadrao: String): String;
  public
    vIdUsuarioLogado:string;
    vTipoUsuario :integer;
    procedure ConectaPG;
    function  ValidaUsuario(Usuario, Senha: string): Boolean;
    function  VerificaUsuarioExiste(Usuario:string):Boolean;
    function  VerificaCadastroExiste(ACampo,Atabela,Anome:string):Boolean;
    function  VerificaModeloExite(Modelo,IdFabricante:string):Boolean;
    procedure AbreProdutos(vFiltro:string);
    procedure AbreMaquinas(vFiltro:string);
    function  RetornaMaxId(AnomeTabela: string): string;
    procedure AbreAbastecimento(vFiltro: string);
    procedure AbreEntradaEstoque(vFiltro:string);
    procedure AbreSaidaEstoque(vFiltro: string);
    function  RetornaCustoMedioProduto(idProduto: string): Double;
    function  RetornaRegistoCustoDia(idProduto, DataEntrada: string): Boolean;
    procedure AbreItensNf(idNF,vFiltro:string);
    function  VerificaLocalEstoqueExiste(NomeLocal,IdCentroCusto: string): Boolean;
    procedure AtaulizaSaldoAtualCustoMedio(idProduto: string);
    function  RetornaIdMaxNota: string;
    procedure MovLocalEstoque(vFiltro: string);
    function  RetornaSaldoAtualLocal(vIdLocal:string):string;
    procedure AbreStartBomba(vFiltro:String);
    procedure AbrirLocalEstoque(vFiltro:string);
    procedure AbrirColetores(vFiltro:string);
    procedure AbrirLubrificacao(vFiltro:string);
    procedure AbrirLubrificacaoprodutos(vIdLubrificacao:string);
    function  ValidaQrCodUsado(idMaquina,qrCod:string):string;
    function  ValidaQrCodUsadoInsert(qrCod:string):string;
    procedure DeletaProdutoLub(idTabela:string);
    procedure DeletaProdutoLubAll(idLub:string);
    function  RetornaNumeroItemCheck(idChek:string):string;
    procedure ReorganizaItem(idChek:string);
    function  VerificaModeloEmUso(idModelo:string):boolean;
    function  VerificaModeloPlano(idModelo,idPLano:string):boolean;
    procedure ChecaItem(idItem,tipo: string);
    procedure CopyChecklist;
    procedure AbreApontamento(vFiltro:String);
end;

var
  dmdb: Tdmdb;
implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

uses UPrincipal, UdmReport;

{$R *.dfm}

{ TDataModule1 }

procedure Tdmdb.ChecaItem(idItem,tipo: string);
var
 vQryAux:TFDQuery;
begin
 vQryAux:=TFDQuery.Create(nil);
 vQryAux.Connection := FDConPG;
  with vQryAux,vQryAux.SQL do
  begin
   Clear;
   Add('update manutencaoitens set itemcheck='+tipo);
   Add('where id='+idItem);
   try
    ExecSQL;
   except
     on E : Exception do
      ShowMessage('Erro : '+E.Message);
   end;
  end;
 vQryAux.Free;
end;


procedure Tdmdb.AtaulizaSaldoAtualCustoMedio(idProduto: string);
var
 vQryAux:TFDQuery;
 TotalItensEntradaGeral,
 TotalValorEntradaGeral,
 TotalItensSaidaGeral,
 TotalValorSaidaGeral,
 ValorSaldoAtual,
 SaldoAtual,
 CustoMedio:Double;
begin
 vQryAux := TFDQuery.Create(nil);
 vQryAux.Connection := FDConPG;
 with vQryAux,vQryAux.SQL do
 begin
   Clear;
   Add('select totalEntrada-totalSaid saldo from');
   Add('(select');
   Add('(select coalesce(sum(qtditens),0) from notafiscalitems');
   Add('where status=1 and idproduto='+idProduto+')totalEntrada,');
   Add('(select  coalesce(sum(qtditens),0) from estoquesaida');
   Add('where status=1 and idproduto='+idProduto+') totalSaid');
   Add('from nfentrada limit 1)y');
   Open;
   SaldoAtual := FieldByName('saldo').AsFloat;

   Clear;
   Add('select (sum(y.vl1)/sum(qtditens)) valormedio from');
   Add('(select');
   Add(' (e.qtditens * e.valortotalnf)vl1,');
   Add(' e.qtditens');
   Add('from notafiscalitems e');
   Add('where status=1 and e.idproduto='+idProduto+')y');// and a.datasaidaestoque<='+dataEntrada.QuotedString);
   Open;
   CustoMedio := FieldByName('valormedio').AsFloat;

   Clear;
   Add('update produtos set saldoatual='+StringReplace(FloatToStr(SaldoAtual),',','.',[rfReplaceAll]));
   Add(',customedio='+StringReplace(FloatToStr(CustoMedio),',','.',[rfReplaceAll]));
   Add('where id='+idProduto);
   ExecSQL;
 end;
end;

function Tdmdb.RetornaRegistoCustoDia(idProduto, DataEntrada: string): Boolean;
begin
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('select * from histvalorproduto');
   Add('where idproduto='+idProduto);
   Add('and datavalor='+DataEntrada.QuotedString);
   Open;
   Result := vQry.IsEmpty;
 end;
end;

function Tdmdb.RetornaSaldoAtualLocal(vIdLocal: string): string;
begin
  with vQry,vQry.SQL do
  begin
   Clear;
   Add('select');
   Add('(TotalEntrada+TotalEntradaTransf)-(TotalSaidaTransf+TotalSaida) saldoAtual');
   Add('from');
   Add('(select');
   Add('(SELECT coalesce(sum(qtditens),0) TotalEntrada FROM notafiscalitems');
   Add('where status=1 and idlocalestoque=l.id),');
   Add('(SELECT coalesce(sum(qtde),0) TotalEntradaTransf FROM tranferencialocalestoque');
   Add('where status=1 and idlocalestoquedetino=l.id),');
   Add('(SELECT coalesce(sum(qtditens),0) TotalSaida FROM estoquesaida s');
   Add('where status=1 and idlocalestoque =l.id),');
   Add('(SELECT coalesce(sum(qtde),0) TotalSaidaTransf FROM tranferencialocalestoque');
   Add('where status=1 and idlocalestoqueorigem=l.id)');
   Add('from localestoque l');
   Add('where status>-1');
   Add('and l.id=:idlocal');
   Add(') y');
   ParamByName('idlocal').AsInteger := StrToInt(vIdLocal);
   Open;
   if FieldByName('saldoAtual').AsString.Length=0 then
    Result:='0'
   else
    Result := FieldByName('saldoAtual').AsString;
  end;
end;

//procedure Tdmdb.AtaulizaValorMedioProduto(idNota,idProduto, dataEntrada: string);
//var
// vQryAux:TFDQuery;
// TotalItensEntradaGeral,
// TotalValorEntradaGeral,
// TotalItensSaidaGeral,
// TotalValorSaidaGeral,
// ValorSaldoAtual,
// SaldoAtual,
// CustoMedio:Double;
//begin
// vQryAux := TFDQuery.Create(nil);
// vQryAux.Connection := FDConPG;
// with vQryAux,vQryAux.SQL do
// begin
//   Clear;
//   Add('select totalEntrada-totalSaid saldo from');
//   Add('(select');
//   Add('(select coalesce(sum(qtditens),0) from notafiscalitems');
//   Add('where status=1 and idproduto='+idProduto+')totalEntrada,');
//   Add('(select  coalesce(sum(qtditens),0) from estoquesaida');
//   Add('where status=1 and idproduto='+idProduto+') totalSaid');
//   Add('from estoquesaida limit 1)y');
//   Open;
//   SaldoAtual := FieldByName('saldo').AsFloat;
//
//   Clear;
//   Add('select (sum(y.vl1)/sum(qtditens)) valormedio from');
//   Add('(select');
//   Add(' (e.qtditens * (e.valortotalnf/e.qtditens))vl1,');
//   Add(' e.qtditens');
//   Add('from notafiscalitems e');
//   Add('where status=1 and e.idproduto='+idProduto+')y');// and a.datasaidaestoque<='+dataEntrada.QuotedString);
//   Open;
//   CustoMedio := FieldByName('valormedio').AsFloat;
//
//   if dmdb.RetornaRegistoCustoDia(idProduto,DataEntrada) then
//   begin
//     Clear;
//     Add('INSERT INTO histvalorproduto(idnota,idusuario,datavalor,idproduto,valoratual)values(');
//     Add(idNota+',');
//     Add(dmdb.vIdUsuarioLogado+',');
//     Add(dataEntrada.QuotedString+',');
//     Add(idProduto+',');
//     Add(StringReplace(FloatToStr(CustoMedio),',','.',[rfReplaceAll]));
//     Add(')');
//     vQryAux.SQL.Text;
//     ExecSQL;
//
//     Clear;
//     Add('update histvalorproduto set valoratual='+StringReplace(FloatToStr(CustoMedio),',','.',[rfReplaceAll]));
//     Add('where idnota='+idNota);
//     ExecSQL;
//
//     Clear;
//     Add('update produtos set saldoatual='+StringReplace(FloatToStr(SaldoAtual),',','.',[rfReplaceAll]));
//     Add(',customedio='+StringReplace(FloatToStr(CustoMedio),',','.',[rfReplaceAll]));
//     Add('where id='+idProduto);
//     ExecSQL;
//   end
//   else
//   begin
//     Clear;
//     Add('update histvalorproduto set valoratual='+StringReplace(FloatToStr(CustoMedio),',','.',[rfReplaceAll]));
//     Add('where idnota='+idNota);
//     ExecSQL;
//
//     Clear;
//     Add('update produtos set saldoatual='+StringReplace(FloatToStr(SaldoAtual),',','.',[rfReplaceAll]));
//     Add(',customedio='+StringReplace(FloatToStr(CustoMedio),',','.',[rfReplaceAll]));
//     Add('where id='+idProduto);
//     ExecSQL;
//   end;
// end;
//end;

procedure Tdmdb.ReorganizaItem(idChek: string);
var
 qryUp,qryAux:TFDQuery;
 I:integer;
begin
 qryAux := TFDQuery.Create(nil);
 qryAux.Connection := dmdb.FDConPG;
 qryUp := TFDQuery.Create(nil);
 qryUp.Connection := dmdb.FDConPG;

 with qryAux,qryAux.SQL do
 begin
   Clear;
   Add('select id from detcheklistgeneric a');
   Add('where idcheck='+idChek+' and status=1');
   Add('order by id');
   Open;
   qryAux.First;
   I :=1;
   while not qryAux.Eof do
   begin
    with qryUp,qryUp.SQL do
    begin
     Clear;
     Add('update detcheklistgeneric set item='+intToStr(I));
     Add('where id='+qryAux.FieldByName('id').AsString);
     ExecSQL;
    end;
    inc(i);
    qryAux.Next;
   end;
 end;
 qryUp.free;
 qryAux.free;
end;

function Tdmdb.RetornaCustoMedioProduto(idProduto: string): Double;
begin
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('select coalesce(valoratual,0)valoratual from histvalorproduto');
   Add('where idproduto='+idProduto);
   Add('order by datavalor desc limit 1');
   Open;
   Result :=FieldByName('valoratual').AsFloat;
 end;
end;

procedure Tdmdb.MovLocalEstoque(vFiltro: string);
begin
 TMovLocalEstoque.Filtered := false;
 with TMovLocalEstoque,TMovLocalEstoque.SQL do
 begin
   Clear;
   Add('select');
   Add('a.*,');
   Add(' co.nome CentroCustoOrigem,');
   Add(' o.nome LocalOrigem,');
   Add(' cd.nome CentroCustoDestino,');
   Add(' d.nome LocalDestino,');
   Add(' c.nome Produto');
   Add('from tranferenciaLocalestoque A');
   Add('join localestoque o on o.id=a.idlocalestoqueorigem');
   Add('join centrocusto co on co.id=o.idcentrocusto');
   Add('join localestoque d on d.id=a.idlocalestoquedetino');
   Add('join centrocusto cd on cd.id=d.idcentrocusto');
   Add('join produtos c on a.idproduto=c.id');
   Add('where a.status=1');
   Add(vFiltro);
   Add('order by a.id desc');
   Open;
 end;
end;

procedure Tdmdb.AbreSaidaEstoque(vFiltro: string);
begin
 with TEstoqueSaida,TEstoqueSaida.SQL do
 begin
   Clear;
   Add('select');
   Add(' a.*,');
   Add(' c.nome localEstoque,');
   Add(' d.nome CentroCusto,');
   Add(' e.nome Produto,');
   Add(' e.codigofabricante ProdutoCodFabricante,');
   Add('case');
   Add(' when tipo_baixa=0 then ''Baixa Estoque''');
   Add(' when tipo_baixa=1 then ''Acerto Estoque''');
   Add(' when tipo_baixa=2 then ''Quimico Receituario''');
   Add('end TipoStr,');
   Add('u.nome  Responsavel,');
   Add('a.valorsaida*a.qtditens valoTotal');
   Add('from estoquesaida a');
   Add('join localestoque c on c.id=a.idlocalestoque');
   Add('join centrocusto d on d.id=a.idcentrocusto');
   Add('join produtos e on e.id=a.idproduto');
   Add('left join usuario u  on u.id=a.idresponsavel');
   Add('where a.status=1');
   if vFiltro.Length >0 then
    Add(vFiltro);
   Add('order by id desc');
   Open;
 end;
end;


procedure Tdmdb.AbreStartBomba(vFiltro: String);
begin
 TStartBomba.Filtered := false;
 with TStartBomba,TStartBomba.SQL do
 begin
   Clear;
   Add('select s.*,l.nome LocalEstoque,');
   Add('p.nome CombustivelNome,');
   Add('c.nome Centrocusto,');
   Add('s.volumelitrosini+(s.volumelitrosfim-s.volumelitrosini) saldo,');
   Add('s.volumelitrosfim-s.volumelitrosini volumeutilizado');
   Add('from startbomba s');
   Add('join localestoque l on l.id=s.idlocalestoque');
   Add('join produtos p on p.id =s.combustivel');
   Add('join centrocusto c on c.id=l.idcentrocusto');
   Add('where s.status>-1');
   Add(vFiltro);
   Add('order by id desc ');
   Open;
 end;
end;

procedure Tdmdb.AbrirColetores(vFiltro: string);
begin
 with TDevice,TDevice.SQL do
 begin
   Clear;
   Add('select d.*,c.nome CentroCusto from devices d');
   Add('left join centrocusto c on c.id=d.idcentrocusto');
   Add('where d.status=1');
   Add(vFiltro);
   Open;
 end;
end;

procedure Tdmdb.AbrirLocalEstoque(vFiltro: string);
begin
 with TLocalEstoque,TLocalEstoque.SQL do
 begin
   Clear;
   Add('select');
   Add(' a.*,');
   Add(' b.nome centrocusto,');
   Add(' p.nome Combustivel');
   Add('from LocalEstoque a');
   Add('join centrocusto b on a.idcentrocusto=b.id');
   Add('join produtos p on p.id=a.idcombustivel');
   Add('where a.status=1');
   Add(vFiltro);
   Open;
 end;
end;

procedure Tdmdb.AbrirLubrificacao(vFiltro: string);
begin
 with TLubrificacao,TLubrificacao.SQL do
 begin
   Clear;
   Add('select');
   Add(' l.*,');
   Add('case');
   Add(' when alerta =0 then ''SEM ALERTA''');
   Add(' when alerta =1 then ''HORÍMETRO QUEBRADO''');
   Add(' when alerta =2 then ''HORÍMETRO TROCADO''');
   Add(' when alerta =3 then ''HODÔMETRO QUEBRADO''');
   Add(' when alerta =4 then ''HODÔMETRO TROCADO''');
   Add(' when alerta =5 then ''OUTROS''');
   Add('end tipoAlerta,');
   Add(' m.prefixo maquina,');
   Add(' c.nome centrocusto,');
   Add(' ls.nome localestoque');
   Add('from lubrificacao l');
   Add('join maquinaveiculo m on l.idmaquina =m.id');
   Add('join centrocusto c on c.id=l.idcentrocusto');
   Add('left join localestoque ls on ls.id=l.idlocalestoque');
   Add('where l.status=1');
   Add(vFiltro);
   Add('order by l.id desc');
   Open;
 end;
end;

procedure Tdmdb.AbrirLubrificacaoprodutos(vIdLubrificacao: string);
begin
 with TLubrificacaoprodutos,TLubrificacaoprodutos.SQL do
 begin
   Clear;
   Add('select');
   Add('l.*,');
   Add(' case');
   Add('  when l.tipo=1 then ''TROCA''');
   Add('  when l.tipo=2 then ''REMONTA''');
   Add(' end TipoStr,');
   Add('p.nome produto,');
   Add('p.codigofabricante,');
   Add('c.nome Compartimento');
   Add('from lubrificacaoprodutos l');
   Add('join produtos p on l.idproduto=p.id');
   Add('left join compartimentolubricficacao c on c.id=l.idcompartimento');
   Add('where l.status=1');
   Add('and l.idlubrificacao='+vIdLubrificacao);
   Open;
 end;
end;

procedure Tdmdb.AbreApontamento(vFiltro: String);
begin
 with TApontamento,TApontamento.SQL do
 begin
   Clear;
   Add('select');
   Add(' a.*,');
   Add(' m.prefixo Maquina,');
   Add(' c.nome CentroCusto,');
   Add(' p.nome Produtos');
   Add('from apontamento a');
   Add('join maquinaveiculo m on a.idescavadeira=m.id');
   Add('join centrocusto    c on c.id=a.idCentroCusto ');
   Add('join produtos       p on a.idproduto=p.id');
   Add('where a.status=1');
   Add(vFiltro);
   Add('order by a.id desc');
   Open;
   TApontamentoValores.Open();
 end;
end;

procedure Tdmdb.AbreEntradaEstoque(vFiltro: string);
begin
 with TEstoqueEntrada,TEstoqueEntrada.SQL do
 begin
   Clear;
   Add('select');
   Add('a.*,');
   Add('b.nome Fornecedor,');
   Add(' d.nome CentroCusto');
   Add('from nfentrada a');
   Add('join fornecedor b on a.idFornecedor=b.id');
   Add('join centrocusto d on d.id=a.idcentrocusto');
   Add('where a.status=1');
   if vFiltro.Length >0 then
    Add(vFiltro);
   Add('order by a.id desc');
   Open;
 end;
end;

procedure Tdmdb.AbreItensNf(idNF,vFiltro: string);
begin
 if idNF.Length=0 then
  idNF:='0';

 with TnotaFiscalIntem,TnotaFiscalIntem.sql do
 begin
   Clear;
   Add('select');
   Add('ROW_NUMBER () OVER (ORDER BY a.id)Item,');
   Add(' a.*,');
   Add(' b.id ProdutoId,');
   Add(' b.unidademedida ProdutoUnidade,');
   Add(' b.nome ProdutoNome,');
   Add(' b.codigofabricante ProdutoFabricante,');
   Add(' c.nome LocalEstoque,');
   Add(' a.valortotalnf/a.qtditens valoruni');
   Add('from notafiscalitems a');
   Add('join produtos b on a.idproduto=b.id');
   Add('join localestoque c on c.id=a.idlocalestoque');
   Add('WHERE a.STATUS>-1 AND a.idnota='+idNF);
   Add(vFiltro);
   Open;
 end;
end;

//procedure Tdmdb.AtualizaSaidaAbastecimento(dataSaida, idcentrocusto,
//  idlocalestoque, idproduto, qtditens, idresponsavel, idAbastecimento: string);
//var
// vValorCustoMedio:string;
//begin
// with vQry,vQry.SQL do
// begin
//   Clear;
//   Add('select * from histvalorproduto a');
//   Add('where a.idproduto='+idproduto);
//   Add('order by a.datavalor desc');
//   Add('limit 1');
//   Open;
//   vValorCustoMedio := FieldByName('valoratual').AsString;
//   if vValorCustoMedio.Length=0 then
//    vValorCustoMedio:='0';
//
//   Clear;
//   Add('update estoquesaida');
//   Add('set datasaidaestoque='+dataSaida.QuotedString);
//   Add(',idcentrocusto='+idcentrocusto);
//   Add(',idlocalestoque='+idlocalestoque);
//   Add(',idproduto='+idproduto);
//   Add(',qtditens='+qtditens);
//   Add(',idresponsavel='+idresponsavel);
//   Add(',valorsaida='+StringReplace(vValorCustoMedio,',','.',[rfReplaceAll]));
//   Add('where idabastecimento='+idAbastecimento);
//   ExecSQL;
// end;
//end;

function Tdmdb.RetornaIdMaxNota: string;
begin
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('select max(id) max_id from nfentrada');
   Open;
   Result := FieldByName('max_id').AsString;
 end;
end;

function Tdmdb.VerificaLocalEstoqueExiste(NomeLocal,
  IdCentroCusto: string): Boolean;
begin
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('select * from localestoque');
   Add('WHERE Status=1 AND nome ='+NomeLocal.QuotedString);
   Add('and idcentrocusto='+IdCentroCusto);
   Open;
   Result :=vQry.IsEmpty;
 end;
end;

function Tdmdb.VerificaModeloEmUso(idModelo: string): boolean;
begin
 with vQry,vQry.SQL do
 begin
  Clear;
  Add('select * from maquinaveiculo');
  Add('where status =1 and idmodelo='+idModelo);
  Open;
  Result :=vQry.IsEmpty;
 end;
end;

function Tdmdb.VerificaModeloExite(Modelo, IdFabricante: string): Boolean;
begin
 with vQry,vQry.SQL do
 begin
  Clear;
  Add('select * from modelomaquina');
  Add('where status=1 and idMarca='+IdFabricante);
  Add('and modelo='+Modelo.QuotedString);
  Open;
  Result :=vQry.IsEmpty;
 end;
end;

function Tdmdb.VerificaModeloPlano(idModelo,idPLano: string): boolean;
begin
 with vQry,vQry.SQL do
 begin
  Clear;
  Add('select * from planorevisaomaquinas p');
  Add('where status =1 and idplano ='+idPLano);
  Add('and idmodelo ='+idModelo);
  Open;
  Result :=vQry.IsEmpty;
 end;
end;

procedure Tdmdb.AbreAbastecimento(vFiltro: string);
begin
 TAbastecimento.Filtered := false;
 with TAbastecimento,TAbastecimento.SQL do
 begin
   Clear;
   Add('select');
   Add(' a.*,');
   Add(' l.nome localdeEstoque,');
   Add(' m.prefixo,');
   Add(' p.nome produto,');
   Add(' c.nome centrocustonome,');
   Add(' a.combustivel,');
   Add('case');
   Add(' when alerta =0 then ''SEM ALERTA''');
   Add(' when alerta =1 then ''HORÍMETRO QUEBRADO''');
   Add(' when alerta =2 then ''HORÍMETRO TROCADO''');
   Add(' when alerta =3 then ''HODÔMETRO QUEBRADO''');
   Add(' when alerta =4 then ''HODÔMETRO TROCADO''');
   Add(' when alerta =5 then ''OUTROS''');
   Add('end tipoAlerta,');
   Add('u.nome UsuariNome,');
   Add('c.iderp ID_ERP_CENTROCUSTO,');
   Add('l.iderp ID_ERP_LOCAL_ESTOQUE');
   Add('from abastecimento a');
   Add('join usuario u  on a.idusuario =U.ID');
   Add('join centrocusto c  on a.idcentrocusto=c.id');
   Add('join localestoque l on a.idlocalestoque=l.id');
   Add('join maquinaveiculo m on a.idmaquina=m.id');
   Add('join produtos p on a.combustivel = p.id');
   Add('where a.status=1');
   Add(vFiltro);
   Add('order by a.dataabastecimento,a.hora desc');
   TAbastecimento.SQL.Text;
   try
    Open;
   except
   on E: Exception do
    ShowMessage('Erro ao Abrir Abastecimento:'+E.Message);
   end;
 end;
 
end;

function Tdmdb.RetornaMaxId(AnomeTabela: string): string;
begin
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('select max(id) maxid from '+AnomeTabela);
   Open;
   if FieldByName('maxid').AsString.Length=0 then
    Result :='1'
   else
    Result :=FieldByName('maxid').AsString;
 end;
end;


function Tdmdb.RetornaNumeroItemCheck(idChek: string): string;
begin
  with vQry,vQry.SQL do
 begin
   Clear;
   Add('select count(*)+1 item from detcheklistgeneric');
   Add('where status=1');
   Add('and  idcheck='+idChek);
   Open;
   Result := FieldByName('item').AsString;
 end;
end;

procedure Tdmdb.AbreMaquinas(vFiltro: string);
begin
  TMaquinas.Filtered := false;
  TMaquinas.Close;
  if vFiltro.Length=0 then
   TMaquinas.Filter :='status=1'
  else
   TMaquinas.Filter :=vFiltro;
  TMaquinas.Filtered := true;
  TMaquinas.Open;
end;

procedure Tdmdb.AbreProdutos(vFiltro: string);
begin
 with TProdutos,TProdutos.SQL do
 begin
   Clear;
   Add('select * from produtos where status>-1');
   Add(vFiltro);
   Open;
 end;
end;

procedure Tdmdb.ConectaPG;
var
 Arquivo,
 vDataBase,vServer,vUser_name,vPassword,vPorta :string;
begin
  Arquivo := ExtractFilePath(ParamStr(0))+'fuelmanage.ini';
  if not FileExists(Arquivo) then
  begin
    ShowMessage('Arquivo fuelmanage.ini não localizado no seguinte diretorio:'+#13+
    Arquivo);
    Exit;
  end
  else
  begin
    vDataBase    := LerIni(Arquivo,'LOCAL','Database','');
    vServer      := LerIni(Arquivo,'LOCAL','Server','');
    vUser_name   := LerIni(Arquivo,'LOCAL','UserName','');
    vPassword    := LerIni(Arquivo,'LOCAL','Password','');
    vPorta       := LerIni(Arquivo,'LOCAL','Port','');
  end;
  FDConPG.Connected := false;
  FDConPG.Close;
  FDConPG.DriverName              :='PG';
  FDConPG.Params.Database         :=vDataBase;
  FDConPG.Params.UserName         :=vUser_name;
  FDConPG.Params.Password         :=vPassword;
  FDConPG.Params.Values['Server'] :=vServer;
  FDConPG.Params.Values['Port']   :=vPorta;
  PgDriverLink.VendorLib          := ExtractFilePath(ParamStr(0))+'libpq.dll';
  try
   FDConPG.Connected := true;
   frmPrincipal.lblPathDB.Text :=vServer+': '+vDataBase
  except
   on E : Exception do
    ShowMessage('Erro ao se Conectar ao PG:'+E.Message);  end;

end;

procedure Tdmdb.CopyChecklist;
var
 vIdMax:string;
 vIdCopy:integer;
begin
 vIdCopy := cheklistgenericid.AsInteger;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('INSERT INTO cheklistgeneric');
   Add('(idusuario,nome,descricao,transferencia,idgrupomaquinas)');
   Add('VALUES(');
   Add(vIdUsuarioLogado+',');
   Add(QuotedStr('Copia_'+cheklistgenericnome.AsString)+',');
   Add(cheklistgenericdescricao.AsString.QuotedString+',');
   Add(cheklistgenerictransferencia.AsString+',');
   Add(cheklistgenericidgrupomaquinas.AsString);
   Add(')');
   vQry.SQL.Text;
   try
    ExecSQL;
    vIdMax := RetornaMaxId('cheklistgeneric');
    Clear;
    Add('INSERT INTO detcheklistgeneric');
    Add('(idusuario,idcheck,item,descricao,itemfotoobrigatoria,itemobs,idgrupo)');
    Add('select');
    Add(' :idusuario,');
    Add(' :idMax,');
    Add(' item,');
    Add(' descricao,');
    Add(' itemfotoobrigatoria,');
    Add(' itemobs,');
    Add(' idgrupo');
    Add(' from detcheklistgeneric');
    Add('where idcheck=:idCopy');
    Add('and status=1');
    ParamByName('idusuario').AsInteger := strToInt(vIdUsuarioLogado);
    ParamByName('idMax').AsInteger     := strToInt(vIdMax);
    ParamByName('idCopy').AsInteger    := vIdCopy;
    try
     ExecSQL;
    except
    on E : Exception do
      ShowMessage('Erro : '+E.Message);
    end;
   except
    on E : Exception do
      ShowMessage('Erro : '+E.Message);
   end;
 end;
end;

procedure Tdmdb.DeletaProdutoLub(idTabela: string);
begin
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('upadate lubrificacaoprodutos set') ;
   Add('status =-1');
   Add(',idusuarioalteracao ='+dmdb.vIdUsuarioLogado);
   Add(',dataalteracao=current_date');
   Add('where id='+idTabela);
   vQry.SQL.Text;
   ExecSQL;
 end;
end;

procedure Tdmdb.DeletaProdutoLubAll(idLub: string);
begin
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('upadate lubrificacaoprodutos');
   Add('set status =-1');
   Add(',idusuarioalteracao ='+dmdb.vIdUsuarioLogado);
   Add(',dataalteracao=current_date');
   Add('where idlubrificacao='+idLub);
   ExecSQL;
 end;
end;

procedure Tdmdb.detcheklistgenericReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
 ShowMessage(e.Message);
end;

procedure Tdmdb.FDConPGLost(Sender: TObject);
begin
 ShowMessage('Morreu largatixa')
end;

function Tdmdb.LerIni(Diretorio, Chave1, Chave2,
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

procedure Tdmdb.TAbastecimentoReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
 ShowMessage(E.Message)
end;

procedure Tdmdb.TApontamentoReconcileError(DataSet: TFDDataSet; E: EFDException;
  UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
begin
 ShowMessage(E.Message)
end;

procedure Tdmdb.TApontamentoValoresReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
 ShowMessage(E.Message);
end;

procedure Tdmdb.TAuxGrupoMaquinasReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
 ShowMessage(E.Message)
end;

procedure Tdmdb.TAuxMarcaReconcileError(DataSet: TFDDataSet; E: EFDException;
  UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
begin
 ShowMessage(E.Message)
end;

procedure Tdmdb.TAuxSubGrupoReconcileError(DataSet: TFDDataSet; E: EFDException;
  UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
begin
 ShowMessage(E.Message)
end;

procedure Tdmdb.TFornecedoresReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
 ShowMessage(E.Message);
end;

procedure Tdmdb.TMaquinasReconcileError(DataSet: TFDDataSet; E: EFDException;
  UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
begin
 ShowMessage(E.Message)
end;

procedure Tdmdb.TnotaFiscalIntemReconcileError(DataSet: TFDDataSet;
  E: EFDException; UpdateKind: TFDDatSRowState;
  var Action: TFDDAptReconcileAction);
begin
 ShowMessage(E.Message)
end;

procedure Tdmdb.TUsuarioReconcileError(DataSet: TFDDataSet; E: EFDException;
  UpdateKind: TFDDatSRowState; var Action: TFDDAptReconcileAction);
begin
 ShowMessage(E.Message)
end;

function Tdmdb.ValidaQrCodUsado(idMaquina, qrCod: string): string;
begin
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('select * from maquinaveiculo m');
   Add('where m.status =1 and id<>'+idMaquina);
   Add('and qrcode='+qrCod.QuotedString);
   Open;
   if IsEmpty then
    Result :='OK'
   else
    Result :='Qr Code vinculado a maquina :'+FieldByName('Prefixo').AsString+
    ' Edite o cadastro da mesma e limpe o Qr Code, antes de vincular a uma nova';
 end;
end;

function Tdmdb.ValidaQrCodUsadoInsert(qrCod: string): string;
begin
  with vQry,vQry.SQL do
 begin
   Clear;
   Add('select * from maquinaveiculo m');
   Add('where m.status =1');
   Add('and qrcode='+qrCod.QuotedString);
   Open;
   if IsEmpty then
    Result :='OK'
   else
    Result :='Qr Code vinculado a maquina :'+FieldByName('Prefixo').AsString+
    ' Edite o cadastro da mesma e limpe o Qr Code, antes de vincular a uma nova';
 end;
end;

function Tdmdb.ValidaUsuario(Usuario, Senha: string): Boolean;
begin
 if not FDConPG.Connected then
  ConectaPG;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT * FROM USUARIO');
   Add('WHERE upper(USUARIO)=:USUARIO AND upper(SENHA)=:SENHA');
   ParamByName('USUARIO').AsString := UpperCase(Usuario);
   ParamByName('SENHA').AsString   := UpperCase(Senha);
   Open;
   vIdUsuarioLogado := vQry.FieldByName('id').AsString;
   vTipoUsuario     := vQry.FieldByName('tipo').AsInteger;
   Result := vQry.IsEmpty;
 end;
end;

function Tdmdb.VerificaCadastroExiste(ACampo,Atabela, Anome: string): Boolean;
begin
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT * FROM '+Atabela);
   Add('WHERE STATUS=1 AND '+ACampo+'='+Anome.QuotedString);
   Open;
   Result := vQry.IsEmpty;
 end;
end;

function Tdmdb.VerificaUsuarioExiste(Usuario: string): Boolean;
begin
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('SELECT * FROM USUARIO');
   Add('WHERE STATUS=1 AND USUARIO=:USUARIO');
   ParamByName('USUARIO').AsString := Usuario;
   Open;
   Result := vQry.IsEmpty;
 end;
end;

end.

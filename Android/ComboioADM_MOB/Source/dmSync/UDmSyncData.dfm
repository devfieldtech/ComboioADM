object dmsync: Tdmsync
  OldCreateOrder = False
  Height = 408
  Width = 731
  object IdHTTP1: TIdHTTP
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = True
    Request.Password = '991528798'
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Username = 'fuelmanage'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 48
    Top = 48
  end
  object qryAux: TFDQuery
    Connection = dmDB.FCon
    Left = 144
    Top = 32
  end
  object TUsuario: TFDQuery
    CachedUpdates = True
    Connection = dmDB.FCon
    SQL.Strings = (
      'select * from usuario'
      '')
    Left = 56
    Top = 112
    object TUsuarioid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TUsuariostatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      Size = 32767
    end
    object TUsuariodatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Required = True
      Size = 32767
    end
    object TUsuarioidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      Required = True
      Size = 32767
    end
    object TUsuariodataalteracao: TWideStringField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
      Size = 32767
    end
    object TUsuarioidusuarioalteracao: TWideStringField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
      Size = 32767
    end
    object TUsuarionome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 100
    end
    object TUsuarioemail: TStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 100
    end
    object TUsuariocelular: TStringField
      FieldName = 'celular'
      Origin = 'celular'
    end
    object TUsuariousuario: TStringField
      FieldName = 'usuario'
      Origin = 'usuario'
      Required = True
      Size = 25
    end
    object TUsuariosenha: TStringField
      FieldName = 'senha'
      Origin = 'senha'
      Required = True
      Size = 50
    end
    object TUsuariotipo: TWideStringField
      FieldName = 'tipo'
      Origin = 'tipo'
      Required = True
      Size = 32767
    end
    object TUsuariosyncaws: TWideStringField
      FieldName = 'syncaws'
      Origin = 'syncaws'
      Required = True
      Size = 32767
    end
  end
  object TOperadorMaquina: TFDQuery
    CachedUpdates = True
    Connection = dmDB.FCon
    SQL.Strings = (
      'select * from operadormaquinas'
      'where status=1')
    Left = 360
    Top = 128
    object TOperadorMaquinaid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TOperadorMaquinastatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      Size = 32767
    end
    object TOperadorMaquinadatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Size = 32767
    end
    object TOperadorMaquinaidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      Size = 32767
    end
    object TOperadorMaquinadataalteracao: TWideStringField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
      Size = 32767
    end
    object TOperadorMaquinaidusuarioalteracao: TWideStringField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
      Size = 32767
    end
    object TOperadorMaquinanome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object TOperadorMaquinarg: TStringField
      FieldName = 'rg'
      Origin = 'rg'
      Size = 10
    end
    object TOperadorMaquinacpf: TStringField
      FieldName = 'cpf'
      Origin = 'cpf'
    end
    object TOperadorMaquinacnh: TStringField
      FieldName = 'cnh'
      Origin = 'cnh'
    end
    object TOperadorMaquinacelular: TStringField
      FieldName = 'celular'
      Origin = 'celular'
    end
    object TOperadorMaquinasyncaws: TWideStringField
      FieldName = 'syncaws'
      Origin = 'syncaws'
      Required = True
      Size = 32767
    end
    object TOperadorMaquinasyncfaz: TWideStringField
      FieldName = 'syncfaz'
      Origin = 'syncfaz'
      Required = True
      Size = 32767
    end
  end
  object Tauxatividadeabastecimento: TFDQuery
    CachedUpdates = True
    Connection = dmDB.FCon
    SQL.Strings = (
      'select * from auxatividadeabastecimento'
      'where status>-1')
    Left = 360
    Top = 64
    object Tauxatividadeabastecimentoid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Tauxatividadeabastecimentostatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      Size = 32767
    end
    object Tauxatividadeabastecimentodatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Size = 32767
    end
    object Tauxatividadeabastecimentoidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      Size = 32767
    end
    object Tauxatividadeabastecimentodataalteracao: TWideStringField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
      Size = 32767
    end
    object Tauxatividadeabastecimentoidusuarioalteracao: TWideStringField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
      Size = 32767
    end
    object Tauxatividadeabastecimentonome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object Tauxatividadeabastecimentosyncaws: TWideStringField
      FieldName = 'syncaws'
      Origin = 'syncaws'
      Required = True
      Size = 32767
    end
  end
  object TCentroCusto: TFDQuery
    CachedUpdates = True
    Connection = dmDB.FCon
    SQL.Strings = (
      'select * from centrocusto')
    Left = 360
    Top = 192
    object TCentroCustoid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TCentroCustostatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      Size = 32767
    end
    object TCentroCustodatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Size = 32767
    end
    object TCentroCustoidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      Size = 32767
    end
    object TCentroCustodataalteracao: TWideStringField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
      Size = 32767
    end
    object TCentroCustoidusuarioalteracao: TWideStringField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
      Size = 32767
    end
    object TCentroCustonome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object TCentroCustosyncaws: TWideStringField
      FieldName = 'syncaws'
      Origin = 'syncaws'
      Required = True
      Size = 32767
    end
  end
  object TLocalEstoque: TFDQuery
    CachedUpdates = True
    Connection = dmDB.FCon
    SQL.Strings = (
      'select * from localestoque'
      'where status=1')
    Left = 360
    Top = 256
    object TLocalEstoqueid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TLocalEstoquestatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      Size = 32767
    end
    object TLocalEstoquedatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Size = 32767
    end
    object TLocalEstoqueidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      Size = 32767
    end
    object TLocalEstoquedataalteracao: TWideStringField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
      Size = 32767
    end
    object TLocalEstoqueidusuarioalteracao: TWideStringField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
      Size = 32767
    end
    object TLocalEstoquenome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object TLocalEstoquecapacidade: TBCDField
      FieldName = 'capacidade'
      Origin = 'capacidade'
      Precision = 15
      Size = 3
    end
    object TLocalEstoquesyncaws: TWideStringField
      FieldName = 'syncaws'
      Origin = 'syncaws'
      Required = True
      Size = 32767
    end
    object TLocalEstoqueidcentrocusto: TWideStringField
      FieldName = 'idcentrocusto'
      Origin = 'idcentrocusto'
      Required = True
      Size = 32767
    end
    object TLocalEstoqueidcombustivel: TIntegerField
      FieldName = 'idcombustivel'
      Origin = 'idcombustivel'
    end
  end
  object TProdutos: TFDQuery
    CachedUpdates = True
    Connection = dmDB.FCon
    SQL.Strings = (
      'select * from produtos'
      'where status=1')
    Left = 362
    Top = 8
    object TProdutosid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TProdutosstatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      Size = 32767
    end
    object TProdutosdatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Size = 32767
    end
    object TProdutosidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      Required = True
      Size = 32767
    end
    object TProdutosdataalteracao: TWideStringField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
      Size = 32767
    end
    object TProdutosidusuarioalteracao: TWideStringField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
      Size = 32767
    end
    object TProdutosnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object TProdutostipo: TWideStringField
      FieldName = 'tipo'
      Origin = 'tipo'
      Required = True
      Size = 32767
    end
    object TProdutosunidademedida: TStringField
      FieldName = 'unidademedida'
      Origin = 'unidademedida'
      Size = 10
    end
    object TProdutosestoqueminimo: TBCDField
      FieldName = 'estoqueminimo'
      Origin = 'estoqueminimo'
      Precision = 15
      Size = 2
    end
    object TProdutoscodigobarras: TStringField
      FieldName = 'codigobarras'
      Origin = 'codigobarras'
    end
    object TProdutosidmarca: TWideStringField
      FieldName = 'idmarca'
      Origin = 'idmarca'
      Size = 32767
    end
    object TProdutoscodigofabricante: TStringField
      FieldName = 'codigofabricante'
      Origin = 'codigofabricante'
      Size = 30
    end
    object TProdutossyncaws: TWideStringField
      FieldName = 'syncaws'
      Origin = 'syncaws'
      Required = True
      Size = 32767
    end
    object TProdutoscustomedio: TBCDField
      FieldName = 'customedio'
      Origin = 'customedio'
      Precision = 15
    end
    object TProdutossaldoatual: TBCDField
      FieldName = 'saldoatual'
      Origin = 'saldoatual'
      Precision = 15
    end
  end
  object TMaquinas: TFDQuery
    CachedUpdates = True
    Connection = dmDB.FCon
    SQL.Strings = (
      'select * from maquinaveiculo')
    Left = 90
    Top = 184
    object TMaquinasid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TMaquinasstatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Size = 32767
    end
    object TMaquinasidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      Size = 32767
    end
    object TMaquinasprefixo: TStringField
      FieldName = 'prefixo'
      Origin = 'prefixo'
    end
    object TMaquinasultimoabastecimento: TDateField
      FieldName = 'ultimoabastecimento'
      Origin = 'ultimoabastecimento'
    end
    object TMaquinashorimetroultimarev: TBCDField
      FieldName = 'horimetroultimarev'
      Origin = 'horimetroultimarev'
      Precision = 15
      Size = 3
    end
    object TMaquinashorimetroatual: TBCDField
      FieldName = 'horimetroatual'
      Origin = 'horimetroatual'
      Precision = 15
      Size = 3
    end
    object TMaquinasqrcode: TStringField
      FieldName = 'qrcode'
      Origin = 'qrcode'
    end
    object TMaquinaskmatual: TBCDField
      FieldName = 'kmatual'
      Origin = 'kmatual'
      Precision = 15
      Size = 3
    end
    object TMaquinastipomedicao: TWideStringField
      FieldName = 'tipomedicao'
      Origin = 'tipomedicao'
      Size = 32767
    end
    object TMaquinasvolumetanque: TBCDField
      FieldName = 'volumetanque'
      Origin = 'volumetanque'
      Precision = 15
      Size = 2
    end
    object TMaquinasmodelo: TStringField
      FieldName = 'modelo'
      Origin = 'modelo'
      Required = True
      Size = 50
    end
    object TMaquinasidmarca: TWideStringField
      FieldName = 'idmarca'
      Origin = 'idmarca'
      Size = 32767
    end
    object TMaquinasplaca: TStringField
      FieldName = 'placa'
      Origin = 'placa'
    end
    object TMaquinasano: TWideStringField
      FieldName = 'ano'
      Origin = 'ano'
      Size = 32767
    end
    object TMaquinaschassi: TStringField
      FieldName = 'chassi'
      Origin = 'chassi'
      Size = 30
    end
    object TMaquinasidcombustivel: TWideStringField
      FieldName = 'idcombustivel'
      Origin = 'idcombustivel'
      Size = 32767
    end
    object TMaquinasidsubgrupo: TWideStringField
      FieldName = 'idsubgrupo'
      Origin = 'idsubgrupo'
      Size = 32767
    end
    object TMaquinasidgrupo: TWideStringField
      FieldName = 'idgrupo'
      Origin = 'idgrupo'
      Size = 32767
    end
    object TMaquinasidmodelo: TIntegerField
      FieldName = 'idmodelo'
      Origin = 'idmodelo'
    end
  end
  object TAbastecimento: TFDQuery
    Connection = dmDB.FCon
    SQL.Strings = (
      'select * from abastecimento'
      'where syncaws=0')
    Left = 232
    Top = 104
    object TAbastecimentoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TAbastecimentostatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      Size = 32767
    end
    object TAbastecimentodatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Required = True
      Size = 32767
    end
    object TAbastecimentoidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      Required = True
      Size = 32767
    end
    object TAbastecimentodataalteracao: TWideStringField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
      Size = 32767
    end
    object TAbastecimentoidusuarioalteracao: TWideStringField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
      Size = 32767
    end
    object TAbastecimentoidlocalestoque: TWideStringField
      FieldName = 'idlocalestoque'
      Origin = 'idlocalestoque'
      Required = True
      Size = 32767
    end
    object TAbastecimentoidmaquina: TWideStringField
      FieldName = 'idmaquina'
      Origin = 'idmaquina'
      Required = True
      Size = 32767
    end
    object TAbastecimentovolumelt: TBCDField
      FieldName = 'volumelt'
      Origin = 'volumelt'
      Precision = 15
      Size = 3
    end
    object TAbastecimentocombustivel: TWideStringField
      FieldName = 'combustivel'
      Origin = 'combustivel'
      Required = True
      Size = 32767
    end
    object TAbastecimentodataabastecimento: TDateField
      FieldName = 'dataabastecimento'
      Origin = 'dataabastecimento'
      Required = True
    end
    object TAbastecimentohora: TTimeField
      FieldName = 'hora'
      Origin = 'hora'
      Required = True
    end
    object TAbastecimentosyncaws: TWideStringField
      FieldName = 'syncaws'
      Origin = 'syncaws'
      Required = True
      Size = 32767
    end
    object TAbastecimentohorimetro: TBCDField
      FieldName = 'horimetro'
      Origin = 'horimetro'
      Precision = 15
      Size = 3
    end
    object TAbastecimentoobs: TStringField
      FieldName = 'obs'
      Origin = 'obs'
      Size = 100
    end
    object TAbastecimentoimg: TWideMemoField
      FieldName = 'img'
      Origin = 'img'
      BlobType = ftWideMemo
    end
    object TAbastecimentoimg2: TWideMemoField
      FieldName = 'img2'
      Origin = 'img2'
      BlobType = ftWideMemo
    end
    object TAbastecimentoimg3: TWideMemoField
      FieldName = 'img3'
      Origin = 'img3'
      BlobType = ftWideMemo
    end
    object TAbastecimentoimg4: TWideMemoField
      FieldName = 'img4'
      Origin = 'img4'
      BlobType = ftWideMemo
    end
    object TAbastecimentoimg5: TWideMemoField
      FieldName = 'img5'
      Origin = 'img5'
      BlobType = ftWideMemo
    end
    object TAbastecimentovalorlitro: TBCDField
      FieldName = 'valorlitro'
      Origin = 'valorlitro'
      Precision = 15
      Size = 3
    end
    object TAbastecimentoexterno: TWideStringField
      FieldName = 'externo'
      Origin = 'externo'
      Required = True
      Size = 32767
    end
    object TAbastecimentoidcentrocusto: TIntegerField
      FieldName = 'idcentrocusto'
      Origin = 'idcentrocusto'
      Required = True
    end
    object TAbastecimentokmatual: TBCDField
      FieldName = 'kmatual'
      Origin = 'kmatual'
      Precision = 15
      Size = 3
    end
    object TAbastecimentolatitude: TFMTBCDField
      FieldName = 'latitude'
      Origin = 'latitude'
      Precision = 9
      Size = 6
    end
    object TAbastecimentolongitude: TFMTBCDField
      FieldName = 'longitude'
      Origin = 'longitude'
      Precision = 9
      Size = 6
    end
    object TAbastecimentoalerta: TIntegerField
      FieldName = 'alerta'
      Origin = 'alerta'
    end
    object TAbastecimentodescricaoalerta: TWideMemoField
      FieldName = 'descricaoalerta'
      Origin = 'descricaoalerta'
      BlobType = ftWideMemo
    end
  end
  object TAbastecimentoOutros: TFDQuery
    Connection = dmDB.FCon
    SQL.Strings = (
      'select * from abastecimentooutros'
      'where syncaws=0')
    Left = 232
    Top = 160
    object TAbastecimentoOutrosid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TAbastecimentoOutrosstatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      Size = 32767
    end
    object TAbastecimentoOutrosdatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Required = True
      Size = 32767
    end
    object TAbastecimentoOutrosidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      Required = True
      Size = 32767
    end
    object TAbastecimentoOutrosdataalteracao: TWideStringField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
      Size = 32767
    end
    object TAbastecimentoOutrosidusuarioalteracao: TWideStringField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
      Size = 32767
    end
    object TAbastecimentoOutrosidabastecimento: TWideStringField
      FieldName = 'idabastecimento'
      Origin = 'idabastecimento'
      Required = True
      Size = 32767
    end
    object TAbastecimentoOutrosidproduto: TWideStringField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      Required = True
      Size = 32767
    end
    object TAbastecimentoOutrosquantidade: TBCDField
      FieldName = 'quantidade'
      Origin = 'quantidade'
      Precision = 15
      Size = 3
    end
    object TAbastecimentoOutrossyncaws: TWideStringField
      FieldName = 'syncaws'
      Origin = 'syncaws'
      Required = True
      Size = 32767
    end
    object TAbastecimentoOutrossyncfaz: TWideStringField
      FieldName = 'syncfaz'
      Origin = 'syncfaz'
      Required = True
      Size = 32767
    end
  end
  object TStartDiario: TFDQuery
    Connection = dmDB.FCon
    SQL.Strings = (
      'select '
      
        'id,status,datareg,idusuario,dataalteracao,idusuarioalteracao,idl' +
        'ocalestoque,idcentrocusto,combustivel,'
      'dataastart,horastart,dataaend,horaend,syncaws, '
      
        'volumelitrosIni,obs,imgStartSend imgStart,imgStopSend imgEnd,vol' +
        'umelitrosFim'
      'from startbomba'
      'where syncaws=0 and status=2')
    Left = 232
    Top = 224
    object TStartDiarioid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TStartDiariostatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      Size = 32767
    end
    object TStartDiariodatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Required = True
      Size = 32767
    end
    object TStartDiarioidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      Required = True
      Size = 32767
    end
    object TStartDiariodataalteracao: TWideStringField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
      Size = 32767
    end
    object TStartDiarioidusuarioalteracao: TWideStringField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
      Size = 32767
    end
    object TStartDiarioidlocalestoque: TWideStringField
      FieldName = 'idlocalestoque'
      Origin = 'idlocalestoque'
      Required = True
      Size = 32767
    end
    object TStartDiarioidcentrocusto: TWideStringField
      FieldName = 'idcentrocusto'
      Origin = 'idcentrocusto'
      Required = True
      Size = 32767
    end
    object TStartDiariocombustivel: TWideStringField
      FieldName = 'combustivel'
      Origin = 'combustivel'
      Required = True
      Size = 32767
    end
    object TStartDiariodataastart: TDateField
      FieldName = 'dataastart'
      Origin = 'dataastart'
      Required = True
    end
    object TStartDiariohorastart: TTimeField
      FieldName = 'horastart'
      Origin = 'horastart'
      Required = True
    end
    object TStartDiariodataaend: TDateField
      FieldName = 'dataaend'
      Origin = 'dataaend'
    end
    object TStartDiariohoraend: TTimeField
      FieldName = 'horaend'
      Origin = 'horaend'
    end
    object TStartDiariosyncaws: TWideStringField
      FieldName = 'syncaws'
      Origin = 'syncaws'
      Required = True
      Size = 32767
    end
    object TStartDiariovolumelitrosIni: TBCDField
      FieldName = 'volumelitrosIni'
      Origin = 'volumelitrosIni'
      Required = True
      Precision = 15
      Size = 3
    end
    object TStartDiarioobs: TStringField
      FieldName = 'obs'
      Origin = 'obs'
      Size = 100
    end
    object TStartDiarioimgStart: TWideMemoField
      FieldName = 'imgStart'
      Origin = 'imgStart'
      BlobType = ftWideMemo
    end
    object TStartDiarioimgEnd: TWideMemoField
      FieldName = 'imgEnd'
      Origin = 'imgEnd'
      BlobType = ftWideMemo
    end
    object TStartDiariovolumelitrosFim: TBCDField
      FieldName = 'volumelitrosFim'
      Origin = 'volumelitrosFim'
      Precision = 15
      Size = 3
    end
  end
  object QryAuxLoop: TFDQuery
    Connection = dmDB.FCon
    Left = 56
    Top = 304
  end
  object TMovLocalEstoque: TFDQuery
    CachedUpdates = True
    Connection = dmDB.FCon
    SQL.Strings = (
      'select '
      
        ' id,status,datareg,idusuario,dataalteracao,idusuarioalteracao,id' +
        'localestoqueorigem,idlocalestoquedetino, '
      
        'idproduto,qtde,datamov,hora,syncaws,imgStartSend img,imgStopSend' +
        ' imgfim,totalizadorinicial,totalizadorfinal'
      'from tranferencialocalestoque a'
      'where syncaws=0')
    Left = 195
    Top = 288
    object TMovLocalEstoqueid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TMovLocalEstoquestatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      Size = 32767
    end
    object TMovLocalEstoquedatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Required = True
      Size = 32767
    end
    object TMovLocalEstoqueidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      Required = True
      Size = 32767
    end
    object TMovLocalEstoquedataalteracao: TWideStringField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
      Size = 32767
    end
    object TMovLocalEstoqueidusuarioalteracao: TWideStringField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
      Size = 32767
    end
    object TMovLocalEstoqueidlocalestoqueorigem: TWideStringField
      FieldName = 'idlocalestoqueorigem'
      Origin = 'idlocalestoqueorigem'
      Required = True
      Size = 32767
    end
    object TMovLocalEstoqueidlocalestoquedetino: TWideStringField
      FieldName = 'idlocalestoquedetino'
      Origin = 'idlocalestoquedetino'
      Required = True
      Size = 32767
    end
    object TMovLocalEstoqueidproduto: TWideStringField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      Required = True
      Size = 32767
    end
    object TMovLocalEstoqueqtde: TBCDField
      FieldName = 'qtde'
      Origin = 'qtde'
      Precision = 15
      Size = 3
    end
    object TMovLocalEstoquedatamov: TDateField
      FieldName = 'datamov'
      Origin = 'datamov'
      Required = True
    end
    object TMovLocalEstoquehora: TTimeField
      FieldName = 'hora'
      Origin = 'hora'
      Required = True
    end
    object TMovLocalEstoquesyncaws: TWideStringField
      FieldName = 'syncaws'
      Origin = 'syncaws'
      Required = True
      Size = 32767
    end
    object TMovLocalEstoqueimg: TWideMemoField
      FieldName = 'img'
      Origin = 'imgStartSend'
      BlobType = ftWideMemo
    end
    object TMovLocalEstoqueimgfim: TWideMemoField
      FieldName = 'imgfim'
      Origin = 'imgStopSend'
      BlobType = ftWideMemo
    end
    object TMovLocalEstoquetotalizadorinicial: TLargeintField
      FieldName = 'totalizadorinicial'
      Origin = 'totalizadorinicial'
    end
    object TMovLocalEstoquetotalizadorfinal: TLargeintField
      FieldName = 'totalizadorfinal'
      Origin = 'totalizadorfinal'
    end
  end
  object TLubrificacaoprodutos: TFDQuery
    CachedUpdates = True
    Connection = dmDB.FCon
    SQL.Strings = (
      'select '
      '*'
      'from lubrificacaoprodutos l'
      'where syncaws=0')
    Left = 480
    Top = 176
    object TLubrificacaoprodutosid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TLubrificacaoprodutosstatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      Size = 32767
    end
    object TLubrificacaoprodutosdatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Required = True
      Size = 32767
    end
    object TLubrificacaoprodutosidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      Required = True
      Size = 32767
    end
    object TLubrificacaoprodutosdataalteracao: TWideStringField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
      Size = 32767
    end
    object TLubrificacaoprodutosidusuarioalteracao: TWideStringField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
      Size = 32767
    end
    object TLubrificacaoprodutosidlubrificacao: TWideStringField
      FieldName = 'idlubrificacao'
      Origin = 'idlubrificacao'
      Required = True
      Size = 32767
    end
    object TLubrificacaoprodutosidproduto: TWideStringField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      Required = True
      Size = 32767
    end
    object TLubrificacaoprodutosqtd: TBCDField
      FieldName = 'qtd'
      Origin = 'qtd'
      Required = True
      Precision = 15
      Size = 2
    end
    object TLubrificacaoprodutossyncaws: TWideStringField
      FieldName = 'syncaws'
      Origin = 'syncaws'
      Required = True
      Size = 32767
    end
    object TLubrificacaoprodutossyncfaz: TWideStringField
      FieldName = 'syncfaz'
      Origin = 'syncfaz'
      Required = True
      Size = 32767
    end
    object TLubrificacaoprodutosidcompartimento: TIntegerField
      FieldName = 'idcompartimento'
      Origin = 'idcompartimento'
    end
    object TLubrificacaoprodutostipo: TIntegerField
      FieldName = 'tipo'
      Origin = 'tipo'
    end
  end
  object TLubrificacao: TFDQuery
    CachedUpdates = True
    Connection = dmDB.FCon
    SQL.Strings = (
      'select '
      '*'
      'from lubrificacao '
      'where syncaws=0'
      
        'and id in(select distinct idlubrificacao from lubrificacaoprodut' +
        'os where status>-1)')
    Left = 480
    Top = 104
    object TLubrificacaoid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TLubrificacaostatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      Size = 32767
    end
    object TLubrificacaodatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Required = True
      Size = 32767
    end
    object TLubrificacaoidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      Required = True
      Size = 32767
    end
    object TLubrificacaodataalteracao: TWideStringField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
      Size = 32767
    end
    object TLubrificacaoidusuarioalteracao: TWideStringField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
      Size = 32767
    end
    object TLubrificacaoidmaquina: TWideStringField
      FieldName = 'idmaquina'
      Origin = 'idmaquina'
      Required = True
      Size = 32767
    end
    object TLubrificacaodatatroca: TDateField
      FieldName = 'datatroca'
      Origin = 'datatroca'
      Required = True
    end
    object TLubrificacaosyncaws: TWideStringField
      FieldName = 'syncaws'
      Origin = 'syncaws'
      Required = True
      Size = 32767
    end
    object TLubrificacaosyncfaz: TWideStringField
      FieldName = 'syncfaz'
      Origin = 'syncfaz'
      Required = True
      Size = 32767
    end
    object TLubrificacaohorimetro: TBCDField
      FieldName = 'horimetro'
      Origin = 'horimetro'
      Precision = 15
      Size = 2
    end
    object TLubrificacaokm: TBCDField
      FieldName = 'km'
      Origin = 'km'
      Precision = 15
      Size = 2
    end
    object TLubrificacaoidcentrocusto: TWideStringField
      FieldName = 'idcentrocusto'
      Origin = 'idcentrocusto'
      Required = True
      Size = 32767
    end
    object TLubrificacaoalerta: TWideStringField
      FieldName = 'alerta'
      Origin = 'alerta'
      Size = 32767
    end
    object TLubrificacaodescricaoalerta: TWideMemoField
      FieldName = 'descricaoalerta'
      Origin = 'descricaoalerta'
      BlobType = ftWideMemo
    end
    object TLubrificacaoidlocalestoque: TIntegerField
      FieldName = 'idlocalestoque'
      Origin = 'idlocalestoque'
    end
    object TLubrificacaoidcompartimento: TIntegerField
      FieldName = 'idcompartimento'
      Origin = 'idcompartimento'
    end
    object TLubrificacaolatitude: TFMTBCDField
      FieldName = 'latitude'
      Origin = 'latitude'
      Precision = 9
      Size = 6
    end
    object TLubrificacaolongitude: TFMTBCDField
      FieldName = 'longitude'
      Origin = 'longitude'
      Precision = 9
      Size = 6
    end
  end
  object TAuxCompLub: TFDQuery
    Connection = dmDB.FCon
    SQL.Strings = (
      'select * from compartimentolubricficacao')
    Left = 472
    Top = 240
    object TAuxCompLubid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TAuxCompLubstatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
      Required = True
    end
    object TAuxCompLubdatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Required = True
      Size = 32767
    end
    object TAuxCompLubidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      Required = True
      Size = 32767
    end
    object TAuxCompLubdataalteracao: TWideStringField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
      Size = 32767
    end
    object TAuxCompLubidusuarioalteracao: TWideStringField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
      Size = 32767
    end
    object TAuxCompLubnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object TAuxCompLubsyncaws: TWideStringField
      FieldName = 'syncaws'
      Origin = 'syncaws'
      Required = True
      Size = 32767
    end
  end
  object cheklistgeneric: TFDQuery
    CachedUpdates = True
    IndexesActive = False
    OnReconcileError = cheklistgenericReconcileError
    Connection = dmDB.FCon
    SQL.Strings = (
      'select * from cheklistgeneric')
    Left = 560
    Top = 40
    object cheklistgenericid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      Required = True
    end
    object cheklistgenericstatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      Size = 32767
    end
    object cheklistgenericdatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Required = True
      Size = 32767
    end
    object cheklistgenericidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      Required = True
      Size = 32767
    end
    object cheklistgenericdataalteracao: TWideStringField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
      Size = 32767
    end
    object cheklistgenericidusuarioalteracao: TWideStringField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
      Size = 32767
    end
    object cheklistgenericnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object cheklistgenericdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 200
    end
    object cheklistgenerictransferencia: TWideStringField
      FieldName = 'transferencia'
      Origin = 'transferencia'
      Size = 32767
    end
    object cheklistgenericidgrupomaquinas: TWideStringField
      FieldName = 'idgrupomaquinas'
      Origin = 'idgrupomaquinas'
      Required = True
      Size = 32767
    end
  end
  object cheklistRealizado: TFDQuery
    CachedUpdates = True
    Connection = dmDB.FCon
    SQL.Strings = (
      'select * from cheklistRealizado'
      'where status=2 AND syncaws=0 ')
    Left = 560
    Top = 96
    object cheklistRealizadoid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      Required = True
    end
    object cheklistRealizadostatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      Size = 32767
    end
    object cheklistRealizadodatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Required = True
      Size = 32767
    end
    object cheklistRealizadoidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      Required = True
      Size = 32767
    end
    object cheklistRealizadodataalteracao: TWideStringField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
      Size = 32767
    end
    object cheklistRealizadoidusuarioalteracao: TWideStringField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
      Size = 32767
    end
    object cheklistRealizadonome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object cheklistRealizadoidcheck: TWideStringField
      FieldName = 'idcheck'
      Origin = 'idcheck'
      Required = True
      Size = 32767
    end
    object cheklistRealizadodescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 200
    end
    object cheklistRealizadoidcentrocusto: TWideStringField
      FieldName = 'idcentrocusto'
      Origin = 'idcentrocusto'
      Required = True
      Size = 32767
    end
    object cheklistRealizadoidmaquia: TWideStringField
      FieldName = 'idmaquia'
      Origin = 'idmaquia'
      Size = 32767
    end
    object cheklistRealizadoidcentrocustodestino: TWideStringField
      FieldName = 'idcentrocustodestino'
      Origin = 'idcentrocustodestino'
      Size = 32767
    end
    object cheklistRealizadotransferencia: TWideStringField
      FieldName = 'transferencia'
      Origin = 'transferencia'
      Required = True
      Size = 32767
    end
    object cheklistRealizadohorimetro: TBCDField
      FieldName = 'horimetro'
      Origin = 'horimetro'
      Precision = 15
      Size = 2
    end
    object cheklistRealizadokm: TBCDField
      FieldName = 'km'
      Origin = 'km'
      Precision = 15
      Size = 2
    end
    object cheklistRealizadodata: TDateField
      FieldName = 'data'
      Origin = 'data'
      Required = True
    end
    object cheklistRealizadoalerta: TIntegerField
      FieldName = 'alerta'
      Origin = 'alerta'
    end
    object cheklistRealizadosyncaws: TIntegerField
      FieldName = 'syncaws'
      Origin = 'syncaws'
      Required = True
    end
    object cheklistRealizadoobservasao: TStringField
      FieldName = 'observasao'
      Origin = 'observasao'
      Size = 100
    end
  end
  object detcheklistgeneric: TFDQuery
    CachedUpdates = True
    IndexesActive = False
    OnReconcileError = detcheklistgenericReconcileError
    Connection = dmDB.FCon
    SQL.Strings = (
      'select A.*'
      'from detcheklistgeneric A')
    Left = 656
    Top = 40
    object detcheklistgenericid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      Required = True
    end
    object detcheklistgenericstatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      Size = 32767
    end
    object detcheklistgenericdatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Required = True
      Size = 32767
    end
    object detcheklistgenericidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      Required = True
      Size = 32767
    end
    object detcheklistgenericdataalteracao: TWideStringField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
      Size = 32767
    end
    object detcheklistgenericidusuarioalteracao: TWideStringField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
      Size = 32767
    end
    object detcheklistgenericidcheck: TIntegerField
      FieldName = 'idcheck'
      Origin = 'idcheck'
      Required = True
    end
    object detcheklistgenericItem: TIntegerField
      FieldName = 'Item'
      Origin = 'Item'
      Required = True
    end
    object detcheklistgenericdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 100
    end
    object detcheklistgenericItemFotoObrigatoria: TIntegerField
      FieldName = 'ItemFotoObrigatoria'
      Origin = 'ItemFotoObrigatoria'
    end
    object detcheklistgenericItemObs: TStringField
      FieldName = 'ItemObs'
      Origin = 'ItemObs'
      Size = 50
    end
    object detcheklistgenericidgrupo: TIntegerField
      FieldName = 'idgrupo'
      Origin = 'idgrupo'
    end
  end
  object detcheklistRealizado: TFDQuery
    CachedUpdates = True
    Connection = dmDB.FCon
    SQL.Strings = (
      'select * from detcheklistRealizado'
      'where syncaws=0')
    Left = 656
    Top = 96
    object detcheklistRealizadoid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      Required = True
    end
    object detcheklistRealizadostatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      Size = 32767
    end
    object detcheklistRealizadodatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Required = True
      Size = 32767
    end
    object detcheklistRealizadoidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      Required = True
      Size = 32767
    end
    object detcheklistRealizadodataalteracao: TWideStringField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
      Size = 32767
    end
    object detcheklistRealizadoidusuarioalteracao: TWideStringField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
      Size = 32767
    end
    object detcheklistRealizadoidcheck: TIntegerField
      FieldName = 'idcheck'
      Origin = 'idcheck'
      Required = True
    end
    object detcheklistRealizadoItem: TIntegerField
      FieldName = 'Item'
      Origin = 'Item'
      Required = True
    end
    object detcheklistRealizadoItemFotoObrigatoria: TIntegerField
      FieldName = 'ItemFotoObrigatoria'
      Origin = 'ItemFotoObrigatoria'
    end
    object detcheklistRealizadoItemFoto: TWideMemoField
      FieldName = 'ItemFoto'
      Origin = 'ItemFoto'
      BlobType = ftWideMemo
    end
    object detcheklistRealizadoItemObs: TStringField
      FieldName = 'ItemObs'
      Origin = 'ItemObs'
      Size = 50
    end
    object detcheklistRealizadoitemCheck: TIntegerField
      FieldName = 'itemCheck'
      Origin = 'itemCheck'
    end
    object detcheklistRealizadodescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object detcheklistRealizadoidgrupo: TIntegerField
      FieldName = 'idgrupo'
    end
    object detcheklistRealizadosyncaws: TIntegerField
      FieldName = 'syncaws'
      Origin = 'syncaws'
      Required = True
    end
    object detcheklistRealizadonormal: TBooleanField
      FieldName = 'normal'
      Origin = 'normal'
    end
    object detcheklistRealizadoreparar: TBooleanField
      FieldName = 'reparar'
      Origin = 'reparar'
    end
    object detcheklistRealizadonaoseaplica: TBooleanField
      FieldName = 'naoseaplica'
      Origin = 'naoseaplica'
    end
  end
  object cheklistregrupoitem: TFDQuery
    CachedUpdates = True
    Connection = dmDB.FCon
    SQL.Strings = (
      'select * from cheklistregrupoitem'
      'where status=1')
    Left = 472
    Top = 312
    object cheklistregrupoitemid: TIntegerField
      FieldName = 'id'
    end
    object cheklistregrupoitemstatus: TWideStringField
      FieldName = 'status'
      Size = 32767
    end
    object cheklistregrupoitemdatareg: TWideStringField
      FieldName = 'datareg'
      Size = 32767
    end
    object cheklistregrupoitemidusuario: TWideStringField
      FieldName = 'idusuario'
      Size = 32767
    end
    object cheklistregrupoitemdataalteracao: TWideStringField
      FieldName = 'dataalteracao'
      Size = 32767
    end
    object cheklistregrupoitemidusuarioalteracao: TWideStringField
      FieldName = 'idusuarioalteracao'
      Size = 32767
    end
    object cheklistregrupoitemnome: TStringField
      FieldName = 'nome'
      Size = 100
    end
    object cheklistregrupoitemdescricao: TStringField
      FieldName = 'descricao'
      Size = 200
    end
  end
  object TCentroCustoOutros: TFDQuery
    CachedUpdates = True
    Connection = dmDB.FCon
    SQL.Strings = (
      'select * from centrocustooutros')
    Left = 360
    Top = 328
    object TCentroCustoOutrosid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TCentroCustoOutrosstatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      Size = 32767
    end
    object TCentroCustoOutrosdatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Size = 32767
    end
    object TCentroCustoOutrosidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      Size = 32767
    end
    object TCentroCustoOutrosdataalteracao: TWideStringField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
      Size = 32767
    end
    object TCentroCustoOutrosidusuarioalteracao: TWideStringField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
      Size = 32767
    end
    object TCentroCustoOutrosnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object TCentroCustoOutrossyncaws: TWideStringField
      FieldName = 'syncaws'
      Origin = 'syncaws'
      Required = True
      Size = 32767
    end
  end
end

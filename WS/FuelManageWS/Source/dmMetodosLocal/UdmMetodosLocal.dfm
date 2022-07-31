object dmLocal: TdmLocal
  OldCreateOrder = False
  Height = 519
  Width = 822
  object TStartDiario: TFDQuery
    CachedUpdates = True
    OnReconcileError = TStartDiarioReconcileError
    Connection = frmPrincipal.FDConPG
    SQL.Strings = (
      'select * from startbomba'
      'where status=1 ')
    Left = 72
    Top = 88
    object TStartDiarioid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TStartDiariostatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object TStartDiariodatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object TStartDiarioidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object TStartDiariodataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object TStartDiarioidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object TStartDiarioidlocalestoque: TIntegerField
      FieldName = 'idlocalestoque'
      Origin = 'idlocalestoque'
    end
    object TStartDiarioidcentrocusto: TIntegerField
      FieldName = 'idcentrocusto'
      Origin = 'idcentrocusto'
    end
    object TStartDiariocombustivel: TIntegerField
      FieldName = 'combustivel'
      Origin = 'combustivel'
    end
    object TStartDiariodataastart: TDateField
      FieldName = 'dataastart'
      Origin = 'dataastart'
    end
    object TStartDiariohorastart: TTimeField
      FieldName = 'horastart'
      Origin = 'horastart'
    end
    object TStartDiariodataaend: TDateField
      FieldName = 'dataaend'
      Origin = 'dataaend'
    end
    object TStartDiariohoraend: TTimeField
      FieldName = 'horaend'
      Origin = 'horaend'
    end
    object TStartDiariosyncaws: TIntegerField
      FieldName = 'syncaws'
      Origin = 'syncaws'
    end
    object TStartDiariovolumelitrosini: TBCDField
      FieldName = 'volumelitrosini'
      Origin = 'volumelitrosini'
      Precision = 15
      Size = 3
    end
    object TStartDiarioobs: TWideStringField
      FieldName = 'obs'
      Origin = 'obs'
      Size = 100
    end
    object TStartDiarioimgstart: TWideMemoField
      FieldName = 'imgstart'
      Origin = 'imgstart'
      BlobType = ftWideMemo
    end
    object TStartDiarioimgend: TWideMemoField
      FieldName = 'imgend'
      Origin = 'imgend'
      BlobType = ftWideMemo
    end
    object TStartDiariovolumelitrosfim: TBCDField
      FieldName = 'volumelitrosfim'
      Origin = 'volumelitrosfim'
      Precision = 15
      Size = 3
    end
  end
  object TAbastecimento: TFDQuery
    CachedUpdates = True
    OnReconcileError = TAbastecimentoReconcileError
    Connection = frmPrincipal.FDConPG
    SQL.Strings = (
      'select * from abastecimento'
      'where status=1000')
    Left = 72
    Top = 152
    object TAbastecimentoid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TAbastecimentostatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object TAbastecimentodatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object TAbastecimentoidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object TAbastecimentodataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object TAbastecimentoidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object TAbastecimentoidlocalestoque: TIntegerField
      FieldName = 'idlocalestoque'
      Origin = 'idlocalestoque'
    end
    object TAbastecimentoidmaquina: TIntegerField
      FieldName = 'idmaquina'
      Origin = 'idmaquina'
    end
    object TAbastecimentovolumelt: TBCDField
      FieldName = 'volumelt'
      Origin = 'volumelt'
      Precision = 15
      Size = 3
    end
    object TAbastecimentocombustivel: TIntegerField
      FieldName = 'combustivel'
      Origin = 'combustivel'
    end
    object TAbastecimentodataabastecimento: TDateField
      FieldName = 'dataabastecimento'
      Origin = 'dataabastecimento'
    end
    object TAbastecimentohora: TTimeField
      FieldName = 'hora'
      Origin = 'hora'
    end
    object TAbastecimentosyncaws: TIntegerField
      FieldName = 'syncaws'
      Origin = 'syncaws'
    end
    object TAbastecimentohorimetro: TBCDField
      FieldName = 'horimetro'
      Origin = 'horimetro'
      Precision = 15
      Size = 3
    end
    object TAbastecimentoobs: TWideStringField
      FieldName = 'obs'
      Origin = 'obs'
      Size = 100
    end
    object TAbastecimentoimg: TBlobField
      FieldName = 'img'
      Origin = 'img'
    end
    object TAbastecimentoimg2: TBlobField
      FieldName = 'img2'
      Origin = 'img2'
    end
    object TAbastecimentoimg3: TBlobField
      FieldName = 'img3'
      Origin = 'img3'
    end
    object TAbastecimentoimg4: TBlobField
      FieldName = 'img4'
      Origin = 'img4'
    end
    object TAbastecimentoimg5: TBlobField
      FieldName = 'img5'
      Origin = 'img5'
    end
    object TAbastecimentovalorlitro: TBCDField
      FieldName = 'valorlitro'
      Origin = 'valorlitro'
      Precision = 15
      Size = 3
    end
    object TAbastecimentoexterno: TIntegerField
      FieldName = 'externo'
      Origin = 'externo'
    end
    object TAbastecimentoidcentrocusto: TIntegerField
      FieldName = 'idcentrocusto'
      Origin = 'idcentrocusto'
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
  object vQryAux: TFDQuery
    CachedUpdates = True
    Connection = frmPrincipal.FDConPG
    Left = 72
    Top = 24
  end
  object TUsuario: TFDQuery
    CachedUpdates = True
    Connection = frmPrincipal.FDConPG
    SQL.Strings = (
      'select * from usuario'
      'where status=1')
    Left = 200
    Top = 112
    object TUsuarioid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TUsuariostatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object TUsuariodatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object TUsuarioidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object TUsuariodataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object TUsuarioidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object TUsuarionome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object TUsuarioemail: TWideStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 100
    end
    object TUsuariocelular: TWideStringField
      FieldName = 'celular'
      Origin = 'celular'
    end
    object TUsuariousuario: TWideStringField
      FieldName = 'usuario'
      Origin = 'usuario'
      Size = 25
    end
    object TUsuariosenha: TWideStringField
      FieldName = 'senha'
      Origin = 'senha'
      Size = 50
    end
    object TUsuariotipo: TIntegerField
      FieldName = 'tipo'
      Origin = 'tipo'
    end
    object TUsuariosyncaws: TIntegerField
      FieldName = 'syncaws'
      Origin = 'syncaws'
    end
  end
  object Toperadormaquinas: TFDQuery
    CachedUpdates = True
    Connection = frmPrincipal.FDConPG
    SQL.Strings = (
      'select * from operadormaquinas o '
      'where status=1')
    Left = 200
    Top = 176
    object Toperadormaquinasid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Toperadormaquinasstatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object Toperadormaquinasdatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object Toperadormaquinasidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object Toperadormaquinasdataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object Toperadormaquinasidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object Toperadormaquinasnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object Toperadormaquinasrg: TWideStringField
      FieldName = 'rg'
      Origin = 'rg'
      Size = 10
    end
    object Toperadormaquinascpf: TWideStringField
      FieldName = 'cpf'
      Origin = 'cpf'
    end
    object Toperadormaquinascnh: TWideStringField
      FieldName = 'cnh'
      Origin = 'cnh'
    end
    object Toperadormaquinascelular: TWideStringField
      FieldName = 'celular'
      Origin = 'celular'
    end
    object Toperadormaquinassyncaws: TIntegerField
      FieldName = 'syncaws'
      Origin = 'syncaws'
    end
    object Toperadormaquinassyncfaz: TIntegerField
      FieldName = 'syncfaz'
      Origin = 'syncfaz'
    end
  end
  object TAuxAtividadesAbastecimento: TFDQuery
    CachedUpdates = True
    Connection = frmPrincipal.FDConPG
    SQL.Strings = (
      'select * from auxatividadeabastecimento a '
      'where status=1')
    Left = 200
    Top = 248
    object TAuxAtividadesAbastecimentoid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TAuxAtividadesAbastecimentostatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object TAuxAtividadesAbastecimentodatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object TAuxAtividadesAbastecimentoidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object TAuxAtividadesAbastecimentodataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object TAuxAtividadesAbastecimentoidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object TAuxAtividadesAbastecimentonome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object TAuxAtividadesAbastecimentosyncaws: TIntegerField
      FieldName = 'syncaws'
      Origin = 'syncaws'
    end
  end
  object TCentroCusto: TFDQuery
    CachedUpdates = True
    Connection = frmPrincipal.FDConPG
    SQL.Strings = (
      'select * from centrocusto c '
      'where status=1')
    Left = 336
    Top = 152
    object TCentroCustoid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TCentroCustostatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object TCentroCustodatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object TCentroCustoidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object TCentroCustodataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object TCentroCustoidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object TCentroCustonome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object TCentroCustosyncaws: TIntegerField
      FieldName = 'syncaws'
      Origin = 'syncaws'
    end
  end
  object TLocalEstoque: TFDQuery
    CachedUpdates = True
    Connection = frmPrincipal.FDConPG
    SQL.Strings = (
      'select * from localestoque l '
      'where status=1')
    Left = 336
    Top = 280
    object TLocalEstoqueid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TLocalEstoquestatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object TLocalEstoquedatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object TLocalEstoqueidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object TLocalEstoquedataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object TLocalEstoqueidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object TLocalEstoquenome: TWideStringField
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
    object TLocalEstoquesyncaws: TIntegerField
      FieldName = 'syncaws'
      Origin = 'syncaws'
    end
    object TLocalEstoqueidcentrocusto: TIntegerField
      FieldName = 'idcentrocusto'
      Origin = 'idcentrocusto'
    end
    object TLocalEstoqueidcombustivel: TIntegerField
      FieldName = 'idcombustivel'
      Origin = 'idcombustivel'
    end
  end
  object TProdutos: TFDQuery
    CachedUpdates = True
    Connection = frmPrincipal.FDConPG
    SQL.Strings = (
      'select * from produtos p '
      'where status=1')
    Left = 336
    Top = 344
    object TProdutosid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TProdutosstatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object TProdutosdatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object TProdutosidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object TProdutosdataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object TProdutosidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object TProdutosnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object TProdutostipo: TIntegerField
      FieldName = 'tipo'
      Origin = 'tipo'
    end
    object TProdutosunidademedida: TWideStringField
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
    object TProdutoscodigobarras: TWideStringField
      FieldName = 'codigobarras'
      Origin = 'codigobarras'
    end
    object TProdutosidmarca: TIntegerField
      FieldName = 'idmarca'
      Origin = 'idmarca'
    end
    object TProdutoscodigofabricante: TWideStringField
      FieldName = 'codigofabricante'
      Origin = 'codigofabricante'
      Size = 30
    end
    object TProdutossyncaws: TIntegerField
      FieldName = 'syncaws'
      Origin = 'syncaws'
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
    Connection = frmPrincipal.FDConPG
    SQL.Strings = (
      'select * from maquinaveiculo m '
      'where status=1')
    Left = 336
    Top = 104
    object TMaquinasid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TMaquinasstatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object TMaquinasdatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object TMaquinasidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object TMaquinasdataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object TMaquinasidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object TMaquinasidmarca: TIntegerField
      FieldName = 'idmarca'
      Origin = 'idmarca'
    end
    object TMaquinasmodelo: TWideStringField
      FieldName = 'modelo'
      Origin = 'modelo'
      Size = 50
    end
    object TMaquinasplaca: TWideStringField
      FieldName = 'placa'
      Origin = 'placa'
    end
    object TMaquinasano: TIntegerField
      FieldName = 'ano'
      Origin = 'ano'
    end
    object TMaquinaschassi: TWideStringField
      FieldName = 'chassi'
      Origin = 'chassi'
      Size = 30
    end
    object TMaquinasidcombustivel: TIntegerField
      FieldName = 'idcombustivel'
      Origin = 'idcombustivel'
    end
    object TMaquinasimg: TBlobField
      FieldName = 'img'
      Origin = 'img'
    end
    object TMaquinasprefixo: TWideStringField
      FieldName = 'prefixo'
      Origin = 'prefixo'
    end
    object TMaquinassyncaws: TIntegerField
      FieldName = 'syncaws'
      Origin = 'syncaws'
    end
    object TMaquinassyncfaz: TIntegerField
      FieldName = 'syncfaz'
      Origin = 'syncfaz'
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
    object TMaquinasqrcode: TWideStringField
      FieldName = 'qrcode'
      Origin = 'qrcode'
    end
    object TMaquinasidsubgrupo: TIntegerField
      FieldName = 'idsubgrupo'
      Origin = 'idsubgrupo'
    end
    object TMaquinasidgrupo: TIntegerField
      FieldName = 'idgrupo'
      Origin = 'idgrupo'
    end
    object TMaquinastipomedicao: TIntegerField
      FieldName = 'tipomedicao'
      Origin = 'tipomedicao'
    end
    object TMaquinaskmatual: TBCDField
      FieldName = 'kmatual'
      Origin = 'kmatual'
      Precision = 15
      Size = 3
    end
    object TMaquinasiderp: TIntegerField
      FieldName = 'iderp'
      Origin = 'iderp'
    end
    object TMaquinasvolumetanque: TBCDField
      FieldName = 'volumetanque'
      Origin = 'volumetanque'
      Precision = 15
      Size = 2
    end
    object TMaquinasidmodelo: TIntegerField
      FieldName = 'idmodelo'
      Origin = 'idmodelo'
    end
  end
  object TMovLocalEstoque: TFDQuery
    CachedUpdates = True
    OnReconcileError = TMovLocalEstoqueReconcileError
    Connection = frmPrincipal.FDConPG
    SQL.Strings = (
      'select '
      ' a.*'
      'from tranferencialocalestoque a'
      'where status=1000')
    Left = 67
    Top = 280
    object TMovLocalEstoqueid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TMovLocalEstoquestatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object TMovLocalEstoquedatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object TMovLocalEstoqueidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object TMovLocalEstoquedataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object TMovLocalEstoqueidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object TMovLocalEstoqueidlocalestoqueorigem: TIntegerField
      FieldName = 'idlocalestoqueorigem'
      Origin = 'idlocalestoqueorigem'
    end
    object TMovLocalEstoqueidlocalestoquedetino: TIntegerField
      FieldName = 'idlocalestoquedetino'
      Origin = 'idlocalestoquedetino'
    end
    object TMovLocalEstoqueidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
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
    end
    object TMovLocalEstoquehora: TTimeField
      FieldName = 'hora'
      Origin = 'hora'
    end
    object TMovLocalEstoquesyncaws: TIntegerField
      FieldName = 'syncaws'
      Origin = 'syncaws'
    end
    object TMovLocalEstoqueimg: TBlobField
      FieldName = 'img'
      Origin = 'img'
    end
    object TMovLocalEstoqueimgfim: TBlobField
      FieldName = 'imgfim'
      Origin = 'imgfim'
    end
  end
  object TLubrificacaoprodutos: TFDQuery
    CachedUpdates = True
    Connection = frmPrincipal.FDConPG
    SQL.Strings = (
      'select '
      '*'
      'from lubrificacaoprodutos l'
      'where syncaws=0')
    Left = 432
    Top = 128
    object TLubrificacaoprodutosid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TLubrificacaoprodutosstatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object TLubrificacaoprodutosdatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object TLubrificacaoprodutosidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object TLubrificacaoprodutosdataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object TLubrificacaoprodutosidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object TLubrificacaoprodutosidlubrificacao: TIntegerField
      FieldName = 'idlubrificacao'
      Origin = 'idlubrificacao'
    end
    object TLubrificacaoprodutosidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object TLubrificacaoprodutosqtd: TBCDField
      FieldName = 'qtd'
      Origin = 'qtd'
      Precision = 15
      Size = 2
    end
    object TLubrificacaoprodutossyncaws: TIntegerField
      FieldName = 'syncaws'
      Origin = 'syncaws'
    end
    object TLubrificacaoprodutossyncfaz: TIntegerField
      FieldName = 'syncfaz'
      Origin = 'syncfaz'
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
    Connection = frmPrincipal.FDConPG
    SQL.Strings = (
      'select '
      '*'
      'from lubrificacao '
      'where syncaws=0')
    Left = 432
    Top = 56
    object TLubrificacaoid: TIntegerField
      FieldName = 'id'
    end
    object TLubrificacaostatus: TIntegerField
      FieldName = 'status'
    end
    object TLubrificacaodatareg: TSQLTimeStampField
      FieldName = 'datareg'
    end
    object TLubrificacaoidusuario: TIntegerField
      FieldName = 'idusuario'
    end
    object TLubrificacaodataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
    end
    object TLubrificacaoidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
    end
    object TLubrificacaoidmaquina: TIntegerField
      FieldName = 'idmaquina'
    end
    object TLubrificacaodatatroca: TDateField
      FieldName = 'datatroca'
    end
    object TLubrificacaosyncaws: TIntegerField
      FieldName = 'syncaws'
    end
    object TLubrificacaosyncfaz: TIntegerField
      FieldName = 'syncfaz'
    end
    object TLubrificacaohorimetro: TBCDField
      FieldName = 'horimetro'
      Precision = 15
      Size = 2
    end
    object TLubrificacaokm: TBCDField
      FieldName = 'km'
      Precision = 15
      Size = 2
    end
    object TLubrificacaoidcentrocusto: TIntegerField
      FieldName = 'idcentrocusto'
    end
    object TLubrificacaoalerta: TIntegerField
      FieldName = 'alerta'
      Origin = 'alerta'
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
    Connection = frmPrincipal.FDConPG
    SQL.Strings = (
      'select * from compartimentolubricficacao')
    Left = 424
    Top = 200
    object TAuxCompLubid: TIntegerField
      FieldName = 'id'
    end
    object TAuxCompLubstatus: TIntegerField
      FieldName = 'status'
    end
    object TAuxCompLubdatareg: TSQLTimeStampField
      FieldName = 'datareg'
    end
    object TAuxCompLubidusuario: TIntegerField
      FieldName = 'idusuario'
    end
    object TAuxCompLubdataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
    end
    object TAuxCompLubidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
    end
    object TAuxCompLubnome: TWideStringField
      FieldName = 'nome'
      Size = 50
    end
    object TAuxCompLubsyncaws: TIntegerField
      FieldName = 'syncaws'
    end
  end
  object cheklistgeneric: TFDQuery
    CachedUpdates = True
    IndexesActive = False
    Connection = frmPrincipal.FDConPG
    SQL.Strings = (
      'select * from cheklistgeneric'
      'where status=1')
    Left = 560
    Top = 40
    object cheklistgenericid: TIntegerField
      FieldName = 'id'
    end
    object cheklistgenericstatus: TIntegerField
      FieldName = 'status'
    end
    object cheklistgenericdatareg: TSQLTimeStampField
      FieldName = 'datareg'
    end
    object cheklistgenericidusuario: TIntegerField
      FieldName = 'idusuario'
    end
    object cheklistgenericdataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
    end
    object cheklistgenericidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
    end
    object cheklistgenericnome: TWideStringField
      FieldName = 'nome'
      Size = 100
    end
    object cheklistgenericdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 200
    end
    object cheklistgenerictransferencia: TIntegerField
      FieldName = 'transferencia'
      Origin = 'transferencia'
    end
    object cheklistgenericidgrupomaquinas: TIntegerField
      FieldName = 'idgrupomaquinas'
      Origin = 'idgrupomaquinas'
    end
  end
  object detcheklistgeneric: TFDQuery
    CachedUpdates = True
    IndexesActive = False
    Connection = frmPrincipal.FDConPG
    SQL.Strings = (
      'select A.*'
      'from detcheklistgeneric A'
      'where status=1')
    Left = 656
    Top = 40
    object detcheklistgenericid: TIntegerField
      FieldName = 'id'
    end
    object detcheklistgenericstatus: TIntegerField
      FieldName = 'status'
    end
    object detcheklistgenericdatareg: TSQLTimeStampField
      FieldName = 'datareg'
    end
    object detcheklistgenericidusuario: TIntegerField
      FieldName = 'idusuario'
    end
    object detcheklistgenericdataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
    end
    object detcheklistgenericidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
    end
    object detcheklistgenericidcheck: TIntegerField
      FieldName = 'idcheck'
    end
    object detcheklistgenericitem: TIntegerField
      FieldName = 'item'
    end
    object detcheklistgenericdescricao: TWideStringField
      FieldName = 'descricao'
      Size = 100
    end
    object detcheklistgenericitemfotoobrigatoria: TIntegerField
      FieldName = 'itemfotoobrigatoria'
    end
    object detcheklistgenericitemobs: TWideStringField
      FieldName = 'itemobs'
      Size = 50
    end
    object detcheklistgenericidgrupo: TIntegerField
      FieldName = 'idgrupo'
      Origin = 'idgrupo'
    end
  end
  object AmazonConnectionInfo1: TAmazonConnectionInfo
    AccountName = 'AKIA6BWXU4MBYK6J4Y7I'
    AccountKey = 'JOGG9OUH0GKWELemhzIXoWpV/ZKBFq6jPdKIk1ej'
    TableEndpoint = 'sdb.amazonaws.com'
    QueueEndpoint = 'queue.amazonaws.com'
    StorageEndpoint = 's3-us-east-2.amazonaws.com'
    UseDefaultEndpoints = False
    Left = 248
    Top = 16
  end
  object cheklistregrupoitem: TFDQuery
    CachedUpdates = True
    Connection = frmPrincipal.FDConPG
    SQL.Strings = (
      'select * from cheklistregrupoitem'
      'where status=1')
    Left = 344
    Top = 408
    object cheklistregrupoitemid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
    end
    object cheklistregrupoitemstatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object cheklistregrupoitemdatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object cheklistregrupoitemidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object cheklistregrupoitemdataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object cheklistregrupoitemidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object cheklistregrupoitemnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object cheklistregrupoitemdescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 200
    end
  end
  object TCentroCustoOutros: TFDQuery
    CachedUpdates = True
    Connection = frmPrincipal.FDConPG
    SQL.Strings = (
      'select * from centrocusto c '
      'where status=1')
    Left = 336
    Top = 208
    object IntegerField1: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IntegerField2: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object IntegerField3: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object SQLTimeStampField2: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object IntegerField4: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object WideStringField1: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object IntegerField5: TIntegerField
      FieldName = 'syncaws'
      Origin = 'syncaws'
    end
  end
  object cheklistRealizado: TFDQuery
    CachedUpdates = True
    Connection = frmPrincipal.FDConPG
    SQL.Strings = (
      'select * from cheklistRealizado')
    Left = 560
    Top = 96
    object cheklistRealizadoid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cheklistRealizadostatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object cheklistRealizadodatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object cheklistRealizadoidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object cheklistRealizadodataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object cheklistRealizadoidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object cheklistRealizadonome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object cheklistRealizadoidcheck: TIntegerField
      FieldName = 'idcheck'
      Origin = 'idcheck'
    end
    object cheklistRealizadodescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 200
    end
    object cheklistRealizadoidcentrocusto: TIntegerField
      FieldName = 'idcentrocusto'
      Origin = 'idcentrocusto'
    end
    object cheklistRealizadoidmaquia: TIntegerField
      FieldName = 'idmaquia'
      Origin = 'idmaquia'
    end
    object cheklistRealizadoidcentrocustodestino: TIntegerField
      FieldName = 'idcentrocustodestino'
      Origin = 'idcentrocustodestino'
    end
    object cheklistRealizadotransferencia: TIntegerField
      FieldName = 'transferencia'
      Origin = 'transferencia'
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
    end
    object cheklistRealizadoalerta: TIntegerField
      FieldName = 'alerta'
      Origin = 'alerta'
    end
    object cheklistRealizadoobservasao: TWideStringField
      FieldName = 'observasao'
      Origin = 'observasao'
      Size = 100
    end
  end
  object detcheklistRealizado: TFDQuery
    CachedUpdates = True
    Connection = frmPrincipal.FDConPG
    SQL.Strings = (
      'select * from detcheklistRealizado')
    Left = 656
    Top = 96
    object detcheklistRealizadoid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object detcheklistRealizadostatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object detcheklistRealizadodatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object detcheklistRealizadoidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object detcheklistRealizadodataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object detcheklistRealizadoidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object detcheklistRealizadoidcheck: TIntegerField
      FieldName = 'idcheck'
      Origin = 'idcheck'
    end
    object detcheklistRealizadoitem: TIntegerField
      FieldName = 'item'
      Origin = 'item'
    end
    object detcheklistRealizadoitemfotoobrigatoria: TIntegerField
      FieldName = 'itemfotoobrigatoria'
      Origin = 'itemfotoobrigatoria'
    end
    object detcheklistRealizadoitemfoto: TWideMemoField
      FieldName = 'itemfoto'
      Origin = 'itemfoto'
      BlobType = ftWideMemo
    end
    object detcheklistRealizadoitemobs: TWideStringField
      FieldName = 'itemobs'
      Origin = 'itemobs'
      Size = 50
    end
    object detcheklistRealizadodescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 100
    end
    object detcheklistRealizadoitemcheck: TIntegerField
      FieldName = 'itemcheck'
      Origin = 'itemcheck'
    end
    object detcheklistRealizadoidgrupo: TIntegerField
      FieldName = 'idgrupo'
      Origin = 'idgrupo'
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
  object ConfigS3: TFDQuery
    Connection = frmPrincipal.FDConPG
    SQL.Strings = (
      'select * from configaws')
    Left = 512
    Top = 264
    object ConfigS3urlS3: TWideStringField
      FieldName = 'urlS3'
      Origin = '"urlS3"'
      Size = 1000
    end
    object ConfigS3usuarios3: TWideStringField
      FieldName = 'usuarios3'
      Origin = 'usuarios3'
      Size = 100
    end
    object ConfigS3senhas3: TWideStringField
      FieldName = 'senhas3'
      Origin = 'senhas3'
      Size = 100
    end
    object ConfigS3region: TWideStringField
      FieldName = 'region'
      Origin = 'region'
      Size = 1000
    end
    object ConfigS3queueendpoint: TWideStringField
      FieldName = 'queueendpoint'
      Origin = 'queueendpoint'
      Size = 8190
    end
    object ConfigS3storageendpoint: TWideStringField
      FieldName = 'storageendpoint'
      Origin = 'storageendpoint'
      Size = 1000
    end
    object ConfigS3accontkey: TWideStringField
      FieldName = 'accontkey'
      Origin = 'accontkey'
      Size = 1000
    end
    object ConfigS3accontname: TWideStringField
      FieldName = 'accontname'
      Origin = 'accontname'
      Size = 8190
    end
    object ConfigS3nomes3: TWideStringField
      FieldName = 'nomes3'
      Origin = 'nomes3'
      Size = 100
    end
  end
end

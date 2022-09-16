object dmdb: Tdmdb
  OldCreateOrder = False
  Height = 582
  Width = 756
  object FDConPG: TFDConnection
    Params.Strings = (
      'Server=localhost'
      'User_Name=postgres'
      'Password=Dev#110485'
      'Pooled='
      'Database=ComboioADM'
      'DriverID=PG')
    ResourceOptions.AssignedValues = [rvAutoReconnect]
    ResourceOptions.AutoReconnect = True
    LoginPrompt = False
    OnLost = FDConPGLost
    Left = 21
    Top = 8
  end
  object PgDriverLink: TFDPhysPgDriverLink
    Left = 21
    Top = 80
  end
  object vQry: TFDQuery
    CachedUpdates = True
    Connection = FDConPG
    Left = 88
    Top = 16
  end
  object TUsuario: TFDQuery
    CachedUpdates = True
    OnReconcileError = TUsuarioReconcileError
    Connection = FDConPG
    SQL.Strings = (
      'select '
      ' U.*,'
      ' cast(case '
      '  when tipo=0 then '#39'PADRAO'#39
      '  when tipo=1 then '#39'ALMOXERIFADO'#39
      ' end as Varchar(12)) tipoSTR,'
      ' cast(case '
      '  when abastecimento=1 then '#39'SIM'#39
      '  ELSE'
      '   '#39'N'#195'O'#39
      ' end as varchar(3)) AbastecimentoSTR,'
      ' cast(case '
      '  when apontamento=1 then '#39'SIM'#39
      '  ELSE'
      '   '#39'N'#195'O'#39
      ' end as varchar(3)) ApontamentoSTR'
      'from usuario U'
      'where Status>-1'
      ''
      ''
      ''
      '')
    Left = 96
    Top = 72
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
    object TUsuarioiderp: TIntegerField
      FieldName = 'iderp'
      Origin = 'iderp'
    end
    object TUsuarioapontamento: TIntegerField
      FieldName = 'apontamento'
      Origin = 'apontamento'
    end
    object TUsuarioabastecimento: TIntegerField
      FieldName = 'abastecimento'
      Origin = 'abastecimento'
    end
    object TUsuarioabastecimentostr: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'abastecimentostr'
      Origin = 'abastecimentostr'
      ReadOnly = True
      Size = 3
    end
    object TUsuarioapontamentostr: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'apontamentostr'
      Origin = 'apontamentostr'
      ReadOnly = True
      Size = 3
    end
  end
  object TAuxMarca: TFDQuery
    CachedUpdates = True
    OnReconcileError = TAuxMarcaReconcileError
    Connection = FDConPG
    SQL.Strings = (
      'select * from auxmarcas'
      'WHERE STATUS>-1')
    Left = 96
    Top = 128
    object TAuxMarcaid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TAuxMarcastatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object TAuxMarcadatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object TAuxMarcaidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object TAuxMarcadataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object TAuxMarcaidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object TAuxMarcanome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object TAuxMarcasyncaws: TIntegerField
      FieldName = 'syncaws'
      Origin = 'syncaws'
    end
  end
  object TAuxGrupoMaquinas: TFDQuery
    CachedUpdates = True
    OnReconcileError = TAuxGrupoMaquinasReconcileError
    Connection = FDConPG
    SQL.Strings = (
      ''
      'select * from auxgrupomaquinaveiculos '
      'where status >-1')
    Left = 88
    Top = 184
    object TAuxGrupoMaquinasid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TAuxGrupoMaquinasstatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object TAuxGrupoMaquinasdatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object TAuxGrupoMaquinasidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object TAuxGrupoMaquinasdataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object TAuxGrupoMaquinasidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object TAuxGrupoMaquinasnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object TAuxGrupoMaquinassyncaws: TIntegerField
      FieldName = 'syncaws'
      Origin = 'syncaws'
    end
  end
  object TAuxSubGrupo: TFDQuery
    CachedUpdates = True
    OnReconcileError = TAuxSubGrupoReconcileError
    Connection = FDConPG
    SQL.Strings = (
      'SELECT a.*,'
      ' case '
      '   when tipomedicao=0 then '#39'HORIMETRO'#39
      '   when tipomedicao=1 then '#39'KM'#39
      '   when tipomedicao=2 then '#39'AMBOS'#39
      ' end TipoMedicaoStr'
      'FROM auxsubgrupoveiculos a'
      'WHERE STATUS>-1')
    Left = 88
    Top = 248
    object TAuxSubGrupoid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TAuxSubGrupostatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object TAuxSubGrupodatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object TAuxSubGrupoidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object TAuxSubGrupodataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object TAuxSubGrupoidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object TAuxSubGruponome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object TAuxSubGruposyncaws: TIntegerField
      FieldName = 'syncaws'
      Origin = 'syncaws'
    end
    object TAuxSubGrupotipomedicao: TIntegerField
      FieldName = 'tipomedicao'
      Origin = 'tipomedicao'
    end
    object TAuxSubGrupotipomedicaostr: TWideMemoField
      AutoGenerateValue = arDefault
      FieldName = 'tipomedicaostr'
      Origin = 'tipomedicaostr'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object TOperadorMaquina: TFDQuery
    CachedUpdates = True
    Connection = FDConPG
    SQL.Strings = (
      'select * from operadormaquinas '
      'where status=1')
    Left = 264
    Top = 184
    object TOperadorMaquinaid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TOperadorMaquinastatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object TOperadorMaquinadatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object TOperadorMaquinaidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object TOperadorMaquinadataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object TOperadorMaquinaidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object TOperadorMaquinanome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object TOperadorMaquinarg: TWideStringField
      FieldName = 'rg'
      Origin = 'rg'
      Size = 10
    end
    object TOperadorMaquinacpf: TWideStringField
      FieldName = 'cpf'
      Origin = 'cpf'
    end
    object TOperadorMaquinacnh: TWideStringField
      FieldName = 'cnh'
      Origin = 'cnh'
    end
    object TOperadorMaquinacelular: TWideStringField
      FieldName = 'celular'
      Origin = 'celular'
    end
    object TOperadorMaquinasyncaws: TIntegerField
      FieldName = 'syncaws'
      Origin = 'syncaws'
    end
    object TOperadorMaquinasyncfaz: TIntegerField
      FieldName = 'syncfaz'
      Origin = 'syncfaz'
    end
  end
  object Tauxatividadeabastecimento: TFDQuery
    CachedUpdates = True
    Connection = FDConPG
    SQL.Strings = (
      'SELECT * FROM auxatividadeabastecimento '
      'WHERE STATUS=1')
    Left = 264
    Top = 240
    object Tauxatividadeabastecimentoid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Tauxatividadeabastecimentostatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object Tauxatividadeabastecimentodatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object Tauxatividadeabastecimentoidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object Tauxatividadeabastecimentodataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object Tauxatividadeabastecimentoidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object Tauxatividadeabastecimentonome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object Tauxatividadeabastecimentosyncaws: TIntegerField
      FieldName = 'syncaws'
      Origin = 'syncaws'
    end
  end
  object TProdutos: TFDQuery
    CachedUpdates = True
    Connection = FDConPG
    SQL.Strings = (
      'SELECT * FROM PRODUTOS'
      'WHERE STATUS=1')
    Left = 264
    Top = 296
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
    object TProdutosiderp: TIntegerField
      FieldName = 'iderp'
      Origin = 'iderp'
    end
    object TProdutosproducao: TIntegerField
      FieldName = 'producao'
      Origin = 'producao'
    end
  end
  object TMaquinas: TFDQuery
    CachedUpdates = True
    OnReconcileError = TMaquinasReconcileError
    Connection = FDConPG
    SQL.Strings = (
      'select '
      ' m.*,'
      ' a.nome Grupo,'
      ' sb.nome SubGrupo,'
      ' a2.nome Marca,'
      ' case '
      '  when m.tipomedicao=0 then '#39'HOR'#205'METRO'#39
      '  when m.tipomedicao=1 then '#39'KM'#39
      '  when m.tipomedicao=2 then '#39'AMBOS'#39
      ' end tipomedicaoStr'
      'from maquinaveiculo m'
      'join auxgrupomaquinaveiculos a on a.id=m.idgrupo'
      'join auxsubgrupoveiculos sb  on sb.id=m.idsubgrupo '
      'join auxmarcas a2 on a2.id=m.idmarca '
      'order by prefixo')
    Left = 264
    Top = 352
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
    object TMaquinaskmatual: TBCDField
      FieldName = 'kmatual'
      Origin = 'kmatual'
      Precision = 15
      Size = 3
    end
    object TMaquinasgrupo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'grupo'
      Origin = 'grupo'
      Size = 50
    end
    object TMaquinassubgrupo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'subgrupo'
      Origin = 'subgrupo'
      Size = 50
    end
    object TMaquinasmarca: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'marca'
      Origin = 'marca'
      Size = 50
    end
    object TMaquinastipomedicao: TIntegerField
      FieldName = 'tipomedicao'
      Origin = 'tipomedicao'
    end
    object TMaquinastipomedicaostr: TWideMemoField
      AutoGenerateValue = arDefault
      FieldName = 'tipomedicaostr'
      Origin = 'tipomedicaostr'
      ReadOnly = True
      BlobType = ftWideMemo
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
    object TMaquinashoraultimoabastecimento: TTimeField
      FieldName = 'horaultimoabastecimento'
      Origin = 'horaultimoabastecimento'
    end
    object TMaquinashorimetroacumulado: TBCDField
      FieldName = 'horimetroacumulado'
      Origin = 'horimetroacumulado'
      Precision = 15
      Size = 3
    end
  end
  object TCentroCusto: TFDQuery
    CachedUpdates = True
    Connection = FDConPG
    SQL.Strings = (
      'select c.*,'
      'case'
      ' when status=1 then '#39'ATIVO'#39
      ' when status=0 then '#39'INATIVO'#39
      'end statusStr '
      'from centrocusto c'
      'where status>-1')
    Left = 480
    Top = 232
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
    object TCentroCustostatusstr: TWideMemoField
      AutoGenerateValue = arDefault
      FieldName = 'statusstr'
      Origin = 'statusstr'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object TCentroCustoiderp: TIntegerField
      FieldName = 'iderp'
      Origin = 'iderp'
    end
  end
  object TAbastecimento: TFDQuery
    CachedUpdates = True
    OnReconcileError = TAbastecimentoReconcileError
    Connection = FDConPG
    SQL.Strings = (
      'select '
      ' a.*,'
      ' l.nome localdeEstoque,'
      ' m.prefixo,'
      ' p.nome produto,'
      ' c.nome centrocustonome,'
      ' case'
      '   when alerta =0 then '#39'SEM ALERTA'#39
      '   when alerta =1 then '#39'HOR'#205'METRO QUEBRADO'#39
      '   when alerta =2 then '#39'HOR'#205'METRO TROCADO'#39
      '   when alerta =3 then '#39'HOD'#212'METRO QUEBRADO'#39
      '   when alerta =4 then '#39'HOD'#212'METRO TROCADO'#39
      '   when alerta =5 then '#39'OUTROS'#39
      ' end tipoAlerta,'
      ' u.nome UsuariNome,'
      ' c.iderp ID_ERP_CENTROCUSTO,'
      ' l.iderp ID_ERP_LOCAL_ESTOQUE,'
      ' m.tipomedicao'
      'from abastecimento a '
      'join usuario u  on a.idusuario =U.ID'
      'join centrocusto c  on a.idcentrocusto=c.id '
      'join localestoque l on a.idlocalestoque=l.id'
      'join maquinaveiculo m on a.idmaquina=m.id'
      'join produtos p on a.combustivel = p.id '
      'limit 1')
    Left = 480
    Top = 288
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
    object TAbastecimentoidoperador: TIntegerField
      FieldName = 'idoperador'
      Origin = 'idoperador'
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
    object TAbastecimentoidatividade: TIntegerField
      FieldName = 'idatividade'
      Origin = 'idatividade'
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
    object TAbastecimentolocaldeestoque: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'localdeestoque'
      Origin = 'localdeestoque'
      Size = 50
    end
    object TAbastecimentoprefixo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'prefixo'
      Origin = 'prefixo'
    end
    object TAbastecimentoproduto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'produto'
      Origin = 'produto'
      Size = 50
    end
    object TAbastecimentocentrocustonome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'centrocustonome'
      Origin = 'centrocustonome'
      Size = 50
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
    object TAbastecimentotipoalerta: TWideMemoField
      AutoGenerateValue = arDefault
      FieldName = 'tipoalerta'
      Origin = 'tipoalerta'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object TAbastecimentoimgsyncs3: TIntegerField
      FieldName = 'imgsyncs3'
      Origin = 'imgsyncs3'
    end
    object TAbastecimentousuarinome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'usuarinome'
      Origin = 'usuarinome'
      Size = 100
    end
    object TAbastecimentoid_erp_centrocusto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_erp_centrocusto'
      Origin = 'id_erp_centrocusto'
    end
    object TAbastecimentoid_erp_local_estoque: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_erp_local_estoque'
      Origin = 'id_erp_local_estoque'
    end
    object TAbastecimentotipomedicao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'tipomedicao'
      Origin = 'tipomedicao'
    end
  end
  object TEstoqueEntrada: TFDQuery
    CachedUpdates = True
    Connection = FDConPG
    SQL.Strings = (
      'select '
      ' a.*,'
      ' b.nome Fornecedor, '
      ' d.nome CentroCusto'
      'from nfentrada a'
      'join fornecedor b on a.idFornecedor=b.id'
      'join centrocusto d on d.id=a.idcentrocusto'
      'where a.status=1')
    Left = 478
    Top = 96
    object TEstoqueEntradaid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TEstoqueEntradastatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object TEstoqueEntradadatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object TEstoqueEntradaidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object TEstoqueEntradadataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object TEstoqueEntradaidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object TEstoqueEntradaidfornecedor: TIntegerField
      FieldName = 'idfornecedor'
      Origin = 'idfornecedor'
    end
    object TEstoqueEntradaidpedido: TIntegerField
      FieldName = 'idpedido'
      Origin = 'idpedido'
    end
    object TEstoqueEntradanumeronf: TIntegerField
      FieldName = 'numeronf'
      Origin = 'numeronf'
    end
    object TEstoqueEntradadataemissao: TDateField
      FieldName = 'dataemissao'
      Origin = 'dataemissao'
    end
    object TEstoqueEntradadataentradaestoque: TDateField
      FieldName = 'dataentradaestoque'
      Origin = 'dataentradaestoque'
    end
    object TEstoqueEntradavalortotalnf: TFMTBCDField
      FieldName = 'valortotalnf'
      Origin = 'valortotalnf'
      Precision = 18
      Size = 2
    end
    object TEstoqueEntradaidcentrocusto: TIntegerField
      FieldName = 'idcentrocusto'
      Origin = 'idcentrocusto'
    end
    object TEstoqueEntradasyncaws: TIntegerField
      FieldName = 'syncaws'
      Origin = 'syncaws'
    end
    object TEstoqueEntradatipo: TIntegerField
      FieldName = 'tipo'
      Origin = 'tipo'
    end
    object TEstoqueEntradafornecedor: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'fornecedor'
      Origin = 'fornecedor'
      Size = 100
    end
    object TEstoqueEntradacentrocusto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'centrocusto'
      Origin = 'centrocusto'
      Size = 50
    end
  end
  object TEstoqueSaida: TFDQuery
    CachedUpdates = True
    Connection = FDConPG
    SQL.Strings = (
      'select '
      ' a.*,'
      ' c.nome localEstoque,'
      ' d.nome CentroCusto,'
      ' e.nome Produto,'
      ' e.codigofabricante ProdutoCodFabricante,'
      ' case'
      '   when tipo_baixa=0 then '#39'Baixa Estoque'#39
      '   when tipo_baixa=1 then '#39'Acerto Estoque'#39' '
      ' end TipoStr,'
      'a.valorsaida/a.qtditens valoTotal'
      'from estoquesaida a '
      'join localestoque c on c.id=a.idlocalestoque'
      'join centrocusto d on d.id=a.idcentrocusto'
      'join produtos e on e.id=a.idproduto'
      'where a.status=1')
    Left = 478
    Top = 160
    object TEstoqueSaidaid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
    end
    object TEstoqueSaidastatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object TEstoqueSaidadatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object TEstoqueSaidaidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object TEstoqueSaidadataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object TEstoqueSaidaidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object TEstoqueSaidaidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object TEstoqueSaidadatasaidaestoque: TDateField
      FieldName = 'datasaidaestoque'
      Origin = 'datasaidaestoque'
    end
    object TEstoqueSaidaqtditens: TFMTBCDField
      FieldName = 'qtditens'
      Origin = 'qtditens'
      Precision = 18
      Size = 2
    end
    object TEstoqueSaidaunidademedida: TWideStringField
      FieldName = 'unidademedida'
      Origin = 'unidademedida'
    end
    object TEstoqueSaidaidlocalestoque: TIntegerField
      FieldName = 'idlocalestoque'
      Origin = 'idlocalestoque'
    end
    object TEstoqueSaidaidcentrocusto: TIntegerField
      FieldName = 'idcentrocusto'
      Origin = 'idcentrocusto'
    end
    object TEstoqueSaidasyncaws: TIntegerField
      FieldName = 'syncaws'
      Origin = 'syncaws'
    end
    object TEstoqueSaidatipo_baixa: TIntegerField
      FieldName = 'tipo_baixa'
      Origin = 'tipo_baixa'
    end
    object TEstoqueSaidaidresponsavel: TIntegerField
      FieldName = 'idresponsavel'
      Origin = 'idresponsavel'
    end
    object TEstoqueSaidavalorsaida: TBCDField
      FieldName = 'valorsaida'
      Origin = 'valorsaida'
      Precision = 15
      Size = 3
    end
    object TEstoqueSaidaidabastecimento: TIntegerField
      FieldName = 'idabastecimento'
      Origin = 'idabastecimento'
    end
    object TEstoqueSaidaidreceiturario: TIntegerField
      FieldName = 'idreceiturario'
      Origin = 'idreceiturario'
    end
    object TEstoqueSaidaidlocaldestino: TIntegerField
      FieldName = 'idlocaldestino'
      Origin = 'idlocaldestino'
    end
    object TEstoqueSaidalocalestoque: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'localestoque'
      Origin = 'localestoque'
      Size = 50
    end
    object TEstoqueSaidacentrocusto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'centrocusto'
      Origin = 'centrocusto'
      Size = 50
    end
    object TEstoqueSaidaproduto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'produto'
      Origin = 'produto'
      Size = 50
    end
    object TEstoqueSaidaprodutocodfabricante: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'produtocodfabricante'
      Origin = 'produtocodfabricante'
      Size = 30
    end
    object TEstoqueSaidatipostr: TWideMemoField
      AutoGenerateValue = arDefault
      FieldName = 'tipostr'
      Origin = 'tipostr'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object TEstoqueSaidavalototal: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'valototal'
      Origin = 'valototal'
      ReadOnly = True
      Precision = 64
      Size = 0
    end
  end
  object TnotaFiscalIntem: TFDQuery
    CachedUpdates = True
    OnReconcileError = TnotaFiscalIntemReconcileError
    Connection = FDConPG
    SQL.Strings = (
      'select '
      ' ROW_NUMBER () OVER (ORDER BY a.id)Item,'
      ' a.*,'
      ' b.id ProdutoId,'
      ' b.unidademedida ProdutoUnidade,'
      ' b.nome ProdutoNome,'
      ' b.codigofabricante ProdutoFabricante,'
      ' c.nome LocalEstoque,'
      ' a.valortotalnf/a.qtditens valoruni'
      'from notafiscalitems a'
      'join produtos b on a.idproduto=b.id'
      'join localestoque c on c.id=a.idlocalestoque'
      '')
    Left = 478
    Top = 48
    object TnotaFiscalIntemitem: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'item'
      Origin = 'item'
      ReadOnly = True
    end
    object TnotaFiscalIntemid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TnotaFiscalIntemstatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object TnotaFiscalIntemdatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object TnotaFiscalIntemidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object TnotaFiscalIntemdataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object TnotaFiscalIntemidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object TnotaFiscalIntemidnota: TIntegerField
      FieldName = 'idnota'
      Origin = 'idnota'
    end
    object TnotaFiscalIntemidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object TnotaFiscalIntemvalortotalnf: TFMTBCDField
      FieldName = 'valortotalnf'
      Origin = 'valortotalnf'
      Precision = 18
      Size = 2
    end
    object TnotaFiscalIntemqtditens: TFMTBCDField
      FieldName = 'qtditens'
      Origin = 'qtditens'
      Precision = 18
      Size = 2
    end
    object TnotaFiscalIntemunidademedida: TWideStringField
      FieldName = 'unidademedida'
      Origin = 'unidademedida'
    end
    object TnotaFiscalIntempesoembalagem: TFMTBCDField
      FieldName = 'pesoembalagem'
      Origin = 'pesoembalagem'
      Precision = 18
      Size = 2
    end
    object TnotaFiscalIntemidlocalestoque: TIntegerField
      FieldName = 'idlocalestoque'
      Origin = 'idlocalestoque'
    end
    object TnotaFiscalIntemsyncaws: TIntegerField
      FieldName = 'syncaws'
      Origin = 'syncaws'
    end
    object TnotaFiscalIntemprodutoid: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'produtoid'
      Origin = 'produtoid'
    end
    object TnotaFiscalIntemprodutounidade: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'produtounidade'
      Origin = 'produtounidade'
      Size = 10
    end
    object TnotaFiscalIntemprodutonome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'produtonome'
      Origin = 'produtonome'
      Size = 50
    end
    object TnotaFiscalIntemprodutofabricante: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'produtofabricante'
      Origin = 'produtofabricante'
      Size = 30
    end
    object TnotaFiscalIntemlocalestoque: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'localestoque'
      Origin = 'localestoque'
      Size = 50
    end
    object TnotaFiscalIntemvaloruni: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'valoruni'
      Origin = 'valoruni'
      ReadOnly = True
      Precision = 64
      Size = 0
    end
  end
  object TLocalEstoque: TFDQuery
    CachedUpdates = True
    Connection = FDConPG
    SQL.Strings = (
      'select '
      ' a.*,'
      ' b.nome centrocusto,'
      ' p.nome Combustivel'
      'from LocalEstoque a'
      'join centrocusto b on a.idcentrocusto=b.id'
      'join produtos p on p.id=a.idcombustivel '
      'where a.status=1')
    Left = 270
    Top = 112
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
    object TLocalEstoquecentrocusto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'centrocusto'
      Origin = 'centrocusto'
      Size = 50
    end
    object TLocalEstoqueidcombustivel: TIntegerField
      FieldName = 'idcombustivel'
      Origin = 'idcombustivel'
    end
    object TLocalEstoqueiderp: TIntegerField
      FieldName = 'iderp'
      Origin = 'iderp'
    end
    object TLocalEstoquecombustivel: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'combustivel'
      Origin = 'combustivel'
      Size = 50
    end
  end
  object TFornecedores: TFDQuery
    CachedUpdates = True
    OnReconcileError = TFornecedoresReconcileError
    Connection = FDConPG
    SQL.Strings = (
      'select * from fornecedor'
      'where status=1')
    Left = 274
    Top = 43
    object TFornecedoresid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TFornecedoresstatus: TIntegerField
      FieldName = 'status'
    end
    object TFornecedoresdatareg: TSQLTimeStampField
      FieldName = 'datareg'
    end
    object TFornecedoresidusuario: TIntegerField
      FieldName = 'idusuario'
    end
    object TFornecedoresdataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
    end
    object TFornecedoresidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
    end
    object TFornecedoresnome: TWideStringField
      FieldName = 'nome'
      Size = 100
    end
    object TFornecedorescidade: TWideStringField
      FieldName = 'cidade'
      Size = 100
    end
    object TFornecedoresuf: TWideStringField
      FieldName = 'uf'
      FixedChar = True
      Size = 2
    end
    object TFornecedorescpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Size = 30
    end
    object TFornecedorestelefone_fixo: TWideStringField
      FieldName = 'telefone_fixo'
    end
    object TFornecedorescelular: TWideStringField
      FieldName = 'celular'
    end
    object TFornecedoresemail: TWideStringField
      FieldName = 'email'
      Size = 100
    end
    object TFornecedorescontatopessoa: TWideStringField
      FieldName = 'contatopessoa'
      Size = 100
    end
    object TFornecedoressenha: TWideStringField
      FieldName = 'senha'
    end
    object TFornecedoressyncaws: TIntegerField
      FieldName = 'syncaws'
    end
    object TFornecedoresrazaosocial: TWideStringField
      FieldName = 'razaosocial'
      Size = 100
    end
    object TFornecedoresinscricaoestadual: TWideStringField
      FieldName = 'inscricaoestadual'
    end
  end
  object TMovLocalEstoque: TFDQuery
    CachedUpdates = True
    Connection = FDConPG
    SQL.Strings = (
      'select '
      ' a.*,'
      ' co.nome CentroCustoOrigem,'
      ' o.nome LocalOrigem,'
      ' cd.nome CentroCustoDestino,'
      ' d.nome LocalDestino,'
      ' c.nome Produto '
      'from tranferenciaLocalestoque A '
      'join localestoque o on o.id=a.idlocalestoqueorigem'
      'join centrocusto co on co.id=o.idcentrocusto '
      'join localestoque d on d.id=a.idlocalestoquedetino'
      'join centrocusto cd on cd.id=d.idcentrocusto '
      'join produtos c on a.idproduto=c.id'
      'where a.status=1')
    Left = 374
    Top = 160
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
    object TMovLocalEstoquelocalorigem: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'localorigem'
      Origin = 'localorigem'
      Size = 50
    end
    object TMovLocalEstoquelocaldestino: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'localdestino'
      Origin = 'localdestino'
      Size = 50
    end
    object TMovLocalEstoqueproduto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'produto'
      Origin = 'produto'
      Size = 50
    end
    object TMovLocalEstoquecentrocustoorigem: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'centrocustoorigem'
      Origin = 'centrocustoorigem'
      Size = 50
    end
    object TMovLocalEstoquecentrocustodestino: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'centrocustodestino'
      Origin = 'centrocustodestino'
      Size = 50
    end
    object TMovLocalEstoqueimg: TBlobField
      FieldName = 'img'
      Origin = 'img'
    end
    object TMovLocalEstoqueimgfim: TBlobField
      FieldName = 'imgfim'
      Origin = 'imgfim'
    end
    object TMovLocalEstoqueimgsyncs3: TIntegerField
      FieldName = 'imgsyncs3'
      Origin = 'imgsyncs3'
    end
  end
  object TStartBomba: TFDQuery
    CachedUpdates = True
    Connection = FDConPG
    SQL.Strings = (
      'select s.*,l.nome LocalEstoque,'
      'p.nome CombustivelNome,'
      'c.nome Centrocusto,'
      's.volumelitrosini+(s.volumelitrosfim-s.volumelitrosini) saldo,'
      's.volumelitrosfim-s.volumelitrosini volumeutilizado '
      'from startbomba s '
      'join localestoque l on l.id=s.idlocalestoque '
      'join produtos p on p.id =s.combustivel '
      'join centrocusto c on c.id=l.idcentrocusto')
    Left = 384
    Top = 240
    object TStartBombaid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TStartBombastatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object TStartBombadatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object TStartBombaidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object TStartBombadataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object TStartBombaidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object TStartBombaidlocalestoque: TIntegerField
      FieldName = 'idlocalestoque'
      Origin = 'idlocalestoque'
    end
    object TStartBombaidcentrocusto: TIntegerField
      FieldName = 'idcentrocusto'
      Origin = 'idcentrocusto'
    end
    object TStartBombacombustivel: TIntegerField
      FieldName = 'combustivel'
      Origin = 'combustivel'
    end
    object TStartBombadataastart: TDateField
      FieldName = 'dataastart'
      Origin = 'dataastart'
    end
    object TStartBombahorastart: TTimeField
      FieldName = 'horastart'
      Origin = 'horastart'
    end
    object TStartBombadataaend: TDateField
      FieldName = 'dataaend'
      Origin = 'dataaend'
    end
    object TStartBombahoraend: TTimeField
      FieldName = 'horaend'
      Origin = 'horaend'
    end
    object TStartBombasyncaws: TIntegerField
      FieldName = 'syncaws'
      Origin = 'syncaws'
    end
    object TStartBombavolumelitrosini: TBCDField
      FieldName = 'volumelitrosini'
      Origin = 'volumelitrosini'
      Precision = 15
      Size = 3
    end
    object TStartBombaobs: TWideStringField
      FieldName = 'obs'
      Origin = 'obs'
      Size = 100
    end
    object TStartBombaimgstart: TWideMemoField
      FieldName = 'imgstart'
      Origin = 'imgstart'
      BlobType = ftWideMemo
    end
    object TStartBombaimgend: TWideMemoField
      FieldName = 'imgend'
      Origin = 'imgend'
      BlobType = ftWideMemo
    end
    object TStartBombavolumelitrosfim: TBCDField
      FieldName = 'volumelitrosfim'
      Origin = 'volumelitrosfim'
      Precision = 15
      Size = 3
    end
    object TStartBombalocalestoque: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'localestoque'
      Origin = 'localestoque'
      Size = 50
    end
    object TStartBombacombustivelnome: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'combustivelnome'
      Origin = 'combustivelnome'
      Size = 50
    end
    object TStartBombacentrocusto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'centrocusto'
      Origin = 'centrocusto'
      Size = 50
    end
    object TStartBombasaldo: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'saldo'
      Origin = 'saldo'
      ReadOnly = True
      Precision = 64
      Size = 0
    end
    object TStartBombavolumeutilizado: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'volumeutilizado'
      Origin = 'volumeutilizado'
      ReadOnly = True
      Precision = 64
      Size = 0
    end
    object TStartBombaimgsyncs3: TIntegerField
      FieldName = 'imgsyncs3'
      Origin = 'imgsyncs3'
    end
  end
  object TDevice: TFDQuery
    CachedUpdates = True
    Connection = FDConPG
    SQL.Strings = (
      'select d.*,c.nome CentroCusto from devices d '
      'left join centrocusto c on c.id=d.idcentrocusto'
      'where d.status=1')
    Left = 176
    Top = 304
    object TDeviceid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TDevicestatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object TDevicedatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object TDeviceidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object TDevicedataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object TDevicepatrimonio: TIntegerField
      FieldName = 'patrimonio'
      Origin = 'patrimonio'
    end
    object TDevicemarca: TWideStringField
      FieldName = 'marca'
      Origin = 'marca'
      Size = 50
    end
    object TDevicemodelo: TWideStringField
      FieldName = 'modelo'
      Origin = 'modelo'
      Size = 50
    end
    object TDeviceidcentrocusto: TIntegerField
      FieldName = 'idcentrocusto'
      Origin = 'idcentrocusto'
    end
    object TDevicesyncaws: TIntegerField
      FieldName = 'syncaws'
      Origin = 'syncaws'
    end
    object TDevicecentrocusto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'centrocusto'
      Origin = 'centrocusto'
      Size = 50
    end
  end
  object TLubrificacao: TFDQuery
    CachedUpdates = True
    Connection = FDConPG
    SQL.Strings = (
      'select '
      '     l.*, '
      '    case '
      '     when alerta =0 then '#39'SEM ALERTA'#39' '
      '     when alerta =1 then '#39'HOR'#205'METRO QUEBRADO'#39' '
      '     when alerta =2 then '#39'HOR'#205'METRO TROCADO'#39' '
      '     when alerta =3 then '#39'HOD'#212'METRO QUEBRADO'#39' '
      '     when alerta =4 then '#39'HOD'#212'METRO TROCADO'#39' '
      '     when alerta =5 then '#39'OUTROS'#39' '
      '    end tipoAlerta, '
      '     m.prefixo maquina, '
      '     c.nome centrocusto,'
      '    ls.nome localestoque'
      '    from lubrificacao l '
      '    join maquinaveiculo m on l.idmaquina =m.id '
      '    join centrocusto c on c.id=l.idcentrocusto '
      '    left join localestoque ls on ls.id=l.idlocalestoque'
      '    where l.status=1 ')
    Left = 584
    Top = 144
    object TLubrificacaoid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TLubrificacaostatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object TLubrificacaodatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object TLubrificacaoidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object TLubrificacaodataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object TLubrificacaoidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object TLubrificacaoidmaquina: TIntegerField
      FieldName = 'idmaquina'
      Origin = 'idmaquina'
    end
    object TLubrificacaodatatroca: TDateField
      FieldName = 'datatroca'
      Origin = 'datatroca'
    end
    object TLubrificacaosyncaws: TIntegerField
      FieldName = 'syncaws'
      Origin = 'syncaws'
    end
    object TLubrificacaosyncfaz: TIntegerField
      FieldName = 'syncfaz'
      Origin = 'syncfaz'
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
    object TLubrificacaomaquina: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'maquina'
      Origin = 'maquina'
    end
    object TLubrificacaoidcentrocusto: TIntegerField
      FieldName = 'idcentrocusto'
      Origin = 'idcentrocusto'
    end
    object TLubrificacaocentrocusto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'centrocusto'
      Origin = 'centrocusto'
      Size = 50
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
    object TLubrificacaotipoalerta: TWideMemoField
      AutoGenerateValue = arDefault
      FieldName = 'tipoalerta'
      Origin = 'tipoalerta'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object TLubrificacaoidlocalestoque: TIntegerField
      FieldName = 'idlocalestoque'
      Origin = 'idlocalestoque'
    end
    object TLubrificacaolocalestoque: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'localestoque'
      Origin = 'localestoque'
      Size = 50
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
  object TLubrificacaoprodutos: TFDQuery
    CachedUpdates = True
    Connection = FDConPG
    SQL.Strings = (
      'select '
      'l.*,'
      'case '
      ' when l.tipo=1 then '#39'TROCA'#39' '
      ' when l.tipo=2 then '#39'REMONTA'#39' '
      'end TipoStr, '
      'p.nome produto,'
      'p.codigofabricante,'
      'c.nome Compartimento'
      'from lubrificacaoprodutos l '
      'join produtos p on l.idproduto=p.id'
      
        'left join compartimentolubricficacao c on c.id=l.idcompartimento' +
        ' '
      'where l.status=1')
    Left = 584
    Top = 216
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
    object TLubrificacaoprodutosproduto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'produto'
      Origin = 'produto'
      Size = 50
    end
    object TLubrificacaoprodutoscodigofabricante: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'codigofabricante'
      Origin = 'codigofabricante'
      Size = 30
    end
    object TLubrificacaoprodutosidcompartimento: TIntegerField
      FieldName = 'idcompartimento'
      Origin = 'idcompartimento'
    end
    object TLubrificacaoprodutoscompartimento: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'compartimento'
      Origin = 'compartimento'
      Size = 50
    end
    object TLubrificacaoprodutostipo: TIntegerField
      FieldName = 'tipo'
      Origin = 'tipo'
    end
    object TLubrificacaoprodutostipostr: TWideMemoField
      AutoGenerateValue = arDefault
      FieldName = 'tipostr'
      Origin = 'tipostr'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object TAuxCompLub: TFDQuery
    CachedUpdates = True
    Connection = FDConPG
    SQL.Strings = (
      'select * from  compartimentolubricficacao'
      'where status>-1')
    Left = 384
    Top = 336
    object TAuxCompLubid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TAuxCompLubstatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object TAuxCompLubdatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object TAuxCompLubidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object TAuxCompLubdataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object TAuxCompLubidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object TAuxCompLubnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object TAuxCompLubsyncaws: TIntegerField
      FieldName = 'syncaws'
      Origin = 'syncaws'
    end
  end
  object cheklistgeneric: TFDQuery
    CachedUpdates = True
    IndexesActive = False
    Connection = FDConPG
    SQL.Strings = (
      'select '
      ' a.*,'
      ' case '
      '   when transferencia=1 then '#39'SIM'#39
      '   ELSE'
      '    '#39'N'#195'O'#39
      ' end Transf,'
      ' a2.nome  GrupoMaquina'
      'from cheklistgeneric a'
      'join auxgrupomaquinaveiculos a2 on a2.id=a.idgrupomaquinas'
      'where a.status=1 ')
    Left = 32
    Top = 408
    object cheklistgenericid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cheklistgenericstatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object cheklistgenericdatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object cheklistgenericidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object cheklistgenericdataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object cheklistgenericidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object cheklistgenericnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object cheklistgenericdescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 200
    end
    object cheklistgenerictransferencia: TIntegerField
      FieldName = 'transferencia'
      Origin = 'transferencia'
    end
    object cheklistgenerictransf: TWideMemoField
      AutoGenerateValue = arDefault
      FieldName = 'transf'
      Origin = 'transf'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object cheklistgenericidgrupomaquinas: TIntegerField
      FieldName = 'idgrupomaquinas'
      Origin = 'idgrupomaquinas'
    end
    object cheklistgenericgrupomaquina: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'grupomaquina'
      Origin = 'grupomaquina'
      Size = 50
    end
  end
  object cheklistRealizado: TFDQuery
    CachedUpdates = True
    Connection = FDConPG
    SQL.Strings = (
      'select a.*,  '
      '    case '
      '    when a.status=1 then '#39'Aberto'#39' '
      '    when a.status=2 then '#39'Finalizado'#39' '
      '    end statusStr,'
      '    m.prefixo,'
      '    m.id idmaquina,'
      '    o.nome CentroCusto,'
      '    c.nome CentroCustoDestino,'
      '    c.id idCentroCustoDestino '
      'from cheklistRealizado a '
      'join maquinaveiculo m on a.idmaquia=m.id'
      'join centrocusto O on O.id=a.idcentrocusto'
      'left join centrocusto c on c.id=a.idcentrocustodestino'
      'where a.status>0 ')
    Left = 32
    Top = 480
    object cheklistRealizadoid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
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
    object cheklistRealizadostatusstr: TWideMemoField
      AutoGenerateValue = arDefault
      FieldName = 'statusstr'
      Origin = 'statusstr'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object cheklistRealizadoprefixo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'prefixo'
      Origin = 'prefixo'
    end
    object cheklistRealizadoidmaquina: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idmaquina'
      Origin = 'idmaquina'
    end
    object cheklistRealizadocentrocustodestino: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'centrocustodestino'
      Origin = 'centrocustodestino'
      Size = 50
    end
    object cheklistRealizadoidcentrocustodestino_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idcentrocustodestino_1'
      Origin = 'idcentrocustodestino'
    end
    object cheklistRealizadocentrocusto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'centrocusto'
      Origin = 'centrocusto'
      Size = 50
    end
    object cheklistRealizadoobservasao: TWideStringField
      FieldName = 'observasao'
      Origin = 'observasao'
      Size = 100
    end
  end
  object detcheklistgeneric: TFDQuery
    CachedUpdates = True
    IndexesActive = False
    IndexFieldNames = 'idcheck'
    MasterSource = dscheklistGeneric
    MasterFields = 'id'
    DetailFields = 'idcheck'
    OnReconcileError = detcheklistgenericReconcileError
    Connection = FDConPG
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select A.*,c.nome grupo, '
      'case'
      ' when ItemFotoObrigatoria=0 then '#39'NAO'#39
      ' when ItemFotoObrigatoria=1 then '#39'SIM'#39
      'end FotoObrigatoria'
      'from detcheklistgeneric A'
      'join cheklistregrupoitem c on c.id=a.idgrupo'
      'where a.status=1 and idcheck=:id '
      'order by grupo,item')
    Left = 232
    Top = 408
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 4
      end>
    object detcheklistgenericid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object detcheklistgenericstatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object detcheklistgenericdatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object detcheklistgenericidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object detcheklistgenericdataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object detcheklistgenericidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object detcheklistgenericidcheck: TIntegerField
      FieldName = 'idcheck'
      Origin = 'idcheck'
    end
    object detcheklistgenericitem: TIntegerField
      FieldName = 'item'
      Origin = 'item'
    end
    object detcheklistgenericitemfotoobrigatoria: TIntegerField
      FieldName = 'itemfotoobrigatoria'
      Origin = 'itemfotoobrigatoria'
    end
    object detcheklistgenericitemobs: TWideStringField
      FieldName = 'itemobs'
      Origin = 'itemobs'
      Size = 50
    end
    object detcheklistgenericdescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 100
    end
    object detcheklistgenericfotoobrigatoria: TWideMemoField
      AutoGenerateValue = arDefault
      FieldName = 'fotoobrigatoria'
      Origin = 'fotoobrigatoria'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object detcheklistgenericidgrupo: TIntegerField
      FieldName = 'idgrupo'
      Origin = 'idgrupo'
    end
    object detcheklistgenericgrupo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'grupo'
      Origin = 'grupo'
      Size = 100
    end
  end
  object dscheklistGeneric: TDataSource
    DataSet = cheklistgeneric
    Left = 120
    Top = 408
  end
  object dscheklistRealizado: TDataSource
    DataSet = cheklistRealizado
    Left = 128
    Top = 480
  end
  object cheklistregrupoitem: TFDQuery
    CachedUpdates = True
    Connection = FDConPG
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
  object detCheckListReal: TFDQuery
    IndexFieldNames = 'idcheck'
    MasterSource = dscheklistRealizado
    MasterFields = 'id'
    DetailFields = 'id'
    Connection = FDConPG
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select '
      ' a.*,'
      ' case '
      '  when a.itemcheck =1 then true'
      '  else'
      '   false'
      ' end checado,'
      ' c.nome grupo '
      'from detcheklistRealizado a'
      'join cheklistregrupoitem c on c.id=a.idgrupo'
      'where idcheck=:id')
    Left = 232
    Top = 480
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 2
      end>
    object detCheckListRealid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object detCheckListRealstatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object detCheckListRealdatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object detCheckListRealidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object detCheckListRealdataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object detCheckListRealidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object detCheckListRealidcheck: TIntegerField
      FieldName = 'idcheck'
      Origin = 'idcheck'
    end
    object detCheckListRealitem: TIntegerField
      FieldName = 'item'
      Origin = 'item'
    end
    object detCheckListRealitemfotoobrigatoria: TIntegerField
      FieldName = 'itemfotoobrigatoria'
      Origin = 'itemfotoobrigatoria'
    end
    object detCheckListRealitemfoto: TWideMemoField
      FieldName = 'itemfoto'
      Origin = 'itemfoto'
      BlobType = ftWideMemo
    end
    object detCheckListRealitemobs: TWideStringField
      FieldName = 'itemobs'
      Origin = 'itemobs'
      Size = 50
    end
    object detCheckListRealdescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 100
    end
    object detCheckListRealitemcheck: TIntegerField
      FieldName = 'itemcheck'
      Origin = 'itemcheck'
    end
    object detCheckListRealidgrupo: TIntegerField
      FieldName = 'idgrupo'
      Origin = 'idgrupo'
    end
    object detCheckListRealnormal: TBooleanField
      FieldName = 'normal'
      Origin = 'normal'
    end
    object detCheckListRealreparar: TBooleanField
      FieldName = 'reparar'
      Origin = 'reparar'
    end
    object detCheckListRealnaoseaplica: TBooleanField
      FieldName = 'naoseaplica'
      Origin = 'naoseaplica'
    end
    object detCheckListRealchecado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'checado'
      Origin = 'checado'
      ReadOnly = True
    end
    object detCheckListRealgrupo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'grupo'
      Origin = 'grupo'
      Size = 100
    end
  end
  object ModeloMaquina: TFDQuery
    CachedUpdates = True
    Connection = FDConPG
    SQL.Strings = (
      'select m.*,a.nome Fabricante from modelomaquina m '
      'join auxmarcas a on a.id=m.idmarca '
      'where m.status =1'
      ''
      ''
      '')
    Left = 480
    Top = 344
    object ModeloMaquinaid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object ModeloMaquinastatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object ModeloMaquinadatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object ModeloMaquinaidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object ModeloMaquinadataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object ModeloMaquinaidmarca: TIntegerField
      FieldName = 'idmarca'
      Origin = 'idmarca'
    end
    object ModeloMaquinamodelo: TWideStringField
      FieldName = 'modelo'
      Origin = 'modelo'
      Size = 50
    end
    object ModeloMaquinasyncaws: TIntegerField
      FieldName = 'syncaws'
      Origin = 'syncaws'
    end
    object ModeloMaquinafabricante: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'fabricante'
      Origin = 'fabricante'
      Size = 50
    end
    object ModeloMaquinaidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object ModeloMaquinamediaconsumo: TBCDField
      FieldName = 'mediaconsumo'
      Origin = 'mediaconsumo'
      Precision = 15
      Size = 2
    end
    object ModeloMaquinatolerancaconsumopercent: TBCDField
      FieldName = 'tolerancaconsumopercent'
      Origin = 'tolerancaconsumopercent'
      Precision = 15
      Size = 2
    end
  end
  object ConfigS3: TFDQuery
    Connection = FDConPG
    SQL.Strings = (
      'SELECT * FROM configaws')
    Left = 584
    Top = 280
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
    object ConfigS3tableendpoints3: TWideStringField
      FieldName = 'tableendpoints3'
      Origin = 'tableendpoints3'
      Size = 1000
    end
  end
  object TApontamento: TFDQuery
    CachedUpdates = True
    OnReconcileError = TApontamentoReconcileError
    Connection = FDConPG
    SQL.Strings = (
      'select '
      ' a.*,'
      ' m.prefixo Maquina,'
      ' c.nome CentroCusto,'
      ' p.nome Produtos'
      'from apontamento a'
      'join maquinaveiculo m on a.idescavadeira=m.id '
      'join centrocusto    c on c.id=a.idCentroCusto  '
      'join produtos       p on a.idproduto=p.id '
      'where a.status=1')
    Left = 480
    Top = 400
    object TApontamentoid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TApontamentostatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object TApontamentodatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object TApontamentoidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object TApontamentodataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object TApontamentodataoperacao: TDateField
      FieldName = 'dataoperacao'
      Origin = 'dataoperacao'
    end
    object TApontamentoidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object TApontamentoidcentrocusto: TIntegerField
      FieldName = 'idcentrocusto'
      Origin = 'idcentrocusto'
    end
    object TApontamentoidescavadeira: TIntegerField
      FieldName = 'idescavadeira'
      Origin = 'idescavadeira'
    end
    object TApontamentoidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object TApontamentoaplicacaoproduto: TWideStringField
      FieldName = 'aplicacaoproduto'
      Origin = 'aplicacaoproduto'
      Size = 50
    end
    object TApontamentokmatualescavadeira: TWideStringField
      FieldName = 'kmatualescavadeira'
      Origin = 'kmatualescavadeira'
      Size = 50
    end
    object TApontamentoobservacao: TWideStringField
      FieldName = 'observacao'
      Origin = 'observacao'
      Size = 100
    end
    object TApontamentomaquina: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'maquina'
      Origin = 'maquina'
    end
    object TApontamentocentrocusto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'centrocusto'
      Origin = 'centrocusto'
      Size = 50
    end
    object TApontamentoprodutos: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'produtos'
      Origin = 'produtos'
      Size = 50
    end
    object TApontamentohorainicio: TTimeField
      FieldName = 'horainicio'
      Origin = 'horainicio'
    end
    object TApontamentokmdestinoescavadeira: TWideStringField
      FieldName = 'kmdestinoescavadeira'
      Origin = 'kmdestinoescavadeira'
      Size = 50
    end
  end
  object TApontamentoValores: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'idapontamento'
    MasterSource = dsApontamento
    MasterFields = 'id'
    DetailFields = 'idapontamento'
    OnReconcileError = TApontamentoValoresReconcileError
    Connection = FDConPG
    SQL.Strings = (
      'select'
      ' ROW_NUMBER () OVER (ORDER BY a.id)Item, '
      ' a.*,'
      ' m.prefixo Maquina'
      'from apontamentoValores a'
      'join maquinaveiculo m on a.idmaquina=m.id '
      'where a.status=1'
      'and idapontamento=:id'
      'order by a.horaoperacao ')
    Left = 480
    Top = 456
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object TApontamentoValoresid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TApontamentoValoresstatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object TApontamentoValoresdatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object TApontamentoValoresidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object TApontamentoValoresdataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object TApontamentoValoresdataoperacao: TDateField
      FieldName = 'dataoperacao'
      Origin = 'dataoperacao'
    end
    object TApontamentoValoreshoraoperacao: TTimeField
      FieldName = 'horaoperacao'
      Origin = 'horaoperacao'
    end
    object TApontamentoValoresidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object TApontamentoValoresidapontamento: TIntegerField
      FieldName = 'idapontamento'
      Origin = 'idapontamento'
    end
    object TApontamentoValoresidmaquina: TIntegerField
      FieldName = 'idmaquina'
      Origin = 'idmaquina'
    end
    object TApontamentoValoreslatitude: TFMTBCDField
      FieldName = 'latitude'
      Origin = 'latitude'
      Precision = 9
      Size = 6
    end
    object TApontamentoValoreslongitude: TFMTBCDField
      FieldName = 'longitude'
      Origin = 'longitude'
      Precision = 9
      Size = 6
    end
    object TApontamentoValorestipoidentificacaomaquina: TIntegerField
      FieldName = 'tipoidentificacaomaquina'
      Origin = 'tipoidentificacaomaquina'
    end
    object TApontamentoValoresimgveiculo: TBlobField
      FieldName = 'imgveiculo'
      Origin = 'imgveiculo'
    end
    object TApontamentoValoresobservacao: TWideStringField
      FieldName = 'observacao'
      Origin = 'observacao'
      Size = 100
    end
    object TApontamentoValoresmaquina: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'maquina'
      Origin = 'maquina'
    end
    object TApontamentoValoresimgsyncs3: TIntegerField
      FieldName = 'imgsyncs3'
      Origin = 'imgsyncs3'
    end
    object TApontamentoValoresitem: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'item'
      Origin = 'item'
      ReadOnly = True
    end
  end
  object dsApontamento: TDataSource
    DataSet = TApontamento
    Left = 560
    Top = 432
  end
  object TExportaApontamento: TFDQuery
    Connection = FDConPG
    SQL.Strings = (
      'select '
      '     c.nome Obra,'
      '     ROW_NUMBER () OVER (ORDER BY a.id)Ordem,   '
      '     a.dataoperacao, '
      '     av.horaoperacao,     '
      '     mv.prefixo PrefixoCaminhao,'
      '     cast(case '
      
        '       when horaoperacao between cast('#39'05:00'#39' as time) and cast(' +
        #39'18:00'#39' as time) then '#39'DIURNO'#39
      
        '       when horaoperacao between cast('#39'18:01'#39' as time) and cast(' +
        #39'04:59'#39' as time) then '#39'NOTURNO'#39
      '     end as varchar(20)) Turno,'
      '     m.prefixo PrefixoEscavadeira,'
      '     a.observacao,'
      '     a.kmatualescavadeira,'
      '     p.nome Material,'
      '     a.aplicacaoproduto,'
      '     a.kmdestinoescavadeira '
      'from apontamento a '
      'join maquinaveiculo m on a.idescavadeira=m.id '
      'join centrocusto    c on c.id=a.idCentroCusto  '
      'join produtos       p on a.idproduto=p.id '
      'join apontamentoValores av on av.idapontamento=a.id '
      'join maquinaveiculo mv on av.idmaquina=mv.id '
      'where a.status>-1 '
      'order by ROW_NUMBER () OVER (ORDER BY av.horaoperacao)')
    Left = 624
    Top = 376
    object TExportaApontamentoobra: TWideStringField
      DisplayLabel = 'Obra'
      FieldName = 'obra'
      Origin = 'obra'
      Size = 100
    end
    object TExportaApontamentoordem: TLargeintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Ordem Carregamento'
      FieldName = 'ordem'
      Origin = 'ordem'
      ReadOnly = True
    end
    object TExportaApontamentodataoperacao: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Data Opera'#231#227'o'
      FieldName = 'dataoperacao'
      Origin = 'dataoperacao'
    end
    object TExportaApontamentohoraoperacao: TTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Hora Carregamento'
      FieldName = 'horaoperacao'
      Origin = 'horaoperacao'
    end
    object TExportaApontamentoprefixocaminhao: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Prefixo'
      FieldName = 'prefixocaminhao'
      Origin = 'prefixocaminhao'
    end
    object TExportaApontamentoturno: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Turno'
      FieldName = 'turno'
      Origin = 'turno'
      ReadOnly = True
    end
    object TExportaApontamentoprefixoescavadeira: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Prefixo Escavadeira'
      FieldName = 'prefixoescavadeira'
      Origin = 'prefixoescavadeira'
    end
    object TExportaApontamentoobservacao: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'observacao'
      Origin = 'observacao'
      Size = 100
    end
    object TExportaApontamentokmatualescavadeira: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'KM Origem'
      FieldName = 'kmatualescavadeira'
      Origin = 'kmatualescavadeira'
      Size = 50
    end
    object TExportaApontamentomaterial: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Material'
      FieldName = 'material'
      Origin = 'material'
      Size = 50
    end
    object TExportaApontamentoaplicacaoproduto: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Aplica'#231#227'o Material'
      FieldName = 'aplicacaoproduto'
      Origin = 'aplicacaoproduto'
      Size = 50
    end
    object TExportaApontamentokmdestinoescavadeira: TWideStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'KM Destino'
      FieldName = 'kmdestinoescavadeira'
      Origin = 'kmdestinoescavadeira'
      Size = 50
    end
  end
end

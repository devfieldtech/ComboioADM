object dmManutencao: TdmManutencao
  OldCreateOrder = False
  Height = 427
  Width = 622
  object TPlanoManutencao: TFDQuery
    CachedUpdates = True
    Connection = dmdb.FDConPG
    SQL.Strings = (
      'select p.*,m.nome Fabricante, m2.prefixo Maquina,'
      'case '
      ' when tipo=0 then '#39'Padr'#227'o'#39
      ' when tipo=1 then '#39'Customizado'#39
      ' end tipoStr '
      'from planorevisao p '
      'join auxmarcas m on m.id=p.idfabricante '
      'left join maquinaveiculo m2 on m2.id=p.idmaquina '
      'where p.status =1')
    Left = 64
    Top = 32
    object TPlanoManutencaoid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TPlanoManutencaostatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object TPlanoManutencaodatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object TPlanoManutencaoidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object TPlanoManutencaodataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object TPlanoManutencaoidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object TPlanoManutencaonome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object TPlanoManutencaointervalohoras: TBCDField
      FieldName = 'intervalohoras'
      Origin = 'intervalohoras'
      Precision = 15
      Size = 3
    end
    object TPlanoManutencaointervalodias: TBCDField
      FieldName = 'intervalodias'
      Origin = 'intervalodias'
      Precision = 15
      Size = 3
    end
    object TPlanoManutencaoidfabricante: TIntegerField
      FieldName = 'idfabricante'
      Origin = 'idfabricante'
    end
    object TPlanoManutencaofabricante: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'fabricante'
      Origin = 'fabricante'
      Size = 50
    end
    object TPlanoManutencaotipo: TIntegerField
      FieldName = 'tipo'
      Origin = 'tipo'
    end
    object TPlanoManutencaoidmaquina: TIntegerField
      FieldName = 'idmaquina'
      Origin = 'idmaquina'
    end
    object TPlanoManutencaomaquina: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'maquina'
      Origin = 'maquina'
    end
    object TPlanoManutencaotipostr: TWideMemoField
      AutoGenerateValue = arDefault
      FieldName = 'tipostr'
      Origin = 'tipostr'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object TPlanoItens: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'idplano'
    MasterSource = dsPlanoManutencao
    MasterFields = 'id'
    DetailFields = 'idplano'
    OnReconcileError = TPlanoItensReconcileError
    Connection = dmdb.FDConPG
    SQL.Strings = (
      'select '
      ' p.*,'
      ' p2.nome Produto,'
      ' c.nome Grupo'
      'from planorevisaoitens p '
      'join cheklistregrupoitem c on c.id=p.idgrupoitenspalno '
      'left join produtos p2 on p.idproduto=p2.id'
      'where p.status =1 and p.idplano =:id'
      'order by c.nome,p.descricao ')
    Left = 64
    Top = 129
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TPlanoItensid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TPlanoItensstatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object TPlanoItensdatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object TPlanoItensidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object TPlanoItensdataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object TPlanoItensidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object TPlanoItensidgrupoitenspalno: TIntegerField
      FieldName = 'idgrupoitenspalno'
      Origin = 'idgrupoitenspalno'
    end
    object TPlanoItensidplano: TIntegerField
      FieldName = 'idplano'
      Origin = 'idplano'
    end
    object TPlanoItensdescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 100
    end
    object TPlanoItensidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object TPlanoItensqtde: TBCDField
      FieldName = 'qtde'
      Origin = 'qtde'
      Precision = 10
      Size = 3
    end
    object TPlanoItensobservacao: TWideStringField
      FieldName = 'observacao'
      Origin = 'observacao'
      Size = 100
    end
    object TPlanoItensfotoobrigatoria: TIntegerField
      FieldName = 'fotoobrigatoria'
      Origin = 'fotoobrigatoria'
    end
    object TPlanoItensproduto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'produto'
      Origin = 'produto'
      Size = 50
    end
    object TPlanoItensgrupo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'grupo'
      Origin = 'grupo'
      Size = 100
    end
  end
  object TPlanoMaquinas: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'idplano'
    MasterSource = dsPlanoManutencao
    MasterFields = 'id'
    DetailFields = 'idplano'
    Connection = dmdb.FDConPG
    SQL.Strings = (
      'select '
      ' p.*,'
      ' m.modelo,'
      ' a.nome Marca'
      'from planorevisaomaquinas p '
      'join modelomaquina m  on m.id=p.idmodelo '
      'join auxmarcas a on a.id=m.idmarca '
      'where p.status =1 '
      'and p.idplano=:id'
      'order by p.id desc')
    Left = 64
    Top = 182
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TPlanoMaquinasid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TPlanoMaquinasstatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object TPlanoMaquinasdatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object TPlanoMaquinasidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object TPlanoMaquinasdataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object TPlanoMaquinasidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object TPlanoMaquinasidplano: TIntegerField
      FieldName = 'idplano'
      Origin = 'idplano'
    end
    object TPlanoMaquinasidmodelo: TIntegerField
      FieldName = 'idmodelo'
      Origin = 'idmodelo'
    end
    object TPlanoMaquinasmodelo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'modelo'
      Origin = 'modelo'
      Size = 50
    end
    object TPlanoMaquinasmarca: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'marca'
      Origin = 'marca'
      Size = 50
    end
  end
  object dsPlanoManutencao: TDataSource
    DataSet = TPlanoManutencao
    Left = 64
    Top = 80
  end
  object TManutencao: TFDQuery
    CachedUpdates = True
    Connection = dmdb.FDConPG
    SQL.Strings = (
      'select '
      ' m.*,'
      ' m2.prefixo,'
      ' case '
      '  when p.nome is null then '#39'Preventiva'#39' '
      '   else '
      '   p.nome '
      '  end PlanoManutencao, '
      '  case '
      '   when p.status =1 then '#39'Iniciada'#39' '
      '   when p.status =2 then '#39'Aguardando Compras'#39' '
      '   when p.status =3 then '#39'Aguardando Servi'#231'os'#39' '
      '   when p.status =4 then '#39'Finalizada'#39
      '  end statusStr,'
      '  u.nome  Responsavel,'
      '  c.nome Centrocusto,'
      '  case'
      '   when m.tipo=0 then '#39'Preventiva'#39
      '   when m.tipo=1 then '#39'Corretiva'#39
      '  end TipoStr '
      'from manutencao m  '
      'join maquinaveiculo m2 on m.idmaquina=m2.id '
      'join usuario u on u.id=m.idresponsavel '
      'join centrocusto c on c.id=m.idcentrocusto '
      'left join planorevisao p on p.id=m.idplanorevisao '
      'where m.status>-1'
      'order by m.id desc')
    Left = 216
    Top = 32
    object TManutencaoid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TManutencaostatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object TManutencaodatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object TManutencaoidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object TManutencaodataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object TManutencaoidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object TManutencaoidplanorevisao: TIntegerField
      FieldName = 'idplanorevisao'
      Origin = 'idplanorevisao'
    end
    object TManutencaoidmaquina: TIntegerField
      FieldName = 'idmaquina'
      Origin = 'idmaquina'
    end
    object TManutencaoobservacao: TWideStringField
      FieldName = 'observacao'
      Origin = 'observacao'
      Size = 100
    end
    object TManutencaodatainicio: TDateField
      FieldName = 'datainicio'
      Origin = 'datainicio'
    end
    object TManutencaodatafim: TDateField
      FieldName = 'datafim'
      Origin = 'datafim'
    end
    object TManutencaoidresponsavel: TIntegerField
      FieldName = 'idresponsavel'
      Origin = 'idresponsavel'
    end
    object TManutencaohorimetro: TBCDField
      FieldName = 'horimetro'
      Origin = 'horimetro'
      Precision = 15
      Size = 2
    end
    object TManutencaohodometro: TBCDField
      FieldName = 'hodometro'
      Origin = 'hodometro'
      Precision = 15
      Size = 2
    end
    object TManutencaotipo: TIntegerField
      FieldName = 'tipo'
      Origin = 'tipo'
    end
    object TManutencaohorimetroproxima: TBCDField
      FieldName = 'horimetroproxima'
      Origin = 'horimetroproxima'
      Precision = 15
      Size = 3
    end
    object TManutencaohodometroproxima: TBCDField
      FieldName = 'hodometroproxima'
      Origin = 'hodometroproxima'
      Precision = 15
      Size = 3
    end
    object TManutencaosyncaws: TIntegerField
      FieldName = 'syncaws'
      Origin = 'syncaws'
    end
    object TManutencaosyncfaz: TIntegerField
      FieldName = 'syncfaz'
      Origin = 'syncfaz'
    end
    object TManutencaoimghorimentro: TWideMemoField
      FieldName = 'imghorimentro'
      Origin = 'imghorimentro'
      BlobType = ftWideMemo
    end
    object TManutencaoimghodometro: TWideMemoField
      FieldName = 'imghodometro'
      Origin = 'imghodometro'
      BlobType = ftWideMemo
    end
    object TManutencaoprefixo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'prefixo'
      Origin = 'prefixo'
    end
    object TManutencaoplanomanutencao: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'planomanutencao'
      Origin = 'planomanutencao'
      Size = 8190
    end
    object TManutencaodiasproximarevisao: TDateField
      FieldName = 'diasproximarevisao'
      Origin = 'diasproximarevisao'
    end
    object TManutencaostatusstr: TWideMemoField
      AutoGenerateValue = arDefault
      FieldName = 'statusstr'
      Origin = 'statusstr'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object TManutencaoresponsavel: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'responsavel'
      Origin = 'responsavel'
      Size = 100
    end
    object TManutencaoidcentrocusto: TIntegerField
      FieldName = 'idcentrocusto'
      Origin = 'idcentrocusto'
    end
    object TManutencaocentrocusto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'centrocusto'
      Origin = 'centrocusto'
      Size = 50
    end
    object TManutencaotipostr: TWideMemoField
      AutoGenerateValue = arDefault
      FieldName = 'tipostr'
      Origin = 'tipostr'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object TManutencaoItems: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'idmanutencao'
    MasterSource = dsManutencao
    MasterFields = 'id'
    DetailFields = 'idmanutencao'
    Connection = dmdb.FDConPG
    SQL.Strings = (
      'select '
      ' m.*,'
      ' c.nome Grupo,'
      ' p.nome Produto,'
      ' p.codigofabricante '
      'from manutencaoitens m'
      'left join cheklistregrupoitem c on m.idgrupoitenspalno=c.id '
      'left join produtos p on p.id=m.idproduto '
      'where m.status>-1 and m.idmanutencao=:id'
      'order by c.nome,m.descricao ')
    Left = 216
    Top = 160
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
    object TManutencaoItemsid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TManutencaoItemsstatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object TManutencaoItemsdatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object TManutencaoItemsidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object TManutencaoItemsdataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object TManutencaoItemsidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object TManutencaoItemsidgrupoitenspalno: TIntegerField
      FieldName = 'idgrupoitenspalno'
      Origin = 'idgrupoitenspalno'
    end
    object TManutencaoItemsidmanutencao: TIntegerField
      FieldName = 'idmanutencao'
      Origin = 'idmanutencao'
    end
    object TManutencaoItemsdescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 100
    end
    object TManutencaoItemsidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object TManutencaoItemsqtde: TBCDField
      FieldName = 'qtde'
      Origin = 'qtde'
      Precision = 10
      Size = 3
    end
    object TManutencaoItemsobservacao: TWideStringField
      FieldName = 'observacao'
      Origin = 'observacao'
      Size = 100
    end
    object TManutencaoItemsfotoobrigatoria: TIntegerField
      FieldName = 'fotoobrigatoria'
      Origin = 'fotoobrigatoria'
    end
    object TManutencaoItemsfotoitem: TWideMemoField
      FieldName = 'fotoitem'
      Origin = 'fotoitem'
      BlobType = ftWideMemo
    end
    object TManutencaoItemsgrupo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'grupo'
      Origin = 'grupo'
      Size = 100
    end
    object TManutencaoItemsproduto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'produto'
      Origin = 'produto'
      Size = 50
    end
    object TManutencaoItemscodigofabricante: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'codigofabricante'
      Origin = 'codigofabricante'
      Size = 30
    end
    object TManutencaoItemsitemcheck: TIntegerField
      FieldName = 'itemcheck'
      Origin = 'itemcheck'
    end
  end
  object dsManutencao: TDataSource
    DataSet = TManutencao
    Left = 216
    Top = 96
  end
  object TPlanoManutencaoPadrao: TFDQuery
    CachedUpdates = True
    Connection = dmdb.FDConPG
    SQL.Strings = (
      
        'select p.*,m.nome Fabricante from planorevisao p join auxmarcas ' +
        'm on m.id=p.idfabricante where p.status =1')
    Left = 64
    Top = 248
    object TPlanoManutencaoPadraoid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TPlanoManutencaoPadraostatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object TPlanoManutencaoPadraodatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object TPlanoManutencaoPadraoidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object TPlanoManutencaoPadraodataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object TPlanoManutencaoPadraoidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object TPlanoManutencaoPadraonome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object TPlanoManutencaoPadraointervalohoras: TBCDField
      FieldName = 'intervalohoras'
      Origin = 'intervalohoras'
      Precision = 15
      Size = 3
    end
    object TPlanoManutencaoPadraointervalodias: TBCDField
      FieldName = 'intervalodias'
      Origin = 'intervalodias'
      Precision = 15
      Size = 3
    end
    object TPlanoManutencaoPadraoidfabricante: TIntegerField
      FieldName = 'idfabricante'
      Origin = 'idfabricante'
    end
    object TPlanoManutencaoPadraotipo: TIntegerField
      FieldName = 'tipo'
      Origin = 'tipo'
    end
    object TPlanoManutencaoPadraoidmaquina: TIntegerField
      FieldName = 'idmaquina'
      Origin = 'idmaquina'
    end
    object TPlanoManutencaoPadraofabricante: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'fabricante'
      Origin = 'fabricante'
      Size = 50
    end
  end
  object TManutencaoItemsEdit: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'idmanutencao'
    MasterSource = dsManutencao
    MasterFields = 'id'
    DetailFields = 'idmanutencao'
    Connection = dmdb.FDConPG
    SQL.Strings = (
      'select '
      ' m.*,'
      ' c.nome Grupo,'
      ' p.nome Produto,'
      ' p.codigofabricante '
      'from manutencaoitens m'
      'left join cheklistregrupoitem c on m.idgrupoitenspalno=c.id '
      'left join produtos p on p.id=m.idproduto '
      'where m.status>-1 '
      ''
      '')
    Left = 224
    Top = 224
    object TManutencaoItemsEditid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TManutencaoItemsEditstatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object TManutencaoItemsEditdatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object TManutencaoItemsEditidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object TManutencaoItemsEditdataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object TManutencaoItemsEditidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object TManutencaoItemsEditidgrupoitenspalno: TIntegerField
      FieldName = 'idgrupoitenspalno'
      Origin = 'idgrupoitenspalno'
    end
    object TManutencaoItemsEditidmanutencao: TIntegerField
      FieldName = 'idmanutencao'
      Origin = 'idmanutencao'
    end
    object TManutencaoItemsEditdescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 100
    end
    object TManutencaoItemsEditidproduto: TIntegerField
      FieldName = 'idproduto'
      Origin = 'idproduto'
    end
    object TManutencaoItemsEditqtde: TBCDField
      FieldName = 'qtde'
      Origin = 'qtde'
      Precision = 10
      Size = 3
    end
    object TManutencaoItemsEditobservacao: TWideStringField
      FieldName = 'observacao'
      Origin = 'observacao'
      Size = 100
    end
    object TManutencaoItemsEditfotoobrigatoria: TIntegerField
      FieldName = 'fotoobrigatoria'
      Origin = 'fotoobrigatoria'
    end
    object TManutencaoItemsEditfotoitem: TWideMemoField
      FieldName = 'fotoitem'
      Origin = 'fotoitem'
      BlobType = ftWideMemo
    end
    object TManutencaoItemsEdititemcheck: TIntegerField
      FieldName = 'itemcheck'
      Origin = 'itemcheck'
    end
    object TManutencaoItemsEditgrupo: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'grupo'
      Origin = 'grupo'
      Size = 100
    end
    object TManutencaoItemsEditproduto: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'produto'
      Origin = 'produto'
      Size = 50
    end
    object TManutencaoItemsEditcodigofabricante: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'codigofabricante'
      Origin = 'codigofabricante'
      Size = 30
    end
  end
  object TStatusManutencao: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'idmanutencao'
    MasterSource = dsManutencao
    MasterFields = 'id'
    OnReconcileError = TStatusManutencaoReconcileError
    Connection = dmdb.FDConPG
    SQL.Strings = (
      'select'
      ' m.*,'
      ' case '
      '   when m.idstatus ='#39'1'#39' then '#39'Iniciada'#39' '
      '   when m.idstatus ='#39'2'#39' then '#39'Aguardando Compras'#39' '
      '   when m.idstatus ='#39'3'#39' then '#39'Aguardando Servi'#231'os'#39' '
      '   when m.idstatus ='#39'4'#39' then '#39'Finalizada'#39
      '  end statusStr'
      'from manutencaostatus m '
      'where m.idmanutencao=:id'
      'order by m.id desc')
    Left = 224
    Top = 280
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
    object TStatusManutencaoid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TStatusManutencaostatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object TStatusManutencaodatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object TStatusManutencaoidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object TStatusManutencaodataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object TStatusManutencaoidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object TStatusManutencaoidmanutencao: TIntegerField
      FieldName = 'idmanutencao'
      Origin = 'idmanutencao'
    end
    object TStatusManutencaoidstatus: TWideStringField
      FieldName = 'idstatus'
      Origin = 'idstatus'
      Size = 100
    end
    object TStatusManutencaodatastatus: TDateField
      FieldName = 'datastatus'
      Origin = 'datastatus'
    end
    object TStatusManutencaohorainicio: TTimeField
      FieldName = 'horainicio'
      Origin = 'horainicio'
    end
    object TStatusManutencaohorafim: TTimeField
      FieldName = 'horafim'
      Origin = 'horafim'
    end
    object TStatusManutencaoobservacao: TWideStringField
      FieldName = 'observacao'
      Origin = 'observacao'
      Size = 100
    end
    object TStatusManutencaodatainicio: TDateField
      FieldName = 'datainicio'
      Origin = 'datainicio'
    end
    object TStatusManutencaodatafim: TDateField
      FieldName = 'datafim'
      Origin = 'datafim'
    end
    object TStatusManutencaostatusstr: TWideMemoField
      AutoGenerateValue = arDefault
      FieldName = 'statusstr'
      Origin = 'statusstr'
      ReadOnly = True
      BlobType = ftWideMemo
    end
  end
  object TManutencaoServico: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'idrevisao'
    MasterSource = dsManutencao
    MasterFields = 'id'
    DetailFields = 'idrevisao'
    Connection = dmdb.FDConPG
    SQL.Strings = (
      'SELECT * FROM manutencaoservico'
      'WHERE IDREVISAO=:id')
    Left = 224
    Top = 336
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
    object TManutencaoServicoid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TManutencaoServicostatus: TIntegerField
      FieldName = 'status'
      Origin = 'status'
    end
    object TManutencaoServicodatareg: TSQLTimeStampField
      FieldName = 'datareg'
      Origin = 'datareg'
    end
    object TManutencaoServicoidusuario: TIntegerField
      FieldName = 'idusuario'
      Origin = 'idusuario'
    end
    object TManutencaoServicodataalteracao: TSQLTimeStampField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
    end
    object TManutencaoServicoidusuarioalteracao: TIntegerField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
    end
    object TManutencaoServicoidrevisao: TIntegerField
      FieldName = 'idrevisao'
      Origin = 'idrevisao'
    end
    object TManutencaoServicodescricao: TWideStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 100
    end
    object TManutencaoServicoresponsavel: TWideStringField
      FieldName = 'responsavel'
      Origin = 'responsavel'
      Size = 100
    end
    object TManutencaoServicovalortotal: TBCDField
      FieldName = 'valortotal'
      Origin = 'valortotal'
      Precision = 15
      Size = 3
    end
    object TManutencaoServicodatarealizado: TDateField
      FieldName = 'datarealizado'
      Origin = 'datarealizado'
    end
    object TManutencaoServicogarantia: TIntegerField
      FieldName = 'garantia'
      Origin = 'garantia'
    end
  end
end

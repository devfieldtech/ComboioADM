object dmDB: TdmDB
  OldCreateOrder = False
  Height = 548
  Width = 792
  object qryControAcces: TFDQuery
    CachedUpdates = True
    Connection = FCon
    SQL.Strings = (
      'select * from control_access')
    Left = 80
    Top = 8
    object qryControAccesid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryControAccesusuario: TWideStringField
      FieldName = 'usuario'
      Origin = 'usuario'
      Size = 32767
    end
    object qryControAccesdata_access: TDateTimeField
      FieldName = 'data_access'
      Origin = 'data_access'
    end
    object qryControAccessenha: TStringField
      FieldName = 'senha'
      Origin = 'senha'
      Size = 100
    end
  end
  object FCon: TFDConnection
    Params.Strings = (
      
        'Database=E:\Projetos2021\ComboioADM\Android\ComboioADM_MOB\db\Cb' +
        'Adm1.db'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    BeforeConnect = FConBeforeConnect
    Left = 80
    Top = 8
  end
  object qryConfig: TFDQuery
    CachedUpdates = True
    Connection = FCon
    SQL.Strings = (
      'select * from config')
    Left = 80
    Top = 8
    object qryConfigIP_SERVIDOR: TWideStringField
      FieldName = 'IP_SERVIDOR'
      Origin = 'IP_SERVIDOR'
      Size = 15
    end
    object qryConfigPOTA_SERVIDOR: TIntegerField
      FieldName = 'POTA_SERVIDOR'
      Origin = 'POTA_SERVIDOR'
    end
    object qryConfigSERIAL: TWideStringField
      FieldName = 'SERIAL'
      Origin = 'SERIAL'
    end
    object qryConfigSalvarLogin: TIntegerField
      FieldName = 'SalvarLogin'
      Origin = 'SalvarLogin'
    end
    object qryConfigID_CENTRO_CUSTO: TIntegerField
      FieldName = 'ID_CENTRO_CUSTO'
      Origin = 'ID_CENTRO_CUSTO'
    end
    object qryConfigPATRIMONIO: TIntegerField
      FieldName = 'PATRIMONIO'
      Origin = 'PATRIMONIO'
    end
  end
  object TAbastecimento: TFDQuery
    CachedUpdates = True
    Connection = FCon
    SQL.Strings = (
      'select'
      '   a.*,'
      '   p.nome CombustivelNome,'
      '   b.nome LocalEstoque,'
      '   c.prefixo  Maquina'
      '   from abastecimento a'
      '   join produtos p on a.combustivel=p.id'
      '   join localestoque b on a.idlocalestoque=b.id'
      '   join maquinaveiculo c on c.id=a.idmaquina'
      '   where a.status=1')
    Left = 80
    Top = 8
    object TAbastecimentoid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TAbastecimentostatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Size = 32767
    end
    object TAbastecimentodatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Size = 32767
    end
    object TAbastecimentoidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
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
      Size = 32767
    end
    object TAbastecimentoidmaquina: TWideStringField
      FieldName = 'idmaquina'
      Origin = 'idmaquina'
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
      Size = 32767
    end
    object TAbastecimentodataabastecimento: TDateField
      FieldName = 'dataabastecimento'
      Origin = 'dataabastecimento'
    end
    object TAbastecimentohora: TTimeField
      FieldName = 'hora'
      Origin = 'hora'
    end
    object TAbastecimentosyncaws: TWideStringField
      FieldName = 'syncaws'
      Origin = 'syncaws'
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
      Size = 32767
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
    object TAbastecimentoCombustivelNome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CombustivelNome'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object TAbastecimentoLocalEstoque: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LocalEstoque'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object TAbastecimentoMaquina: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Maquina'
      Origin = 'prefixo'
      ProviderFlags = []
      ReadOnly = True
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
    CachedUpdates = True
    OnReconcileError = TAbastecimentoOutrosReconcileError
    Connection = FCon
    SQL.Strings = (
      'select a.*,b.nome Produto from abastecimentoOutros a'
      'join produtos b on b.id=a.idproduto'
      'where a.status=1 ')
    Left = 80
    Top = 8
    object TAbastecimentoOutrosstatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Size = 32767
    end
    object TAbastecimentoOutrosdatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Size = 32767
    end
    object TAbastecimentoOutrosidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
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
      Size = 32767
    end
    object TAbastecimentoOutrosidproduto: TWideStringField
      FieldName = 'idproduto'
      Origin = 'idproduto'
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
      Size = 32767
    end
    object TAbastecimentoOutrossyncfaz: TWideStringField
      FieldName = 'syncfaz'
      Origin = 'syncfaz'
      Size = 32767
    end
    object TAbastecimentoOutrosProduto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Produto'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object TAbastecimentoOutrosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TAbastecimentoOutrosidmaquina: TIntegerField
      FieldName = 'idmaquina'
      Origin = 'idmaquina'
      Required = True
    end
    object TAbastecimentoOutrostipo: TIntegerField
      FieldName = 'tipo'
      Origin = 'tipo'
      Required = True
    end
  end
  object TLocalEstoque: TFDQuery
    CachedUpdates = True
    Connection = FCon
    SQL.Strings = (
      'select '
      ' c.*,'
      ' p.nome combustivel '
      'from localestoque c '
      'join produtos p on p.id=c.idcombustivel '
      'where c.status=1')
    Left = 80
    Top = 8
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
    object TLocalEstoquecombustivel: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'combustivel'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object TStartbomba: TFDQuery
    CachedUpdates = True
    Connection = FCon
    SQL.Strings = (
      'select s.*,'
      'case'
      ' when S.status=1 then '#39'EM ABERTO'#39
      ' when S.status=2 then '#39'FINALIZADO'#39' '
      'end statusStr,'
      'l.nome Local,p.nome CombustivelNome from startbomba s'
      'left join localestoque l on s.idlocalestoque=l.id'
      'left join produtos p on p.id=s.combustivel'
      'WHERE s.status>-1'
      'and s.idcentrocusto=1')
    Left = 80
    Top = 8
    object TStartbombaid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TStartbombastatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      Size = 32767
    end
    object TStartbombadatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Required = True
      Size = 32767
    end
    object TStartbombaidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      Required = True
      Size = 32767
    end
    object TStartbombadataalteracao: TWideStringField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
      Size = 32767
    end
    object TStartbombaidusuarioalteracao: TWideStringField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
      Size = 32767
    end
    object TStartbombaidlocalestoque: TWideStringField
      FieldName = 'idlocalestoque'
      Origin = 'idlocalestoque'
      Required = True
      Size = 32767
    end
    object TStartbombaidcentrocusto: TWideStringField
      FieldName = 'idcentrocusto'
      Origin = 'idcentrocusto'
      Required = True
      Size = 32767
    end
    object TStartbombacombustivel: TWideStringField
      FieldName = 'combustivel'
      Origin = 'combustivel'
      Required = True
      Size = 32767
    end
    object TStartbombadataastart: TDateField
      FieldName = 'dataastart'
      Origin = 'dataastart'
      Required = True
    end
    object TStartbombahorastart: TTimeField
      FieldName = 'horastart'
      Origin = 'horastart'
      Required = True
    end
    object TStartbombadataaend: TDateField
      FieldName = 'dataaend'
      Origin = 'dataaend'
    end
    object TStartbombahoraend: TTimeField
      FieldName = 'horaend'
      Origin = 'horaend'
    end
    object TStartbombasyncaws: TWideStringField
      FieldName = 'syncaws'
      Origin = 'syncaws'
      Required = True
      Size = 32767
    end
    object TStartbombavolumelitrosIni: TBCDField
      FieldName = 'volumelitrosIni'
      Origin = 'volumelitrosIni'
      Required = True
      Precision = 15
      Size = 3
    end
    object TStartbombaobs: TStringField
      FieldName = 'obs'
      Origin = 'obs'
      Size = 100
    end
    object TStartbombaimgStart: TWideMemoField
      FieldName = 'imgStart'
      Origin = 'imgStart'
      BlobType = ftWideMemo
    end
    object TStartbombaimgEnd: TWideMemoField
      FieldName = 'imgEnd'
      Origin = 'imgEnd'
      BlobType = ftWideMemo
    end
    object TStartbombavolumelitrosFim: TBCDField
      FieldName = 'volumelitrosFim'
      Origin = 'volumelitrosFim'
      Precision = 15
      Size = 3
    end
    object TStartbombaLocal: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Local'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object TStartbombaCombustivelNome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CombustivelNome'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object TStartbombastatusStr: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'statusStr'
      Origin = 'statusStr'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object TStartbombaimgStartSend: TWideMemoField
      FieldName = 'imgStartSend'
      Origin = 'imgStartSend'
      BlobType = ftWideMemo
    end
    object TStartbombaimgStopSend: TWideMemoField
      FieldName = 'imgStopSend'
      Origin = 'imgStopSend'
      BlobType = ftWideMemo
    end
  end
  object TStartBombaInsert: TFDQuery
    CachedUpdates = True
    OnReconcileError = TStartBombaInsertReconcileError
    Connection = FCon
    SQL.Strings = (
      'select * from startbomba')
    Left = 80
    Top = 8
    object TStartBombaInsertid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TStartBombaInsertstatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Size = 32767
    end
    object TStartBombaInsertdatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Size = 32767
    end
    object TStartBombaInsertidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      Size = 32767
    end
    object TStartBombaInsertdataalteracao: TWideStringField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
      Size = 32767
    end
    object TStartBombaInsertidusuarioalteracao: TWideStringField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
      Size = 32767
    end
    object TStartBombaInsertidlocalestoque: TWideStringField
      FieldName = 'idlocalestoque'
      Origin = 'idlocalestoque'
      Size = 32767
    end
    object TStartBombaInsertidcentrocusto: TWideStringField
      FieldName = 'idcentrocusto'
      Origin = 'idcentrocusto'
      Size = 32767
    end
    object TStartBombaInsertcombustivel: TWideStringField
      FieldName = 'combustivel'
      Origin = 'combustivel'
      Size = 32767
    end
    object TStartBombaInsertdataastart: TDateField
      FieldName = 'dataastart'
      Origin = 'dataastart'
    end
    object TStartBombaInserthorastart: TTimeField
      FieldName = 'horastart'
      Origin = 'horastart'
    end
    object TStartBombaInsertdataaend: TDateField
      FieldName = 'dataaend'
      Origin = 'dataaend'
    end
    object TStartBombaInserthoraend: TTimeField
      FieldName = 'horaend'
      Origin = 'horaend'
    end
    object TStartBombaInsertsyncaws: TWideStringField
      FieldName = 'syncaws'
      Origin = 'syncaws'
      Size = 32767
    end
    object TStartBombaInsertvolumelitrosIni: TBCDField
      FieldName = 'volumelitrosIni'
      Origin = 'volumelitrosIni'
      Precision = 15
      Size = 3
    end
    object TStartBombaInsertobs: TStringField
      FieldName = 'obs'
      Origin = 'obs'
      Size = 100
    end
    object TStartBombaInsertimgStart: TWideMemoField
      FieldName = 'imgStart'
      Origin = 'imgStart'
      BlobType = ftWideMemo
    end
    object TStartBombaInsertimgEnd: TWideMemoField
      FieldName = 'imgEnd'
      Origin = 'imgEnd'
      BlobType = ftWideMemo
    end
    object TStartBombaInsertvolumelitrosFim: TBCDField
      FieldName = 'volumelitrosFim'
      Origin = 'volumelitrosFim'
      Precision = 15
      Size = 3
    end
    object TStartBombaInsertimgStartSend: TWideMemoField
      FieldName = 'imgStartSend'
      Origin = 'imgStartSend'
      BlobType = ftWideMemo
    end
    object TStartBombaInsertimgStopSend: TWideMemoField
      FieldName = 'imgStopSend'
      Origin = 'imgStopSend'
      BlobType = ftWideMemo
    end
  end
  object TMaquinas: TFDQuery
    CachedUpdates = True
    Connection = FCon
    SQL.Strings = (
      'select * from maquinaveiculo')
    Left = 80
    Top = 8
    object TMaquinasid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TMaquinasstatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      Size = 32767
    end
    object TMaquinasdatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Required = True
      Size = 32767
    end
    object TMaquinasidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      Required = True
      Size = 32767
    end
    object TMaquinasdataalteracao: TWideStringField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
      Size = 32767
    end
    object TMaquinasidusuarioalteracao: TWideStringField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
      Size = 32767
    end
    object TMaquinasidmarca: TWideStringField
      FieldName = 'idmarca'
      Origin = 'idmarca'
      Size = 32767
    end
    object TMaquinasmodelo: TStringField
      FieldName = 'modelo'
      Origin = 'modelo'
      Required = True
      Size = 50
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
    object TMaquinasimg: TWideStringField
      FieldName = 'img'
      Origin = 'img'
      Size = 32767
    end
    object TMaquinasprefixo: TStringField
      FieldName = 'prefixo'
      Origin = 'prefixo'
    end
    object TMaquinassyncaws: TWideStringField
      FieldName = 'syncaws'
      Origin = 'syncaws'
      Required = True
      Size = 32767
    end
    object TMaquinassyncfaz: TWideStringField
      FieldName = 'syncfaz'
      Origin = 'syncfaz'
      Required = True
      Size = 32767
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
    object TMaquinasidgrupo: TWideStringField
      FieldName = 'idgrupo'
      Origin = 'idgrupo'
      Size = 32767
    end
    object TMaquinaskmatual: TBCDField
      FieldName = 'kmatual'
      Origin = 'kmatual'
      Precision = 15
      Size = 3
    end
    object TMaquinasidsubgrupo: TWideStringField
      FieldName = 'idsubgrupo'
      Origin = 'idsubgrupo'
      Size = 32767
    end
    object TMaquinastipomedicao: TWideStringField
      FieldName = 'tipomedicao'
      Origin = 'tipomedicao'
      Required = True
      Size = 32767
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
  object qryAux: TFDQuery
    CachedUpdates = True
    Connection = FCon
    Left = 80
    Top = 8
  end
  object Tauxatividadeabastecimento: TFDQuery
    CachedUpdates = True
    Connection = FCon
    SQL.Strings = (
      'select * from auxatividadeabastecimento'
      'where status>-1')
    Left = 80
    Top = 8
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
  object TOperadorMaquina: TFDQuery
    CachedUpdates = True
    Connection = FCon
    SQL.Strings = (
      'select * from operadormaquinas'
      'where status=1')
    Left = 80
    Top = 8
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
  object TProdutos: TFDQuery
    CachedUpdates = True
    Connection = FCon
    SQL.Strings = (
      'select * from produtos'
      'where status=1')
    Left = 80
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
  object TMovLocalEstoque: TFDQuery
    CachedUpdates = True
    OnReconcileError = TMovLocalEstoqueReconcileError
    Connection = FCon
    SQL.Strings = (
      'select '
      ' a.*,'
      ' o.nome LocalOrigem,'
      ' d.nome LocalDestino,'
      ' p.nome Produto'
      'from tranferencialocalestoque a'
      'left join localestoque o on o.id=a.idlocalestoqueorigem'
      'left join localestoque d on d.id=a.idlocalestoquedetino'
      'left join produtos p ON o.idcentrocusto=p.id '
      'where a.status=1')
    Left = 80
    Top = 8
    object TMovLocalEstoqueid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TMovLocalEstoquestatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Size = 32767
    end
    object TMovLocalEstoquedatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Size = 32767
    end
    object TMovLocalEstoqueidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
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
      Size = 32767
    end
    object TMovLocalEstoqueidlocalestoquedetino: TWideStringField
      FieldName = 'idlocalestoquedetino'
      Origin = 'idlocalestoquedetino'
      Size = 32767
    end
    object TMovLocalEstoqueidproduto: TWideStringField
      FieldName = 'idproduto'
      Origin = 'idproduto'
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
    end
    object TMovLocalEstoquehora: TTimeField
      FieldName = 'hora'
      Origin = 'hora'
    end
    object TMovLocalEstoquesyncaws: TWideStringField
      FieldName = 'syncaws'
      Origin = 'syncaws'
      Size = 32767
    end
    object TMovLocalEstoqueLocalOrigem: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LocalOrigem'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object TMovLocalEstoqueLocalDestino: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LocalDestino'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object TMovLocalEstoqueProduto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Produto'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object TMovLocalEstoqueimg: TWideMemoField
      FieldName = 'img'
      Origin = 'img'
      BlobType = ftWideMemo
    end
    object TMovLocalEstoqueimgfim: TWideMemoField
      FieldName = 'imgfim'
      Origin = 'imgfim'
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
    object TMovLocalEstoqueimgStartSend: TWideMemoField
      FieldName = 'imgStartSend'
      Origin = 'imgStartSend'
      BlobType = ftWideMemo
    end
    object TMovLocalEstoqueimgStopSend: TWideMemoField
      FieldName = 'imgStopSend'
      Origin = 'imgStopSend'
      BlobType = ftWideMemo
    end
  end
  object TUsuario: TFDQuery
    CachedUpdates = True
    Connection = FCon
    SQL.Strings = (
      'select * from usuario'
      'where status=1')
    Left = 80
    Top = 8
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
    object TUsuarioabastecimento: TIntegerField
      FieldName = 'abastecimento'
      Origin = 'abastecimento'
      Required = True
    end
    object TUsuarioapontamento: TIntegerField
      FieldName = 'apontamento'
      Origin = 'apontamento'
      Required = True
    end
  end
  object TCentroCusto: TFDQuery
    CachedUpdates = True
    Connection = FCon
    SQL.Strings = (
      'select * from centrocusto'
      'where status=1')
    Left = 80
    Top = 8
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
  object TAbastecimentoFoto: TFDQuery
    CachedUpdates = True
    OnReconcileError = TAbastecimentoFotoReconcileError
    Connection = FCon
    SQL.Strings = (
      'select'
      '*'
      'from abastecimento a')
    Left = 80
    Top = 8
    object TAbastecimentoFotoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TAbastecimentoFotostatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      Size = 32767
    end
    object TAbastecimentoFotodatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Required = True
      Size = 32767
    end
    object TAbastecimentoFotoidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      Required = True
      Size = 32767
    end
    object TAbastecimentoFotodataalteracao: TWideStringField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
      Size = 32767
    end
    object TAbastecimentoFotoidusuarioalteracao: TWideStringField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
      Size = 32767
    end
    object TAbastecimentoFotoidlocalestoque: TWideStringField
      FieldName = 'idlocalestoque'
      Origin = 'idlocalestoque'
      Required = True
      Size = 32767
    end
    object TAbastecimentoFotoidmaquina: TWideStringField
      FieldName = 'idmaquina'
      Origin = 'idmaquina'
      Required = True
      Size = 32767
    end
    object TAbastecimentoFotovolumelt: TBCDField
      FieldName = 'volumelt'
      Origin = 'volumelt'
      Precision = 15
      Size = 3
    end
    object TAbastecimentoFotocombustivel: TWideStringField
      FieldName = 'combustivel'
      Origin = 'combustivel'
      Required = True
      Size = 32767
    end
    object TAbastecimentoFotodataabastecimento: TDateField
      FieldName = 'dataabastecimento'
      Origin = 'dataabastecimento'
      Required = True
    end
    object TAbastecimentoFotohora: TTimeField
      FieldName = 'hora'
      Origin = 'hora'
      Required = True
    end
    object TAbastecimentoFotosyncaws: TWideStringField
      FieldName = 'syncaws'
      Origin = 'syncaws'
      Required = True
      Size = 32767
    end
    object TAbastecimentoFotohorimetro: TBCDField
      FieldName = 'horimetro'
      Origin = 'horimetro'
      Precision = 15
      Size = 3
    end
    object TAbastecimentoFotoobs: TStringField
      FieldName = 'obs'
      Origin = 'obs'
      Size = 100
    end
    object TAbastecimentoFotoimg: TWideMemoField
      FieldName = 'img'
      Origin = 'img'
      BlobType = ftWideMemo
    end
    object TAbastecimentoFotoimg2: TWideMemoField
      FieldName = 'img2'
      Origin = 'img2'
      BlobType = ftWideMemo
    end
    object TAbastecimentoFotoimg3: TWideMemoField
      FieldName = 'img3'
      Origin = 'img3'
      BlobType = ftWideMemo
    end
    object TAbastecimentoFotoimg4: TWideMemoField
      FieldName = 'img4'
      Origin = 'img4'
      BlobType = ftWideMemo
    end
    object TAbastecimentoFotoimg5: TWideMemoField
      FieldName = 'img5'
      Origin = 'img5'
      BlobType = ftWideMemo
    end
    object TAbastecimentoFotovalorlitro: TBCDField
      FieldName = 'valorlitro'
      Origin = 'valorlitro'
      Precision = 15
      Size = 3
    end
    object TAbastecimentoFotoexterno: TWideStringField
      FieldName = 'externo'
      Origin = 'externo'
      Required = True
      Size = 32767
    end
    object TAbastecimentoFotoidcentrocusto: TIntegerField
      FieldName = 'idcentrocusto'
      Origin = 'idcentrocusto'
      Required = True
    end
    object TAbastecimentoFotokmatual: TBCDField
      FieldName = 'kmatual'
      Origin = 'kmatual'
      Precision = 15
      Size = 3
    end
  end
  object TLubrificacaoprodutos: TFDQuery
    CachedUpdates = True
    OnReconcileError = TLubrificacaoprodutosReconcileError
    Connection = FCon
    SQL.Strings = (
      'select'
      '   l.*,'
      '   p.nome produto,'
      '    case'
      '     when l.tipo=1 then '#39'TROCA'#39
      '     when l.tipo=2 then '#39'REMONTA'#39
      '    end TipoStr,'
      '   p.codigofabricante,'
      '   b.nome Compartimento'
      '   from lubrificacaoprodutos l'
      '   join produtos p on l.idproduto=p.id'
      
        '   left join compartimentolubricficacao b on b.id=l.idcompartime' +
        'nto'
      '   where l.status=1'
      '   and l.idlubrificacao=1')
    Left = 80
    Top = 8
    object TLubrificacaoprodutosid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TLubrificacaoprodutosstatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Size = 32767
    end
    object TLubrificacaoprodutosdatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Size = 32767
    end
    object TLubrificacaoprodutosidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
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
      Size = 32767
    end
    object TLubrificacaoprodutosidproduto: TWideStringField
      FieldName = 'idproduto'
      Origin = 'idproduto'
      Size = 32767
    end
    object TLubrificacaoprodutosqtd: TBCDField
      FieldName = 'qtd'
      Origin = 'qtd'
      Precision = 15
      Size = 2
    end
    object TLubrificacaoprodutossyncaws: TWideStringField
      FieldName = 'syncaws'
      Origin = 'syncaws'
      Size = 32767
    end
    object TLubrificacaoprodutossyncfaz: TWideStringField
      FieldName = 'syncfaz'
      Origin = 'syncfaz'
      Size = 32767
    end
    object TLubrificacaoprodutosproduto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'produto'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object TLubrificacaoprodutoscodigofabricante: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codigofabricante'
      Origin = 'codigofabricante'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object TLubrificacaoprodutosidcompartimento: TIntegerField
      FieldName = 'idcompartimento'
      Origin = 'idcompartimento'
    end
    object TLubrificacaoprodutostipo: TIntegerField
      FieldName = 'tipo'
      Origin = 'tipo'
    end
    object TLubrificacaoprodutosTipoStr: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'TipoStr'
      Origin = 'TipoStr'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object TLubrificacaoprodutosCompartimento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Compartimento'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object TLubrificacao: TFDQuery
    CachedUpdates = True
    OnReconcileError = TLubrificacaoReconcileError
    Connection = FCon
    SQL.Strings = (
      'select '
      ' l.*,'
      ' m.prefixo maquina,'
      'c.nome centrocusto '
      'from lubrificacao l '
      'join maquinaveiculo m on l.idmaquina =m.id '
      'join centrocusto c on c.id=l.idcentrocusto '
      'where l.status=1')
    Left = 80
    Top = 8
    object TLubrificacaoid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object TLubrificacaostatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Size = 32767
    end
    object TLubrificacaodatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Size = 32767
    end
    object TLubrificacaoidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
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
      Size = 32767
    end
    object TLubrificacaodatatroca: TDateField
      FieldName = 'datatroca'
      Origin = 'datatroca'
    end
    object TLubrificacaosyncaws: TWideStringField
      FieldName = 'syncaws'
      Origin = 'syncaws'
      Size = 32767
    end
    object TLubrificacaosyncfaz: TWideStringField
      FieldName = 'syncfaz'
      Origin = 'syncfaz'
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
      Size = 32767
    end
    object TLubrificacaomaquina: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'maquina'
      Origin = 'prefixo'
      ProviderFlags = []
      ReadOnly = True
    end
    object TLubrificacaocentrocusto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'centrocusto'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
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
    Connection = FCon
    SQL.Strings = (
      'select * from compartimentolubricficacao'
      'where status=1')
    Left = 80
    Top = 8
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
    Connection = FCon
    SQL.Strings = (
      'select * from cheklistgeneric'
      'where status=1 ')
    Left = 80
    Top = 8
    object cheklistgenericid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    object cheklistgenericNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Size = 100
    end
    object cheklistgenericDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Required = True
      Size = 100
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
    Connection = FCon
    SQL.Strings = (
      'select a.*,  '
      '    case '
      '    when a.status=1 then '#39'Aberto'#39' '
      '    when a.status=2 then '#39'Finalizado'#39' '
      '    end statusStr,'
      '    m.prefixo,'
      '    m.id idmaquina,'
      '    c.nome CentroCustoDestino,'
      '    c.id idCentroCustoDestino '
      'from cheklistRealizado a '
      '    join maquinaveiculo m on a.idmaquia=m.id'
      '    left join centrocustooutros c on c.id=a.idcentrocustodestino'
      '    where a.status>0 ')
    Left = 80
    Top = 8
    object cheklistRealizadoid: TIntegerField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cheklistRealizadostatus: TWideStringField
      FieldName = 'status'
      Size = 32767
    end
    object cheklistRealizadodatareg: TWideStringField
      FieldName = 'datareg'
      Size = 32767
    end
    object cheklistRealizadoidusuario: TWideStringField
      FieldName = 'idusuario'
      Size = 32767
    end
    object cheklistRealizadodataalteracao: TWideStringField
      FieldName = 'dataalteracao'
      Size = 32767
    end
    object cheklistRealizadoidusuarioalteracao: TWideStringField
      FieldName = 'idusuarioalteracao'
      Size = 32767
    end
    object cheklistRealizadonome: TStringField
      FieldName = 'nome'
      Size = 100
    end
    object cheklistRealizadoidcheck: TWideStringField
      FieldName = 'idcheck'
      Size = 32767
    end
    object cheklistRealizadodescricao: TStringField
      FieldName = 'descricao'
      Size = 200
    end
    object cheklistRealizadoidcentrocusto: TWideStringField
      FieldName = 'idcentrocusto'
      Size = 32767
    end
    object cheklistRealizadoidmaquia: TWideStringField
      FieldName = 'idmaquia'
      Size = 32767
    end
    object cheklistRealizadoidcentrocustodestino: TWideStringField
      FieldName = 'idcentrocustodestino'
      Size = 32767
    end
    object cheklistRealizadotransferencia: TWideStringField
      FieldName = 'transferencia'
      Size = 32767
    end
    object cheklistRealizadohorimetro: TBCDField
      FieldName = 'horimetro'
      Precision = 15
      Size = 2
    end
    object cheklistRealizadokm: TBCDField
      FieldName = 'km'
      Precision = 15
      Size = 2
    end
    object cheklistRealizadostatusStr: TWideStringField
      FieldName = 'statusStr'
      ReadOnly = True
      Size = 32767
    end
    object cheklistRealizadodata: TDateField
      FieldName = 'data'
      Origin = 'data'
    end
    object cheklistRealizadoprefixo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'prefixo'
      Origin = 'prefixo'
      ProviderFlags = []
      ReadOnly = True
    end
    object cheklistRealizadoidmaquina: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idmaquina'
      Origin = 'id'
      ProviderFlags = []
      ReadOnly = True
    end
    object cheklistRealizadoidCentroCustoDestino_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idCentroCustoDestino_1'
      Origin = 'id'
      ProviderFlags = []
      ReadOnly = True
    end
    object cheklistRealizadoCentroCustoDestino: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CentroCustoDestino'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object cheklistRealizadoalerta: TIntegerField
      FieldName = 'alerta'
      Origin = 'alerta'
    end
    object cheklistRealizadosyncaws: TIntegerField
      FieldName = 'syncaws'
      Origin = 'syncaws'
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
    Connection = FCon
    SQL.Strings = (
      'select A.*, '
      'case'
      ' when ItemFotoObrigatoria=0 then '#39'NAO'#39
      ' when ItemFotoObrigatoria=1 then '#39'SIM'#39
      'end FotoObrigatoria'
      'from detcheklistgeneric A'
      'where status=1 and idcheck=1'
      'order by item')
    Left = 80
    Top = 8
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
    object detcheklistgenericFotoObrigatoria: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'FotoObrigatoria'
      Origin = 'FotoObrigatoria'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object detcheklistgenericidgrupo: TIntegerField
      FieldName = 'idgrupo'
      Origin = 'idgrupo'
    end
  end
  object detcheklistRealizado: TFDQuery
    CachedUpdates = True
    OnReconcileError = detcheklistRealizadoReconcileError
    Connection = FCon
    SQL.Strings = (
      'select '
      ' a.*,'
      ' c.nome grupo '
      'from detcheklistRealizado a'
      'join cheklistregrupoitem c on c.id=a.idgrupo'
      'where idcheck=1')
    Left = 80
    Top = 8
    object detcheklistRealizadoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object detcheklistRealizadostatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Size = 32767
    end
    object detcheklistRealizadodatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Size = 32767
    end
    object detcheklistRealizadoidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
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
    end
    object detcheklistRealizadoItem: TIntegerField
      FieldName = 'Item'
      Origin = 'Item'
    end
    object detcheklistRealizadoItemFotoObrigatoria: TIntegerField
      FieldName = 'ItemFotoObrigatoria'
      Origin = 'ItemFotoObrigatoria'
    end
    object detcheklistRealizadoItemObs: TStringField
      FieldName = 'ItemObs'
      Origin = 'ItemObs'
      Size = 50
    end
    object detcheklistRealizadodescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 100
    end
    object detcheklistRealizadoitemCheck: TIntegerField
      FieldName = 'itemCheck'
      Origin = 'itemCheck'
    end
    object detcheklistRealizadoItemFoto: TWideMemoField
      FieldName = 'ItemFoto'
      Origin = 'ItemFoto'
      BlobType = ftWideMemo
    end
    object detcheklistRealizadoidgrupo: TIntegerField
      FieldName = 'idgrupo'
    end
    object detcheklistRealizadogrupo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'grupo'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object detcheklistRealizadosyncaws: TIntegerField
      FieldName = 'syncaws'
      Origin = 'syncaws'
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
  object TCentroCustoOutros: TFDQuery
    CachedUpdates = True
    Connection = FCon
    SQL.Strings = (
      'select * from centrocustooutros')
    Left = 80
    Top = 8
    object TCentroCustoOutrosid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object TCentroCustoOutrosstatus: TWideStringField
      FieldName = 'status'
      Required = True
      Size = 32767
    end
    object TCentroCustoOutrosdatareg: TWideStringField
      FieldName = 'datareg'
      Size = 32767
    end
    object TCentroCustoOutrosidusuario: TWideStringField
      FieldName = 'idusuario'
      Size = 32767
    end
    object TCentroCustoOutrosdataalteracao: TWideStringField
      FieldName = 'dataalteracao'
      Size = 32767
    end
    object TCentroCustoOutrosidusuarioalteracao: TWideStringField
      FieldName = 'idusuarioalteracao'
      Size = 32767
    end
    object TCentroCustoOutrosnome: TStringField
      FieldName = 'nome'
      Size = 50
    end
    object TCentroCustoOutrossyncaws: TWideStringField
      FieldName = 'syncaws'
      Required = True
      Size = 32767
    end
  end
  object cheklistRealizadoEdit: TFDQuery
    CachedUpdates = True
    Connection = FCon
    SQL.Strings = (
      'select a.*,  '
      '    case '
      '    when a.status=1 then '#39'Aberto'#39' '
      '    when a.status=2 then '#39'Finalizado'#39' '
      '    end statusStr,'
      '    m.prefixo,'
      '    m.id idmaquina,'
      '    c.nome CentroCustoDestino,'
      '    c.id idCentroCustoDestino '
      'from cheklistRealizado a '
      'join maquinaveiculo m on a.idmaquia=m.id'
      'left join centrocustooutros c on c.id=a.idcentrocustodestino'
      'where a.status>0 ')
    Left = 80
    Top = 8
    object cheklistRealizadoEditid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      Required = True
    end
    object cheklistRealizadoEditstatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      Size = 32767
    end
    object cheklistRealizadoEditdatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Required = True
      Size = 32767
    end
    object cheklistRealizadoEditidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      Required = True
      Size = 32767
    end
    object cheklistRealizadoEditdataalteracao: TWideStringField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
      Size = 32767
    end
    object cheklistRealizadoEditidusuarioalteracao: TWideStringField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
      Size = 32767
    end
    object cheklistRealizadoEditnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object cheklistRealizadoEditidcheck: TWideStringField
      FieldName = 'idcheck'
      Origin = 'idcheck'
      Required = True
      Size = 32767
    end
    object cheklistRealizadoEditdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 200
    end
    object cheklistRealizadoEditidcentrocusto: TWideStringField
      FieldName = 'idcentrocusto'
      Origin = 'idcentrocusto'
      Required = True
      Size = 32767
    end
    object cheklistRealizadoEditidmaquia: TWideStringField
      FieldName = 'idmaquia'
      Origin = 'idmaquia'
      Size = 32767
    end
    object cheklistRealizadoEditidcentrocustodestino: TWideStringField
      FieldName = 'idcentrocustodestino'
      Origin = 'idcentrocustodestino'
      Size = 32767
    end
    object cheklistRealizadoEdittransferencia: TWideStringField
      FieldName = 'transferencia'
      Origin = 'transferencia'
      Required = True
      Size = 32767
    end
    object cheklistRealizadoEdithorimetro: TBCDField
      FieldName = 'horimetro'
      Origin = 'horimetro'
      Precision = 15
      Size = 2
    end
    object cheklistRealizadoEditkm: TBCDField
      FieldName = 'km'
      Origin = 'km'
      Precision = 15
      Size = 2
    end
    object cheklistRealizadoEditdata: TDateField
      FieldName = 'data'
      Origin = 'data'
      Required = True
    end
    object cheklistRealizadoEditstatusStr: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'statusStr'
      Origin = 'statusStr'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object cheklistRealizadoEditprefixo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'prefixo'
      Origin = 'prefixo'
      ProviderFlags = []
      ReadOnly = True
    end
    object cheklistRealizadoEditidmaquina: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idmaquina'
      Origin = 'id'
      ProviderFlags = []
      ReadOnly = True
    end
    object cheklistRealizadoEditCentroCustoDestino: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CentroCustoDestino'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object cheklistRealizadoEditidCentroCustoDestino_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idCentroCustoDestino_1'
      Origin = 'id'
      ProviderFlags = []
      ReadOnly = True
    end
    object cheklistRealizadoEditalerta: TIntegerField
      FieldName = 'alerta'
      Origin = 'alerta'
    end
    object cheklistRealizadoEditsyncaws: TIntegerField
      FieldName = 'syncaws'
      Origin = 'syncaws'
      Required = True
    end
  end
  object cheklistregrupoitem: TFDQuery
    CachedUpdates = True
    Connection = FCon
    SQL.Strings = (
      'select * from cheklistregrupoitem'
      'where status=1')
    Left = 80
    Top = 8
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
  object TApontamento: TFDQuery
    CachedUpdates = True
    OnReconcileError = TApontamentoReconcileError
    Connection = FCon
    SQL.Strings = (
      'select '
      ' a.*,'
      ' m.prefixo Maquina,'
      ' c.nome CentroCusto,'
      ' p.nome Produtos,'
      ' case'
      '   when A.status=1 then '#39'ABERTO'#39
      '   when A.status=2 then '#39'FINALIZADO'#39
      ' end statusStr '
      'from apontamento a'
      'join maquinaveiculo m on a.idescavadeira=m.id '
      'join centrocusto    c on c.id=a.idCentroCusto  '
      'join produtos       p on a.idproduto=p.id '
      'where a.status=1')
    Left = 480
    Top = 400
    object TApontamentoid: TFDAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object TApontamentostatus: TWideStringField
      FieldName = 'status'
      Size = 32767
    end
    object TApontamentodatareg: TWideStringField
      FieldName = 'datareg'
      Size = 32767
    end
    object TApontamentoidusuario: TWideStringField
      FieldName = 'idusuario'
      Size = 32767
    end
    object TApontamentodataalteracao: TWideStringField
      FieldName = 'dataalteracao'
      Size = 32767
    end
    object TApontamentodataoperacao: TDateField
      FieldName = 'dataoperacao'
    end
    object TApontamentoidusuarioalteracao: TWideStringField
      FieldName = 'idusuarioalteracao'
      Size = 32767
    end
    object TApontamentoidcentrocusto: TWideStringField
      FieldName = 'idcentrocusto'
      Size = 32767
    end
    object TApontamentoidescavadeira: TWideStringField
      FieldName = 'idescavadeira'
      Size = 32767
    end
    object TApontamentoidproduto: TWideStringField
      FieldName = 'idproduto'
      Size = 32767
    end
    object TApontamentoaplicacaoproduto: TStringField
      FieldName = 'aplicacaoproduto'
      Size = 50
    end
    object TApontamentokmatualescavadeira: TStringField
      FieldName = 'kmatualescavadeira'
      Size = 50
    end
    object TApontamentoobservacao: TStringField
      FieldName = 'observacao'
      Size = 100
    end
    object TApontamentohorainicio: TTimeField
      FieldName = 'horainicio'
    end
    object TApontamentoMaquina: TStringField
      FieldName = 'Maquina'
      ReadOnly = True
    end
    object TApontamentoCentroCusto: TStringField
      FieldName = 'CentroCusto'
      ReadOnly = True
      Size = 50
    end
    object TApontamentoProdutos: TStringField
      FieldName = 'Produtos'
      ReadOnly = True
      Size = 50
    end
    object TApontamentosyncaws: TIntegerField
      FieldName = 'syncaws'
      Origin = 'syncaws'
    end
    object TApontamentostatusStr: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'statusStr'
      Origin = 'statusStr'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
  end
  object TApontamentoValores: TFDQuery
    CachedUpdates = True
    IndexFieldNames = 'idapontamento'
    MasterFields = 'id'
    DetailFields = 'idapontamento'
    OnReconcileError = TApontamentoValoresReconcileError
    Connection = FCon
    SQL.Strings = (
      'select'
      ' ROW_NUMBER () OVER (ORDER BY a.id)Item, '
      ' a.*,'
      ' m.prefixo Maquina'
      'from apontamentoValores a'
      'join maquinaveiculo m on a.idmaquina=m.id '
      'where a.status=1'
      'and idapontamento=1'
      'order by a.horaoperacao ')
    Left = 480
    Top = 456
    object TApontamentoValoresItem: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Item'
      Origin = 'Item'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object TApontamentoValoresid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TApontamentoValoresstatus: TWideStringField
      FieldName = 'status'
      Origin = 'status'
      Size = 32767
    end
    object TApontamentoValoresdatareg: TWideStringField
      FieldName = 'datareg'
      Origin = 'datareg'
      Size = 32767
    end
    object TApontamentoValoresidusuario: TWideStringField
      FieldName = 'idusuario'
      Origin = 'idusuario'
      Size = 32767
    end
    object TApontamentoValoresdataalteracao: TWideStringField
      FieldName = 'dataalteracao'
      Origin = 'dataalteracao'
      Size = 32767
    end
    object TApontamentoValoresdataoperacao: TDateField
      FieldName = 'dataoperacao'
      Origin = 'dataoperacao'
    end
    object TApontamentoValoreshoraoperacao: TTimeField
      FieldName = 'horaoperacao'
      Origin = 'horaoperacao'
    end
    object TApontamentoValoresidusuarioalteracao: TWideStringField
      FieldName = 'idusuarioalteracao'
      Origin = 'idusuarioalteracao'
      Size = 32767
    end
    object TApontamentoValoresidapontamento: TWideStringField
      FieldName = 'idapontamento'
      Origin = 'idapontamento'
      Size = 32767
    end
    object TApontamentoValoresidmaquina: TWideStringField
      FieldName = 'idmaquina'
      Origin = 'idmaquina'
      Size = 32767
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
    object TApontamentoValorestipoidentificacaomaquina: TWideStringField
      FieldName = 'tipoidentificacaomaquina'
      Origin = 'tipoidentificacaomaquina'
      Size = 32767
    end
    object TApontamentoValoresimgveiculo: TWideStringField
      FieldName = 'imgveiculo'
      Origin = 'imgveiculo'
      Size = 32767
    end
    object TApontamentoValoresobservacao: TStringField
      FieldName = 'observacao'
      Origin = 'observacao'
      Size = 100
    end
    object TApontamentoValoresimgsyncs3: TWideStringField
      FieldName = 'imgsyncs3'
      Origin = 'imgsyncs3'
      Size = 32767
    end
    object TApontamentoValoresMaquina: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Maquina'
      Origin = 'prefixo'
      ProviderFlags = []
      ReadOnly = True
    end
  end
end

object dmDash: TdmDash
  OldCreateOrder = False
  Height = 394
  Width = 687
  object qryAux: TFDQuery
    Left = 56
    Top = 16
  end
  object ConsumoMaquinasDia: TFDQuery
    Connection = dmdb.FDConPG
    SQL.Strings = (
      'select prefixo "Label",sum(volumelt) "Value" '
      'from abastecimento a '
      'join centrocusto c on c.id=a.idcentrocusto '
      'join produtos p on p.id=a.combustivel '
      'join maquinaveiculo m on a.idmaquina=m.id'
      'where a.status >-1 and dataabastecimento =current_date '
      'group by dataabastecimento,prefixo'
      'order by dataabastecimento desc,prefixo')
    Left = 56
    Top = 72
  end
  object ConsumoLocalEstoque: TFDQuery
    Left = 56
    Top = 120
  end
  object ConsumoUltimos7Dias: TFDQuery
    SQL.Strings = (
      'select y.dataabastecimento "Label" , y.sum "Value" from '
      
        '(select dataabastecimento,p.nome,sum(a.volumelt) from abastecime' +
        'nto a'
      'join produtos p on a.combustivel=p.id'
      'where a.status =1 and a.combustivel=1'
      'and a.idcentrocusto=:idcentrocusto'
      'and a.dataabastecimento<=:current_date '
      'group by dataabastecimento,p.nome'
      'order by dataabastecimento desc ,p.nome'
      'limit 7)y '
      'order by dataabastecimento')
    Left = 56
    Top = 176
    ParamData = <
      item
        Name = 'IDCENTROCUSTO'
        ParamType = ptInput
      end
      item
        Name = 'CURRENT_DATE'
        ParamType = ptInput
      end>
  end
  object MediaMaquiana: TFDQuery
    Connection = dmdb.FDConPG
    SQL.Strings = (
      'select '
      ' "Label",'
      ' round(Volume,2)"Value" '
      'from'
      '(select '
      '  m.prefixo "Label", '
      '  avg(volumelt) Volume'
      ' from abastecimento y '
      ' join maquinaveiculo m on y.idmaquina=m.id'
      ' where y.status >-1 '
      
        ' and dataabastecimento between (current_date-365) and current_da' +
        'te '
      ' group by m.prefixo,y.idmaquina)y'
      ' order by "Label"')
    Left = 168
    Top = 64
  end
end

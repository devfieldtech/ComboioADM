unit UdmReport;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, ppParameter, ppDesignLayer,
  ppCtrls, ppBands, ppVar, Vcl.Imaging.jpeg, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, Vcl.Imaging.pngimage, ppStrtch,
  ppMemo,FMX.Graphics,Soap.EncdDecd,FMX.Objects;

type
  TdmReport = class(TDataModule)
    qryImprimeNota: TFDQuery;
    dsListaEntNotas: TDataSource;
    ppDBPListaEntNotas: TppDBPipeline;
    ppRepListaEntNotas: TppReport;
    ppHeaderBand13: TppHeaderBand;
    ppShape90: TppShape;
    ppLabel182: TppLabel;
    ppImage12: TppImage;
    ppShape89: TppShape;
    ppLabel183: TppLabel;
    ppLabel187: TppLabel;
    ppLabel188: TppLabel;
    ppLabel189: TppLabel;
    ppDBText155: TppDBText;
    ppLabel191: TppLabel;
    ppLabel192: TppLabel;
    ppLabel193: TppLabel;
    ppLabel194: TppLabel;
    ppDBText145: TppDBText;
    ppLabel195: TppLabel;
    ppDBText156: TppDBText;
    ppDBText157: TppDBText;
    ppLabel196: TppLabel;
    ppLabel190: TppLabel;
    ppDetailBand13: TppDetailBand;
    ppLine35: TppLine;
    ppDBText148: TppDBText;
    ppDBText149: TppDBText;
    ppDBText150: TppDBText;
    ppDBText153: TppDBText;
    ppDBText154: TppDBText;
    ppDBText146: TppDBText;
    ppFooterBand13: TppFooterBand;
    ppSystemVariable25: TppSystemVariable;
    ppSystemVariable26: TppSystemVariable;
    ppLine34: TppLine;
    ppSummaryBand13: TppSummaryBand;
    ppShape91: TppShape;
    ppDBCalc38: TppDBCalc;
    ppDBCalc39: TppDBCalc;
    ppLabel184: TppLabel;
    ppDBCalc40: TppDBCalc;
    ppLabel185: TppLabel;
    ppLabel186: TppLabel;
    ppDesignLayers13: TppDesignLayers;
    ppDesignLayer13: TppDesignLayer;
    ppParameterList13: TppParameterList;
    ppDBText152: TppDBText;
    QryListaEntrEstoque: TFDQuery;
    dsListaEntrEstoque: TDataSource;
    ppDBListaEntrEstoque: TppDBPipeline;
    ppRepListaEntrEstoque: TppReport;
    ppHeaderBand11: TppHeaderBand;
    ppLabel157: TppLabel;
    ppDetailBand11: TppDetailBand;
    ppLine31: TppLine;
    ppDBText125: TppDBText;
    ppDBText126: TppDBText;
    ppDBText127: TppDBText;
    ppDBText128: TppDBText;
    ppDBText129: TppDBText;
    ppDBText130: TppDBText;
    ppDBText124: TppDBText;
    ppDBText132: TppDBText;
    ppDBText133: TppDBText;
    ppDBText138: TppDBText;
    ppFooterBand11: TppFooterBand;
    ppSystemVariable21: TppSystemVariable;
    ppSystemVariable22: TppSystemVariable;
    ppSummaryBand11: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppShape79: TppShape;
    ppLabel158: TppLabel;
    ppLabel160: TppLabel;
    ppLabel161: TppLabel;
    ppLabel162: TppLabel;
    ppLabel163: TppLabel;
    ppLabel164: TppLabel;
    ppShape80: TppShape;
    ppLabel165: TppLabel;
    ppDBText131: TppDBText;
    ppLabel159: TppLabel;
    ppLabel166: TppLabel;
    ppLabel167: TppLabel;
    ppLabel174: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape81: TppShape;
    ppDBCalc32: TppDBCalc;
    ppShape82: TppShape;
    ppDBCalc33: TppDBCalc;
    ppShape83: TppShape;
    ppDBCalc34: TppDBCalc;
    ppDesignLayers11: TppDesignLayers;
    ppDesignLayer11: TppDesignLayer;
    ppParameterList11: TppParameterList;
    dsListaSaidaEstoque: TDataSource;
    ppDBPListaSaidaEstoque: TppDBPipeline;
    ppRepppListaSaidaEstoque: TppReport;
    ppHeaderBand12: TppHeaderBand;
    ppLabel168: TppLabel;
    ppShape84: TppShape;
    ppLabel169: TppLabel;
    ppLabel171: TppLabel;
    ppLabel172: TppLabel;
    ppLabel173: TppLabel;
    ppLabel176: TppLabel;
    ppLabel177: TppLabel;
    ppLabel178: TppLabel;
    ppLabel170: TppLabel;
    ppDetailBand12: TppDetailBand;
    ppLine33: TppLine;
    ppDBText135: TppDBText;
    ppDBText136: TppDBText;
    ppDBText137: TppDBText;
    ppDBText139: TppDBText;
    ppDBText140: TppDBText;
    ppDBText141: TppDBText;
    ppDBText142: TppDBText;
    ppDBText134: TppDBText;
    ppFooterBand12: TppFooterBand;
    ppSystemVariable23: TppSystemVariable;
    ppSystemVariable24: TppSystemVariable;
    ppSummaryBand12: TppSummaryBand;
    ppShape86: TppShape;
    ppDBCalc35: TppDBCalc;
    ppShape87: TppShape;
    ppDBCalc36: TppDBCalc;
    ppShape88: TppShape;
    ppDBCalc37: TppDBCalc;
    ppDesignLayers12: TppDesignLayers;
    ppDesignLayer12: TppDesignLayer;
    ppParameterList12: TppParameterList;
    QryEstoqueG: TFDQuery;
    dsEstoqueG: TDataSource;
    ppDBEstoqueG: TppDBPipeline;
    ppRepEstoqueG: TppReport;
    ppHeaderBand10: TppHeaderBand;
    ppShape78: TppShape;
    ppLabel149: TppLabel;
    ppLabel150: TppLabel;
    ppLabel152: TppLabel;
    ppLabel153: TppLabel;
    ppLabel154: TppLabel;
    ppLabel155: TppLabel;
    ppLabel156: TppLabel;
    ppLabel181: TppLabel;
    ppDetailBand10: TppDetailBand;
    ppLine29: TppLine;
    ppDBText119: TppDBText;
    ppDBText120: TppDBText;
    ppDBText121: TppDBText;
    ppDBText122: TppDBText;
    ppDBText123: TppDBText;
    ppDBText117: TppDBText;
    ppDBText144: TppDBText;
    ppFooterBand10: TppFooterBand;
    ppSystemVariable19: TppSystemVariable;
    ppSystemVariable20: TppSystemVariable;
    ppSummaryBand10: TppSummaryBand;
    ppDesignLayers10: TppDesignLayers;
    ppDesignLayer10: TppDesignLayer;
    ppParameterList10: TppParameterList;
    dsListaFoto: TDataSource;
    ppRepListaFoto: TppReport;
    ppHeaderBand9: TppHeaderBand;
    ppDetailBand9: TppDetailBand;
    ppDBText113: TppDBText;
    ppDBText115: TppDBText;
    ppDBText116: TppDBText;
    ppShape72: TppShape;
    ppShape73: TppShape;
    ppFooterBand9: TppFooterBand;
    ppSystemVariable17: TppSystemVariable;
    ppSystemVariable18: TppSystemVariable;
    ppLine27: TppLine;
    ppSummaryBand9: TppSummaryBand;
    ppDesignLayers9: TppDesignLayers;
    ppDesignLayer9: TppDesignLayer;
    ppParameterList9: TppParameterList;
    ppDBPListaFoto: TppDBPipeline;
    ExtratoBomba: TFDQuery;
    DateField1: TDateField;
    FMTBCDField1: TFMTBCDField;
    FMTBCDField2: TFMTBCDField;
    FMTBCDField3: TFMTBCDField;
    FMTBCDField4: TFMTBCDField;
    ExtratoBombatotalentradatransf: TFMTBCDField;
    ExtratoBombatotalsaidatransf: TFMTBCDField;
    dsExtratoBomba: TDataSource;
    ppRepExtratoBomba: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppShape9: TppShape;
    ppLabel44: TppLabel;
    ppShape10: TppShape;
    ppLabel45: TppLabel;
    ppLabel55: TppLabel;
    ppLine11: TppLine;
    ppImage4: TppImage;
    LblBomba: TppLabel;
    ppLblPeriodoBomba: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel62: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppLine12: TppLine;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppFooterBand5: TppFooterBand;
    ppSystemVariable9: TppSystemVariable;
    ppSystemVariable10: TppSystemVariable;
    ppLine13: TppLine;
    ppSummaryBand4: TppSummaryBand;
    ppDesignLayers5: TppDesignLayers;
    ppDesignLayer5: TppDesignLayer;
    ppParameterList5: TppParameterList;
    ppDBExtratoBomba: TppDBPipeline;
    DBPExtratoComb: TppDBPipeline;
    SaldoAtualCombustivel: TFDQuery;
    SaldoAtualCombustivellocalestoque: TWideStringField;
    SaldoAtualCombustivelproduto: TWideStringField;
    SaldoAtualCombustivelentradas: TFMTBCDField;
    SaldoAtualCombustivelsaidas: TFMTBCDField;
    SaldoAtualCombustivelsaldo: TFMTBCDField;
    SaldoAtualCombustiveltotal_saida_trans: TFMTBCDField;
    SaldoAtualCombustiveltotal_entrada_trans: TFMTBCDField;
    dsSaldoAtual: TDataSource;
    ppDBSaldoAtual: TppDBPipeline;
    ppRepSaldoAtual: TppReport;
    ppHeaderBand7: TppHeaderBand;
    ppShape26: TppShape;
    ppLabel91: TppLabel;
    ppLine15: TppLine;
    ppImage6: TppImage;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppDetailBand7: TppDetailBand;
    ppLine20: TppLine;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppFooterBand7: TppFooterBand;
    ppSystemVariable13: TppSystemVariable;
    ppSystemVariable14: TppSystemVariable;
    ppSummaryBand6: TppSummaryBand;
    ppDesignLayers7: TppDesignLayers;
    ppDesignLayer7: TppDesignLayer;
    ppParameterList7: TppParameterList;
    qryAux: TFDQuery;
    ExtratoDiaMaquina: TFDQuery;
    ExtratoDiaMaquinabomba: TWideStringField;
    ExtratoDiaMaquinacombustivel: TWideStringField;
    ExtratoDiaMaquinadatadia: TDateField;
    ExtratoDiaMaquinasaldoinicial: TBCDField;
    ExtratoDiaMaquinatotalentrada: TBCDField;
    ExtratoDiaMaquinatotalsaida: TBCDField;
    ExtratoDiaMaquinatotalsaidatrnasf: TBCDField;
    ExtratoDiaMaquinamaquina: TWideStringField;
    ExtratoDiaMaquinasaidaabastecimento: TBCDField;
    ExtratoDiaMaquinasaldodia: TBCDField;
    dsExtratoMaquinaDia: TDataSource;
    ppDBExtratoMaquinaDia: TppDBPipeline;
    ppRepExtratoMaquinaDia: TppReport;
    ppHeaderBand8: TppHeaderBand;
    ppLabel104: TppLabel;
    ppShape30: TppShape;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLine22: TppLine;
    ppImage7: TppImage;
    ppLblPeriodoEx: TppLabel;
    ppLabel116: TppLabel;
    ppDBMemo4: TppDBMemo;
    ppDBText86: TppDBText;
    ppShape29: TppShape;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel107: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel108: TppLabel;
    ppLabel112: TppLabel;
    ppDetailBand8: TppDetailBand;
    ppShape34: TppShape;
    ppDBMemo7: TppDBMemo;
    ppDBText84: TppDBText;
    ppDBText81: TppDBText;
    ppDBText82: TppDBText;
    ppDBText83: TppDBText;
    ppDBText74: TppDBText;
    ppDBText75: TppDBText;
    ppDBText85: TppDBText;
    ppFooterBand8: TppFooterBand;
    ppSystemVariable15: TppSystemVariable;
    ppSystemVariable16: TppSystemVariable;
    ppLine24: TppLine;
    ppSummaryBand7: TppSummaryBand;
    ppDesignLayers8: TppDesignLayers;
    ppDesignLayer8: TppDesignLayer;
    ppParameterList8: TppParameterList;
    ppLabel144: TppLabel;
    ppLabel145: TppLabel;
    QryRepLocalEstoque: TFDQuery;
    QryRepLocalEstoquelocalestoque: TWideStringField;
    QryRepLocalEstoqueproduto: TWideStringField;
    QryRepLocalEstoquecodigofabricante: TWideStringField;
    QryRepLocalEstoqueentradas: TFMTBCDField;
    QryRepLocalEstoqueentradatransf: TFMTBCDField;
    QryRepLocalEstoquesaidaestoque: TFMTBCDField;
    QryRepLocalEstoquesaidatransf: TFMTBCDField;
    QryRepLocalEstoquesaldo: TFMTBCDField;
    ppImgBomba: TppImage;
    ppImgHorimetro: TppImage;
    TAbastecimento: TFDQuery;
    ppRepListaSemFoto: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLine1: TppLine;
    ppImage1: TppImage;
    ppLblPeriodoSemFoto: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    ppLine2: TppLine;
    ppDBText7: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLine3: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    qryImprimeNotafornecedor: TWideStringField;
    qryImprimeNotadataentradaestoque: TDateField;
    qryImprimeNotanumeronf: TIntegerField;
    qryImprimeNotadataemissao: TDateField;
    qryImprimeNotadataentradaestoque_1: TDateField;
    qryImprimeNotaitem: TLargeintField;
    qryImprimeNotaproduto: TWideStringField;
    qryImprimeNotalocalestoque: TWideStringField;
    qryImprimeNotacentrocusto: TWideStringField;
    qryImprimeNotaid: TIntegerField;
    qryImprimeNotastatus: TIntegerField;
    qryImprimeNotadatareg: TSQLTimeStampField;
    qryImprimeNotaidusuario: TIntegerField;
    qryImprimeNotadataalteracao: TSQLTimeStampField;
    qryImprimeNotaidusuarioalteracao: TIntegerField;
    qryImprimeNotaidnota: TIntegerField;
    qryImprimeNotaidproduto: TIntegerField;
    qryImprimeNotavalortotalnf: TFMTBCDField;
    qryImprimeNotaqtditens: TFMTBCDField;
    qryImprimeNotaunidademedida: TWideStringField;
    qryImprimeNotapesoembalagem: TFMTBCDField;
    qryImprimeNotaidlocalestoque: TIntegerField;
    qryImprimeNotasyncaws: TIntegerField;
    qryImprimeNotavaloruni: TFMTBCDField;
    qryImprimeNotatipo: TWideStringField;
    QryListaEntrEstoquefornecedor: TWideStringField;
    QryListaEntrEstoquedataentradaestoque: TDateField;
    QryListaEntrEstoquenumeronf: TIntegerField;
    QryListaEntrEstoqueproduto: TWideStringField;
    QryListaEntrEstoquelocalestoque: TWideStringField;
    QryListaEntrEstoquecentrocusto: TWideStringField;
    QryListaEntrEstoqueid: TIntegerField;
    QryListaEntrEstoquestatus: TIntegerField;
    QryListaEntrEstoquedatareg: TSQLTimeStampField;
    QryListaEntrEstoqueidusuario: TIntegerField;
    QryListaEntrEstoquedataalteracao: TSQLTimeStampField;
    QryListaEntrEstoqueidusuarioalteracao: TIntegerField;
    QryListaEntrEstoqueidnota: TIntegerField;
    QryListaEntrEstoqueidproduto: TIntegerField;
    QryListaEntrEstoquevalortotalnf: TFMTBCDField;
    QryListaEntrEstoqueqtditens: TFMTBCDField;
    QryListaEntrEstoqueunidademedida: TWideStringField;
    QryListaEntrEstoquepesoembalagem: TFMTBCDField;
    QryListaEntrEstoqueidlocalestoque: TIntegerField;
    QryListaEntrEstoquesyncaws: TIntegerField;
    QryListaEntrEstoquevaloruni: TFMTBCDField;
    QryListaEntrEstoquetipo: TWideStringField;
    dsListaEntrItens: TDataSource;
    ppDBListaEntrItens: TppDBPipeline;
    QryEstoqueGproduto: TWideStringField;
    QryEstoqueGtotalentradas: TFMTBCDField;
    QryEstoqueGtotalsaida: TFMTBCDField;
    QryEstoqueGvalortotal: TFMTBCDField;
    QryEstoqueGultimaentrada: TDateField;
    QryEstoqueGultimasaida: TDateField;
    QryEstoqueGsaldoatual: TFMTBCDField;
    QryEstoqueGcustomedio: TFMTBCDField;
    ppLblCentroCusto: TppLabel;
    dsMovEstoque: TDataSource;
    ppDBMovEstoque: TppDBPipeline;
    ppRepMovEstoque: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel13: TppLabel;
    ppImage3: TppImage;
    ppDetailBand2: TppDetailBand;
    ppLine4: TppLine;
    ppDBText8: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList2: TppParameterList;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppShape2: TppShape;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel21: TppLabel;
    ppShape11: TppShape;
    ppLabel16: TppLabel;
    ppDBText9: TppDBText;
    ppDBText12: TppDBText;
    ppDBText15: TppDBText;
    ppLabel22: TppLabel;
    ppDBText16: TppDBText;
    ppLabel14: TppLabel;
    ppShape3: TppShape;
    ppDBCalc2: TppDBCalc;
    ppLine5: TppLine;
    dsStartBomba: TDataSource;
    ppRepStartBombaFoto: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLine6: TppLine;
    ppImage5: TppImage;
    ppLblPeriodoStart: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppShape5: TppShape;
    ppShape12: TppShape;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText17: TppDBText;
    ppShape13: TppShape;
    ppLabel32: TppLabel;
    ppShape14: TppShape;
    ppLabel33: TppLabel;
    imgStart: TppImage;
    imgStop: TppImage;
    ppFooterBand3: TppFooterBand;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLine14: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppParameterList3: TppParameterList;
    ppDBSartBomba: TppDBPipeline;
    ppRepStartBomba: TppReport;
    ppHeaderBand6: TppHeaderBand;
    ppShape16: TppShape;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLine16: TppLine;
    lblPeriodoStartSemFoto: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppLine17: TppLine;
    ppFooterBand6: TppFooterBand;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppLine18: TppLine;
    ppSummaryBand5: TppSummaryBand;
    ppShape17: TppShape;
    ppDBCalc4: TppDBCalc;
    ppLabel63: TppLabel;
    ppDesignLayers6: TppDesignLayers;
    ppDesignLayer6: TppDesignLayer;
    ppParameterList6: TppParameterList;
    ppLabel28: TppLabel;
    ppDBText19: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText18: TppDBText;
    ppLabel29: TppLabel;
    ppDBText20: TppDBText;
    ppLabel31: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppLabel50: TppLabel;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppShape4: TppShape;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel30: TppLabel;
    ppLabel23: TppLabel;
    ppLabel49: TppLabel;
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
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppShape18: TppShape;
    ppShape19: TppShape;
    ppLabel51: TppLabel;
    ppImgKM: TppImage;
    ppDBText43: TppDBText;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppLine25: TppLine;
    ppImage8: TppImage;
    ppLblPeriodoLista: TppLabel;
    ppShape20: TppShape;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    dsLubrificacao: TDataSource;
    ppRepLub: TppReport;
    ppHeaderBand14: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel52: TppLabel;
    ppImage13: TppImage;
    ppLblPeriodoLub: TppLabel;
    ppLabel72: TppLabel;
    ppDBText44: TppDBText;
    ppDetailBand14: TppDetailBand;
    ppFooterBand14: TppFooterBand;
    ppSystemVariable27: TppSystemVariable;
    ppSystemVariable28: TppSystemVariable;
    ppLine19: TppLine;
    ppSummaryBand8: TppSummaryBand;
    ppDesignLayers14: TppDesignLayers;
    ppDesignLayer14: TppDesignLayer;
    ppParameterList14: TppParameterList;
    ppDBPLub: TppDBPipeline;
    qryLubrificacao: TFDQuery;
    ppShape22: TppShape;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppShape27: TppShape;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel64: TppLabel;
    ppLabel73: TppLabel;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    qryLubrificacaoid: TIntegerField;
    qryLubrificacaostatus: TIntegerField;
    qryLubrificacaodatareg: TSQLTimeStampField;
    qryLubrificacaoidusuario: TIntegerField;
    qryLubrificacaodataalteracao: TSQLTimeStampField;
    qryLubrificacaoidusuarioalteracao: TIntegerField;
    qryLubrificacaoidmaquina: TIntegerField;
    qryLubrificacaodatatroca: TDateField;
    qryLubrificacaosyncaws: TIntegerField;
    qryLubrificacaosyncfaz: TIntegerField;
    qryLubrificacaohorimetro: TBCDField;
    qryLubrificacaokm: TBCDField;
    qryLubrificacaoidcentrocusto: TIntegerField;
    qryLubrificacaotipostr: TWideMemoField;
    qryLubrificacaomaquina: TWideStringField;
    qryLubrificacaocentrocusto: TWideStringField;
    qryLubrificacaoproduto: TWideStringField;
    qryLubrificacaoqtd: TBCDField;
    ppDBText50: TppDBText;
    qryLubrificacaotipoproduto: TWideMemoField;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    qryLubrificacaoalerta: TIntegerField;
    qryLubrificacaodescricaoalerta: TWideMemoField;
    qryLubrificacaotipoalerta: TWideMemoField;
    ppLabel78: TppLabel;
    ppDBText53: TppDBText;
    ppDBText5: TppDBText;
    TAbastecimentoalerta: TIntegerField;
    TAbastecimentodescricaoalerta: TWideMemoField;
    TAbastecimentotipoalerta: TWideMemoField;
    ppDBText54: TppDBText;
    ppLabel80: TppLabel;
    ppDBText55: TppDBText;
    ppLabel81: TppLabel;
    ppDBText56: TppDBText;
    dsMaquinas: TDataSource;
    ppRepMaquinas: TppReport;
    ppHeaderBand15: TppHeaderBand;
    ppLabel82: TppLabel;
    ppLine7: TppLine;
    ppDetailBand15: TppDetailBand;
    ppDBText59: TppDBText;
    ppFooterBand15: TppFooterBand;
    ppSystemVariable29: TppSystemVariable;
    ppSystemVariable30: TppSystemVariable;
    ppLine21: TppLine;
    ppSummaryBand14: TppSummaryBand;
    ppDesignLayers15: TppDesignLayers;
    ppDesignLayer15: TppDesignLayer;
    ppParameterList15: TppParameterList;
    ppDBPMaquinas: TppDBPipeline;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppLabel84: TppLabel;
    ppDBText57: TppDBText;
    ppLabel83: TppLabel;
    ppDBText72: TppDBText;
    ppLine23: TppLine;
    ppDBText58: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppShape33: TppShape;
    ppLabel89: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel90: TppLabel;
    ppLabel94: TppLabel;
    ppShape24: TppShape;
    ppShape25: TppShape;
    ppLabel95: TppLabel;
    ppDBText73: TppDBText;
    ppRepMovEstoqueFoto: TppReport;
    ppHeaderBand16: TppHeaderBand;
    ppLabel101: TppLabel;
    ppDetailBand16: TppDetailBand;
    ppLine28: TppLine;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppDBText87: TppDBText;
    ppLabel102: TppLabel;
    ppFooterBand16: TppFooterBand;
    ppSystemVariable31: TppSystemVariable;
    ppSystemVariable32: TppSystemVariable;
    ppLine30: TppLine;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppShape28: TppShape;
    ppLabel103: TppLabel;
    ppLabel115: TppLabel;
    ppLabel117: TppLabel;
    ppShape31: TppShape;
    ppLabel118: TppLabel;
    ppDBText88: TppDBText;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppShape32: TppShape;
    ppDBCalc3: TppDBCalc;
    ppDesignLayers16: TppDesignLayers;
    ppDesignLayer16: TppDesignLayer;
    ppParameterList16: TppParameterList;
    ppShape35: TppShape;
    ppShape36: TppShape;
    ppLine32: TppLine;
    ppShape37: TppShape;
    ppLabel121: TppLabel;
    ppShape38: TppShape;
    ppLabel122: TppLabel;
    ppimgTotalFim: TppImage;
    ppimgTotalIni: TppImage;
    qryLubrificacaoidlocalestoque: TIntegerField;
    qryLubrificacaolocalestoque: TWideStringField;
    ppLabel123: TppLabel;
    ppDBText89: TppDBText;
    qryLubrificacaoidcompartimento: TIntegerField;
    qryLubrificacaocompartimento: TWideStringField;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    ppDBText91: TppDBText;
    ppDBText92: TppDBText;
    ppLine36: TppLine;
    ppLabel127: TppLabel;
    ppLabel128: TppLabel;
    ppDBText93: TppDBText;
    ppDBText94: TppDBText;
    ppImage2: TppImage;
    ppImage9: TppImage;
    ppImage10: TppImage;
    ppImage11: TppImage;
    ppImage15: TppImage;
    ppImage14: TppImage;
    ppDBText25: TppDBText;
    ppShape21: TppShape;
    ppShape7: TppShape;
    ppLabel38: TppLabel;
    ppLabel12: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLine8: TppLine;
    ppLabel41: TppLabel;
    ppDBText26: TppDBText;
    TAbastecimentototalizadostart: TFMTBCDField;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppShape1: TppShape;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel9: TppLabel;
    ppLabel79: TppLabel;
    ppDBText1: TppDBText;
    TAbastecimentoimgsyncs3: TIntegerField;
    TAbastecimentototalizadorinicial: TFMTBCDField;
    TAbastecimentototalizadorfinal: TFMTBCDField;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppLabel53: TppLabel;
    ppDBText29: TppDBText;
    ppShape6: TppShape;
    ppLabel4: TppLabel;
    ppDBCalc1: TppDBCalc;
    procedure ppGroupFooterBand6BeforePrint(Sender: TObject);
    procedure ppDetailBand14BeforeGenerate(Sender: TObject);
    procedure imgStartPrint(Sender: TObject);
    procedure imgStopPrint(Sender: TObject);
    procedure ppDetailBand9BeforePrint(Sender: TObject);
    procedure ppDetailBand16BeforePrint(Sender: TObject);
  private
    function  BitmapFromBase64(const base64: string): TBitmap;

  public
    procedure AbreRepNota(vIdNota:string);
    procedure AbreListaEntradas(vFiltro: string);

    procedure SaldoAtualCustoMedio(vIdCentroCusto,vFiltro: string);
    procedure AbreExtratoBomba(idComb, NomeCOmb, DataIni,
     DataFim: string);
    procedure AbreExtratoCombustivel(idComb,NomeCOmb,DataIni,DataFim:string);
    procedure AbreSaldoAtualCombustivel(vFiltro:string);
    procedure AbreExtratoDiaMaquina(DataIni,DataFim,idLocal:string);
    procedure GeraExtratoCombustivel(DataIni, DataFim, LocalEstoque: string);
    procedure ReportConsumoMaquinaDia(DataIni, DataFim:TDate;IdMaquina:string);
    procedure AbreLubrificacao(vFiltro:string);
    procedure AbreAbastecimento(vFiltro: string);
  end;

var
  dmReport: TdmReport;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

uses UdmDB, UPrincipal, ULubrificacao;

{$R *.dfm}

{ TdmReport }

procedure TdmReport.AbreAbastecimento(vFiltro: string);
begin
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
   Add(' (select min(volumelitrosini)');
   Add(' from startbomba s');
   Add(' where idlocalestoque=a.idlocalestoque');
   Add(' and dataastart =dataabastecimento)TotalizadorInicial,');
   Add(' (select max(volumelitrosfim)');
   Add('  from startbomba s');
   Add(' where idlocalestoque=a.idlocalestoque');
   Add(' and dataastart =dataabastecimento)TotalizadorFinal,');
   Add('(select max(volumelitrosfim)-min(volumelitrosini)');
   Add('from startbomba s');
   Add('where idlocalestoque=a.idlocalestoque');
   Add('and dataastart =dataabastecimento)TotalizadoStart');
   Add('from abastecimento a');
   Add('join centrocusto c  on a.idcentrocusto=c.id');
   Add('join localestoque l on a.idlocalestoque=l.id');
   Add('join maquinaveiculo m on a.idmaquina=m.id');
   Add('join produtos p on a.combustivel = p.id');
   Add('where a.status=1');
   Add(vFiltro);
   Add('order by a.idlocalestoque,a.dataabastecimento,a.hora,a.id');
   TAbastecimento.SQL.Text;
   Open;
 end;
end;




procedure TdmReport.AbreRepNota(vIdNota: string);
begin
 with qryImprimeNota,qryImprimeNota.SQL do
 begin
   Clear;
   Add('select');
   Add('f.nome Fornecedor,');
   Add('b.dataentradaestoque,');
   Add('b.numeronf,');
   Add('b.dataemissao,');
   Add('b.dataentradaestoque,');
   Add('ROW_NUMBER () OVER (ORDER BY a.id)Item,');
   Add('c.nome Produto,');
   Add('d.nome LocalEstoque,');
   Add('e.nome CentroCusto,');
   Add('a.*,');
   Add('a.valortotalnf/a.qtditens ValorUni,');
   Add('a.valortotalnf *a.qtditens valorTotalNota,');
   Add('cast(case');
   Add('when b.tipo =0 then ''COMPRA''');
   Add('when b.tipo =1 then ''ACERTO''');
   Add('end as varchar(10))Tipo');
   Add('from notafiscalitems a');
   Add('join nfentrada b on a.idnota=b.id');
   Add('join produtos c on c.id=a.idproduto');
   Add('join localestoque d on d.id=a.idlocalestoque');
   Add('join centrocusto e on e.id=b.idcentrocusto');
   Add('join fornecedor f on f.id=b.idfornecedor');
   Add('WHERE b.ID='+vIdNota);
   Add('ORDER BY A.ID');
   Open;
   ppRepListaEntNotas.PrintReport;
 end;
end;

procedure TdmReport.AbreSaldoAtualCombustivel(vFiltro: string);
begin
  with SaldoAtualCombustivel,SaldoAtualCombustivel.SQL do
  begin
    Clear;
    Add('select');
    Add(' entrada.localestoque,');
    Add(' coalesce(entrada.produto,saida.produto)produto,');
    Add(' coalesce(entrada.qtdEntrada,0) entradas,');
    Add(' coalesce(saida.qtdSaida,0)Saidas,');
    Add(' (coalesce(entrada.qtdEntrada,0)+coalesce(TOTAL_ENT_TRANS,0))-(coalesce(saida.qtdSaida,0)+coalesce(TRO.TOTAL_SAIDA_TRANS,0))saldo,');
    Add(' coalesce(TRO.TOTAL_SAIDA_TRANS,0)TOTAL_SAIDA_TRANS,');
    Add(' coalesce(TOTAL_ENT_TRANS,0)TOTAL_ENTRADA_TRANS');
    Add('from');
    Add('(');
    Add('select');
    Add(' a.id idlocalestoque,');
    Add(' b.id idProduto,');
    Add(' a.nome LocalEstoque,');
    Add(' b.nome Produto,');
    Add(' sum(c.qtditens) qtdEntrada');
    Add('from localestoque a');
    Add('left join notafiscalitems c on c.idlocalestoque=a.id');
    Add('left join produtos b on  c.idproduto=b.id');
    Add('group by a.id,b.id,a.nome,b.nome');
    Add(')entrada');
    Add('left join');
    Add('(');
    Add('select ab.idlocalestoque,p.id idProduto,nome produto,sum(ab.volumelt) qtdSaida from abastecimento ab');
    Add('join produtos p on p.id=ab.combustivel');
    Add('where ab.status=1');
    Add('group by ab.idlocalestoque,p.id,nome');
    Add(')saida');
    Add('on saida.idlocalestoque=entrada.idlocalestoque');
    Add('left join');
    Add('(select t.idlocalestoqueorigem,sum(t.qtde) TOTAL_SAIDA_TRANS from tranferencialocalestoque t');
    Add('where t.status=1');
    Add('group by t.idlocalestoqueorigem)TRO');
    Add('on TRO.idlocalestoqueorigem=entrada.idlocalestoque');
    Add('left join');
    Add('(select t.idlocalestoquedetino ,sum(t.qtde) TOTAL_ENT_TRANS from tranferencialocalestoque t');
    Add('where t.status=1');
    Add('group by t.idlocalestoquedetino )TRD');
    Add('on TRD.idlocalestoquedetino =entrada.idlocalestoque');
    Add('where 1=1');
    if vFiltro.Length>0 then
     Add(vFiltro);
    Open;
    if not isempty then
     ppRepSaldoAtual.PrintReport
    else
      frmPrincipal.MyShowMessage('sem dados para esse filtro',false);
  end;
end;

function TdmReport.BitmapFromBase64(const base64: string): TBitmap;
var
  Input: TStringStream;
  Output: TBytesStream;
begin
  Input := TStringStream.Create(base64, TEncoding.ASCII);
  try
    Output := TBytesStream.Create;
    try
      Soap.EncdDecd.DecodeStream(Input, Output);
      Output.Position := 0;
      Result := TBitmap.Create;
      try
        Result.LoadFromStream(Output);
      except
        Result.Free;
        raise;
      end;
    finally
      Output.Free;
    end;
  finally
    Input.Free;
  end;
end;

procedure TdmReport.AbreExtratoBomba(idComb, NomeCOmb, DataIni,
  DataFim: string);
var
 vDataIni,vDataFim:string;
begin
 vDataIni  := FormatDateTime('yyyy-mm-dd',StrToDate(DataIni)).QuotedString;
 vDataFim  := FormatDateTime('yyyy-mm-dd',StrToDate(DataFim)).QuotedString;
 with ExtratoBomba,ExtratoBomba.sql do
 begin
   Clear;
   Add('select * from FExtratoLocal(');
   Add(vDataIni+',');
   Add(vDataFim+',');
   Add(idComb+')');
   Open;
   if not IsEmpty then
   begin
    LblBomba.Text := NomeComb;
    ppLblPeriodoBomba.Text := 'De '+DataIni+' ate '+DataFim;
    ppRepExtratoBomba.PrintReport;
   end
   else
   begin
     frmPrincipal.MyShowMessage('Sem dados para esse filtro!!',false);
   end;
 end;
end;

procedure TdmReport.AbreExtratoCombustivel(idComb, NomeCOmb, DataIni,
  DataFim: string);
var
 vDataIni,vDataFim:string;
begin

end;

procedure TdmReport.AbreExtratoDiaMaquina(DataIni, DataFim, idLocal: string);
begin
 with qryAux,qryAux.SQL do
 begin
   Clear;
   Add('delete from extratoCombustivel');
   ExecSQL;
 end;
 GeraExtratoCombustivel(DataIni,DataFim,idLocal);
 with ExtratoDiaMaquina,ExtratoDiaMaquina.sql do
 begin
   Clear;
   Add('select * from extratoCombustivel');
   Open;
   ppLblPeriodoEx.Text :=DataIni+' ate '+DataFim;
   ppRepExtratoMaquinaDia.PrintReport;
 end;
end;

procedure TdmReport.GeraExtratoCombustivel(DataIni, DataFim, LocalEstoque: string);
var
 vQry,vQry2,vQry3:TFDQuery;
 vTotalEntradaIni,
 vTotalSaidaAbsIni,
 vTotalSaidaIni,
 vTotalEntradaTrsIni,
 vTotalSaidaTrsIni,
 vSaldoIni,
 vSaidaTrsDia,
 vEntradaTrsDia,
 vEntradaEstoqueDia,
 vAbastecimento,
 vSaldoDia,vEntradaTotalDia,
 vSaldoDiaAnterior:double;
 vDataControle,
 vDataFim:TDate;
 vMaquina,vLocal:string;
 i,x:integer;
begin
 vQry := TFDQuery.Create(nil);
 vQry.Connection := dmdb.FDConPG;
 vQry2 := TFDQuery.Create(nil);
 vQry2.Connection := dmdb.FDConPG;
 vQry3 := TFDQuery.Create(nil);
 vQry3.Connection := dmdb.FDConPG;
 i :=0;
 x :=0;
 with vQry,vQry.SQL do
 begin
   vTotalEntradaIni :=0;
   vTotalSaidaIni   :=0;

   Clear;
   Add('select * from localestoque l');
   Add('where id='+LocalEstoque);
   Open;
   vLocal := FieldByName('Nome').AsString;

   Clear;
   Add('select coalesce((y.TotalEntrada+y.EntradaTrans)-(y.SaidaTransf+y.saidaAbastecimento),0)saldoInicial from');
   Add('(');
   Add('select');
   Add('(select sum(a.qtditens) from notafiscalitems a');
   Add('where a.status=1 and a.idlocalestoque=:IdLocal and');
   Add('a.dataentradaestoque<:dataIni)TotalEntrada,');
   Add('(select sum(qtde) from tranferencialocalestoque a');
   Add('where a.status=1 and a.idlocalestoquedetino=:IdLocal and');
   Add('a.datamov<:dataIni)EntradaTrans,');
   Add('(select sum(qtde) from tranferencialocalestoque a');
   Add('where a.status=1 and a.idlocalestoqueorigem=:IdLocal and');
   Add('a.datamov<:dataIni) SaidaTransf,');
   Add('(select sum(a.volumelt) from abastecimento a');
   Add('where a.status=1 and a.idlocalestoque=:IdLocal and');
   Add('a.dataabastecimento<:dataIni)saidaAbastecimento');
   Add('from nfentrada');
   Add('limit 1)y');
   ParamByName('dataIni').AsDate    :=StrToDate(DataIni);
   ParamByName('IdLocal').AsInteger :=strToInt(LocalEstoque);
   Open;
//
//   vSaldoIni  := (vTotalEntradaIni+vTotalEntradaTrsIni)-(vTotalSaidaIni+vTotalSaidaAbsIni);
   vSaldoIni    := FieldByName('saldoInicial').AsFloat;

   vDataControle := StrToDate(DataIni);
   vDataFim      := StrToDate(DataFim);

   while vDataControle<=vDataFim do
   begin
    Clear;
    Add('select coalesce(sum(qtde),0) qtde from tranferencialocalestoque a');
    Add('where a.status=1 and a.idlocalestoquedetino='+LocalEstoque+' and');
    Add('a.datamov=:dataControle');
    ParamByName('dataControle').AsDate := vDataControle;
    Open;
    vEntradaTrsDia  := FieldByName('qtde').AsFloat;

    Clear;
    Add('select coalesce(sum(a.qtditens),0)qtde from notafiscalitems a');
    Add('where a.status=1 and a.idlocalestoque='+LocalEstoque+' and');
    Add('a.dataentradaestoque=:dataControle');
    ParamByName('dataControle').AsDate := vDataControle;
    Open;
    vEntradaEstoqueDia := FieldByName('qtde').AsFloat;

    Clear;
    Add('select coalesce(sum(qtde),0)qtde from tranferencialocalestoque a');
    Add('where a.status=1 and a.idlocalestoqueorigem='+LocalEstoque+' and');
    Add('a.datamov=:dataControle');
    ParamByName('dataControle').AsDate := vDataControle;
    Open;
    vSaidaTrsDia  := FieldByName('qtde').AsFloat;

    vEntradaTotalDia := vEntradaEstoqueDia+vEntradaTrsDia;

    with vQry2,vQry2.SQL do
    begin
      Clear;
      Add('select');
      Add('c.modelo||'' - ''||c.prefixo maquina,');
      Add('coalesce(a.volumelt,0)qtd');
      Add('from abastecimento a');
      Add('join maquinaveiculo c on c.id=a.idmaquina');
      Add('where a.status=1 and a.idlocalestoque='+LocalEstoque);
      Add('and a.dataabastecimento=:dataControle');
      ParamByName('dataControle').AsDate := vDataControle;
      Open;
      if not vQry2.IsEmpty then
      begin
        x:=0;
        while not vQry2.eof do
        begin
         vAbastecimento := FieldByName('qtd').AsFloat;
         vMaquina       := FieldByName('maquina').AsString;
         if i=0 then
          vsaldoDia      := (vSaldoIni+vEntradaTotalDia)- (vSaidaTrsDia+vAbastecimento)
         else
          vsaldoDia      := (vSaldoDiaAnterior+vEntradaTotalDia)- (vSaidaTrsDia+vAbastecimento);

         with vQry3,vQry3.SQL do
         begin
          Clear;
          Add('insert into extratocombustivel(bomba,datadia,saldoinicial,totalentrada,maquina,saidaabastecimento,totalsaidatrnasf,saldodia)');
          Add('values(:LocalEstoque,:DataDia,:SaldoInicial,:TotalEntrada,:Maquina,:Abastecimento,:SaidaTransferencia,:saldoDia)');
          ParamByName('LocalEstoque').AsString       := vLocal;
          ParamByName('DataDia').AsDate              := vDataControle;
          if i=0 then
           ParamByName('SaldoInicial').AsFloat       := vSaldoIni
          else
           ParamByName('SaldoInicial').AsFloat       := vSaldoDiaAnterior;
          ParamByName('TotalEntrada').AsFloat        := vEntradaTotalDia;
          ParamByName('Maquina').AsString            := vMaquina;
          ParamByName('Abastecimento').AsFloat       := vAbastecimento;
          ParamByName('SaidaTransferencia').AsFloat  := vSaidaTrsDia;
          ParamByName('saldoDia').AsFloat            := vsaldoDia;
          ExecSQL;
         end;
         inc(x);
         vSaldoDiaAnterior := vsaldoDia;
         if x>0 then
         begin
           vSaidaTrsDia     :=0;
           vEntradaTotalDia :=0;
           vEntradaTrsDia   :=0;
           vAbastecimento   :=0;
         end;
         inc(i);
         vQry2.Next
        end;
      end
      else
      begin
        if i=0 then
          vsaldoDia      := (vSaldoIni+vEntradaTotalDia)-(vSaidaTrsDia+vAbastecimento)
         else
          vsaldoDia      := (vSaldoDiaAnterior+vEntradaTotalDia)- (vSaidaTrsDia+vAbastecimento);
        with vQry3,vQry3.SQL do
        begin
          Clear;
          Add('insert into extratocombustivel(bomba,datadia,saldoinicial,totalentrada,maquina,saidaabastecimento,totalsaidatrnasf,saldodia)');
          Add('values(:LocalEstoque,:DataDia,:SaldoInicial,:TotalEntrada,:Maquina,:Abastecimento,:SaidaTransferencia,:saldoDia)');
          ParamByName('LocalEstoque').AsString       := vLocal;
          ParamByName('DataDia').AsDate              := vDataControle;
          if i=0 then
           ParamByName('SaldoInicial').AsFloat       := vSaldoIni
          else
           ParamByName('SaldoInicial').AsFloat       := vSaldoDiaAnterior;
          ParamByName('TotalEntrada').AsFloat        := vEntradaTotalDia;
          ParamByName('Maquina').AsString            := '';
          ParamByName('Abastecimento').AsFloat       := 0;
          ParamByName('SaidaTransferencia').AsFloat  := vSaidaTrsDia;
          ParamByName('saldoDia').AsFloat            := vsaldoDia;
          ExecSQL;
        end;
      end;
    end;
    vSaldoDiaAnterior := vsaldoDia;
    inc(i);
    vDataControle := vDataControle+1
   end;
 end;
end;

procedure TdmReport.imgStartPrint(Sender: TObject);
var
  objImage : TStringStream;
  ms: TMemoryStream;
  vImgStart,vImgStop : TImage;
begin
  if dmdb.TStartBombaimgstart.AsString.Length>0 then
   begin
    vImgStart := TImage.Create(nil);
    MS := TMemoryStream.Create;
    vImgStart.Bitmap := BitmapFromBase64(dmdb.TStartBombaimgstart.AsString);
    vImgStart.Bitmap.SaveToStream(MS);
    MS.Position := 0;
    imgStart.Picture.LoadFromStream(MS);
    vImgStart.Free;
    MS.Free;
   end
   else
    imgStart.Picture.Bitmap := nil;
end;

procedure TdmReport.imgStopPrint(Sender: TObject);
var
  objImage : TStringStream;
  ms: TMemoryStream;
  vImgStop : TImage;
begin
  if dmdb.TStartBombaimgend.AsString.Length>0 then
   begin
    vImgStop := TImage.Create(nil);
    MS := TMemoryStream.Create;
    vImgStop.Bitmap := BitmapFromBase64(dmdb.TStartBombaimgend.AsString);
    vImgStop.Bitmap.SaveToStream(MS);
    MS.Position := 0;
    imgStop.Picture.LoadFromStream(MS);
    vImgStop.Free;
    MS.Free;
   end
   else
    imgStop.Picture.Bitmap := nil;
end;

procedure TdmReport.ppDetailBand14BeforeGenerate(Sender: TObject);
var
 objImage : TStringStream;
 ms: TMemoryStream;
 ImagemStart,
 ImagemFim : TImage;
begin
// if dmdb.TstartBombaimgstart.AsString.Length>0 then
// begin
//  ImagemStart := TImage.Create(nil);
//  MS := TMemoryStream.Create;
//  ImagemStart.Bitmap := BitmapFromBase64(dmdb.TstartBombaimgstart.AsString);
//  ImagemStart.Bitmap.SaveToStream(MS);
//  MS.Position := 0;
//  ppImgIni.Picture.LoadFromStream(MS);
//  ImagemStart.Free;
//  MS.Free;
// end
// else
//  ppImgIni.Picture.Bitmap := nil;
// if dmdb.TstartBombaimgend.AsString.Length>0 then
// begin
//  ImagemFim := TImage.Create(nil);
//  MS := TMemoryStream.Create;
//  ImagemFim.Bitmap := BitmapFromBase64(dmdb.TstartBombaimgend.AsString);
//  ImagemFim.Bitmap.SaveToStream(MS);
//  MS.Position := 0;
//  ppImgeFim.Picture.LoadFromStream(MS);
//  ImagemFim.Free;
//  MS.Free;
// end
// else
//  ppImgeFim.Picture.Bitmap := nil;
end;

procedure TdmReport.ppDetailBand16BeforePrint(Sender: TObject);
var
  objImage : TStringStream;
  ms: TMemoryStream;
  vImgIni, vImgFim: TImage;
begin
   if dmdb.TMovLocalEstoqueimg.AsString.Length>0 then
   begin
    vImgIni := TImage.Create(nil);
    MS := TMemoryStream.Create;
    vImgIni.Bitmap := BitmapFromBase64(dmdb.TMovLocalEstoqueimg.AsString);
    vImgIni.Bitmap.SaveToStream(MS);
    MS.Position := 0;
    ppimgTotalIni.Picture.LoadFromStream(MS);
    vImgIni.Free;
    MS.Free;
   end
   else
    ppimgTotalIni.Picture.Bitmap := nil;

  if dmdb.TMovLocalEstoqueimgFim.AsString.Length>0 then
   begin
    vImgFim := TImage.Create(nil);
    MS := TMemoryStream.Create;
    vImgFim.Bitmap := BitmapFromBase64(dmdb.TMovLocalEstoqueimgFim.AsString);
    vImgFim.Bitmap.SaveToStream(MS);
    MS.Position := 0;
    ppimgTotalFim.Picture.LoadFromStream(MS);
    vImgFim.Free;
    MS.Free;
   end
   else
    ppimgTotalFim.Picture.Bitmap := nil;
end;

procedure TdmReport.ppDetailBand9BeforePrint(Sender: TObject);
var
  objImage : TStringStream;
  ms: TMemoryStream;
  vImgBomba, vImgHorimetro,vHodometro : TImage;
begin
   if TAbastecimentoimg.AsString.Length>0 then
   begin
    vImgHorimetro := TImage.Create(nil);
    MS := TMemoryStream.Create;
    vImgHorimetro.Bitmap := BitmapFromBase64(TAbastecimentoimg.AsString);
    vImgHorimetro.Bitmap.SaveToStream(MS);
    MS.Position := 0;
    ppImgHorimetro.Picture.LoadFromStream(MS);
    vImgHorimetro.Free;
    MS.Free;
   end
   else
    ppImgHorimetro.Picture.Bitmap := nil;

  if TAbastecimentoimg2.AsString.Length>0 then
   begin
    vImgBomba := TImage.Create(nil);
    MS := TMemoryStream.Create;
    vImgBomba.Bitmap := BitmapFromBase64(TAbastecimentoimg2.AsString);
    vImgBomba.Bitmap.SaveToStream(MS);
    MS.Position := 0;
    ppImgBomba.Picture.LoadFromStream(MS);
    vImgBomba.Free;
    MS.Free;
   end
   else
    ppImgBomba.Picture.Bitmap := nil;

   if TAbastecimentoimg3.AsString.Length>0 then
   begin
    vHodometro:= TImage.Create(nil);
    MS := TMemoryStream.Create;
    vHodometro.Bitmap := BitmapFromBase64(TAbastecimentoimg3.AsString);
    vHodometro.Bitmap.SaveToStream(MS);
    MS.Position := 0;
    ppImgKM.Picture.LoadFromStream(MS);
    vHodometro.Free;
    MS.Free;
   end
   else
    ppImgKM.Picture.Bitmap := nil;
end;

procedure TdmReport.ppGroupFooterBand6BeforePrint(Sender: TObject);
begin
// if(ppDBCalcLitros.Text.Length>0)and(pplblTotalHoras.Text<>'0') then
//  ppLblConsumo.Text := FormatFloat('####,##0.00',(strToFloat(ppDBCalcLitros.Text))
//   /(strToFloat(pplblTotalHoras.Text)))
// else
//  ppLblConsumo.Text :='0';
//
// if(ppDBCalcLitros.Text.Length>0)and(ppDBkmtotal.Text<>'0') then
//  LblConsumokm.Text := FormatFloat('####,##0.00',(strToFloat(ppDBCalcLitros.Text))
//   /(strToFloat(ppDBkmtotal.Text)))
// else
//  ppLblConsumo.Text :='0';
end;

procedure TdmReport.ReportConsumoMaquinaDia(DataIni, DataFim:TDate;
  IdMaquina: string);
begin
// with qryRepConsumoMaquina,qryRepConsumoMaquina.SQL do
// begin
//  if IdMaquina.Length=0 then
//  begin
//   Clear;
//   Add('select y.*,(max-min)horaskm_total,');
//   Add('(maxkm-minkm)kmTotal');
//   Add('from(');
//   Add('select');
//   Add(' a.idmaquina,');
//   Add(' a.dataabastecimento,');
//   Add(' a.horimetro,');
//   Add(' a.kmatual,');
//   Add(' c.prefixo MaquinaPrefixo,');
//   Add(' p.nome CombustivelNome,');
//   Add(' a.volumelt,');
//   Add(' (select min(horimetro) from abastecimento');
//   Add(' where status=1 and idmaquina=a.idmaquina');
//   Add(' and dataabastecimento between :dataInicio and :dataFim),');
//   Add(' (select max(horimetro) from abastecimento');
//   Add(' where status=1 and idmaquina=a.idmaquina');
//   Add(' and dataabastecimento between :dataInicio and :dataFim),');
//   Add(' (select coalesce(min(kmatual),0) from abastecimento');
//   Add(' where status=1 and idmaquina=a.idmaquina');
//   Add(' and dataabastecimento between :dataInicio and :dataFim)minkm,');
//   Add(' (select coalesce(max(kmatual),0) from abastecimento');
//   Add(' where status=1 and idmaquina=a.idmaquina');
//   Add(' and dataabastecimento between :dataInicio and :dataFim)maxkm');
//   Add('from abastecimento a');
//   Add('join produtos p on p.id =a.combustivel');
//   Add('join centrocusto c2  on c2.id=a.idcentrocusto');
//   Add('join localestoque b on a.idlocalestoque=b.id');
//   Add('join maquinaveiculo c on c.id=a.idmaquina');
//   Add('join operadormaquinas d on d.id=a.idoperador');
//   Add('join auxatividadeabastecimento h on h.id=a.idAtividade');
//   Add('where a.status=1 and a.dataabastecimento between :dataInicio and :dataFim');
//   Add('order by prefixo,dataabastecimento,horimetro)y');
//   ParamByName('dataInicio').AsDate :=DataIni;
//   ParamByName('dataFim').AsDate    :=DataFim;
//   qryRepConsumoMaquina.SQL.Text;
//   Open;
//   ppRepConsumo.Print;
//  end
//  else
//  begin
//   Clear;
//   Add('select y.*,(max-min)horaskm_total');
//   Add('(maxkm-minkm)kmTotal');
//   Add('from(');
//   Add('select');
//   Add(' a.idmaquina,');
//   Add(' a.dataabastecimento,');
//   Add(' a.horimetro,');
//   Add(' a.kmatual,');
//   Add(' c.prefixo MaquinaPrefixo,');
//   Add(' p.nome CombustivelNome,');
//   Add(' a.volumelt,');
//   Add(' (select min(horimetro) from abastecimento');
//   Add(' where status=1 and idmaquina=a.idmaquina');
//   Add(' and dataabastecimento between :dataInicio and :dataFim),');
//   Add(' (select max(horimetro) from abastecimento');
//   Add(' where status=1 and idmaquina=a.idmaquina');
//   Add(' and dataabastecimento between :dataInicio and :dataFim),');
//   Add(' (select coalesce(min(kmatual),0) from abastecimento');
//   Add(' where status=1 and idmaquina=a.idmaquina');
//   Add(' and dataabastecimento between :dataInicio and :dataFim)minkm,');
//   Add(' (select coalesce(max(kmatual),0) from abastecimento');
//   Add(' where status=1 and idmaquina=a.idmaquina');
//   Add(' and dataabastecimento between :dataInicio and :dataFim)maxkm');
//   Add('from abastecimento a');
//   Add('join produtos p on p.id =a.combustivel');
//   Add('join centrocusto c2  on c2.id=a.idcentrocusto');
//   Add('join localestoque b on a.idlocalestoque=b.id');
//   Add('join maquinaveiculo c on c.id=a.idmaquina');
//   Add('join operadormaquinas d on d.id=a.idoperador');
//   Add('join auxatividadeabastecimento h on h.id=a.idAtividade');
//   Add('where a.status=1 and c.prefixo='+IdMaquina.QuotedString);
//   Add('and a.dataabastecimento between :dataInicio and :dataFim');
//   Add('order by prefixo,dataabastecimento,horimetro)y');
//   ParamByName('dataInicio').AsDate :=DataIni;
//   ParamByName('dataFim').AsDate    :=DataFim;
//   qryRepConsumoMaquina.SQL.Text;
//   Open;
//   ppRepConsumo.Print;
//  end;
// end;
end;

procedure TdmReport.AbreListaEntradas(vFiltro: string);
begin
 with QryListaEntrEstoque,QryListaEntrEstoque.SQL do
 begin
   Clear;
   Add('select');
   Add('    b.nome Fornecedor,');
   Add('    a.dataentradaestoque,');
   Add('    a.numeronf,');
   Add('    g.nome Produto,');
   Add('    d.nome LocalEstoque,');
   Add('    b.nome CentroCusto,');
   Add('    c.*,');
   Add('    c.valortotalnf/c.qtditens as  ValorUni,');
   Add('   cast(case');
   Add('    when a.tipo =0 then ''COMPRA''');
   Add('    when a.tipo =1 then ''ACERTO''');
   Add('   end as varchar(10))Tipo');
   Add('   from notafiscalitems c');
   Add('   join nfentrada a on c.idnota=a.id');
   Add('   join produtos g on g.id=c.idproduto');
   Add('   join localestoque f on f.id=c.idlocalestoque');
   Add('   join centrocusto d on d.id=a.idcentrocusto');
   Add('   join fornecedor b on b.id=a.idfornecedor');
   Add('   where a.status=1');
   Add(vFiltro);
   Add('order by a.id desc');
   QryListaEntrEstoque.SQL.Text;
   Open;
 end;
end;

procedure TdmReport.AbreLubrificacao(vFiltro: string);
begin
 with qryLubrificacao,qryLubrificacao.SQL do
 begin
   Clear;
   Add('select');
   Add(' l.*,');
   Add('  case');
   Add('   when p.tipo=0 then ''Combustivel''');
   Add('   when p.tipo=1 then ''Lubrificante''');
   Add('   when p.tipo=2 then ''Filtro''');
   Add(' end TipoProduto,');
   Add(' case');
   Add('  when l2.tipo=1 then ''TROCA''');
   Add('  when l2.tipo=2 then ''REMONTA''');
   Add(' end TipoStr,');
   Add(' m.prefixo maquina,');
   Add(' c.nome centrocusto,');
   Add(' p.nome produto,');
   Add(' l2.qtd,');
   Add('case');
   Add(' when alerta =0 then ''SEM ALERTA''');
   Add(' when alerta =1 then ''HORÍMETRO QUEBRADO''');
   Add(' when alerta =2 then ''HORÍMETRO TROCADO''');
   Add(' when alerta =3 then ''HODÔMETRO QUEBRADO''');
   Add(' when alerta =4 then ''HODÔMETRO TROCADO''');
   Add(' when alerta =5 then ''OUTROS''');
   Add('end tipoAlerta,');
   Add(' ls.nome localestoque,');
   Add(' cp.nome Compartimento');
   Add('from lubrificacao l');
   Add('join maquinaveiculo m on l.idmaquina =m.id');
   Add('join centrocusto c on c.id=l.idcentrocusto');
   Add('join lubrificacaoprodutos l2 on l2.idlubrificacao=l.id');
   Add('join produtos p on p.id=l2.idproduto');
   Add('left join localestoque ls on ls.id=l.idlocalestoque');
   Add('left join compartimentolubricficacao cp on cp.id=l2.idcompartimento ');
   Add('where l.status=1');
   Add(vFiltro);
   Open;
   if not qryLubrificacao.IsEmpty then
   begin
     ppRepLub.PrintReport;
   end;
 end;
end;

procedure TdmReport.SaldoAtualCustoMedio(vIdCentroCusto,vFiltro: string);
begin
 with QryEstoqueG,QryEstoqueG.SQL do
 begin
   Clear;
   Add('select y.*,TotalEntradas-TotalSaida saldoAtual,');
   Add('case');
   Add('when (ValorTotal>0) and (TotalEntradas>0) then');
   Add(' ValorTotal/y.TotalEntradas');
   Add('else');
   Add('0');
   Add('end custoMedio');
   Add('from');
   Add('(select');
   Add(' a.nome Produto,');
   Add(' (select coalesce(sum(qtditens),0) from notafiscalitems n');
   Add(' join nfentrada n2 on n2.id=n.idnota');
   Add(' where n.status>-1 and n.idproduto=a.id');
   if vIdCentroCusto<>'0' then
    Add(' and idcentrocusto=:idcentrocusto');
   Add(' ) TotalEntradas,');
   Add(' (select coalesce(sum(ss.qtditens),0) from estoquesaida ss');
   Add(' where ss.status >-1 and ss.idproduto=a.id');
   if vIdCentroCusto<>'0' then
    Add(' and idcentrocusto=:idcentrocusto');
   Add(' ) TotalSaida,');
   Add(' (select coalesce(sum(n.valortotalnf),0) from notafiscalitems n');
   Add(' join nfentrada n2 on n2.id=n.idnota');
   Add(' where n.status >-1 and n.idproduto=a.id');
   if vIdCentroCusto<>'0' then
    Add(' and idcentrocusto=:idcentrocusto');
   Add(' ) ValorTotal,');
   Add(' (select max(dataentradaestoque) from notafiscalitems n');
   Add(' join nfentrada c on c.id=n.idnota');
   Add(' where n.status >-1 and n.idproduto=a.id');
   if vIdCentroCusto<>'0' then
    Add(' and idcentrocusto=:idcentrocusto');
   Add(' ) UltimaEntrada,');
   Add(' (select max(ss.datasaidaestoque)  from estoquesaida ss');
   Add(' where ss.status >-1 and ss.idproduto=a.id');
   if vIdCentroCusto<>'0' then
    Add(' and idcentrocusto=:idcentrocusto');
   Add(')UltimaSaida');
   Add('from produtos  a');
   Add('where a.status>-1');
   Add(vFiltro);
   Add(')y');
   if vIdCentroCusto<>'0' then
    ParamByName('idcentrocusto').AsInteger := strToInt(vIdCentroCusto);
   Open;
 end;
end;
end.


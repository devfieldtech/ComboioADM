unit UdmReport2;

interface

uses
  System.SysUtils, System.Classes, ppCtrls, ppDB, Vcl.Imaging.jpeg, ppPrnabl,
  ppClass, ppBands, ppCache, ppDesignLayer, ppParameter, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppReport, Data.DB, myChkBox, ppStrtch, ppMemo,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Imaging.pngimage,FMX.Objects,FMX.Graphics,Soap.EncdDecd, UdmManutencao,
  ppVar;

type
  TdmReport2 = class(TDataModule)
    DsChckModelo: TDataSource;
    RepCheckModelo: TppReport;
    DBPCheckModelo: TppDBPipeline;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppImage1: TppImage;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppShape2: TppShape;
    DsDetChckModelo: TDataSource;
    DBPDetCheckModelo: TppDBPipeline;
    ppShape3: TppShape;
    ppDBText2: TppDBText;
    ppDBText1: TppDBText;
    ppDBText4: TppDBText;
    myCheckBox1: TmyCheckBox;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText6: TppDBText;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppShape4: TppShape;
    myCheckBox2: TmyCheckBox;
    myCheckBox3: TmyCheckBox;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    dsCheckListRealizado: TDataSource;
    dsDetCheckListRealizado: TDataSource;
    RepChekRealizado: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel6: TppLabel;
    ppImage2: TppImage;
    ppShape5: TppShape;
    ppLabel7: TppLabel;
    ppShape6: TppShape;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppColumnHeaderBand2: TppColumnHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppShape7: TppShape;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppColumnFooterBand2: TppColumnFooterBand;
    ppFooterBand2: TppFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppShape8: TppShape;
    ppDBText8: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppParameterList2: TppParameterList;
    DBPChckRealizado: TppDBPipeline;
    DBPDetCheckRealizado: TppDBPipeline;
    ppShape9: TppShape;
    ppLabel11: TppLabel;
    ppDBText9: TppDBText;
    ppLabel12: TppLabel;
    ppDBText10: TppDBText;
    ppLabel13: TppLabel;
    ppDBText11: TppDBText;
    ppShape10: TppShape;
    ppLabel14: TppLabel;
    ppDBText12: TppDBText;
    ppImgRealizado: TppImage;
    ppImgRel: TppImage;
    myDBCheckBox1: TmyDBCheckBox;
    myDBCheckBox2: TmyDBCheckBox;
    myDBCheckBox3: TmyDBCheckBox;
    dsManutencao: TDataSource;
    dsMunutencaoItens: TDataSource;
    ppRepManutencao: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppImage3: TppImage;
    ppShape14: TppShape;
    ppDBText15: TppDBText;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppDetailBandRepManutencao: TppDetailBand;
    ppShapeDetManutencao: TppShape;
    ppDBText18: TppDBText;
    ppLabel23: TppLabel;
    ppDBText19: TppDBText;
    ppImgItem: TppImage;
    ppFooterBand3: TppFooterBand;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppParameterList3: TppParameterList;
    ppDBManutencao: TppDBPipeline;
    ppDBManutencaoItens: TppDBPipeline;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppShape17: TppShape;
    ppShape11: TppShape;
    pplblHorimetro: TppLabel;
    pplblHodometro: TppLabel;
    ppImgHodometro: TppImage;
    myCheckItem: TmyCheckBox;
    ppShape15: TppShape;
    ppImgHorimetro: TppImage;
    ppRepExtratoBomba: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppShape16: TppShape;
    ppLabel44: TppLabel;
    ppLabel55: TppLabel;
    ppLine11: TppLine;
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
    dsExtratoBomba: TDataSource;
    ExtratoBomba: TFDQuery;
    ExtratoBombadatadia: TDateField;
    ExtratoBombasaldoinicial: TFMTBCDField;
    ExtratoBombatotalentrada: TFMTBCDField;
    ExtratoBombatotalentradatransf: TFMTBCDField;
    ExtratoBombatotalsaida: TFMTBCDField;
    ExtratoBombatotalsaidatransf: TFMTBCDField;
    ExtratoBombasaldodia: TFMTBCDField;
    ppDBSaldoAtual: TppDBPipeline;
    ppRepSaldoAtual: TppReport;
    ppHeaderBand7: TppHeaderBand;
    ppShape26: TppShape;
    ppLabel91: TppLabel;
    ppLine15: TppLine;
    ppImage6: TppImage;
    ppLabel96: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppDetailBand7: TppDetailBand;
    ppLine20: TppLine;
    ppDBText62: TppDBText;
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
    dsSaldoAtual: TDataSource;
    SaldoAtualCombustivel: TFDQuery;
    SaldoAtualCombustivelcentrodecusto: TWideStringField;
    SaldoAtualCombustivellocalestoque: TWideStringField;
    SaldoAtualCombustivelentradanf: TFMTBCDField;
    SaldoAtualCombustiveltotalenttransf: TFMTBCDField;
    SaldoAtualCombustivelsaidaabastecimento: TFMTBCDField;
    SaldoAtualCombustiveltotalsaidatransf: TFMTBCDField;
    SaldoAtualCombustivelsaldatual: TFMTBCDField;
    ppImage4: TppImage;
    ppLabel45: TppLabel;
    LblLocalEstoque: TppLabel;
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
    ppLabel106: TppLabel;
    ppImage7: TppImage;
    ppLblPeriodoEx: TppLabel;
    ppLabel116: TppLabel;
    ppDBText86: TppDBText;
    ppShape29: TppShape;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel108: TppLabel;
    ppLabel112: TppLabel;
    ppDetailBand8: TppDetailBand;
    ppDBMemo7: TppDBMemo;
    ppDBText84: TppDBText;
    ppDBText81: TppDBText;
    ppDBText82: TppDBText;
    ppDBText83: TppDBText;
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
    ppLine1: TppLine;
    ppLabel24: TppLabel;
    ppDBText20: TppDBText;
    ExtratoDiaMaquinaentradatransferencia: TBCDField;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppShape18: TppShape;
    procedure ppDetailBand2BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppDetailBandRepManutencaoBeforePrint(Sender: TObject);
    procedure ppHeaderBand3BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    function  BitmapFromBase64(const base64: string): TBitmap;
    procedure AbreEstoqueporLocal(idCentroCusto,idLocalEstoque: string);
    procedure AbreExtratoLocal(vDataIni,vDataFim:TDate;idLocal,NomeLocal:string);
    procedure GeraExtratoCombustivel(DataIni, DataFim, LocalEstoque: string);
  end;

var
  dmReport2: TdmReport2;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

uses UdmDB;

{$R *.dfm}

procedure TdmReport2.GeraExtratoCombustivel(DataIni, DataFim, LocalEstoque: string);
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
 vAbastecimentoDia,
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
   Clear;
   Add('delete from extratoCombustivel');
   ExecSQL;
 end;
 with vQry,vQry.SQL do
 begin
   vTotalEntradaIni :=0;
   vTotalSaidaIni   :=0;

   Clear;
   Add('select * from localestoque l');
   Add('where id='+LocalEstoque);
   Open;
   vLocal := FieldByName('Nome').AsString;


   //total entrada estoque
   Clear;
   Add('select sum(a.qtditens) AS Total from notafiscalitems a');
   Add('join nfentrada b on a.idNota=b.id');
   Add('where a.status=1 and a.idlocalestoque='+LocalEstoque);
   Add('and b.dataentradaestoque<'+FormatDateTime('yyyy-mm-dd',strToDate(DataIni)).QuotedString);
   vQry.SQL.Text;
   Open;
   vTotalEntradaIni := FieldByName('Total').AsFloat;

   //total entrada transferencia
   Clear;
   Add('select coalesce(sum(t.qtde),0) Total  from tranferencialocalestoque t');
   Add('where datamov<'+FormatDateTime('yyyy-mm-dd',strToDate(DataIni)).QuotedString);
   Add(' and t.status =1 and t.idlocalestoquedetino ='+LocalEstoque);
   Open;
   vQry.SQL.Text;
   vTotalEntradaTrsIni := FieldByName('Total').AsFloat;

   //total saida estoque
   Clear;
   Add('select sum(a.volumelt) TOTAL from abastecimento a');
   Add('where a.status=1 and a.idlocalestoque='+LocalEstoque);
   Add('and a.dataabastecimento<'+FormatDateTime('yyyy-mm-dd',strToDate(DataIni)).QuotedString);
   Open;
   vTotalSaidaIni := FieldByName('Total').AsFloat;

   // total saida transferencia
   Clear;
   Add('select coalesce(sum(t.qtde),0) Total  from tranferencialocalestoque t');
   Add('where t.status =1 and t.idlocalestoqueorigem  ='+LocalEstoque);
   Add('and datamov<'+FormatDateTime('yyyy-mm-dd',strToDate(DataIni)).QuotedString);
   Open;
   vTotalSaidaTrsIni := FieldByName('Total').AsFloat;

   vSaldoIni    := (vTotalEntradaIni+vTotalEntradaTrsIni)-(vTotalSaidaIni+vTotalSaidaTrsIni);

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
    Add('select sum(a.qtditens) qtde from notafiscalitems a');
    Add('join nfentrada b on a.idNota=b.id');
    Add('where a.status=1 and a.idlocalestoque='+LocalEstoque);
    Add('and b.dataentradaestoque=:dataControle');
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

    Clear;
    Add('select sum(a.volumelt) TOTAL from abastecimento a');
    Add('where a.status=1 and a.idlocalestoque='+LocalEstoque);
    Add('and a.dataabastecimento=:dataControle');
    ParamByName('dataControle').AsDate := vDataControle;
    Open;
    vAbastecimentoDia := FieldByName('Total').AsFloat;

    vEntradaTotalDia := vEntradaEstoqueDia;

    with vQry2,vQry2.SQL do
    begin
      Clear;
      Add('select');
      Add('c.prefixo||'' - ''||c.modelo maquina,');
      Add('coalesce(a.volumelt,0)qtd');
      Add('from estoquesaida e');
      Add('left join abastecimento a on a.id=e.idabastecimento');
      Add('left join maquinaveiculo c on c.id=a.idmaquina');
      Add('where a.status=1 and a.idlocalestoque='+LocalEstoque);
      Add('and e.datasaidaestoque =:dataControle');
      Add('order by a.id');
      ParamByName('dataControle').AsDate := vDataControle;
      Open;
      if not vQry2.IsEmpty then
      begin
        x:=0;
        while not vQry2.eof do
        begin
         vAbastecimentoDia := FieldByName('qtd').AsFloat;
         vMaquina          := FieldByName('maquina').AsString;
         if i=0 then
          vsaldoDia        := (vSaldoIni+(vEntradaTotalDia+vEntradaTrsDia))- (vSaidaTrsDia+vAbastecimentoDia)
         else
          vsaldoDia      := (vSaldoDiaAnterior+(vEntradaTotalDia+vEntradaTrsDia))- (vSaidaTrsDia+vAbastecimentoDia);

         with vQry3,vQry3.SQL do
         begin
          Clear;
          Add('insert into extratocombustivel(bomba,datadia,saldoinicial,totalentrada,maquina,saidaabastecimento,totalsaidatrnasf,saldodia,entradatransferencia)');
          Add('values(:LocalEstoque,:DataDia,:SaldoInicial,:TotalEntrada,:Maquina,:Abastecimento,:SaidaTransferencia,:saldoDia,:entradatransferencia)');
          ParamByName('LocalEstoque').AsString       := vLocal;
          ParamByName('DataDia').AsDate              := vDataControle;
          if i=0 then
           ParamByName('SaldoInicial').AsFloat       := vSaldoIni
          else
           ParamByName('SaldoInicial').AsFloat       := vSaldoDiaAnterior;

          ParamByName('TotalEntrada').AsFloat        := vEntradaTotalDia;
          ParamByName('entradatransferencia').AsFloat:= vEntradaTrsDia;
          ParamByName('Maquina').AsString            := vMaquina;
          ParamByName('Abastecimento').AsFloat       := vAbastecimentoDia;
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
           vAbastecimentoDia:=0;
         end;
         inc(i);
         vQry2.Next
        end;
      end
      else
      begin
        if i=0 then
          vsaldoDia      := (vSaldoIni+vEntradaTotalDia+vEntradaTrsDia)-(vSaidaTrsDia+vAbastecimentoDia)
         else
          vsaldoDia      := (vSaldoDiaAnterior+vEntradaTotalDia+vEntradaTrsDia)- (vSaidaTrsDia+vAbastecimentoDia);
        with vQry3,vQry3.SQL do
        begin
          Clear;
          Add('insert into extratocombustivel(bomba,datadia,saldoinicial,totalentrada,maquina,saidaabastecimento,totalsaidatrnasf,saldodia,entradatransferencia)');
          Add('values(:LocalEstoque,:DataDia,:SaldoInicial,:TotalEntrada,:Maquina,:Abastecimento,:SaidaTransferencia,:saldoDia,:entradatransferencia)');
          ParamByName('LocalEstoque').AsString       := vLocal;
          ParamByName('DataDia').AsDate              := vDataControle;
          if i=0 then
           ParamByName('SaldoInicial').AsFloat       := vSaldoIni
          else
           ParamByName('SaldoInicial').AsFloat       := vSaldoDiaAnterior;
          ParamByName('TotalEntrada').AsFloat        := vEntradaTotalDia;
          ParamByName('entradatransferencia').AsFloat:= vEntradaTrsDia;
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
 with ExtratoDiaMaquina,ExtratoDiaMaquina.sql do
 begin
   Clear;
   Add('select * from extratoCombustivel order by id');
   Open;
   ppLblPeriodoEx.Text :=DataIni+' ate '+DataFim;
   ppRepExtratoMaquinaDia.PrintReport;
 end;
end;


procedure TdmReport2.AbreEstoqueporLocal(idCentroCusto,idLocalEstoque: string);
begin
 with SaldoAtualCombustivel,SaldoAtualCombustivel.SQL do
 begin
   Clear;
   Add('select');
   Add(' LocalEstoque.CentrodeCusto,');
   Add(' LocalEstoque.LocalEstoque,');
   Add(' coalesce(EntNF.EntradaTotalNF,0) EntradaNF,');
   Add(' coalesce(EntTransf.TotalEntTransf,0) TotalEntTransf,');
   Add(' coalesce(Abastecimento.TotalAbastecimento,0) SaidaAbastecimento,');
   Add(' coalesce(SaidaTransf.TotalSaidaTransf,0) TotalSaidaTransf,');
   Add(' (coalesce(EntNF.EntradaTotalNF,0)+coalesce(EntTransf.TotalEntTransf,0))-');
   Add(' (coalesce(Abastecimento.TotalAbastecimento,0)+coalesce(SaidaTransf.TotalSaidaTransf,0))SaldAtual');
   Add('from');
   Add('(select');
   Add('c.id idcentrocusto,');
   Add(' c.nome CentrodeCusto,');
   Add(' l.id idLocalEstoque,');
   Add(' l.nome LocalEstoque');
   Add('from localestoque l');
   Add('join centrocusto c on l.idcentrocusto=c.id');
   Add('where idcentrocusto ='+idCentroCusto+')LocalEstoque');
   Add('left join');
   Add('(select a.idlocalestoque,a.idcentrocusto,sum(a.volumelt) TotalAbastecimento from abastecimento a');
   Add('where a.status=1');
   Add('group by a.idlocalestoque,a.idcentrocusto');
   Add(')Abastecimento');
   Add('on LocalEstoque.idcentrocusto=Abastecimento.idcentrocusto and LocalEstoque.idLocalEstoque=Abastecimento.idlocalestoque');
   Add('left join(');
   Add('select n2.idcentrocusto,n.idlocalestoque,sum(n.qtditens) EntradaTotalNF from notafiscalitems n');
   Add('join nfentrada n2 on n.idnota=n2.id');
   Add('where n.status=1');
   Add('group by n2.idcentrocusto,n.idlocalestoque)EntNF');
   Add('on LocalEstoque.idcentrocusto=EntNF.idcentrocusto and LocalEstoque.idLocalEstoque=EntNF.idlocalestoque');
   Add('left join(');
   Add('select l.idcentrocusto,t.idlocalestoqueorigem,sum(t.qtde) TotalSaidaTransf from tranferencialocalestoque t');
   Add('join localestoque l on l.id=t.idlocalestoqueorigem');
   Add('where t.status=1');
   Add('group by l.idcentrocusto,t.idlocalestoqueorigem)SaidaTransf');
   Add('on LocalEstoque.idcentrocusto=SaidaTransf.idcentrocusto and LocalEstoque.idLocalEstoque=SaidaTransf.idlocalestoqueorigem');
   Add('left join(');
   Add('select l.idcentrocusto,t.idlocalestoquedetino,sum(t.qtde) TotalEntTransf from tranferencialocalestoque t');
   Add('join localestoque l on l.id=t.idlocalestoquedetino');
   Add('where t.status=1');
   Add('group by l.idcentrocusto,t.idlocalestoquedetino)EntTransf');
   Add('on LocalEstoque.idcentrocusto=EntTransf.idcentrocusto and LocalEstoque.idLocalEstoque=EntTransf.idlocalestoquedetino');
   if idLocalEstoque<>'0' then
    Add('where LocalEstoque.idLocalEstoque='+idLocalEstoque);
   Open;
   ppRepSaldoAtual.PrintReport;
 end;
end;

procedure TdmReport2.ppDetailBand1BeforePrint(Sender: TObject);
begin
 if dmdb.detcheklistgenericitemfotoobrigatoria.AsInteger=1 then
 begin
   ppDetailBand1.Height:=2;
   ppImgRel.Height     :=2;
   ppImgRel.Visible    :=true;
 end
 else
 begin
   ppDetailBand1.Height:=0.43;
   ppImgRel.Visible := false;
 end;
end;

procedure TdmReport2.ppDetailBand2BeforePrint(Sender: TObject);
var
 objImage : TStringStream;
 ms: TMemoryStream;
 vImgItemCheck: TImage;
begin
 if dmdb.detCheckListRealitemfotoobrigatoria.AsInteger=1 then
 begin
   ppDetailBand2.Height   :=2.85;
   ppImgRealizado.Height  :=2.85;
   ppImgRealizado.Visible :=true;
   if dmdb.detCheckListRealitemfoto.AsString.Length>0 then
   begin
     vImgItemCheck := TImage.Create(nil);
     MS := TMemoryStream.Create;
     try
      vImgItemCheck.Bitmap := BitmapFromBase64(dmdb.detCheckListRealitemfoto.AsString);
     vImgItemCheck.Bitmap.SaveToStream(MS);
     MS.Position := 0;
     ppImgRealizado.Picture.LoadFromStream(MS);
    except
     ppImgRealizado.Picture.Bitmap := nil;
    end;
    vImgItemCheck.Free;
    MS.Free;
   end;
 end
 else
 begin
   ppDetailBand2.Height   :=0.95;
   ppImgRealizado.Visible := false;
 end;
end;

procedure TdmReport2.ppDetailBandRepManutencaoBeforePrint(Sender: TObject);
var
 objImage : TStringStream;
 ms: TMemoryStream;
 vImgItemCheck: TImage;
begin
 myCheckItem.Checked := dmManutencao.TManutencaoItemsitemcheck.AsInteger=1;
 if dmManutencao.TManutencaoItemsfotoobrigatoria.AsInteger=1 then
 begin
   ppDetailBandRepManutencao.Height   :=2;
   ppImgItem.Height                   :=1.95;
   ppImgItem.Visible                  :=true;
   if dmManutencao.TManutencaoItemsfotoitem.AsString.Length>0 then
   begin
     vImgItemCheck := TImage.Create(nil);
     MS := TMemoryStream.Create;
     try
      vImgItemCheck.Bitmap := BitmapFromBase64(dmManutencao.TManutencaoItemsfotoitem.AsString);
     vImgItemCheck.Bitmap.SaveToStream(MS);
     MS.Position := 0;
     ppImgItem.Picture.LoadFromStream(MS);
    except
     ppImgItem.Picture.Bitmap := nil;
    end;
    vImgItemCheck.Free;
    MS.Free;
   end;
 end
 else
 begin
   ppDetailBandRepManutencao.Height :=0.74;
   ppImgRealizado.Visible           := false;
 end;
end;

procedure TdmReport2.ppHeaderBand3BeforePrint(Sender: TObject);
var
 objImage : TStringStream;
 ms: TMemoryStream;
 vImgItemCheck: TImage;
begin
  if dmManutencao.TManutencaoimghorimentro.AsString.Length>0 then
  begin
     vImgItemCheck := TImage.Create(nil);
     MS := TMemoryStream.Create;
     try
      vImgItemCheck.Bitmap := BitmapFromBase64(dmManutencao.TManutencaoimghorimentro.AsString);
     vImgItemCheck.Bitmap.SaveToStream(MS);
     MS.Position := 0;
     dmReport2.ppImgHorimetro.Picture.LoadFromStream(MS);
    except
     dmReport2.ppImgHorimetro.Picture.Bitmap := nil;
    end;
    vImgItemCheck.Free;
    MS.Free;
  end
  else
  begin
   dmReport2.ppImgHorimetro.Picture.Bitmap := nil;
  end;
  if dmManutencao.TManutencaoimghodometro.AsString.Length>0 then
  begin
     vImgItemCheck := TImage.Create(nil);
     MS := TMemoryStream.Create;
     try
      vImgItemCheck.Bitmap := BitmapFromBase64(dmManutencao.TManutencaoimghodometro.AsString);
     vImgItemCheck.Bitmap.SaveToStream(MS);
     MS.Position := 0;
     dmReport2.ppImgHodometro.Picture.LoadFromStream(MS);
    except
     dmReport2.ppImgHodometro.Picture.Bitmap := nil;
    end;
    vImgItemCheck.Free;
    MS.Free;
  end
  else
  begin
   dmReport2.ppImgHorimetro.Picture.Bitmap := nil;
  end;
 dmReport2.pplblHorimetro.Text  :='Horimetro:'+ dmManutencao.TManutencaohorimetro.AsString;
 dmReport2.pplblHodometro.Text  :='Hodometro:'+ dmManutencao.TManutencaohodometro.AsString;
end;

procedure TdmReport2.AbreExtratoLocal(vDataIni,vDataFim:TDate;idLocal,NomeLocal: string);
var
 vDataFINI,vDataFFim:string;
begin
 vDataFINI  := FormatDateTime('yyyy-mm-dd',vDataIni);
 vDataFFim  := FormatDateTime('yyyy-mm-dd',vDataFim);
 with ExtratoBomba,ExtratoBomba.SQL do
 begin
  Clear;
  Add('select * from fextratolocal(');
  Add(vDataFINI.QuotedString+',');
  Add(vDataFFim.QuotedString+',');
  Add(idlocal+')');
  Add('where');
  Add('saldoinicial >0 or');
  Add('totalentrada >0 or');
  Add('totalentradatransf >0 or');
  Add('totalsaida >0 or');
  Add('totalsaidatransf >0 or');
  Add('saldodia >0');
  ExtratoBomba.SQL.Text;
  Open;
  LblLocalEstoque.Text   := NomeLocal;
  ppLblPeriodoBomba.Text := FormatDateTime('dd/mm/yyyy',vDataIni)+
   ' ATE '+FormatDateTime('dd/mm/yyyy',vDataFim);
  ppRepExtratoBomba.PrintReport;
 end;
end;

function TdmReport2.BitmapFromBase64(const base64: string): TBitmap;
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


end.

unit UdmDash;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmDash = class(TDataModule)
    qryAux: TFDQuery;
    ConsumoMaquinasDia: TFDQuery;
    ConsumoLocalEstoque: TFDQuery;
    ConsumoUltimos7Dias: TFDQuery;
    MediaMaquiana: TFDQuery;
  private
    { Private declarations }
  public
    procedure GeraDadosFixos(idCentroCusto:string;DataBase:TDate);
  end;

var
  dmDash: TdmDash;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

uses  UPrincipal, UdmDB;

{$R *.dfm}

{ TdmDash }

procedure TdmDash.GeraDadosFixos(idCentroCusto:string;DataBase:TDate);
begin
 qryAux.Connection := dmdb.FDConPG;
 with qryAux,qryAux.sql do
 begin
//   Clear;
//   Add('select max(dataabastecimento)maxData from abastecimento a');
//   Add('where status =1 and idcentrocusto='+idCentroCusto);
//   Open;
//   frmPrincipal.lblDashUltAbastecimento.Text :=FieldByName('maxData').AsString;
//
//   Clear;
//   Add('select count(*) qtd from abastecimento a');
//   Add('where status =1 and dataabastecimento=:current_date and idcentrocusto='+idCentroCusto);
//   ParamByName('current_date').AsDate :=DataBase;
//   Open;
//   frmPrincipal.lblDashTotalAbasDia.Text :=FieldByName('qtd').AsString;
//
//   Clear;
//   Add('select max(datatroca)maxData from lubrificacao l ');
//   Add('where status =1 and idcentrocusto='+idCentroCusto);
//   Open;
//   frmPrincipal.lblDashUltimaLub.Text :=FieldByName('maxData').AsString;
//
//   Clear;
//   Add('select max(datamov)maxData from tranferencialocalestoque a');
//   Add('join localestoque l on l.id=a.idlocalestoqueorigem');
//   Add('where a.status =1 and l.idcentrocusto='+idCentroCusto);
//   Open;
//   frmPrincipal.lblDashUltimaTransf.Text :=FieldByName('maxData').AsString;
// end;
//
// ConsumoMaquinasDia.Connection := dmdb.FDConPG;
// with ConsumoMaquinasDia,ConsumoMaquinasDia.SQL do
// begin
//   Clear;
//   Add('select prefixo "Label",sum(volumelt) "Value"');
//   Add('from abastecimento a');
//   Add('join centrocusto c on c.id=a.idcentrocusto');
//   Add('join maquinaveiculo m on a.idmaquina=m.id');
//   Add('where a.status >-1 and dataabastecimento =:current_date');
//   Add('and a.idcentrocusto='+idCentroCusto);
//   Add('group by dataabastecimento,prefixo');
//   Add('order by dataabastecimento desc,m.prefixo');
//   ParamByName('current_date').AsDate :=DataBase;
//   Open;
// end;
//
// with MediaMaquiana,MediaMaquiana.SQL do
// begin
//   Clear;
//   Add('select');
//   Add(' prefixo "Label",');
//   Add(' AVG(volumelt) "Value"');
//   Add('from abastecimento a');
//   Add('join centrocusto c on c.id=a.idcentrocusto');
//   Add('join maquinaveiculo m on a.idmaquina=m.id');
//   Add('where a.status >-1 and dataabastecimento=:current_date');
//   Add('and a.idcentrocusto='+idCentroCusto);
//   Add('group by dataabastecimento,prefixo');
//   Add('order by m.prefixo');
//   ParamByName('current_date').AsDate :=DataBase;
//   Open;
// end;
//
// ConsumoLocalEstoque.Connection := dmdb.FDConPG;
// with ConsumoLocalEstoque,ConsumoLocalEstoque.SQL do
// begin
//   Clear;
//   Add('select l.nome "Label",sum(volumelt)"Value"');
//   Add('from abastecimento a');
//   Add('join localestoque l on l.id=a.idlocalestoque');
//   Add('where a.status >-1 and dataabastecimento=:current_date');
//   Add('and a.idcentrocusto='+idCentroCusto);
//   Add('group by l.nome');
//   ParamByName('current_date').AsDate :=DataBase;
//   Open;
// end;
//
// ConsumoUltimos7Dias.Connection := dmdb.FDConPG;
// with ConsumoUltimos7Dias,ConsumoUltimos7Dias.SQL do
// begin
//   Clear;
//   Add('select y.dataabastecimento "Label" , y.sum "Value" from');
//   Add('(select dataabastecimento,p.nome,sum(a.volumelt) from abastecimento a');
//   Add('join produtos p on a.combustivel=p.id');
//   Add('where a.status =1 and a.combustivel=1');
//   Add('and a.idcentrocusto='+idCentroCusto);
//   Add('and a.dataabastecimento<=:current_date');
//   Add('group by dataabastecimento,p.nome');
//   Add('order by dataabastecimento desc ,p.nome');
//   Add('limit 7)y');
//   Add('order by dataabastecimento');
//   ParamByName('current_date').AsDate :=DataBase;
//   Open;
 end;
end;

end.

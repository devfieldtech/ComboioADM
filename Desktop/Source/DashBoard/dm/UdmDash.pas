unit UdmDash;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmDasch = class(TDataModule)
    qryLitrosPorCombustivel: TFDQuery;
    qryLitrosPorCombustivelLabel: TWideStringField;
    qryLitrosPorCombustivelValue: TFMTBCDField;
    qryAux: TFDQuery;
    qryConsumoMaquina: TFDQuery;
    qryConsumoMaquinaLabel: TWideStringField;
    qryConsumoMaquinaValue: TFMTBCDField;
  private
    { Private declarations }
  public
    procedure AbreLitrosPorCombustivel(vIdCentro,vFiltro:string);
    procedure AbreAtualizaLabel(vIdCentro,vFiltro:string);

  end;

var
  dmDasch: TdmDasch;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

uses UdmDB, UDashBoard;

{$R *.dfm}

{ TDataModule1 }

procedure TdmDasch.AbreAtualizaLabel(vIdCentro,vFiltro: string);
begin
 with qryAux,qryAux.SQL do
 begin
   Clear;
   Add('select coalesce(count(distinct idmaquina),0) qtde from abastecimento a');
   Add('where status >-1');
   Add('and idcentrocusto='+vIdCentro);
   Add(vFiltro);
   Open;
   frmDash.lblTotalMaquinas.Text := FieldByName('qtde').AsString;

   Clear;
   Add('select coalesce(count(*)) qtde from abastecimento a');
   Add('where status >-1');
   Add('and idcentrocusto='+vIdCentro);
   Add(vFiltro);
   Open;
   frmDash.lblTotalAbastecimento.Text := FieldByName('qtde').AsString;

   Clear;
   Add('select coalesce(sum(volumelt),0) qtde from abastecimento a');
   Add('where status >-1');
   Add('and idcentrocusto='+vIdCentro);
   Add(vFiltro);
   Open;
   frmDash.lblTotalLitros.Text := FieldByName('qtde').AsString;


   Clear;
   Add('select');
   Add('min(dataabastecimento)mindata,');
   Add('max(dataabastecimento)maxdata');
   Add('from abastecimento a');
   Add('where status >-1');
   Add('and idcentrocusto='+vIdCentro);
   Add(vFiltro);
   Open;
   if FieldByName('mindata').AsString.Length>0 then
   begin
    frmDash.lblPrimeiroAbastecimento.Text := FieldByName('mindata').AsString;
    frmDash.lblUltimoAbastecimento.Text   := FieldByName('maxdata').AsString;
   end
   else
   begin
    frmDash.lblPrimeiroAbastecimento.Text := 'Sem Dados';
    frmDash.lblUltimoAbastecimento.Text   := 'Sem Dados';
   end;
   AbreLitrosPorCombustivel(vIdCentro,vFiltro);
 end;
end;

procedure TdmDasch.AbreLitrosPorCombustivel(vIdCentro, vFiltro: string);
begin
  with qryLitrosPorCombustivel,qryLitrosPorCombustivel.SQL do
  begin
    Clear;
    Add('select p.nome "Label",sum(a.volumelt)"Value" from abastecimento a');
    Add('join produtos p  on a.combustivel =p.id');
    Add('where a.status=1');
    Add('and a.idcentrocusto='+vIdCentro);
    Add(vFiltro);
    Add('group by p.nome');
    Open;
  end;

  with qryConsumoMaquina,qryConsumoMaquina.SQL do
  begin
    Clear;
    Add('select m.prefixo "Label",sum(a.volumelt)"Value" from abastecimento a');
    Add('join maquinaveiculo m on a.idmaquina=m.id');
    Add('where a.status=1');
    Add('and a.idcentrocusto='+vIdCentro);
    Add(vFiltro);
    Add('group by m.prefixo');
    Open;
  end;
end;

end.

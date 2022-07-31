unit UStartBomba;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FMX.ActnList,
  System.Actions, FMX.TabControl, FMX.Ani, FMX.ScrollBox, FMX.Grid, FMX.Edit,
  FMX.Controls.Presentation, FMX.Objects, FMX.Layouts, FMX.ListBox,
  FMX.DateTimeCtrls, Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid,
  Data.Bind.DBScope;

type
  TfrmSatrtDiario = class(TfrmCadPadrao)
    GroupBox1: TGroupBox;
    Label22: TLabel;
    Label27: TLabel;
    edtDataInicio: TDateEdit;
    edtDataFim: TDateEdit;
    cbxBombaF: TComboBox;
    cbxCentroCustoF: TComboBox;
    Label29: TLabel;
    btnBuscarLista: TButton;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    btnExcel: TRectangle;
    Image7: TImage;
    Label20: TLabel;
    Rectangle5: TRectangle;
    Image9: TImage;
    Label23: TLabel;
    SaveDialog1: TSaveDialog;
    layExtrato: TLayout;
    ToolBar5: TToolBar;
    Rectangle9: TRectangle;
    Label24: TLabel;
    Image11: TImage;
    Image12: TImage;
    Rectangle10: TRectangle;
    Layout14: TLayout;
    Layout15: TLayout;
    btnListaComFoto: TRectangle;
    Label34: TLabel;
    Image14: TImage;
    btnListaSemFoto: TRectangle;
    Label25: TLabel;
    Image15: TImage;
    procedure btnExcelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Rectangle5Click(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure btnListaComFotoClick(Sender: TObject);
    procedure btnListaSemFotoClick(Sender: TObject);
    procedure cbxCentroCustoFChange(Sender: TObject);
    procedure cbxBombaFClick(Sender: TObject);
    procedure cbxBombaFChange(Sender: TObject);
    procedure btnBuscarListaClick(Sender: TObject);
  private
    procedure CarregaCombos;
    procedure CarregaLocalEstoque(vIdCen: string);
  public
    var
     vIdCerntroCusto, vIdLocalEstoque:string;
    procedure Filtro;
  end;

var
  frmSatrtDiario: TfrmSatrtDiario;

implementation

{$R *.fmx}

uses UdmDB, UdmReport;

{ TfrmCadPadrao1 }

procedure TfrmSatrtDiario.btnBuscarListaClick(Sender: TObject);
begin
 Filtro;
end;

procedure TfrmSatrtDiario.btnExcelClick(Sender: TObject);
var
 csv: tstringlist;
 row, col: integer;
 s: string;
begin
 if SaveDialog1.Execute then
 begin
   csv:= tstringlist.create;
   for row:= 1 to StringGrid1.rowcount do
    begin
     s:= '';
     if row=1 then
     begin
       for col:= 0 to StringGrid1.ColumnCount-1 do
        s:= s + StringGrid1.Columns[col].Header + ';';
       csv.add(s)
     end
     else
     begin
       for col:= 0 to StringGrid1.ColumnCount-1 do
        s:= s + StringGrid1.Cells[col, row-1] + ';';
       csv.add(s)
     end;
    end;
   csv.savetofile(SaveDialog1.FileName);
   csv.free;
 end;
end;

procedure TfrmSatrtDiario.btnListaComFotoClick(Sender: TObject);
begin
 BindSourceDB1.DataSet:= nil;
 dmReport.ppRepStartBombaFoto.print;
 BindSourceDB1.DataSet:= dmDB.TstartBomba;
end;

procedure TfrmSatrtDiario.btnListaSemFotoClick(Sender: TObject);
begin
 BindSourceDB1.DataSet:= nil;
 dmReport.ppRepStartBomba.print;
 BindSourceDB1.DataSet:= dmDB.TstartBomba;
end;

procedure TfrmSatrtDiario.CarregaCombos;
var
 vQry : TFDQuery;
begin
 vQry := TFDQuery.Create(nil);
 vQry.Connection := dmDB.FDConPG;
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('select * from centrocusto c');
   Add('where status >-1');
   Open;
   while not vQry.Eof do
   begin
     cbxCentroCustoF.Items.AddObject(vQry.FieldByName('nome').AsString,
      TObject(vQry.FieldByName('id').AsInteger));
     vQry.Next;
   end;
 end;
 cbxCentroCustoF.ItemIndex :=-1;
end;

procedure TfrmSatrtDiario.CarregaLocalEstoque(vIdCen: string);
var
 vQry : TFDQuery;
begin
 vQry := TFDQuery.Create(nil);
 vQry.Connection := dmDB.FDConPG;
 cbxBombaF.Items.Clear;
 cbxBombaF.Items.Add('Todas');
 with vQry,vQry.SQL do
 begin
   Clear;
   Add('select * from localestoque');
   Add('where status=1 and idcentrocusto='+vIdCen);
   Open;
   while not vQry.Eof do
   begin
     cbxBombaF.Items.AddObject(vQry.FieldByName('nome').AsString,
      TObject(vQry.FieldByName('id').AsInteger));
     vQry.Next;
   end;
 end;
 cbxBombaF.ItemIndex :=0;
 vQry.Free;
end;

procedure TfrmSatrtDiario.cbxBombaFChange(Sender: TObject);
begin
 if cbxBombaF.ItemIndex>-1 then
  vIdLocalEstoque := IntToStr(Integer(cbxBombaF.Items.Objects[cbxBombaF.ItemIndex]));
end;

procedure TfrmSatrtDiario.cbxBombaFClick(Sender: TObject);
begin
 if cbxCentroCustoF.ItemIndex=-1 then
 begin
  MyShowMessage('Selecione o Centro de Custo antes de selecionar o Local de Estoque!',false);
  Exit;
 end;
end;

procedure TfrmSatrtDiario.cbxCentroCustoFChange(Sender: TObject);
begin
 if cbxCentroCustoF.ItemIndex>-1 then
 begin
  vIdCerntroCusto := IntToStr(Integer(cbxCentroCustoF.Items.Objects[cbxCentroCustoF.ItemIndex]));
  CarregaLocalEstoque(vIdCerntroCusto);
 end;
end;

procedure TfrmSatrtDiario.Filtro;
var
 vFiltro:string;
begin
 vFiltro := '';
 if cbxBombaF.ItemIndex>0 then
  vFiltro := vFiltro+' and l.id='+vIdLocalEstoque;
 if cbxCentroCustoF.ItemIndex>-1 then
  vFiltro := vFiltro+' and s.idcentrocusto ='+vIdCerntroCusto;
 vFiltro  := vFiltro+' and s.dataastart between '+FormatDateTime('yyyy-mm-dd',edtDataInicio.Date).QuotedString+' and '+
 FormatDateTime('yyyy-mm-dd',edtDataFim.Date).QuotedString;
 dmDB.AbreStartBomba(vFiltro);
end;

procedure TfrmSatrtDiario.FormShow(Sender: TObject);
begin
  CarregaCombos;
  layExtrato.Visible := false;
  inherited;
end;

procedure TfrmSatrtDiario.Image12Click(Sender: TObject);
begin
 layExtrato.Visible := false;
end;

procedure TfrmSatrtDiario.Rectangle5Click(Sender: TObject);
begin
  layExtrato.Visible := true;
end;

end.

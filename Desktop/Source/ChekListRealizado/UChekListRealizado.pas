unit UChekListRealizado;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FMX.ActnList,
  System.Actions, FMX.TabControl, FMX.Ani, FMX.ScrollBox, FMX.Grid, FMX.Edit,
  FMX.Objects, FMX.Controls.Presentation, FMX.Layouts, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.ListBox, FMX.Memo.Types, FMX.Memo;

type
  TfrmChekListRealizado = class(TfrmCadPadrao)
    Label4: TLabel;
    layDet: TLayout;
    GridDet: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    Rectangle6: TRectangle;
    Layout3: TLayout;
    Label8: TLabel;
    edtNome: TEdit;
    layItem: TLayout;
    Rectangle7: TRectangle;
    Layout2: TLayout;
    Layout4: TLayout;
    ToolBar2: TToolBar;
    Rectangle8: TRectangle;
    Label9: TLabel;
    Image12: TImage;
    Rectangle9: TRectangle;
    Layout6: TLayout;
    Rectangle10: TRectangle;
    Layout7: TLayout;
    Label10: TLabel;
    edtItem: TEdit;
    Rectangle11: TRectangle;
    Layout8: TLayout;
    Label11: TLabel;
    edtItemDescricao: TEdit;
    Rectangle12: TRectangle;
    Layout9: TLayout;
    Label12: TLabel;
    cbxFotoObrigatoria: TComboBox;
    Layout10: TLayout;
    btnConfirmaItem: TRectangle;
    Label14: TLabel;
    Image13: TImage;
    btnRep: TRectangle;
    Image11: TImage;
    Label13: TLabel;
    Rectangle3: TRectangle;
    Layout11: TLayout;
    Label15: TLabel;
    edtDescricao: TMemo;
    Label16: TLabel;
    cbxtransferencia: TComboBox;
    StringGrid2: TStringGrid;
    Label17: TLabel;
    edtGrupoItem: TEdit;
    SearchEditButton1: TSearchEditButton;
    ClearEditButton1: TClearEditButton;
    Rectangle4: TRectangle;
    Layout12: TLayout;
    Label18: TLabel;
    edtGrupo: TEdit;
    SearchEditButton4: TSearchEditButton;
    ClearEditButton7: TClearEditButton;
    procedure FormShow(Sender: TObject);
    procedure btnBuscarFiltroClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnRepClick(Sender: TObject);
    procedure SearchEditButton1Click(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    vIdGrupoItem,vIdGrupo:string;
    vFilter:integer;
  end;

var
  frmChekListRealizado: TfrmChekListRealizado;

implementation

{$R *.fmx}

uses UdmDB, UPrincipal, UdmReport2, UAuxCheckListGrupo, UAuxGrupo;

procedure TfrmChekListRealizado.btnAddClick(Sender: TObject);
begin
  edtNome.Text      := '';
  edtDescricao.Text := '';
  edtGrupo.Text     := '';
  cbxtransferencia.ItemIndex :=0;
  dmdb.cheklistRealizado.Close;
  dmdb.cheklistRealizado.Open;
  dmdb.cheklistRealizado.Insert;
  inherited;
end;

procedure TfrmChekListRealizado.btnBuscarFiltroClick(Sender: TObject);
var
 vFiltrado :integer;
 vFiltro:String;
begin
 if edtNomeFiltro.Text.Length>0 then
 begin
   vFiltro   := 'PREFIXO ='+QuotedStr(edtNomeFiltro.Text);
   vFiltrado :=1;
 end
 else
   vFiltrado :=0;

 if vFiltrado=1 then
 begin
  dmdb.cheklistRealizado.Filtered := false;
  dmdb.cheklistRealizado.Filter   := vFiltro;
  dmdb.cheklistRealizado.Filtered := true;
 end
 else
 begin
  dmdb.cheklistRealizado.Filtered := false;
  dmdb.cheklistRealizado.Close;
  dmdb.cheklistRealizado.Open;
 end;
end;

procedure TfrmChekListRealizado.btnDeletarClick(Sender: TObject);
begin
   MyShowMessage('Deseja Realmente Deletar esse registro?',true);
   case frmPrincipal.vMsgConfirma of
     1:begin
        dmdb.cheklistRealizado.Edit;
        dmdb.cheklistRealizadoStatus.AsInteger := -1;
        dmdb.cheklistRealizadoIdUsuarioAlteracao.AsString  := dmdb.vIdUsuarioLogado;
        dmdb.cheklistRealizadoDataAlteracao.AsDateTime     := now;
        try
          dmdb.cheklistRealizado.ApplyUpdates(-1);
          MyShowMessage('Registro Excluido com sucesso!',false);
          dmdb.cheklistRealizado.Close;
          dmdb.cheklistRealizado.Open();
        except
         on E : Exception do
          ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
        end;
     end;
   end;
   lblFoterCout.Text := intToStr(StringGrid1.RowCount);
end;

procedure TfrmChekListRealizado.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmChekListRealizado.btnRepClick(Sender: TObject);
begin
  dmReport2.RepChekRealizado.PrintReport;
end;

procedure TfrmChekListRealizado.FormShow(Sender: TObject);
begin
  layItem.Visible := false;
  dmdb.cheklistRealizado.close;
  dmdb.cheklistRealizado.open;
  dmdb.detCheckListReal.open;
  inherited;
end;

procedure TfrmChekListRealizado.SearchEditButton1Click(Sender: TObject);
begin
  frmCheckListGrupoItems := TfrmCheckListGrupoItems.Create(Self);
  try
    frmCheckListGrupoItems.ShowModal;
  finally
    vIdGrupoItem       := dmDB.cheklistregrupoitemid.AsString;
    edtGrupoItem.Text  := dmDB.cheklistregrupoitemnome.AsString;
  end;
end;

end.

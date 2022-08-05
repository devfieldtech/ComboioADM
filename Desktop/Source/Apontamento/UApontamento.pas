unit UApontamento;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FMX.ActnList,
  System.Actions, FMX.TabControl, FMX.Ani, FMX.ScrollBox, FMX.Grid, FMX.Edit,
  FMX.Objects, FMX.Controls.Presentation, FMX.Layouts, UdmDB, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  FMX.DateTimeCtrls, UCentrodeCusto, UCadMaquina, UProdutos, FMX.Memo.Types,
  FMX.Memo, FMX.Effects,Soap.EncdDecd,FMX.BitmapHelper, UdmReport;

type
  TfrmCadApontamento = class(TfrmCadPadrao)
    ToolBar2: TToolBar;
    Label4: TLabel;
    StringGrid2: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    Layout1: TLayout;
    Rectangle2: TRectangle;
    btnNovaViagem: TRectangle;
    Image1: TImage;
    Label5: TLabel;
    btnExcluirViagem: TRectangle;
    Image9: TImage;
    Label6: TLabel;
    btnEditarViagem: TRectangle;
    Image10: TImage;
    Label7: TLabel;
    laySubSubCad: TLayout;
    Rsub: TRectangle;
    laySubSubSubCad: TLayout;
    Layout8: TLayout;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    edtDataApontamento: TDateEdit;
    edtAtividade: TEdit;
    ClearEditButton4: TClearEditButton;
    SearchEditButton3: TSearchEditButton;
    edtCentroCusto: TEdit;
    ClearEditButton6: TClearEditButton;
    SearchEditButton2: TSearchEditButton;
    Layout14: TLayout;
    Rectangle13: TRectangle;
    Layout15: TLayout;
    Layout16: TLayout;
    Maquina: TLabel;
    Label23: TLabel;
    edtMaquina: TEdit;
    ClearEditButton3: TClearEditButton;
    EditButton5: TSearchEditButton;
    edtOperador: TEdit;
    ClearEditButton5: TClearEditButton;
    EditButton4: TSearchEditButton;
    Label8: TLabel;
    edtProduto: TEdit;
    ClearEditButton1: TClearEditButton;
    SearchEditButton1: TSearchEditButton;
    Label9: TLabel;
    edtAplicacaoProduto: TEdit;
    ClearEditButton2: TClearEditButton;
    Layout17: TLayout;
    Rectangle14: TRectangle;
    Layout18: TLayout;
    Layout19: TLayout;
    Label24: TLabel;
    edtObs: TEdit;
    Label10: TLabel;
    edtKMAtualEscavadeira: TEdit;
    ClearEditButton7: TClearEditButton;
    GroupBox1: TGroupBox;
    Label25: TLabel;
    Label27: TLabel;
    edtDataInicio: TDateEdit;
    edtDataFim: TDateEdit;
    Z: TLabel;
    edtCentroCustoF: TEdit;
    ClearEditButton8: TClearEditButton;
    SearchEditButton4: TSearchEditButton;
    ToolBar4: TToolBar;
    lblQtdViagens: TLabel;
    layPopUpCad: TLayout;
    RecBlack: TRectangle;
    recPopup: TRectangle;
    Layout3: TLayout;
    Layout4: TLayout;
    Layout2: TLayout;
    Label11: TLabel;
    Image11: TImage;
    Layout6: TLayout;
    btnConfirmar: TRectangle;
    Label12: TLabel;
    Label13: TLabel;
    Layout9: TLayout;
    Layout10: TLayout;
    Label15: TLabel;
    edtCaminhao: TEdit;
    ClearEditButton9: TClearEditButton;
    SearchEditButton5: TSearchEditButton;
    Layout7: TLayout;
    Layout11: TLayout;
    Label18: TLabel;
    edtDataViagem: TDateEdit;
    Label19: TLabel;
    edtHoraViagem: TTimeEdit;
    Layout12: TLayout;
    Layout13: TLayout;
    Label20: TLabel;
    edtObsViagem: TMemo;
    Layout20: TLayout;
    btnAbreImgInicial: TRectangle;
    Layout21: TLayout;
    Rectangle23: TRectangle;
    ImgMaquina: TImage;
    Label45: TLabel;
    ShadowEffect1: TShadowEffect;
    Layout22: TLayout;
    Image12: TImage;
    Image15: TImage;
    OpenImg: TOpenDialog;
    btnConferencia: TRectangle;
    Image13: TImage;
    Label21: TLabel;
    edtHoraApontamento: TTimeEdit;
    Label22: TLabel;
    procedure StringGrid1SelChanged(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SearchEditButton2Click(Sender: TObject);
    procedure EditButton5Click(Sender: TObject);
    procedure SearchEditButton1Click(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnBuscarFiltroClick(Sender: TObject);
    procedure SearchEditButton5Click(Sender: TObject);
    procedure Image11Click(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure Image15Click(Sender: TObject);
    procedure RecBlackClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnNovaViagemClick(Sender: TObject);
    procedure btnEditarViagemClick(Sender: TObject);
    procedure btnExcluirViagemClick(Sender: TObject);
    procedure btnConferenciaClick(Sender: TObject);
  private
    vIdCerntroCusto,vIdEscavadeira,vIdProduto,vIdMaquina,
    vImgMaquina:string;
    procedure InsertLimpaCampos;
    procedure InsertLimpaCamposViagem;
    function Base64FromBitmap(Bitmap: TBitmap): string;
    function BitmapFromBase64(const base64: string): TBitmap;
  public
    procedure Filtro;
    function RetornaTurno(Hora:TTime):string;
  end;

var
  frmCadApontamento: TfrmCadApontamento;

implementation

uses UPrincipal;
{$R *.fmx}

function TfrmCadApontamento.BitmapFromBase64(const base64: string): TBitmap;
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

procedure TfrmCadApontamento.btnAddClick(Sender: TObject);
begin
  InsertLimpaCampos;
  inherited;
end;

procedure TfrmCadApontamento.btnBuscarFiltroClick(Sender: TObject);
begin
  inherited;
  Filtro;
end;

procedure TfrmCadApontamento.btnConferenciaClick(Sender: TObject);
begin
 dmReport.myCheckDiurno.Checked  := RetornaTurno(dmdb.TApontamentohorainicio.AsDateTime)='D';
 dmReport.myCheckNoturno.Checked := RetornaTurno(dmdb.TApontamentohorainicio.AsDateTime)='N';
 dmReport.pplblTotalViagens.Text := IntToStr(StringGrid2.RowCount);
 dmReport.AbreApontamento('AND A.ID='+dmdb.TApontamentoid.AsString);
end;

procedure TfrmCadApontamento.btnConfirmarClick(Sender: TObject);
begin
 if edtCaminhao.Text.Length=0 then
 begin
   MyShowMessage('Informe a Maquina!',false)
 end;
 if dmdb.TApontamentoValores.State =dsInsert then
    dmdb.TApontamentoValoresidusuario.AsString := dmdb.vIdUsuarioLogado;

 if dmdb.TApontamentoValores.State =dsEdit then
 begin
   dmdb.TApontamentoValoresidusuarioalteracao.AsString := dmdb.vIdUsuarioLogado;
   dmdb.TApontamentoValoresdataalteracao.AsDateTime      := now;
 end;
 dmdb.TApontamentoValoresdataoperacao.AsDateTime := edtDataViagem.Date;
 dmdb.TApontamentoValoreshoraoperacao.AsDateTime := edtHoraViagem.Time;
 dmdb.TApontamentoValoresidmaquina.AsString      := vIdMaquina;

 if edtObsViagem.Text.Length >0 then
  dmdb.TApontamentoValoresobservacao.AsString    := edtObsViagem.Text;

 if vImgMaquina.Length >0 then
  dmdb.TApontamentoValoresimgveiculo.AsString    := vImgMaquina;

 dmdb.TApontamentoValoresidapontamento.AsString  := dmdb.TApontamentoid.AsString;
 try
   dmdb.TApontamentoValores.ApplyUpdates(-1);
   MyShowMessage('Viagem cadastrada com sucesso!',false);
   dmdb.TApontamentoValores.CommitUpdates;
   dmdb.TApontamentoValores.Refresh;
   lblQtdViagens.Text := IntToStr(StringGrid2.RowCount);
   layPopUpCad.Visible := false;
 except
  on E : Exception do
   ShowMessage(E.ClassName+' Erro ao atualizar registro : '+E.Message);
 end;

end;

procedure TfrmCadApontamento.btnDeletarClick(Sender: TObject);
begin
   MyShowMessage('Deseja Realmente Deletar esse registro?',true);
   case frmPrincipal.vMsgConfirma of
     1:begin
        dmDB.TApontamento.Edit;
        dmDB.TApontamentostatus.AsInteger := -1;
        dmDB.TApontamentoIdUsuarioAlteracao.AsString  := dmDB.vIdUsuarioLogado;
        dmDB.TApontamentoDataAlteracao.AsDateTime     := now;
        try
          dmDB.TApontamento.ApplyUpdates(-1);
          MyShowMessage('Registro Excluido com sucesso!',false);
          Filtro;
        except
         on E : Exception do
          ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
        end;
     end;
   end;
end;

procedure TfrmCadApontamento.btnEditarClick(Sender: TObject);
begin
 vIdCerntroCusto              := dmdb.TApontamentoidcentrocusto.AsString;
 edtCentroCusto.Text          := dmdb.TApontamentocentrocusto.AsString;
 edtKMAtualEscavadeira.Text   := dmdb.TApontamentokmatualescavadeira.AsString;
 vIdEscavadeira               := dmdb.TApontamentoidescavadeira.AsString;
 edtMaquina.Text              := dmdb.TApontamentomaquina.AsString;
 vIdProduto                   := dmdb.TApontamentoidproduto.AsString;
 edtProduto.Text              := dmdb.TApontamentoprodutos.AsString;
 edtAplicacaoProduto.Text     := dmdb.TApontamentoaplicacaoproduto.AsString;
 edtObs.Text                  := dmdb.TApontamentoobservacao.AsString;
 edtHoraApontamento.Time      := dmdb.TApontamentohorainicio.AsDateTime;
 dmdb.TApontamento.Edit;
 MudarAba(tbiCad,tbPrincipal)
end;

procedure TfrmCadApontamento.btnEditarViagemClick(Sender: TObject);
begin
 vIdMaquina               := dmdb.TApontamentoValoresidmaquina.AsString;
 edtCaminhao.Text         := dmdb.TApontamentoValoresmaquina.AsString;
 edtObsViagem.Text        := dmdb.TApontamentoValoresobservacao.AsString;
 vImgMaquina              := dmdb.TApontamentoValoresimgveiculo.AsString;
 if((dmdb.TApontamentoValoresimgsyncs3.AsInteger=0)
  and(dmdb.TApontamentoValoresimgveiculo.AsString.Length>300))
   or(dmdb.TApontamentoValoresimgveiculo.AsString.Length>300)
 then
 begin
  ImgMaquina.Bitmap := BitmapFromBase64(vImgMaquina);
 end
 else
 begin
  if dmDB.TAbastecimentoimg2.AsString.Length>0 then
    ImgMaquina.Bitmap.LoadFromUrl(vImgMaquina)
  else
   ImgMaquina.Bitmap := nil;
 end;
 dmdb.TApontamentoValores.Edit;
 layPopUpCad.Visible := true;
end;

procedure TfrmCadApontamento.btnExcluirViagemClick(Sender: TObject);
begin
 MyShowMessage('Deseja Realmente Deletar esse registro?',true);
 case frmPrincipal.vMsgConfirma of
   1:begin
      dmDB.TApontamentoValores.Edit;
      dmDB.TApontamentoValoresstatus.AsInteger := -1;
      dmDB.TApontamentoValoresIdUsuarioAlteracao.AsString  := dmDB.vIdUsuarioLogado;
      dmDB.TApontamentoValoresDataAlteracao.AsDateTime     := now;
      try
        dmDB.TApontamentoValores.ApplyUpdates(-1);
        MyShowMessage('Registro Excluido com sucesso!',false);
        dmdb.TApontamentoValores.CommitUpdates;
        dmdb.TApontamentoValores.Refresh;
        lblQtdViagens.Text := IntToStr(StringGrid2.RowCount)
      except
       on E : Exception do
        ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
      end;
   end;
 end;
end;

procedure TfrmCadApontamento.btnNovaViagemClick(Sender: TObject);
begin
  InsertLimpaCamposViagem;
  inherited;
end;

procedure TfrmCadApontamento.btnSalvarClick(Sender: TObject);
begin
 if edtDataApontamento.date>date then
 begin
   MyShowMessage('Data do apontamento nao pode ser maior que hoje!',false);
   Exit;
 end;

 if edtCentroCusto.Text.Length=0 then
 begin
   MyShowMessage('Informe a Obra!',false);
   Exit;
 end;

 if edtMaquina.Text.Length=0 then
 begin
   MyShowMessage('Informe a Maquina!',false);
   Exit;
 end;

 if edtProduto.Text.Length=0 then
 begin
   MyShowMessage('Informe o Produto!',false);
   Exit;
 end;

 if edtAplicacaoProduto.Text.Length=0 then
 begin
   MyShowMessage('Aplicação do Produto!',false);
   Exit;
 end;

 if dmdb.TApontamento.State = dsInsert then
  dmdb.TApontamentoidusuario.AsString          := dmdb.vIdUsuarioLogado;
 if dmdb.TApontamento.State = dsInsert then
 begin
  dmdb.TApontamentoidusuarioalteracao.AsString := dmdb.vIdUsuarioLogado;
  dmdb.TApontamentodataalteracao.AsDateTime    := now;
 end;
 dmdb.TApontamentodataoperacao.AsDateTime      := edtDataApontamento.Date;
 dmdb.TApontamentohorainicio.AsDateTime        := edtHoraApontamento.Time;
 dmdb.TApontamentoidcentrocusto.AsString       := vIdCerntroCusto;
 dmdb.TApontamentoidproduto.AsString           := vIdProduto;
 dmdb.TApontamentoidescavadeira.AsString       := vIdEscavadeira;
 dmdb.TApontamentoaplicacaoproduto.AsString    := edtAplicacaoProduto.Text;
 if edtKMAtualEscavadeira.Text.Length>0 then
  dmdb.TApontamentokmatualescavadeira.AsString := edtKMAtualEscavadeira.Text;
 if edtObs.Text.Length>0 then
  dmdb.TApontamentoobservacao.AsString         := edtObs.Text;
 try
   dmdb.TApontamento.ApplyUpdates(-1);
   MyShowMessage('Registro Atualizado com sucesso!',false);
   Filtro;
   MudarAba(tbiLista,sender)
 except
   on E : Exception do
    ShowMessage(E.ClassName+' Erro ao Atualizar Registro : '+E.Message);
 end;
end;

procedure TfrmCadApontamento.btnVoltarClick(Sender: TObject);
begin
 layPopUpCad.Visible := false;
end;

procedure TfrmCadApontamento.EditButton5Click(Sender: TObject);
begin
  frmCadMaquinaVeiculo := TfrmCadMaquinaVeiculo.Create(Self);
  try
    frmCadMaquinaVeiculo.ShowModal;
  finally
    vIdEscavadeira       := dmDB.TMaquinasid.AsString;
    edtMaquina.Text      := dmDB.TMaquinasprefixo.AsString;
  end;
end;

procedure TfrmCadApontamento.Filtro;
var
 vFiltro:string;
begin
 vFiltro := '';

 vFiltro  := vFiltro+' and a.dataoperacao between '+FormatDateTime('yyyy-mm-dd',edtDataInicio.Date).QuotedString+' and '+
    FormatDateTime('yyyy-mm-dd',edtDataFim.Date).QuotedString;

 if edtNomeFiltro.Text.Length>0 then
  vFiltro := ' and m.prefixo like '+QuotedStr('%'+edtNomeFiltro.Text+'%');

 if edtCentroCustoF.Text.Length>0  then
  vFiltro := vFiltro+' and a.idcentrocusto ='+vIdCerntroCusto;

 dmDB.AbreApontamento(vFiltro);
 lblFoterCout.Text := IntToStr(StringGrid1.RowCount)
end;


procedure TfrmCadApontamento.FormShow(Sender: TObject);
begin
  Filtro;
  layPopUpCad.Visible := false;
  inherited;
end;

procedure TfrmCadApontamento.Image11Click(Sender: TObject);
begin
 layPopUpCad.Visible := false;
end;

procedure TfrmCadApontamento.Image12Click(Sender: TObject);
begin
 if OpenImg.Execute then
  if Length(OpenImg.FileName)>0 then
  begin
   ImgMaquina.Bitmap.LoadFromFile(OpenImg.FileName);
   vImgMaquina := Base64FromBitmap(ImgMaquina.Bitmap);
 end;
end;

procedure TfrmCadApontamento.Image15Click(Sender: TObject);
begin
  MyShowMessage('Deseja Realmente Deletar esse Imagem?',true);
   case frmPrincipal.vMsgConfirma of
     1:begin
          ImgMaquina.Bitmap.Assign(nil);
          vImgMaquina :='';
       end;
   end;
end;

function TfrmCadApontamento.Base64FromBitmap(Bitmap: TBitmap): string;
var
  Input: TBytesStream;
  Output: TStringStream;
begin
  Input := TBytesStream.Create;
  try
    Bitmap.Resize(300,300);
    Bitmap.SaveToStream(Input);
    Input.Position := 0;
    Output := TStringStream.Create('', TEncoding.ASCII);
    try
      Soap.EncdDecd.EncodeStream(Input, Output);
      Result := Output.DataString;
    finally
      Output.Free;
    end;
  finally
    Input.Free;
  end;
end;



procedure TfrmCadApontamento.InsertLimpaCampos;
begin
 edtCentroCusto.Text          :='';
 edtKMAtualEscavadeira.Text   :='';
 edtCaminhao.Text             :='';
 edtProduto.Text              :='';
 edtAplicacaoProduto.Text     :='';
 edtObs.Text                  :='';
 dmdb.TApontamento.Insert;
 MudarAba(tbiCad,tbPrincipal)
end;

procedure TfrmCadApontamento.InsertLimpaCamposViagem;
begin
 edtMaquina.Text          :='';
 edtObsViagem.Text        :='';
 ImgMaquina.Bitmap.Assign(nil);
 dmdb.TApontamentoValores.Insert;
 layPopUpCad.Visible := true;
end;

procedure TfrmCadApontamento.RecBlackClick(Sender: TObject);
begin
  layPopUpCad.Visible := false;
end;

function TfrmCadApontamento.RetornaTurno(Hora: TTime): string;
var
 I:integer;
begin
    I := Trunc(Hora * 24);
    if(I > 5) AND (I < 18) then
     Result :='D'
    else
     Result :='N'
end;

procedure TfrmCadApontamento.SearchEditButton1Click(Sender: TObject);
begin
  frmCadProdutos := TfrmCadProdutos.Create(Self);
  try
    frmCadProdutos.vTipo    :=1;
    frmCadProdutos.ShowModal;
  finally
    vIdProduto           := dmDB.TProdutosid.AsString;
    edtProduto.Text      := dmDB.TProdutosnome.AsString;
  end;
end;

procedure TfrmCadApontamento.SearchEditButton2Click(Sender: TObject);
begin
  frmCentroCusto := TfrmCentroCusto.Create(Self);
  try
    frmCentroCusto.ShowModal;
  finally
    vIdCerntroCusto      := dmDB.TCentroCustoid.AsString;
    edtCentroCusto.Text  := dmDB.TCentroCustonome.AsString;
  end;
end;

procedure TfrmCadApontamento.SearchEditButton5Click(Sender: TObject);
begin
 frmCadMaquinaVeiculo := TfrmCadMaquinaVeiculo.Create(Self);
  try
    frmCadMaquinaVeiculo.ShowModal;
  finally
    vIdMaquina           := dmDB.TMaquinasid.AsString;
    edtCaminhao.Text     := dmDB.TMaquinasprefixo.AsString;
  end;
end;

procedure TfrmCadApontamento.StringGrid1SelChanged(Sender: TObject);
begin
 lblQtdViagens.Text := intToStr(StringGrid2.RowCount)
end;

end.

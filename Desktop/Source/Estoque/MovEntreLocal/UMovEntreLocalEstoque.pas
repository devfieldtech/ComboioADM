unit UMovEntreLocalEstoque;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadPadrao, System.Rtti, FMX.Grid.Style, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Fmx.Bind.Grid, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FMX.ActnList,
  System.Actions, FMX.TabControl, FMX.Ani, FMX.ScrollBox, FMX.Grid, FMX.Edit,
  FMX.Controls.Presentation, FMX.Objects, FMX.Layouts, FMX.DateTimeCtrls,
  FMX.ListBox, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView, Data.Cloud.CloudAPI,
  Data.Cloud.AmazonAPI,FMX.BitmapHelper, FMX.Effects,windows,ShellApi,
  FMX.Platform.Win;

type
  TfrmMovLocalEstoque = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    GroupBox1: TGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    edtDataInicio: TDateEdit;
    edtDataFim: TDateEdit;
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    Label4: TLabel;
    Layout6: TLayout;
    Label5: TLabel;
    Layout7: TLayout;
    ComboBox1: TComboBox;
    Layout13: TLayout;
    edtLocalDestino: TEdit;
    EditButton1: TEditButton;
    Layout46000000: TLayout;
    Rectangle16000000: TRectangle;
    Layout490000000000000: TLayout;
    Layout47000000000: TLayout;
    Label31000000000: TLabel;
    layCapDadosPasto: TLayout;
    lbll: TLabel;
    Label7: TLabel;
    Layout48000000000: TLayout;
    cbxCurralPastoGrupo: TComboBox;
    LayValueDadosPasto: TLayout;
    edtProduto: TEdit;
    btnBuscaProduto: TEditButton;
    edtqtd: TEdit;
    Layout14: TLayout;
    Rectangle2: TRectangle;
    Layout15: TLayout;
    Rectangle3: TRectangle;
    Layout16: TLayout;
    Layout17: TLayout;
    Label6: TLabel;
    Layout18: TLayout;
    Label9: TLabel;
    Layout19: TLayout;
    ComboBox3: TComboBox;
    Layout20: TLayout;
    edtDataMov: TDateEdit;
    Label11: TLabel;
    edtHoraMov: TTimeEdit;
    laySubSubCad: TLayout;
    Rsub: TRectangle;
    laySubSubSubCad: TLayout;
    Layout8: TLayout;
    Layout9: TLayout;
    Label8: TLabel;
    Layout10: TLayout;
    Label13: TLabel;
    Layout11: TLayout;
    ComboBox2: TComboBox;
    Layout12: TLayout;
    edtLocalOrigem: TEdit;
    EditButton2: TEditButton;
    Rectangle4: TRectangle;
    SearchEditButton1: TSearchEditButton;
    ClearEditButton1: TClearEditButton;
    ClearEditButton2: TClearEditButton;
    ClearEditButton3: TClearEditButton;
    Label10: TLabel;
    edtCentroCustoOrigem: TEdit;
    EditButton3: TEditButton;
    ClearEditButton4: TClearEditButton;
    Label12: TLabel;
    edtCentroCustoDestino: TEdit;
    EditButton4: TEditButton;
    ClearEditButton5: TClearEditButton;
    btnRepLista: TRectangle;
    Image1: TImage;
    Label24: TLabel;
    edtCentroCustoOriF: TEdit;
    ClearEditButton6: TClearEditButton;
    SearchEditButton2: TSearchEditButton;
    Label16: TLabel;
    btnListaMovFoto: TRectangle;
    Image9: TImage;
    Label17: TLabel;
    tbiConf: TTabItem;
    Rectangle5: TRectangle;
    Label42: TLabel;
    imgVoltar: TImage;
    imgAlerta: TImage;
    imgSemAlerta: TImage;
    recConf: TRectangle;
    Image18: TImage;
    Layout21: TLayout;
    Rectangle10: TRectangle;
    GroupBox2: TGroupBox;
    Label35: TLabel;
    Label37: TLabel;
    edtDataInicio1: TDateEdit;
    edtDataFim1: TDateEdit;
    Edit3: TEdit;
    ClearEditButton14: TClearEditButton;
    SearchEditButton10: TSearchEditButton;
    Label39: TLabel;
    edtCentroCusto1: TEdit;
    ClearEditButton7: TClearEditButton;
    SearchEditButton3: TSearchEditButton;
    Label18: TLabel;
    cbxBombaF: TComboBox;
    Label19: TLabel;
    Button1: TButton;
    Image10: TImage;
    Rectangle6: TRectangle;
    ListaFotos: TListView;
    ToolBar5: TToolBar;
    lblFoterCout1: TLabel;
    recAguarde: TRectangle;
    Label43: TLabel;
    SaveDialog2: TSaveDialog;
    AmazonConnectionInfo1: TAmazonConnectionInfo;
    cbxBomba: TComboBox;
    Label21: TLabel;
    Layout22: TLayout;
    btnAbreImgInicial: TRectangle;
    Layout23: TLayout;
    Rectangle23: TRectangle;
    ImgMnuTotalIni: TImage;
    Label25: TLabel;
    Layout24: TLayout;
    imgChekStart: TImage;
    btnImgStop: TRectangle;
    Layout25: TLayout;
    Label26: TLabel;
    Rectangle24: TRectangle;
    ImgMnuTotalFim: TImage;
    Layout26: TLayout;
    Image12: TImage;
    imgChekEnd: TImage;
    ShadowEffect1: TShadowEffect;
    Label14: TLabel;
    procedure FormShow(Sender: TObject);
    procedure EditButton2Click(Sender: TObject);
    procedure EditButton1Click(Sender: TObject);
    procedure btnBuscaProdutoClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure edtqtdKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure SearchEditButton1Click(Sender: TObject);
    procedure btnBuscarFiltroClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure EditButton3Click(Sender: TObject);
    procedure EditButton4Click(Sender: TObject);
    procedure btnRepListaClick(Sender: TObject);
    procedure SearchEditButton2Click(Sender: TObject);
    procedure btnListaMovFotoClick(Sender: TObject);
    procedure cbxBombaChange(Sender: TObject);
    procedure cbxBombaFChange(Sender: TObject);
    procedure cbxBombaFClick(Sender: TObject);
    procedure cbxBombaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ListaFotosItemClickEx(const Sender: TObject; ItemIndex: Integer;
      const LocalClickPos: TPointF; const ItemObject: TListItemDrawable);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure SearchEditButton3Click(Sender: TObject);
  private
    vIdMovimentacao,vIdLocalOrigem,vIdLocalDestino,vIdProduto,vIdCerntroCusto,vIdLocalEstoque,
    vImgInicio,vImgFim:string;
    vListaFoto:integer;
    procedure Filtro;
    procedure Filtro2;
    procedure LimpaCampos;
    procedure GerarLista;
    procedure CarregaLocalEstoque(vIdCen: string);
    procedure DownloadImgS3(vPath,vImgName:String);
  public
    { Public declarations }
  end;

var
  frmMovLocalEstoque: TfrmMovLocalEstoque;

implementation

{$R *.fmx}

uses UDMDB, ULocalEstoque, UProdutos, UPrincipal, UCentrodeCusto, UdmReport;

procedure TfrmMovLocalEstoque.btnAddClick(Sender: TObject);
begin
  LimpaCampos;
  dmdb.TMovLocalEstoque.Close;
  dmdb.TMovLocalEstoque.Open;
  dmdb.TMovLocalEstoque.Insert;
  inherited;
end;

procedure TfrmMovLocalEstoque.btnBuscaProdutoClick(Sender: TObject);
begin
 frmCadProdutos := TfrmCadProdutos.Create(Self);
  try
    frmCadProdutos.ShowModal;
  finally
    vIdProduto         := dmdb.TProdutosid.AsString;
    edtProduto.Text    := dmdb.TProdutosnome.AsString;
  end;
end;

procedure TfrmMovLocalEstoque.btnBuscarFiltroClick(Sender: TObject);
begin
  Filtro;
end;

procedure TfrmMovLocalEstoque.btnCancelaClick(Sender: TObject);
begin
 if vListaFoto=0 then
 begin
  MudarAba(tbiLista,sender);
 end;
 if vListaFoto=1 then
 begin
  MudarAba(tbiLista,sender);
 end;
end;

procedure TfrmMovLocalEstoque.btnDeletarClick(Sender: TObject);
begin
   MyShowMessage('Deseja Realmente Deletar esse registro?',true);
   case frmPrincipal.vMsgConfirma of
     1:begin
        dmdb.TMovLocalEstoque.Edit;
        dmdb.TMovLocalEstoqueStatus.AsInteger := -1;
        dmdb.TMovLocalEstoqueIdUsuarioAlteracao.AsString  := dmdb.vIdUsuarioLogado;
        dmdb.TMovLocalEstoqueDataAlteracao.AsDateTime     := now;
        try
          dmdb.TMovLocalEstoquesyncaws.AsInteger            :=0;
          dmdb.TMovLocalEstoque.ApplyUpdates(-1);
          MyShowMessage('Registro Excluido com sucesso!',false);
          Filtro;
        except
         on E : Exception do
          ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
        end;
     end;
   end;

end;

procedure TfrmMovLocalEstoque.btnEditarClick(Sender: TObject);
begin
  vListaFoto                                         :=0;
  dmdb.TMovLocalEstoque.Edit;
  vIdProduto                                         := dmdb.TMovLocalEstoqueidproduto.AsString;
  edtProduto.Text                                    := dmdb.TMovLocalEstoqueidproduto.AsString;
  vIdLocalOrigem                                     := dmdb.TMovLocalEstoqueidlocalestoqueorigem.AsString;
  edtLocalOrigem.Text                                := dmdb.TMovLocalEstoquelocalorigem.AsString;
  vIdLocalDestino                                    := dmdb.TMovLocalEstoqueidlocalestoquedetino.AsString;
  edtLocalDestino.Text                               := dmdb.TMovLocalEstoquelocaldestino.AsString;
  edtDataMov.Date                                    := dmdb.TMovLocalEstoquedatamov.AsDateTime;
  edtHoraMov.Date                                    := dmdb.TMovLocalEstoquehora.AsDateTime;
  edtqtd.Text                                        := dmdb.TMovLocalEstoqueqtde.AsString;
  edtCentroCustoOrigem.Text                          := dmdb.TMovLocalEstoquecentrocustoorigem.AsString;
  edtCentroCustoDestino.Text                         := dmdb.TMovLocalEstoquecentrocustodestino.AsString;
  if dmDB.TMovLocalEstoqueimg.AsString.Length>0 then
   ImgMnuTotalIni.Bitmap.LoadFromUrl(dmDB.TMovLocalEstoqueimg.AsString);
  if dmDB.TMovLocalEstoqueimgfim.AsString.Length>0 then
   ImgMnuTotalFim.Bitmap.LoadFromUrl(dmDB.TMovLocalEstoqueimgfim.AsString);
  inherited;
end;

procedure TfrmMovLocalEstoque.btnListaMovFotoClick(Sender: TObject);
begin
 MudarAba(tbiConf,sender)
end;

procedure TfrmMovLocalEstoque.btnRepListaClick(Sender: TObject);
begin
 if StringGrid1.RowCount>0 then
 begin
  BindSourceDB1.DataSet :=nil;
  dmReport.ppRepMovEstoque.PrintReport;
  BindSourceDB1.DataSet :=dmdb.TMovLocalEstoque;
 end;
end;

procedure TfrmMovLocalEstoque.btnSalvarClick(Sender: TObject);
begin
 if edtLocalOrigem.Text.Length=0 then
 begin
   MyShowMessage('Informe o Local de Origem!',false);
   edtLocalOrigem.SetFocus;
   Exit;
 end;
 if edtLocalDestino.Text.Length=0 then
 begin
   MyShowMessage('Informe o Local de Destino!',false);
   edtLocalDestino.SetFocus;
   Exit;
 end;
 if edtProduto.Text.Length=0 then
 begin
   MyShowMessage('Informe o Prtoduto!',false);
   edtProduto.SetFocus;
   Exit;
 end;
 if(edtqtd.Text.Length=0)or(edtqtd.Text='0') then
 begin
   MyShowMessage('Informe a Quantidade!',false);
   edtqtd.SetFocus;
   Exit;
 end;
 if dmdb.TMovLocalEstoque.State=dsInsert then
 begin
   dmdb.TMovLocalEstoqueidusuario.AsString := dmdb.vIdUsuarioLogado;
 end;
 if dmdb.TMovLocalEstoque.State=dsEdit then
 begin
   dmdb.TMovLocalEstoqueidusuarioalteracao.AsString := dmdb.vIdUsuarioLogado;
   dmdb.TMovLocalEstoquedataalteracao.AsDateTime    := now;
 end;
 dmdb.TMovLocalEstoqueidproduto.AsString             := vIdProduto;
 dmdb.TMovLocalEstoqueidlocalestoqueorigem.AsString  := vIdLocalOrigem;
 dmdb.TMovLocalEstoqueidlocalestoquedetino.AsString  := vIdLocalDestino;
 dmdb.TMovLocalEstoqueqtde.AsString                  := edtqtd.Text;
 dmdb.TMovLocalEstoquedatamov.AsDateTime             := edtDataMov.DateTime;
 dmdb.TMovLocalEstoquehora.AsDateTime                := edtHoraMov.DateTime;
 try
  dmdb.TMovLocalEstoque.ApplyUpdates(-1);
  MyShowMessage('Movimentação realizada com sucesso!',false);
  if vListaFoto=0 then
  begin
    Filtro;
    MudarAba(tbiLista,sender);
  end;
  if vListaFoto=1 then
  begin
    Filtro2;
    GerarLista;
    MudarAba(tbiConf,sender);
  end;
 except
 on E: Exception do
    ShowMessage('Erro ao salvar Registro:'+E.Message);
 end;
end;

procedure TfrmMovLocalEstoque.btnVoltarClick(Sender: TObject);
begin
 if vListaFoto=0 then
 begin
  MudarAba(tbiLista,sender);
 end;
 if vListaFoto=1 then
 begin
  MudarAba(tbiLista,sender);
 end;
end;

procedure TfrmMovLocalEstoque.Button1Click(Sender: TObject);
begin
  Filtro2;
  GerarLista;
end;

procedure TfrmMovLocalEstoque.EditButton1Click(Sender: TObject);
begin
 if edtCentroCustoDestino.Text.Length=0 then
  begin
   MyShowMessage('Selecione o Centro de Custo de Destino!',false);
   Exit;
  end;
  frmAuxLocalEstoque := TfrmAuxLocalEstoque.Create(Self);
  try
    frmAuxLocalEstoque.edtCentroCustoF.Text    := edtCentroCustoDestino.Text;
    frmAuxLocalEstoque.edtCentroCustoF.Enabled := false;
    frmAuxLocalEstoque.btnBuscarFiltroClick(Sender);
    frmAuxLocalEstoque.ShowModal;
  finally
    frmAuxLocalEstoque.edtCentroCustoF.Text    := '';
    frmAuxLocalEstoque.edtCentroCustoF.Enabled := true;
    vIdLocalDestino           := dmdb.TLocalEstoqueid.AsString;
    edtLocalDestino.Text      := dmdb.TLocalEstoquenome.AsString;
  end;
end;

procedure TfrmMovLocalEstoque.EditButton2Click(Sender: TObject);
begin
  if edtCentroCustoOrigem.Text.Length=0 then
  begin
   MyShowMessage('Selecione o Centro de Custo de Origem!',false);
   Exit;
  end;
  frmAuxLocalEstoque := TfrmAuxLocalEstoque.Create(Self);
  try
    frmAuxLocalEstoque.edtCentroCustoF.Text    := edtCentroCustoOrigem.Text;
    frmAuxLocalEstoque.edtCentroCustoF.Enabled := false;
    frmAuxLocalEstoque.btnBuscarFiltroClick(Sender);
    frmAuxLocalEstoque.ShowModal;
  finally
    vIdLocalOrigem           := dmdb.TLocalEstoqueid.AsString;
    edtLocalOrigem.Text      := dmdb.TLocalEstoquenome.AsString;
  end;
end;

procedure TfrmMovLocalEstoque.EditButton3Click(Sender: TObject);
begin
  frmCentroCusto := TfrmCentroCusto.Create(Self);
  try
    frmCentroCusto.ShowModal;
  finally
    edtCentroCustoOrigem.Text := dmdb.TCentroCustonome.AsString;
  end;
end;

procedure TfrmMovLocalEstoque.EditButton4Click(Sender: TObject);
begin
  frmCentroCusto := TfrmCentroCusto.Create(Self);
  try
    frmCentroCusto.ShowModal;
  finally
    edtCentroCustoDestino.Text := dmdb.TCentroCustonome.AsString;
  end;
end;

procedure TfrmMovLocalEstoque.edtqtdKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if (keyChar in ['0'..'9',','] = false) then
 begin
   KeyChar := #0;
 end;
end;

procedure TfrmMovLocalEstoque.Filtro;
var
 vFiltro:string;
 vDataDe,vDataAte:string;
begin
 vFiltro:='';
 vDataDe  := FormatDateTime('yyyy-mm-dd',edtDataInicio.Date).QuotedString;
 vDataAte := FormatDateTime('yyyy-mm-dd',edtDataFim.Date).QuotedString;
 vFiltro  := vFiltro+' and cast(a.datamov as date) between '+vDataDe+' and '+vDataAte;
 if edtCentroCustoOriF.Text.Length>0 then
  vFiltro:=vFiltro+' and co.id='+vIdCerntroCusto;
 if cbxBomba.ItemIndex>0 then
  vFiltro:=vFiltro+' and o.ID='+vIdLocalEstoque;
 dmdb.MovLocalEstoque(vFiltro);
 lblFoterCout.Text := intToStr(StringGrid1.RowCount);
end;

procedure TfrmMovLocalEstoque.Filtro2;
var
 vFiltro:string;
 vDataDe,vDataAte:string;
begin
 vFiltro:='';
 vDataDe  := FormatDateTime('yyyy-mm-dd',edtDataInicio1.Date).QuotedString;
 vDataAte := FormatDateTime('yyyy-mm-dd',edtDataFim1.Date).QuotedString;
 vFiltro  := vFiltro+' and cast(a.datamov as date) between '+vDataDe+' and '+vDataAte;
 if edtCentroCusto1.Text.Length>0 then
  vFiltro:=vFiltro+' and co.id='+vIdCerntroCusto;
 if cbxBombaF.ItemIndex>0 then
  vFiltro:=vFiltro+' and o.ID='+vIdLocalEstoque;
 dmdb.MovLocalEstoque(vFiltro);
end;

procedure TfrmMovLocalEstoque.FormKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if (Key=13)and(tbPrincipal.TabIndex=0) then
   Filtro;
end;

procedure TfrmMovLocalEstoque.FormShow(Sender: TObject);
begin
  lblAdd.Text        := 'Adicionar';
  lblEdit.Text       := 'Editar';
  lblDeleta.Text     := 'Deletar';
  tbPrincipal.TabPosition := TTabPosition.None;
  tbPrincipal.ActiveTab   := tbiLista;
  edtDataInicio.Date      := Date-1;
  edtDataFim.Date         := Date;
  Filtro;
end;

procedure TfrmMovLocalEstoque.LimpaCampos;
begin
 edtDataMov.Date            := date;
 edtProduto.Text            := '';
 edtqtd.Text                :='0';
 edtLocalDestino.Text       :='';
 edtLocalDestino.Text       :='';
 edtCentroCustoOrigem.Text  :='';
 edtCentroCustoOrigem.Text  :='';
end;



procedure TfrmMovLocalEstoque.ListaFotosItemClickEx(const Sender: TObject;
  ItemIndex: Integer; const LocalClickPos: TPointF;
  const ItemObject: TListItemDrawable);
var
  url,urlBomba,urlHorimetro,urlKM:string;
begin
  vIdMovimentacao   := TAppearanceListViewItem(ListaFotos.Selected).Objects.FindObjectT<TListItemText>
   ('Text1').TagString;

  vImgInicio          := TAppearanceListViewItem(ListaFotos.Selected).Objects.FindObjectT<TListItemImage>
   ('Image2').TagString;
  vImgFim      := TAppearanceListViewItem(ListaFotos.Selected).Objects.FindObjectT<TListItemImage>
   ('Image3').TagString;


  if ItemObject is TListItemImage then
  begin
    if TListItemImage(ItemObject).Name='Image32' then
    begin
     if vImgInicio.Length>0 then
      begin
         try
         ShellExecute(FmxHandleToHWND(Handle),
               'open',
               PChar(vImgInicio),
               nil,
               nil,
               SW_SHOWMAXIMIZED);
         except
          on E : Exception do
           ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
         end;
      end;
    end;

    if TListItemImage(ItemObject).Name='Image33' then
    begin
     if vImgFim.Length>0 then
      begin
         try
          ShellExecute(FmxHandleToHWND(Handle),
               'open',
               PChar(vImgFim),
               nil,
               nil,
               SW_SHOWMAXIMIZED);
         except
          on E : Exception do
           ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
         end;
      end;
    end;


    if TListItemImage(ItemObject).Name='Image39' then
    begin
     MyShowMessage('Deseja Realmente Deletar esse registro?',true);
     case frmPrincipal.vMsgConfirma of
       1:begin
          dmDB.TMovLocalEstoque.Filtered := false;
          dmDB.TMovLocalEstoque.Filter   := 'id='+vIdMovimentacao;
          dmDB.TMovLocalEstoque.Filtered := true;
          dmDB.TMovLocalEstoque.Edit;
          dmDB.TMovLocalEstoquestatus.AsInteger := -1;
          dmDB.TMovLocalEstoqueIdUsuarioAlteracao.AsString  := dmDB.vIdUsuarioLogado;
          dmDB.TMovLocalEstoqueDataAlteracao.AsDateTime     := now;
          dmDB.TMovLocalEstoquesyncaws.AsInteger            :=0;
          try
            dmDB.TMovLocalEstoque.ApplyUpdates(-1);
            MyShowMessage('Registro Excluido com sucesso!',false);
            Filtro;
          except
           on E : Exception do
            ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
          end;
       end;
     end;
    end;
    if TListItemImage(ItemObject).Name='Image38' then
    begin
      vListaFoto                     :=1;
      dmDB.TMovLocalEstoque.Filtered := false;
      dmDB.TMovLocalEstoque.Filter   := 'id='+vIdMovimentacao;
      dmDB.TMovLocalEstoque.Filtered := true;
      dmDB.TMovLocalEstoque.Edit;
      vIdProduto                                         := dmdb.TMovLocalEstoqueidproduto.AsString;
      edtProduto.Text                                    := dmdb.TMovLocalEstoqueidproduto.AsString;
      vIdLocalOrigem                                     := dmdb.TMovLocalEstoqueidlocalestoqueorigem.AsString;
      edtLocalOrigem.Text                                := dmdb.TMovLocalEstoquelocalorigem.AsString;
      vIdLocalDestino                                    := dmdb.TMovLocalEstoqueidlocalestoquedetino.AsString;
      edtLocalDestino.Text                               := dmdb.TMovLocalEstoquelocaldestino.AsString;
      edtDataMov.Date                                    := dmdb.TMovLocalEstoquedatamov.AsDateTime;
      edtHoraMov.Date                                    := dmdb.TMovLocalEstoquehora.AsDateTime;
      edtqtd.Text                                        := dmdb.TMovLocalEstoqueqtde.AsString;
      edtCentroCustoOrigem.Text                          := dmdb.TMovLocalEstoquecentrocustoorigem.AsString;
      edtCentroCustoDestino.Text                         := dmdb.TMovLocalEstoquecentrocustodestino.AsString;
      if dmDB.TMovLocalEstoqueimg.AsString.Length>0 then
       ImgMnuTotalIni.Bitmap.LoadFromUrl(dmDB.TMovLocalEstoqueimg.AsString);
      if dmDB.TMovLocalEstoqueimgfim.AsString.Length>0 then
       ImgMnuTotalFim.Bitmap.LoadFromUrl(dmDB.TMovLocalEstoqueimgfim.AsString);
      MudarAba(tbiCad,sender);
    end;
  end;
end;


procedure TfrmMovLocalEstoque.DownloadImgS3(vPath,vImgName:String);
var
    StorageService : TAmazonStorageService;
    imgSave    : TImage;
    img_stream : TBytesStream;
    Response : TCloudResponseInfo;
begin
    try
        StorageService := TAmazonStorageService.Create(AmazonConnectionInfo1);
        Response := TCloudResponseInfo.Create;

        img_stream := TBytesStream.Create;
        imgSave    := TImage.Create(nil);
        if StorageService.GetObject('comboiofotos', vImgName, img_stream, Response) then
        begin
          imgSave.Bitmap.LoadFromStream(img_stream);
          imgSave.Bitmap.SaveToFile(vPath)
        end
        else
            showmessage('Erro ao buscar objeto: ' + Response.StatusMessage);

    finally
        imgSave.DisposeOf;
        Response.DisposeOf;
        img_stream.DisposeOf;
        StorageService.DisposeOf;
    end;
end;


procedure TfrmMovLocalEstoque.SearchEditButton1Click(Sender: TObject);
begin
  frmCadProdutos := TfrmCadProdutos.Create(Self);
  try
    frmCadProdutos.ShowModal;
  finally
    vIdProduto      := dmdb.TProdutosid.AsString;
    edtNomeFiltro.Text := dmdb.TProdutosnome.AsString;
  end;
end;

procedure TfrmMovLocalEstoque.SearchEditButton2Click(Sender: TObject);
begin
  frmCentroCusto := TfrmCentroCusto.Create(Self);
  try
    frmCentroCusto.ShowModal;
  finally
    edtCentroCustoOriF.Text := dmdb.TCentroCustonome.AsString;
    vIdCerntroCusto         := dmDB.TCentroCustoid.AsString;
    CarregaLocalEstoque(vIdCerntroCusto);
  end;
end;

procedure TfrmMovLocalEstoque.SearchEditButton3Click(Sender: TObject);
begin
  frmCentroCusto := TfrmCentroCusto.Create(Self);
  try
    frmCentroCusto.ShowModal;
  finally
    vIdCerntroCusto       := dmDB.TCentroCustoid.AsString;
    edtCentroCusto1.Text  := dmDB.TCentroCustonome.AsString;
    CarregaLocalEstoque(vIdCerntroCusto);
  end;
end;

procedure TfrmMovLocalEstoque.CarregaLocalEstoque(vIdCen: string);
var
 vQry : TFDQuery;
begin
 vQry := TFDQuery.Create(nil);
 vQry.Connection := dmDB.FDConPG;
 cbxBombaF.Items.Clear;
 cbxBombaF.Items.Add('Todas');
 cbxBomba.Items.Clear;
 cbxBomba.Items.Add('Todas');
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
     cbxBomba.Items.AddObject(vQry.FieldByName('nome').AsString,
      TObject(vQry.FieldByName('id').AsInteger));
     vQry.Next;
   end;
 end;
 cbxBombaF.ItemIndex :=0;
 cbxBomba.ItemIndex :=0;
 vQry.Free;
end;

procedure TfrmMovLocalEstoque.cbxBombaChange(Sender: TObject);
begin
 if cbxBomba.ItemIndex>-1 then
  vIdLocalEstoque := IntToStr(Integer(cbxBomba.Items.Objects[cbxBomba.ItemIndex]));
end;

procedure TfrmMovLocalEstoque.cbxBombaClick(Sender: TObject);
begin
 if edtCentroCustoOriF.Text.Length=0 then
 begin
  MyShowMessage('Selecione o Centro de Custo antes de selecionar o Local de Estoque!',false);
  Exit;
 end;
end;

procedure TfrmMovLocalEstoque.cbxBombaFChange(Sender: TObject);
begin
 if cbxBombaF.ItemIndex>-1 then
  vIdLocalEstoque := IntToStr(Integer(cbxBombaF.Items.Objects[cbxBombaF.ItemIndex]));
end;

procedure TfrmMovLocalEstoque.cbxBombaFClick(Sender: TObject);
begin
 if edtCentroCusto1.Text.Length=0 then
 begin
  MyShowMessage('Selecione o Centro de Custo antes de selecionar o Local de Estoque!',false);
  Exit;
 end;
end;

procedure TfrmMovLocalEstoque.GerarLista;
var
 item   : TListViewItem;
 txt    : TListItemText;
 txtH   : TListItemPurpose;
 img    : TListItemImage;
 URL,urlInicio,urlFim: string;
 StorageService : TAmazonStorageService;
 imgCarregaImagem : TImage;
 Response : TCloudResponseInfo;
 vLayout  : TLayout;
 i:integer;
begin
 url := 'https://comboiodemo.s3.sa-east-1.amazonaws.com/';
 ListaFotos.Items.Clear;
 dmDB.TMovLocalEstoque.First;
 ListaFotos.BeginUpdate;
 if vLayout <>nil then
  vLayout.free;
 vLayout  := TLayout.Create(ListaFotos);
 BindSourceDB1.DataSet :=nil;
 TThread.CreateAnonymousThread(
 procedure
 begin
    TThread.Synchronize(TThread.CurrentThread,
    procedure()
    begin
     recAguarde.Visible      := true;
     ListaFotos.BeginUpdate;
    end);
     I:=0;
     while not dmDB.TMovLocalEstoque.eof do
     begin
       item := ListaFotos.Items.Add;
       with TfrmMovLocalEstoque do
       begin
         with item  do
         begin
           txt      := TListItemText(Objects.FindDrawable('Text1'));
           txt.TagString := dmDB.TMovLocalEstoqueid.AsString;

           img := TListItemImage(Objects.FindDrawable('Image5'));
           img.Bitmap := frmPrincipal.imgCentroCusto.Bitmap;
           txt      := TListItemText(Objects.FindDrawable('Text7'));
           txt.Text := 'Centro Custo Origem';
           txt      := TListItemText(Objects.FindDrawable('Text6'));
           txt.Text := dmDB.TMovLocalEstoquecentrocustoorigem.AsString;

           img := TListItemImage(Objects.FindDrawable('Image8'));
           img.Bitmap := frmPrincipal.imgCentroCusto.Bitmap;
           txt      := TListItemText(Objects.FindDrawable('Text9'));
           txt.Text := 'Centro Custo Destino';
           txt      := TListItemText(Objects.FindDrawable('Text10'));
           txt.Text := dmDB.TMovLocalEstoquecentrocustoDestino.AsString;

           img := TListItemImage(Objects.FindDrawable('Image35'));
           img.Bitmap := frmPrincipal.imgComboio.Bitmap;
           txt      := TListItemText(Objects.FindDrawable('Text37'));
           txt.Text := 'Local Origem';
           txt      := TListItemText(Objects.FindDrawable('Text36'));
           txt.Text := dmDB.TMovLocalEstoquelocalorigem.AsString;

           img := TListItemImage(Objects.FindDrawable('Image11'));
           img.Bitmap := frmPrincipal.imgComboio.Bitmap;
           txt      := TListItemText(Objects.FindDrawable('Text12'));
           txt.Text := 'Local Destino';
           txt      := TListItemText(Objects.FindDrawable('Text13'));
           txt.Text := dmDB.TMovLocalEstoquelocaldestino.AsString;

           txt      := TListItemText(Objects.FindDrawable('Text14'));
           txt.Text := 'Totalizador Inicial';

           txt      := TListItemText(Objects.FindDrawable('Text15'));
           txt.Text := 'Totalizador Final';

           img := TListItemImage(Objects.FindDrawable('Image38'));
           img.Bitmap := frmPrincipal.imgEdit.Bitmap;
           txt      := TListItemText(Objects.FindDrawable('Text41'));
           txt.Text := 'Editar';

           img := TListItemImage(Objects.FindDrawable('Image39'));
           img.Bitmap := frmPrincipal.imgDelete.Bitmap;
           txt      := TListItemText(Objects.FindDrawable('Text40'));
           txt.Text := 'Deletar';

           txt      := TListItemText(Objects.FindDrawable('Text19'));
           txt.Text := 'Total Tranferido:';
           txt      := TListItemText(Objects.FindDrawable('Text18'));
           txt.Text := dmDB.TMovLocalEstoqueqtde.AsString;

           img := TListItemImage(Objects.FindDrawable('Image32'));
           img.Bitmap := frmPrincipal.imgDowloads.Bitmap;

           img := TListItemImage(Objects.FindDrawable('Image33'));
           img.Bitmap := frmPrincipal.imgDowloads.Bitmap;

           if (dmDB.TMovLocalEstoqueimg.AsString.Length>0) and
           (dmDB.TMovLocalEstoqueimgsyncs3.AsInteger=1) then
           begin
             TThread.Synchronize(TThread.CurrentThread,
             procedure()
             begin
              urlInicio := dmDB.TMovLocalEstoqueimg.AsString;
              try
               imgCarregaImagem:= TImage.Create(vLayout);
               imgCarregaImagem.Name := 'Tranferencia_FotoInicio_'+dmDB.TMovLocalEstoqueid.asstring;
               imgCarregaImagem.Bitmap.LoadFromUrl(urlInicio);
               img := TListItemImage(Objects.FindDrawable('Image2'));
               img.Bitmap    := imgCarregaImagem.Bitmap;
               img.TagString := dmDB.TMovLocalEstoqueimg.AsString;
              except
               on E : Exception do
                ShowMessage('Erro ao carregar :'+urlInicio+#13+
                 E.Message)
              end;
             end);
           end
           else
           begin
             img := TListItemImage(Objects.FindDrawable('Image2'));
             img.Bitmap := frmPrincipal.imgNoImage.Bitmap;
           end;

           if (dmDB.TMovLocalEstoqueimgfim.AsString.Length>0) and
           (dmDB.TMovLocalEstoqueimgsyncs3.AsInteger=1) then
           begin
             TThread.Synchronize(TThread.CurrentThread,
             procedure()
             begin
              urlFim := dmDB.TMovLocalEstoqueimgfim.AsString;
              try
               imgCarregaImagem:= TImage.Create(vLayout);
               imgCarregaImagem.Name := 'Tranferencia_FotoFim_'+dmDB.TMovLocalEstoqueid.asstring;
               imgCarregaImagem.Bitmap.LoadFromUrl(urlFim);
               img := TListItemImage(Objects.FindDrawable('Image3'));
               img.Bitmap    := imgCarregaImagem.Bitmap;
               img.TagString := dmDB.TMovLocalEstoqueimgfim.AsString;
              except
               on E : Exception do
                ShowMessage('Erro ao carregar :'+urlFim+#13+
                 E.Message)
              end;
             end);
           end
           else
           begin
             img := TListItemImage(Objects.FindDrawable('Image3'));
             img.Bitmap := frmPrincipal.imgNoImage.Bitmap;
           end;
         end;
       end;
       inc(I);
       dmDB.TMovLocalEstoque.Next;
     end;
     TThread.Synchronize(TThread.CurrentThread,
     procedure()
     begin
      recAguarde.Visible      := false;
      MyShowMessage('Lista Carregada com Sucesso!',false);
      lblFoterCout1.Text := intToStr(I);
      ListaFotos.EndUpdate;
      if ListaFotos.items.Count>0 then
        ListaFotos.ItemIndex :=0;
     end);
     BindSourceDB1.DataSet:= dmDB.TMovLocalEstoque;
 end).Start;
end;


end.

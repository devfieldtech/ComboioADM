unit UStartBomba;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, FMX.Objects, FMX.TabControl, FMX.Layouts,
  FMX.TreeView, FMX.MultiView, System.Actions, FMX.ActnList, FMX.Ani,
  FMX.Effects, FMX.Filter.Effects, System.Rtti, FMX.Grid.Style, FMX.ScrollBox,
  FMX.Grid, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope, FMX.ListBox, FMX.DateTimeCtrls,
  System.Bluetooth, System.Bluetooth.Components,System.Threading,FireDAC.Comp.Client,
  FMX.EditBox, FMX.SpinBox, FMX.Memo,IdHTTP,System.Json.writers,System.Json.Readers,System.JSON.Types,
  Rest.Json,System.JSON, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, Data.Bind.ObjectScope,
  REST.Client, IPPeerClient,REST.Types,FMX.VirtualKeyboard,FMX.Platform,
  IdHashMessageDigest,System.ImageList,
  FMX.ImgList, FMX.Media, System.Sensors, System.Sensors.Components,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.Gestures, FMX.NumberBox, FMX.ListView, FMX.MediaLibrary.Actions,FMX.Surfaces,
  FMX.StdActns,Soap.EncdDecd, FMX.ExtCtrls, UCadPadrao, FireDAC.Stan.Async, FireDAC.DApt,
  Data.Cloud.CloudAPI, Data.Cloud.AmazonAPI,FMX.BitmapHelper,windows,ShellApi,
  FMX.Platform.Win;
type
  TfrmSatrtDiario = class(TfrmCadPadrao)
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    btnExcel: TRectangle;
    Image11: TImage;
    Label8: TLabel;
    layTipoReport: TLayout;
    Rectangle3: TRectangle;
    Layout10: TLayout;
    Layout20: TLayout;
    btnSemFoto: TRectangle;
    Label32: TLabel;
    Image15: TImage;
    btnComFoto: TRectangle;
    Label33: TLabel;
    Image16: TImage;
    ToolBar50552: TToolBar;
    Rectangle16: TRectangle;
    Label36: TLabel;
    Image17: TImage;
    Label4: TLabel;
    edtCentroCustof: TEdit;
    ClearEditButton1: TClearEditButton;
    SearchEditButton1: TSearchEditButton;
    SearchEditButton2: TSearchEditButton;
    cbxBombaF: TComboBox;
    GroupBox1: TGroupBox;
    Label25: TLabel;
    Label27: TLabel;
    edtDataInicio: TDateEdit;
    edtDataFim: TDateEdit;
    SaveDialog1: TSaveDialog;
    btnRepConsumo: TRectangle;
    Image10: TImage;
    Label7: TLabel;
    tbiConf: TTabItem;
    Rectangle2: TRectangle;
    Label42: TLabel;
    imgVoltar: TImage;
    imgAlerta: TImage;
    imgSemAlerta: TImage;
    recConf: TRectangle;
    Image18: TImage;
    Layout1: TLayout;
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
    Rectangle4: TRectangle;
    ListaFotos: TListView;
    imgData: TImage;
    imgComboio: TImage;
    imgCombustivel: TImage;
    imgAux: TImage;
    ToolBar5: TToolBar;
    lblFoterCout1: TLabel;
    Label6: TLabel;
    edtCentroCusto1: TEdit;
    ClearEditButton2: TClearEditButton;
    SearchEditButton3: TSearchEditButton;
    Label5: TLabel;
    cbxBombaF1: TComboBox;
    Label9: TLabel;
    Button1: TButton;
    Image1: TImage;
    AmazonConnectionInfo1: TAmazonConnectionInfo;
    recAguarde: TRectangle;
    Label43: TLabel;
    btnConferencia: TRectangle;
    Image9: TImage;
    Label10: TLabel;
    SaveDialog2: TSaveDialog;
    Layout14: TLayout;
    Rectangle7: TRectangle;
    Layout15: TLayout;
    Label11: TLabel;
    Label12: TLabel;
    edtData: TDateEdit;
    edtHora: TTimeEdit;
    layBuscaMaquina: TLayout;
    Rectangle5: TRectangle;
    Layout9: TLayout;
    Layout34: TLayout;
    edtLocalEstoque: TEdit;
    EditButton1: TEditButton;
    ClearEditButton3: TClearEditButton;
    layCombustivel: TLayout;
    Rectangle6: TRectangle;
    Layout16: TLayout;
    Label14: TLabel;
    edtCombustivel: TEdit;
    EditButton4: TEditButton;
    ClearEditButton4: TClearEditButton;
    LayLitrosIni: TLayout;
    Rectangle18: TRectangle;
    Layout41: TLayout;
    Label20: TLabel;
    edtLitros: TEdit;
    Layout2: TLayout;
    btnAbreImgInicial: TRectangle;
    Layout13: TLayout;
    Rectangle23: TRectangle;
    ImgMnuTotalIni: TImage;
    Label17: TLabel;
    Layout8: TLayout;
    imgChekStart: TImage;
    btnImgStop: TRectangle;
    Layout17: TLayout;
    Label18: TLabel;
    Rectangle24: TRectangle;
    ImgMnuTotalFim: TImage;
    Layout3: TLayout;
    Image12: TImage;
    imgChekEnd: TImage;
    ShadowEffect1: TShadowEffect;
    edtCentroCusto: TEdit;
    ClearEditButton6: TClearEditButton;
    SearchEditButton4: TSearchEditButton;
    Label13: TLabel;
    Label19: TLabel;
    OpenDialog1: TOpenDialog;
    Label16: TLabel;
    edtLitrosFim: TEdit;
    Label15: TLabel;
    edtHoraFim: TTimeEdit;
    lblTotalLitros: TLabel;
    Label22: TLabel;
    lblVolumeTotal: TLabel;
    procedure btnExcelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Rectangle5Click(Sender: TObject);
    procedure Image12Click(Sender: TObject);
    procedure cbxBombaFChange(Sender: TObject);
    procedure btnBuscarListaClick(Sender: TObject);
    procedure SearchEditButton1Click(Sender: TObject);
    procedure cbxLocalEstoqueClick(Sender: TObject);
    procedure btnBuscarFiltroClick(Sender: TObject);
    procedure btnRepConsumoClick(Sender: TObject);
    procedure Image17Click(Sender: TObject);
    procedure btnComFotoClick(Sender: TObject);
    procedure btnSemFotoClick(Sender: TObject);
    procedure SearchEditButton3Click(Sender: TObject);
    procedure cbxBombaF1Change(Sender: TObject);
    procedure cbxBombaF1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnConferenciaClick(Sender: TObject);
    procedure ListaFotosItemClickEx(const Sender: TObject; ItemIndex: Integer;
      const LocalClickPos: TPointF; const ItemObject: TListItemDrawable);
    procedure btnSalvarClick(Sender: TObject);
    procedure EditButton1Click(Sender: TObject);
    procedure SearchEditButton4Click(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure Rectangle23Click(Sender: TObject);
    procedure Rectangle24Click(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure edtLitrosFimChangeTracking(Sender: TObject);
    procedure edtLitrosChangeTracking(Sender: TObject);
  private
    procedure CarregaLocalEstoque(vIdCen: string);
    procedure GerarLista;
  public
    var
     vIdCerntroCusto, vIdLocalEstoque,vIdStartLista,
     vImgInicio,vImgFim,vImg64StartSend,vImg64StopSend,IdCombustivel: string;
    procedure Filtro;
    procedure Filtro2;
    procedure LimpaCampos;
    procedure DownloadImgS3(vPath,vImgName:String);
    function  Base64FromBitmap(imgBitmap: TBitmap): string;
    function  BitmapFromBase64(const base64: string): TBitmap;
    procedure SomarColunasGrid;
  end;

var
  frmSatrtDiario: TfrmSatrtDiario;

implementation

{$R *.fmx}

uses UdmDB, UdmReport, ULocalEstoque, UCentrodeCusto, UPrincipal;

{ TfrmCadPadrao1 }

function TfrmSatrtDiario.Base64FromBitmap(imgBitmap: TBitmap): string;
var
  Input: TBytesStream;
  Output: TStringStream;
begin
  Input := TBytesStream.Create;
  try
//    imgBitmap.SaveToStream(Input);
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

function TfrmSatrtDiario.BitmapFromBase64(const base64: string): TBitmap;
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
//      Result := TBitmap.Create;
      try
//        Result.LoadFromStream(Output);
      except
//        Result.Free;
        raise;
      end;
    finally
      Output.Free;
    end;
  finally
    Input.Free;
  end;
end;

procedure TfrmSatrtDiario.btnAddClick(Sender: TObject);
begin
 dmDB.TStartBomba.Close;
 dmDB.TStartBomba.Open;
 dmdb.TStartBomba.Insert;
 LimpaCampos;
 MudarAba(tbiCad,sender);
 inherited;
end;

procedure TfrmSatrtDiario.btnBuscarFiltroClick(Sender: TObject);
begin
 if edtCentroCustof.Text.Length=0 then
 begin
   MyShowMessage('Informe o centro de Custo!',false);
   Exit;
 end;
  Filtro;
end;

procedure TfrmSatrtDiario.btnBuscarListaClick(Sender: TObject);
begin
 Filtro;
end;

procedure TfrmSatrtDiario.btnComFotoClick(Sender: TObject);
begin
 dmReport.ppLblPeriodoStart.Text := 'De '+edtDataInicio.Text+' Ate '+edtDataFim.Text;
 BindSourceDB1.DataSet:= nil;
 dmReport.ppRepStartBombaFoto.PrintReport;
 BindSourceDB1.DataSet:= dmDB.TstartBomba;
end;

procedure TfrmSatrtDiario.btnConferenciaClick(Sender: TObject);
begin
 MudarAba(tbiConf,sender)
end;

procedure TfrmSatrtDiario.btnEditarClick(Sender: TObject);
begin
 dmDB.TStartBomba.Filtered := false;
 dmDB.TStartBomba.Filter   := 'id='+vIdStartLista;
 dmDB.TStartBomba.Filtered := true;
 dmDB.TStartBomba.Edit;
 edtCentroCusto.Text       := dmDB.TStartBombacentrocusto.AsString;
 vIdCerntroCusto           := dmDB.TStartBombaidcentrocusto.AsString;
 edtLocalEstoque.Text      := dmDB.TStartBombalocalestoque.AsString;
 vIdLocalEstoque           := dmDB.TStartBombaidlocalestoque.AsString;
 edtLocalEstoque.text      := dmDB.TStartBombalocalestoque.AsString;
 edtLitros.text            := dmDB.TStartBombavolumelitrosini.AsString;
 edtLitrosFim.text         := dmDB.TStartBombavolumelitrosfim.AsString;
 edtHora.Time              := dmDB.TStartBombahorastart.AsDateTime;
 edtHoraFim.Time           := dmDB.TStartBombahoraend.AsDateTime;
 edtData.Date              := dmDB.TStartBombadataastart.AsDateTime;
 lblTotalLitros.Text       := dmDB.TStartBombavolumeutilizado.AsString;
 if dmDB.TStartBombaimgstart.AsString.Length>0 then
   ImgMnuTotalIni.Bitmap.LoadFromUrl(dmDB.TStartBombaimgstart.AsString);
 if dmDB.TStartBombaimgend.AsString.Length>0 then
   ImgMnuTotalFim.Bitmap.LoadFromUrl(dmDB.TStartBombaimgend.AsString);
 MudarAba(tbiCad,sender);
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

procedure TfrmSatrtDiario.btnRepConsumoClick(Sender: TObject);
begin
 dmReport.lblPeriodoStartSemFoto.Text := 'De '+edtDataInicio.Text+' Ate '+edtDataFim.Text;
 BindSourceDB1.DataSet:= nil;
 dmReport.ppRepStartBomba.PrintReport;
 BindSourceDB1.DataSet:= dmDB.TstartBomba;
end;

procedure TfrmSatrtDiario.btnSalvarClick(Sender: TObject);
var
 vTotalizadorIni,
 vTotalizadorFim:Double;
begin
 if edtLocalEstoque.Text.Length=0 then
 begin
   ShowMessage('Informe a Bomba!!');
   edtLocalEstoque.SetFocus;
   Exit;
 end;
 if(ImgMnuTotalIni.Bitmap.IsEmpty)then
 begin
   ShowMessage('Foto do Inicio é Obrigatoria!!');
   Exit;
 end;
 if(edtLitros.text.Length=0)or (edtLitros.text='0')then
 begin
  ShowMessage('Totalizado Inicial deve ser informado!');
  exit;
 end;
 if(edtLitros.Text.Length>0)and(edtLitrosFim.Text.Length>0)then
 begin
   lblTotalLitros.Text :=
    FloatToStr(strtoFloat(edtLitrosFim.Text)-strtoFloat(edtLitros.Text))
 end;
  vTotalizadorIni := StrToFloat(StringReplace(edtLitros.Text,'.','',[rfReplaceAll]));
  vTotalizadorFim := StrToFloat(StringReplace(edtLitrosFim.Text,'.','',[rfReplaceAll]));

  dmdb.TStartBombaidlocalestoque.AsString         := vIdLocalEstoque;
  dmdb.TStartBombadataastart.AsString             := edtData.Text;
  dmdb.TStartBombahorastart.AsString              := edtHora.Text;
  dmdb.TStartBombavolumelitrosIni.AsFloat         := vTotalizadorIni;
  dmdb.TStartBombavolumelitrosfim.AsFloat         := vTotalizadorFim;
  dmdb.TStartBombahoraend.AsString                := edtHoraFim.Text;
  dmdb.TStartBombavolumelitrosini.AsString        := edtLitros.Text;
  dmdb.TStartBombavolumelitrosfim.AsString        := edtLitrosFim.Text;
  try
    dmdb.TStartBomba.ApplyUpdates(-1);
    MyShowMessage('Registro Atualizado com Sucesso!',false);
    Filtro2;
    GerarLista;
    MudarAba(tbiConf,sender)
  except
    on E : Exception do
     ShowMessage('Erro :'+E.Message)
  end;
end;

procedure TfrmSatrtDiario.btnSemFotoClick(Sender: TObject);
begin
 dmReport.lblPeriodoStartSemFoto.Text := 'De '+edtDataInicio.Text+' Ate '+edtDataFim.Text;
 BindSourceDB1.DataSet:= nil;
 dmReport.ppRepStartBomba.PrintReport;
 BindSourceDB1.DataSet:= dmDB.TstartBomba;
end;

procedure TfrmSatrtDiario.Button1Click(Sender: TObject);
begin
 if edtCentroCusto1.Text.Length=0 then
 begin
   MyShowMessage('Informe o centro de Custo!',false);
   Exit;
 end;
 Filtro2;
 GerarLista;
end;

procedure TfrmSatrtDiario.GerarLista;
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
 I:integer;
begin
 url := 'https://comboiodemo.s3.sa-east-1.amazonaws.com/';
 ListaFotos.Items.Clear;
 dmDB.TStartBomba.First;
 ListaFotos.BeginUpdate;
 if vLayout <>nil then
  vLayout.free;
 vLayout  := TLayout.Create(ListaFotos);
 BindSourceDB1.DataSet :=nil;
// TThread.CreateAnonymousThread(
// procedure
// begin
//    TThread.Synchronize(TThread.CurrentThread,
//    procedure()
//    begin
     recAguarde.Visible      := true;
     ListaFotos.BeginUpdate;
//    end);
     I:=0;
     while not dmDB.TStartBomba.eof do
     begin
       item := ListaFotos.Items.Add;
       with TfrmSatrtDiario do
       begin
         with item  do
         begin
           txt      := TListItemText(Objects.FindDrawable('Text1'));
           txt.Text := dmDB.TStartBombalocalestoque.AsString;
           txt.TagString := dmDB.TStartBombaid.AsString;

           txt      := TListItemText(Objects.FindDrawable('Text14'));
           txt.Text := 'Totalizador Inicial';
           txt      := TListItemText(Objects.FindDrawable('Text20'));
           txt.Text := dmDB.TStartBombavolumelitrosini.AsString;

           txt      := TListItemText(Objects.FindDrawable('Text15'));
           txt.Text := 'Totalizador Final';
           txt      := TListItemText(Objects.FindDrawable('Text21'));
           txt.Text := dmDB.TStartBombavolumelitrosfim.AsString;

           img := TListItemImage(Objects.FindDrawable('Image32'));
           img.Bitmap := frmPrincipal.imgDow.Bitmap;

           img := TListItemImage(Objects.FindDrawable('Image33'));
           img.Bitmap := frmPrincipal.imgDow.Bitmap;

           img := TListItemImage(Objects.FindDrawable('Image38'));
           img.Bitmap := frmPrincipal.imgEdit.Bitmap;
           txt      := TListItemText(Objects.FindDrawable('Text41'));
           txt.Text := 'Editar';

           img := TListItemImage(Objects.FindDrawable('Image39'));
           img.Bitmap := frmPrincipal.imgDelete.Bitmap;
           txt      := TListItemText(Objects.FindDrawable('Text40'));
           txt.Text := 'Deletar';

           img := TListItemImage(Objects.FindDrawable('Image5'));
           img.Bitmap := frmPrincipal.imgStart.Bitmap;
           txt      := TListItemText(Objects.FindDrawable('Text7'));
           txt.Text := 'Inicio';
           txt      := TListItemText(Objects.FindDrawable('Text6'));
           txt.Text := dmDB.TStartBombadataastart.AsString;

           img := TListItemImage(Objects.FindDrawable('Image8'));
           img.Bitmap := frmPrincipal.imgEnd.Bitmap;
           txt      := TListItemText(Objects.FindDrawable('Text9'));
           txt.Text := 'Fim';
           txt      := TListItemText(Objects.FindDrawable('Text10'));
           txt.Text := dmDB.TStartBombadataastart.AsString;

           img := TListItemImage(Objects.FindDrawable('Image35'));
           img.Bitmap := frmPrincipal.imgHora.Bitmap;
           txt      := TListItemText(Objects.FindDrawable('Text37'));
           txt.Text := 'Hora Inicio:';
           txt      := TListItemText(Objects.FindDrawable('Text36'));
           txt.Text := dmDB.TStartBombahorastart.AsString;


           img := TListItemImage(Objects.FindDrawable('Image11'));
           img.Bitmap := frmPrincipal.imgHora.Bitmap;
           txt      := TListItemText(Objects.FindDrawable('Text12'));
           txt.Text := 'Hora Fim:';
           txt      := TListItemText(Objects.FindDrawable('Text13'));
           txt.Text := dmDB.TStartBombahoraend.AsString;

           if (dmDB.TStartBombaimgstart.AsString.Length>0) and
           (dmDB.TStartBombaimgsyncs3.AsInteger=1) then
           begin
//             TThread.Synchronize(TThread.CurrentThread,
//             procedure()
//             begin
              urlInicio := dmDB.TStartBombaimgstart.AsString;
              try
               imgCarregaImagem:= TImage.Create(vLayout);
               imgCarregaImagem.Name := 'Start_FotoInicio_'+dmDB.TStartBombaid.asstring;
               imgCarregaImagem.Bitmap.LoadFromUrl(urlInicio);
               img := TListItemImage(Objects.FindDrawable('Image2'));
               img.Bitmap    := imgCarregaImagem.Bitmap;
               img.TagString := dmDB.TStartBombaimgstart.AsString;
              except
               on E : Exception do
                ShowMessage('Erro ao carregar :'+urlInicio+#13+
                 E.Message)
              end;
//             end);
           end
           else
           begin
             img := TListItemImage(Objects.FindDrawable('Image2'));
             img.Bitmap := frmPrincipal.imgNoImage.Bitmap;
             img.Width  := 50;
             img.Height := 50;
           end;

           if (dmDB.TStartBombaimgend.AsString.Length>0) and
           (dmDB.TStartBombaimgsyncs3.AsInteger=1) then
           begin
//             TThread.Synchronize(TThread.CurrentThread,
//             procedure()
//             begin
              urlFim := dmDB.TStartBombaimgend.AsString;
              try
               imgCarregaImagem:= TImage.Create(vLayout);
               imgCarregaImagem.Name := 'Start_FotoFim_'+dmDB.TStartBombaid.asstring;
               imgCarregaImagem.Bitmap.LoadFromUrl(urlFim);
               img := TListItemImage(Objects.FindDrawable('Image3'));
               img.Bitmap    := imgCarregaImagem.Bitmap;
               img.TagString := dmDB.TStartBombaimgend.AsString;
              except
               on E : Exception do
                ShowMessage('Erro ao carregar :'+urlFim+#13+
                 E.Message)
              end;
//             end);
           end
           else
           begin
             img := TListItemImage(Objects.FindDrawable('Image3'));
             img.Bitmap := frmPrincipal.imgNoImage.Bitmap;
             img.Width  := 50;
             img.Height := 50;
           end;
         end;
       end;
       INC(I);
       dmDB.TStartBomba.Next;
     end;
//     TThread.Synchronize(TThread.CurrentThread,
//     procedure()
//     begin
      recAguarde.Visible      := false;
      MyShowMessage('Lista Carregada com Sucesso!',false);
      lblFoterCout1.Text := intToStr(I);
      ListaFotos.EndUpdate;
      if ListaFotos.items.Count>0 then
        ListaFotos.ItemIndex :=0;
//     end);
     BindSourceDB1.DataSet:= dmDB.TstartBomba;
// end).Start;
end;


procedure TfrmSatrtDiario.CarregaLocalEstoque(vIdCen: string);
var
 vQry : TFDQuery;
begin
 vQry := TFDQuery.Create(nil);
 vQry.Connection := dmDB.FDConPG;
 cbxBombaF.Items.Clear;
 cbxBombaF.Items.Add('Todas');
 cbxBombaF1.Items.Clear;
 cbxBombaF1.Items.Add('Todas');
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
     cbxBombaF1.Items.AddObject(vQry.FieldByName('nome').AsString,
      TObject(vQry.FieldByName('id').AsInteger));
     vQry.Next;
   end;
 end;
 cbxBombaF1.ItemIndex :=0;
 cbxBombaF.ItemIndex :=0;
 vQry.Free;
end;

procedure TfrmSatrtDiario.cbxBombaF1Change(Sender: TObject);
begin
 if cbxBombaF1.ItemIndex>-1 then
  vIdLocalEstoque := IntToStr(Integer(cbxBombaF1.Items.Objects[cbxBombaF1.ItemIndex]));
end;

procedure TfrmSatrtDiario.cbxBombaF1Click(Sender: TObject);
begin
 if edtCentroCusto1.Text.Length=0 then
 begin
  MyShowMessage('Selecione o Centro de Custo antes de selecionar o Local de Estoque!',false);
  Exit;
 end;
end;

procedure TfrmSatrtDiario.cbxBombaFChange(Sender: TObject);
begin
 if cbxBombaF.ItemIndex>-1 then
  vIdLocalEstoque := IntToStr(Integer(cbxBombaF.Items.Objects[cbxBombaF.ItemIndex]));
end;

procedure TfrmSatrtDiario.cbxLocalEstoqueClick(Sender: TObject);
begin
 if edtCentroCustoF.Text.Length=0 then
 begin
  MyShowMessage('Selecione o Centro de Custo antes de selecionar o Local de Estoque!',false);
  Exit;
 end;
end;

procedure TfrmSatrtDiario.DownloadImgS3(vPath, vImgName: String);
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
        if StorageService.GetObject('comboiofotos', vImgName+'.png', img_stream, Response) then
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

procedure TfrmSatrtDiario.EditButton1Click(Sender: TObject);
begin
 if edtCentroCusto.Text.Length=0 then
 begin
   MyShowMessage('Informe o Centro de Custo Antes!',false);
   Exit;
 end
 else
 begin
  frmAuxLocalEstoque := TfrmAuxLocalEstoque.Create(Self);
  try
    frmAuxLocalEstoque.vFiltro :=' and idcentrocusto='+vIdCerntroCusto;
    frmAuxLocalEstoque.ShowModal;
  finally
    vIdLocalEstoque       := dmDB.TLocalEstoqueid.AsString;
    edtLocalEstoque.Text  := dmDB.TLocalEstoquenome.AsString;
    IdCombustivel         := dmDB.TLocalEstoqueidcombustivel.AsString;
    edtcombustivel.Text   := dmDB.TLocalEstoquecombustivel.AsString;
  end;
 end;
end;

procedure TfrmSatrtDiario.edtLitrosChangeTracking(Sender: TObject);
begin
 if(edtLitros.Text.Length>0)and(edtLitrosFim.Text.Length>0)then
 begin
   lblTotalLitros.Text :=
    FloatToStr(strtoFloat(edtLitrosFim.Text)-strtoFloat(edtLitros.Text))
 end;
end;

procedure TfrmSatrtDiario.edtLitrosFimChangeTracking(Sender: TObject);
begin
 if(edtLitros.Text.Length>0)and(edtLitrosFim.Text.Length>0)then
 begin
   lblTotalLitros.Text :=
    FloatToStr(strtoFloat(edtLitrosFim.Text)-strtoFloat(edtLitros.Text))
 end;
end;

procedure TfrmSatrtDiario.Filtro;
var
 vFiltro:string;
begin
 vFiltro := '';
 if cbxBombaF.ItemIndex>0 then
  vFiltro := vFiltro+' and l.id='+vIdLocalEstoque;
 if edtCentroCusto.Text.Length>-1 then
  vFiltro := vFiltro+' and s.idcentrocusto ='+vIdCerntroCusto;
 vFiltro  := vFiltro+' and s.dataastart between '+FormatDateTime('yyyy-mm-dd',edtDataInicio.Date).QuotedString+' and '+
 FormatDateTime('yyyy-mm-dd',edtDataFim.Date).QuotedString;
 dmDB.AbreStartBomba(vFiltro);
 SomarColunasGrid;
end;

procedure TfrmSatrtDiario.SomarColunasGrid;
var
  Sum : Double;
  Val : Double;
  I   : Integer;
begin
  Sum := 0;
  val := 0;
  I   := 0;
  for I := 0 to StringGrid1.RowCount-1 do
  begin
   if TryStrToFloat(StringGrid1.Cells[5,I],Val) then
    Sum := Sum + Val;
  end;
  if I>0 then
  begin
    lblVolumeTotal.Text          := 'Volume Utilizado : '+FormatFloat('####,##.00',(Sum));
  end
  else
  begin
    lblVolumeTotal.Text          := 'Volume Utilizado : 0,00';
  end;
end;

procedure TfrmSatrtDiario.Filtro2;
var
 vFiltro:string;
begin
 vFiltro := '';
 if cbxBombaF1.ItemIndex>0 then
  vFiltro := vFiltro+' and l.id='+vIdLocalEstoque;
 if edtCentroCusto1.Text.Length>-1 then
  vFiltro := vFiltro+' and s.idcentrocusto ='+vIdCerntroCusto;
 vFiltro  := vFiltro+' and s.dataastart between '+FormatDateTime('yyyy-mm-dd',edtDataInicio1.Date).QuotedString+' and '+
 FormatDateTime('yyyy-mm-dd',edtDataFim1.Date).QuotedString;
 dmDB.AbreStartBomba(vFiltro);
 SomarColunasGrid;
end;

procedure TfrmSatrtDiario.FormShow(Sender: TObject);
begin
  StringGrid1.RowCount :=0;
  layTipoReport.Visible := false;
  inherited;
end;

procedure TfrmSatrtDiario.Image12Click(Sender: TObject);
begin
 layTipoReport.Visible := false;
end;

procedure TfrmSatrtDiario.Image17Click(Sender: TObject);
begin
 layTipoReport.Visible := false;
end;

procedure TfrmSatrtDiario.LimpaCampos;
begin
 edtCentroCusto.Text   :='';
 edtLocalEstoque.Text  :='';
 edtCombustivel.Text   :='';
 edtLitros.Text        :='';
 edtLitrosFim.Text     :='';
 ImgMnuTotalIni.Bitmap := nil;
 ImgMnuTotalFim.Bitmap := nil;
 tbPrincipal.ActiveTab := tbiCad;
end;

procedure TfrmSatrtDiario.ListaFotosItemClickEx(const Sender: TObject;
  ItemIndex: Integer; const LocalClickPos: TPointF;
  const ItemObject: TListItemDrawable);
var
 url:String;
begin
  url := 'https://comboiodemo.s3.sa-east-1.amazonaws.com/';

  vIdStartLista   := TAppearanceListViewItem(ListaFotos.Selected).Objects.FindObjectT<TListItemText>
   ('Text1').TagString;

  vImgInicio      := TAppearanceListViewItem(ListaFotos.Selected).Objects.FindObjectT<TListItemImage>
   ('Image2').TagString;

  vImgFim             := TAppearanceListViewItem(ListaFotos.Selected).Objects.FindObjectT<TListItemImage>
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
               PChar(vImgInicio),//'http://www.showdelphi.com.br',
               nil,
               nil,
               SW_SHOWMAXIMIZED);

//          DownloadImgS3(SaveDialog2.FileName,vImgInicio);
//          MyShowMessage('Imagem Baixada com sucesso!',false)
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
               PChar(vImgFim),//'http://www.showdelphi.com.br',
               nil,
               nil,
               SW_SHOWMAXIMIZED);
//          DownloadImgS3(SaveDialog2.FileName,vImgFim);
//          MyShowMessage('Imagem Baixada com sucesso!',false)
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
          dmDB.TStartBomba.Filtered := false;
          dmDB.TStartBomba.Filter   := 'id='+vIdStartLista;
          dmDB.TStartBomba.Filtered := true;
          dmDB.TStartBomba.Edit;
          dmDB.TStartBombastatus.AsInteger := -1;
          dmDB.TStartBombaIdUsuarioAlteracao.AsString  := dmDB.vIdUsuarioLogado;
          dmDB.TStartBombaDataAlteracao.AsDateTime     := now;
          dmDB.TStartBombasyncaws.AsInteger            :=0;
          try
            dmDB.TAbastecimento.ApplyUpdates(-1);
            MyShowMessage('Registro Excluido com sucesso!',false);
            Filtro2;
            GerarLista;
          except
           on E : Exception do
            ShowMessage(E.ClassName+' error raised, with message : '+E.Message);
          end;
       end;
     end;
    end;
    if TListItemImage(ItemObject).Name='Image38' then
    begin
      btnEditarClick(sender);
    end;
  end;
end;

procedure TfrmSatrtDiario.Rectangle23Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
   ImgMnuTotalIni.Bitmap.LoadFromFile(OpenDialog1.FileName);
end;

procedure TfrmSatrtDiario.Rectangle24Click(Sender: TObject);
begin
 if OpenDialog1.Execute then
   ImgMnuTotalFim.Bitmap.LoadFromFile(OpenDialog1.FileName);
end;

procedure TfrmSatrtDiario.Rectangle5Click(Sender: TObject);
begin
  layTipoReport.Visible := true;
end;

procedure TfrmSatrtDiario.SearchEditButton1Click(Sender: TObject);
begin
  frmCentroCusto := TfrmCentroCusto.Create(Self);
  try
    frmCentroCusto.ShowModal;
  finally
    vIdCerntroCusto      := dmDB.TCentroCustoid.AsString;
    edtCentroCustof.Text  := dmDB.TCentroCustonome.AsString;
    CarregaLocalEstoque(vIdCerntroCusto);
  end;
end;

procedure TfrmSatrtDiario.SearchEditButton3Click(Sender: TObject);
begin
  frmCentroCusto := TfrmCentroCusto.Create(Self);
  try
    frmCentroCusto.ShowModal;
  finally
    vIdCerntroCusto      := dmDB.TCentroCustoid.AsString;
    edtCentroCusto1.Text  := dmDB.TCentroCustonome.AsString;
    CarregaLocalEstoque(vIdCerntroCusto);
  end;
end;

procedure TfrmSatrtDiario.SearchEditButton4Click(Sender: TObject);
begin
  frmCentroCusto := TfrmCentroCusto.Create(Self);
  try
    frmCentroCusto.ShowModal;
  finally
    vIdCerntroCusto      := dmDB.TCentroCustoid.AsString;
    edtCentroCusto.Text  := dmDB.TCentroCustonome.AsString;
  end;
end;

end.


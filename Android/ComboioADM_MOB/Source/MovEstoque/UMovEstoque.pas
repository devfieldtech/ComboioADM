unit UMovEstoque;

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
  FMX.StdActns,u99Permissions
  {$IF DEFINED(iOS) or DEFINED(ANDROID)}
   ,Androidapi.JNI.Os, Androidapi.Helpers,
   Androidapi.JNI.GraphicsContentViewText,System.Permissions,FMX.DialogService
   {$ENDIF}
    ,Soap.EncdDecd,System.IOUtils;

type
  TfrmMovEstoque = class(TForm)
    layBase: TLayout;
    recPrincipal: TRectangle;
    tbPrincipal: TTabControl;
    tbiLista: TTabItem;
    Rectangle3: TRectangle;
    Layout3: TLayout;
    Layout5: TLayout;
    Layout37: TLayout;
    Rectangle22: TRectangle;
    btnVoltar1: TRectangle;
    Image31: TImage;
    Label4: TLabel;
    Layout38: TLayout;
    btnNovo: TRectangle;
    Image9: TImage;
    Label7: TLabel;
    Rectangle19: TRectangle;
    Layout2: TLayout;
    Layout4: TLayout;
    edtDataF: TDateEdit;
    Label1: TLabel;
    Layout22: TLayout;
    tbiCad: TTabItem;
    TimerMsg: TTimer;
    layTBICad: TLayout;
    Rectangle1: TRectangle;
    Layout6: TLayout;
    Layout7: TLayout;
    Layout67: TLayout;
    Layout39: TLayout;
    Rectangle15: TRectangle;
    Layout40: TLayout;
    btnConfirmarA: TRectangle;
    Image10: TImage;
    Label24: TLabel;
    Rectangle17: TRectangle;
    Image7: TImage;
    Label23: TLabel;
    Layout14: TLayout;
    Rectangle7: TRectangle;
    Layout15: TLayout;
    Label10: TLabel;
    Label3: TLabel;
    edtData: TDateEdit;
    edtHora: TTimeEdit;
    Layout1: TLayout;
    Rectangle18: TRectangle;
    Layout41: TLayout;
    Label20: TLabel;
    edtLitros: TEdit;
    Layout44: TLayout;
    Rectangle20: TRectangle;
    Layout45: TLayout;
    Label34: TLabel;
    Label35: TLabel;
    edtLatitude: TEdit;
    edtLongitude: TEdit;
    laymsg: TLayout;
    RecStatusAcao: TRectangle;
    layBaseMSG: TLayout;
    Layout23: TLayout;
    Layout24: TLayout;
    Layout25: TLayout;
    ShadowEffect14: TShadowEffect;
    layBtnControls: TLayout;
    SEffectBtnConfirm1: TShadowEffect;
    btnConfirmar: TRectangle;
    layBntConfirm: TLayout;
    imgBntConfirm: TImage;
    lblBtnConfirm: TLabel;
    SEffectBtnConfirm: TShadowEffect;
    btnCancel: TRectangle;
    layBtnCancel: TLayout;
    ImgBtnCancel: TImage;
    lblBtnCancel: TLabel;
    SEffectBtnCancel: TShadowEffect;
    lblmsg: TLabel;
    Image8: TImage;
    Layout31: TLayout;
    Rectangle16: TRectangle;
    btnVoltar: TSpeedButton;
    lblPage: TLabel;
    layNewOutros: TLayout;
    Rectangle9: TRectangle;
    ToolBar8: TToolBar;
    Rectangle10: TRectangle;
    Label17: TLabel;
    Layout21: TLayout;
    Layout26: TLayout;
    Rectangle12: TRectangle;
    Layout27: TLayout;
    Layout28: TLayout;
    Label18: TLabel;
    edtOutroProduto: TEdit;
    EditButton3: TEditButton;
    Layout29: TLayout;
    Rectangle14: TRectangle;
    Layout30: TLayout;
    Layout32: TLayout;
    Label26: TLabel;
    edtQtdOutroProduto: TEdit;
    Layout33: TLayout;
    btnConfirmaPluvi: TRectangle;
    Label28: TLabel;
    Image21: TImage;
    Rectangle13: TRectangle;
    Image4: TImage;
    Label19: TLabel;
    btnBuscar: TRectangle;
    LaybtnEntrar: TLayout;
    Label25: TLabel;
    Image11: TImage;
    layBombaOrigem: TLayout;
    Rectangle2: TRectangle;
    Layout9: TLayout;
    Label2: TLabel;
    listaTranferencia: TListView;
    Layout12: TLayout;
    Layout13: TLayout;
    Rectangle5: TRectangle;
    lblCombustivelO: TLabel;
    layBombaDestino: TLayout;
    Rectangle4: TRectangle;
    Layout11: TLayout;
    Layout17: TLayout;
    Label6: TLabel;
    Layout18: TLayout;
    Rectangle8: TRectangle;
    lblCombustivelD: TLabel;
    actAcoes: TActionList;
    actMudarAba: TChangeTabAction;
    AcMudarAbaChart: TAction;
    AcMudarAbaDespesas: TAction;
    AcLeft: TAction;
    AcRigth: TAction;
    tbiImg: TTabItem;
    layImgHorimetro: TLayout;
    Rectangle26: TRectangle;
    VScroll: TVertScrollBox;
    Layout71: TLayout;
    Layout42: TLayout;
    Rectangle21: TRectangle;
    btnVoltaImgInicio: TRectangle;
    Image14: TImage;
    Label31: TLabel;
    btnImg: TRectangle;
    Image17: TImage;
    Label33: TLabel;
    ActionList1: TActionList;
    ActLibrary: TTakePhotoFromLibraryAction;
    ActFoto: TTakePhotoFromCameraAction;
    VertScrollBox1: TVertScrollBox;
    Layout8: TLayout;
    btnAbreImgInicial: TRectangle;
    Layout16: TLayout;
    Rectangle24: TRectangle;
    ImgMnuTotalIni: TImage;
    Label12: TLabel;
    Layout19: TLayout;
    imgChekStart: TImage;
    btnImgStop: TRectangle;
    Layout20: TLayout;
    Label13: TLabel;
    Rectangle25: TRectangle;
    ImgMnuTotalFim: TImage;
    Layout34: TLayout;
    Image5: TImage;
    imgChekEnd: TImage;
    ShadowEffect1: TShadowEffect;
    tbiImgStop: TTabItem;
    LayImgStart: TLayout;
    RecImgStart: TRectangle;
    ImgTanqueFim: TImage;
    btnFotoFim: TRectangle;
    Image1: TImage;
    Label14: TLabel;
    Layout35: TLayout;
    Layout36: TLayout;
    Rectangle28: TRectangle;
    btnVoltarFim: TRectangle;
    Image3: TImage;
    Label15: TLabel;
    Rectangle30: TRectangle;
    Layout10: TLayout;
    Rectangle23: TRectangle;
    edtTotalizadorFinal: TEdit;
    Label11: TLabel;
    Layout46: TLayout;
    RecImgIni: TRectangle;
    imgTanque: TImage;
    btnFotoInicio: TRectangle;
    Image6: TImage;
    Label5: TLabel;
    Layout47: TLayout;
    Rectangle31: TRectangle;
    edtTotalizadorInicial: TEdit;
    Label8: TLabel;
    Rectangle34: TRectangle;
    Layout43: TLayout;
    Layout48: TLayout;
    btnExcluirTranferencia: TRectangle;
    Image13: TImage;
    Label37: TLabel;
    edtLocalDestino: TEdit;
    EditButton1: TEditButton;
    ClearEditButton2: TClearEditButton;
    edtLocalOrigem: TEdit;
    EditButton2: TEditButton;
    ClearEditButton1: TClearEditButton;
    procedure tbPrincipalChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnVoltar1Click(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnExcluirTranferenciaClick(Sender: TObject);
    procedure listaTranferenciaItemClickEx(const Sender: TObject;
      ItemIndex: Integer; const LocalClickPos: TPointF;
      const ItemObject: TListItemDrawable);
    procedure EditButton2Click(Sender: TObject);
    procedure EditButton1Click(Sender: TObject);
    procedure btnConfirmarAClick(Sender: TObject);
    procedure Rectangle17Click(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure ClearEditButton1Click(Sender: TObject);
    procedure ClearEditButton2Click(Sender: TObject);
    procedure btnImgClick(Sender: TObject);
    procedure btnSalvarFotoClick(Sender: TObject);
    procedure btnVoltaImgInicioClick(Sender: TObject);
    procedure btnNovoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btnBuscarMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActFotoDidFinishTaking(Image: TBitmap);
    procedure edtLitrosTyping(Sender: TObject);
    procedure edtTotalizadorFinalTyping(Sender: TObject);
    procedure FormVirtualKeyboardHidden(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure edtTotalizadorFinalEnter(Sender: TObject);
    procedure edtTotalizadorFinalClick(Sender: TObject);
    procedure listaTranferenciaGesture(Sender: TObject;
      const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure btnFotoFimClick(Sender: TObject);
    procedure btnFotoInicioClick(Sender: TObject);
    procedure btnAbreImgInicialClick(Sender: TObject);
    procedure Rectangle25Click(Sender: TObject);
    procedure btnImgStopClick(Sender: TObject);
    procedure edtTotalizadorInicialTyping(Sender: TObject);
    procedure btnHabilitaSyncClick(Sender: TObject);
  private
    vFiltro,vFlagSync,vIdTransferencia :String;
    permissao : T99Permissions;
    foco : TControl;
    procedure MudarAba(ATabItem: TTabItem; sender: TObject);
    procedure GerarLista(vFiltro:string);
    procedure LimpaCampos;
    function BitmapFromBase64(const base64: string): TBitmap;
    function Base64FromBitmapResize(Bitmap: TBitmap): string;
    function Base64FromBitmap(Bitmap: TBitmap): string;
    {$IFDEF ANDROID}
    var Access_Fine_Location, Access_Coarse_Location : string;
    PermissaoCamera, PermissaoReadStorage, PermissaoWriteStorage : string;

    procedure TakePicturePermissionRequestResult(
        Sender: TObject; const APermissions: TArray<string>;
        const AGrantResults: TArray<TPermissionStatus>);

    procedure DisplayMessageCamera(Sender: TObject;
                const APermissions: TArray<string>;
                const APostProc: TProc);

    procedure LibraryPermissionRequestResult(
        Sender: TObject; const APermissions: TArray<string>;
        const AGrantResults: TArray<TPermissionStatus>);

    procedure DisplayMessageLibrary(Sender: TObject;
                const APermissions: TArray<string>;
                const APostProc: TProc);

    procedure DisplayRationale(Sender: TObject;
              const APermissions: TArray<string>; const APostRationaleProc: TProc);

     procedure LocationPermissionRequestResult
                (Sender: TObject; const APermissions: TArray<string>;
                const AGrantResults: TArray<TPermissionStatus>);
    {$ENDIF}

  public
    vAbriImg,vImgCapture,vEditImg:integer;
    vIdLocalOrigem,vIdLocalDestino,vIdProduto ,vImg64Tanque,vImg64TanqueFim,
    vImg64TanqueSend,vImg64TanqueFimSend,vTotalizadorIni,vTotalizadorFim:String;
  end;

var
  frmMovEstoque: TfrmMovEstoque;

implementation

{$R *.fmx}

uses UPrincipal, UDmDB, ULocalEstoque, uFormat;

procedure TfrmMovEstoque.ActFotoDidFinishTaking(Image: TBitmap);
begin
 if vImgCapture=1 then
  imgTanque.Bitmap.Assign(Image);
 if vImgCapture=2 then
  ImgTanqueFim.Bitmap.Assign(Image);
end;

function TfrmMovEstoque.Base64FromBitmap(Bitmap: TBitmap): string;
var
  Input: TBytesStream;
  Output: TStringStream;
begin
  Input := TBytesStream.Create;
  try
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

function TfrmMovEstoque.Base64FromBitmapResize(Bitmap: TBitmap): string;
var
  Input: TBytesStream;
  Output: TStringStream;
begin
  Input := TBytesStream.Create;
  try
    Bitmap.Resize(350,350);
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

function TfrmMovEstoque.BitmapFromBase64(const base64: string): TBitmap;
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

procedure TfrmMovEstoque.btnAbreImgInicialClick(Sender: TObject);
begin
 if vImg64Tanque.Length>0 then
  imgTanque.Bitmap  := BitmapFromBase64(vImg64Tanque)
 else
  imgTanque.Bitmap  := nil;
 MudarAba(tbiImg,sender)
end;

procedure TfrmMovEstoque.btnBuscarClick(Sender: TObject);
begin
 GerarLista('');
end;

procedure TfrmMovEstoque.btnBuscarMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
 TRectangle(sender).Opacity :=1;
end;

procedure TfrmMovEstoque.btnConfirmarAClick(Sender: TObject);
begin
 if edtLocalOrigem.Text.Length=0 then
 begin
   ShowMessage('Informe o Local de Origem!');
   edtLocalOrigem.SetFocus;
   Exit;
 end;
 if edtLocalDestino.Text.Length=0 then
 begin
   ShowMessage('Informe o Local de Destino!');
   edtLocalDestino.SetFocus;
   Exit;
 end;
 
 if (vImg64Tanque.Length=0)then
  begin
  ShowMessage('Foto do Totalizador Inicial é Obrigatoria!!');
  Exit;
 end;
 if (vImg64TanqueFim.Length=0)then
 begin
  ShowMessage('Foto do Totalizador Final é Obrigatoria!!');
  Exit;
 end;
 if(edtTotalizadorInicial.Text.Length=0) then
 begin
  ShowMessage('Informe o Totalizador Inicial!');
  Exit;
 end;
 if(edtTotalizadorFinal.Text.Length=0) then
 begin
  ShowMessage('Informe o Totalizador Final!');
  Exit;
 end;

 dmDB.TMovLocalEstoque.Insert;
 if vImg64Tanque.Length>0 then
 begin
   dmdb.TMovLocalEstoqueimg.AsString              := vImg64Tanque;
   dmdb.TMovLocalEstoqueimgStartSend.AsString     := vImg64TanqueSend;
 end;
 if vImg64TanqueFim.Length>0 then
 begin
   dmdb.TMovLocalEstoqueimgfim.AsString              := vImg64TanqueFim;
   dmdb.TMovLocalEstoqueimgStopSend.AsString         := vImg64TanqueFimSend;
 end;

 dmDB.TMovLocalEstoqueidusuario.AsString             := dmDB.vIdUser;
 dmDB.TMovLocalEstoqueidproduto.AsString             := vIdProduto;
 dmDB.TMovLocalEstoqueidlocalestoqueorigem.AsString  := vIdLocalOrigem;
 dmDB.TMovLocalEstoqueidlocalestoquedetino.AsString  := vIdLocalDestino;
 dmDB.TMovLocalEstoqueqtde.AsString                  := edtLitros.Text;
 dmDB.TMovLocalEstoquetotalizadorinicial.AsString    := vTotalizadorIni;
 dmDB.TMovLocalEstoquetotalizadorfinal.AsString      := vTotalizadorFim;
 dmDB.TMovLocalEstoquedatamov.AsDateTime             := edtData.DateTime;
 dmDB.TMovLocalEstoquehora.AsDateTime                := edtHora.DateTime;
 try
  dmDB.TMovLocalEstoque.ApplyUpdates(-1);
  frmPrincipal.ReproduzSom('Operacao Finalizada');
  ShowMessage('Movimentação realizada com sucesso!');
  vFiltro                 :=' and datamov='+FormatDateTime('yyyy-mm-dd',edtDataF.Date).QuotedString;
  GerarLista(vFiltro);
  MudarAba(tbiLista,sender);
 except
 on E: Exception do
  begin
    frmPrincipal.ReproduzSom('Opa Erro');
    ShowMessage('Erro ao salvar Registro:'+E.Message);
  end;
 end;
end;

procedure TfrmMovEstoque.btnExcluirTranferenciaClick(Sender: TObject);
begin
 btnExcluirTranferencia.Visible := false;
 if vFlagSync='0' then
 begin
   frmPrincipal.ReproduzSom('Deseja Deletar');
   MessageDlg('Deseja Realmente Deletar esse Registro?', System.UITypes.TMsgDlgType.mtInformation,
   [System.UITypes.TMsgDlgBtn.mbYes,
   System.UITypes.TMsgDlgBtn.mbNo
   ], 0,
   procedure(const AResult: System.UITypes.TModalResult)
   begin
    case AResult of
     mrYES:
     begin
       dmDB.DeletaTransferencia(vIdTransferencia);
       vFiltro                 :=' and datamov='+FormatDateTime('yyyy-mm-dd',edtDataF.Date).QuotedString;
       GerarLista(vFiltro);
     end;
     mrNo:
    end;
   end);
 end
 else
 begin
   ShowMessage('Registro ja Sincronizado!!');
 end;
end;

procedure TfrmMovEstoque.btnFotoFimClick(Sender: TObject);
begin
{$IFDEF ANDROID}
  vImgCapture:=2;
  if vAbriImg=1 then
   vEditImg:=1
  else
   vEditImg:=0;
  PermissionsService.RequestPermissions([PermissaoCamera,
                                         PermissaoReadStorage,
                                         PermissaoWriteStorage],
                                         TakePicturePermissionRequestResult,
                                         DisplayMessageCamera
                                         );
  {$ENDIF}

  {$IFDEF IOS}
  ActFoto.Execute;
  {$ENDIF}
end;

procedure TfrmMovEstoque.btnFotoInicioClick(Sender: TObject);
begin
 {$IFDEF ANDROID}
  vImgCapture:=1;
  if vAbriImg=1 then
   vEditImg:=1
  else
   vEditImg:=0;
  PermissionsService.RequestPermissions([PermissaoCamera,
                                         PermissaoReadStorage,
                                         PermissaoWriteStorage],
                                         TakePicturePermissionRequestResult,
                                         DisplayMessageCamera
                                         );
  {$ENDIF}

  {$IFDEF IOS}
  ActFoto.Execute;
  {$ENDIF}
end;

procedure TfrmMovEstoque.btnHabilitaSyncClick(Sender: TObject);
begin
 if vFlagSync='0' then
 begin
   MessageDlg('Deseja Realmente Habilitar a Sincronização desse Registro?', System.UITypes.TMsgDlgType.mtInformation,
   [System.UITypes.TMsgDlgBtn.mbYes,
   System.UITypes.TMsgDlgBtn.mbNo], 0,
   procedure(const AResult: System.UITypes.TModalResult)
   begin
    case AResult of
     mrYES:
     begin
       dmDB.DeletaTransferencia(vIdTransferencia);
       vFiltro                 :=' and datamov='+FormatDateTime('yyyy-mm-dd',edtDataF.Date).QuotedString;
       GerarLista(vFiltro);
     end;
     mrNo:
    end;
   end);
 end
 else
 begin
   ShowMessage('Registro ja Sincronizado!!');
 end;
end;

{$IFDEF ANDROID}

procedure TfrmMovEstoque.DisplayMessageCamera(Sender: TObject;
  const APermissions: TArray<string>; const APostProc: TProc);
begin
  TDialogService.ShowMessage('O app precisa acessar a câmera e as fotos do seu dispositivo',
  procedure(const AResult: TModalResult)
  begin
   APostProc;
  end);
end;

procedure TfrmMovEstoque.DisplayMessageLibrary(Sender: TObject;
  const APermissions: TArray<string>; const APostProc: TProc);
begin
 TDialogService.ShowMessage('O app precisa acessar as fotos do seu dispositivo',
  procedure(const AResult: TModalResult)
  begin
    APostProc;
  end);
end;

procedure TfrmMovEstoque.DisplayRationale(Sender: TObject;
  const APermissions: TArray<string>; const APostRationaleProc: TProc);
var
  I: Integer;
  RationaleMsg: string;
begin
  for I := 0 to High(APermissions) do
  begin
    if (APermissions[I] = Access_Coarse_Location) or (APermissions[I] = Access_Fine_Location) then
      RationaleMsg := 'O app precisa de acesso ao GPS para obter sua localização'
  end;
  TDialogService.ShowMessage(RationaleMsg,
    procedure(const AResult: TModalResult)
    begin
      APostRationaleProc;
    end)
end;

{$ENDIF}


procedure TfrmMovEstoque.btnImgClick(Sender: TObject);
begin
 if vImg64Tanque.Length>0 then
  imgTanque.Bitmap  := BitmapFromBase64(vImg64Tanque)
 else
  imgTanque.Bitmap  := nil;

 if vImg64Tanque.Length>0 then
  ImgTanqueFim.Bitmap  := BitmapFromBase64(vImg64TanqueFim)
 else
  ImgTanqueFim.Bitmap  := nil;
  MudarAba(tbiImg,sender)
end;

procedure TfrmMovEstoque.btnImgStopClick(Sender: TObject);
begin
 if vImg64TanqueFim.Length>0 then
  ImgTanqueFim.Bitmap  := BitmapFromBase64(vImg64TanqueFim)
 else
  ImgTanqueFim.Bitmap  := nil;
 MudarAba(tbiImgStop,sender)
end;

procedure TfrmMovEstoque.btnNovoClick(Sender: TObject);
begin
 vFiltro := ' and s.dataastart='+FormatDateTime('yyyy-mm-dd',date).QuotedString;
 dmDB.AbrirStartBomba(vFiltro);
 if dmDB.TStartbomba.IsEmpty then
 begin
  frmPrincipal.ReproduzSom('Start Antes');
  ShowMessage('É necessario realizar o Start Diario antes de abastecer!');
  Exit;
 end
 else
 begin
   LimpaCampos;
   frmPrincipal.ReproduzSom('Inicie Foto Totalizado');
   ShowMessage('Comece tirando a foto do totalizador inicial');
   MudarAba(tbiImg,sender);
 end;
end;

procedure TfrmMovEstoque.btnNovoMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
 TRectangle(sender).Opacity :=0.5;
end;

procedure TfrmMovEstoque.btnSalvarFotoClick(Sender: TObject);
begin
 if not imgTanque.Bitmap.IsEmpty then
 begin
   vImg64Tanque := Base64FromBitmap(imgTanque.Bitmap);
   if(edtTotalizadorInicial.Text.Length=0) then
   begin
     ShowMessage('Informe o Totalizado Inicial abaixo da foto!');
     Exit;
   end;
 end;

 if not ImgTanqueFim.Bitmap.IsEmpty then
 begin
   vImg64TanqueFim := Base64FromBitmap(ImgTanqueFim.Bitmap);
   if(edtTotalizadorFinal.Text.Length=0) then
   begin
     ShowMessage('Informe o Totalizado Final abaixo da foto!');
     Exit;
   end;
 end;
 if (vAbriImg=1)and(vEditImg=1) then
  dmDB.AtualizaImagemTransferencia(vIdTransferencia, vImg64Tanque,
   vImg64TanqueFim);
 if(edtTotalizadorInicial.Text.Length>0)and(edtTotalizadorFinal.Text.Length>0)then
 begin
  vTotalizadorIni := StringReplace(edtTotalizadorInicial.Text,'.','',[rfReplaceAll]);
  vTotalizadorFim := StringReplace(edtTotalizadorFinal.Text,'.','',[rfReplaceAll]);
  if strToInt(vTotalizadorFim)<=strToInt(vTotalizadorIni) then
  begin
    frmPrincipal.ReproduzSom('Totalizado Final Menor');
    ShowMessage('Totalizador Final nao pode ser menor ou igual ao inicial!');
    Exit;
  end;
  edtLitros.Text :=intToStr(strToInt(vTotalizadorFim)-strToInt(vTotalizadorIni));
 end;
 MudarAba(tbiCad,sender);
end;

procedure Ajustar_Scroll();
var
        x : integer;
begin
  with frmMovEstoque do
  begin
   VScroll.Margins.Bottom   := 250;
   VScroll.ViewportPosition := PointF(VScroll.ViewportPosition.X,
    TControl(foco).Position.Y - 90);
  end;
end;

procedure TfrmMovEstoque.btnVoltar1Click(Sender: TObject);
begin
 Close;
end;

procedure TfrmMovEstoque.btnVoltarClick(Sender: TObject);
begin
  if tbPrincipal.TabIndex=1 then
  begin
   vFiltro                 :=' and datamov='+FormatDateTime('yyyy-mm-dd',edtDataF.Date).QuotedString;
   GerarLista(vFiltro);
   MudarAba(tbiLista,sender)
  end
  else
   Close;
end;

procedure TfrmMovEstoque.ClearEditButton1Click(Sender: TObject);
begin
 layBombaOrigem.Height :=62;
end;

procedure TfrmMovEstoque.ClearEditButton2Click(Sender: TObject);
begin
 layBombaDestino.Height :=62;
end;

procedure TfrmMovEstoque.EditButton1Click(Sender: TObject);
begin
  dmDB.vLocalMov := 2;
  if not Assigned(frmLocalEstoque) then
   Application.CreateForm(TfrmLocalEstoque,frmLocalEstoque);
  frmLocalEstoque.ShowModal(procedure(ModalResult: TModalResult)
  begin
    vIdLocalDestino        := frmLocalEstoque.vIdLocalEstoque;
    edtLocalDestino.Text   := frmLocalEstoque.vNomeLocalEstoque;
    lblCombustivelD.Text   := frmLocalEstoque.vNomeCombustivel;
    layBombaDestino.Height := 125;
  end);
end;

procedure TfrmMovEstoque.EditButton2Click(Sender: TObject);
begin
   dmDB.vLocalMov := 1;
   if not Assigned(frmLocalEstoque) then
   Application.CreateForm(TfrmLocalEstoque,frmLocalEstoque);
    frmLocalEstoque.Show;
   frmLocalEstoque.ShowModal(procedure(ModalResult: TModalResult)
   begin
     vIdLocalOrigem         := frmLocalEstoque.vIdLocalEstoque;
     vIdProduto             := frmLocalEstoque.vIdCombustivel;
     edtLocalOrigem.Text    := frmLocalEstoque.vNomeLocalEstoque;
     lblCombustivelO.Text   := frmLocalEstoque.vNomeCombustivel;
     layBombaOrigem.Height  := 125;
   end);
end;

procedure TfrmMovEstoque.edtLitrosTyping(Sender: TObject);
begin
   formatar(edtLitros,TFormato.ValorDecimal);
end;

procedure TfrmMovEstoque.edtTotalizadorFinalClick(Sender: TObject);
begin
 foco := TControl(TEdit(sender).Parent);
 Ajustar_Scroll();
end;

procedure TfrmMovEstoque.edtTotalizadorFinalEnter(Sender: TObject);
begin
 foco := TControl(TEdit(sender).Parent);
 Ajustar_Scroll();
end;

procedure TfrmMovEstoque.edtTotalizadorFinalTyping(Sender: TObject);
begin
 formatar(edtTotalizadorFinal,TFormato.Valor);
end;

procedure TfrmMovEstoque.edtTotalizadorInicialTyping(Sender: TObject);
begin
  formatar(edtTotalizadorInicial,TFormato.Valor);
end;

procedure TfrmMovEstoque.MudarAba(ATabItem: TTabItem; sender: TObject);
begin
  actMudarAba.Tab := ATabItem;
  actMudarAba.ExecuteTarget(sender);
end;

procedure TfrmMovEstoque.Rectangle17Click(Sender: TObject);
begin
 begin
   MessageDlg('Deseja Realmente Sair dessa Tela?', System.UITypes.TMsgDlgType.mtInformation,
   [System.UITypes.TMsgDlgBtn.mbYes,
   System.UITypes.TMsgDlgBtn.mbNo
   ], 0,
   procedure(const AResult: System.UITypes.TModalResult)
   begin
    case AResult of
     mrYES:
     begin
       vFiltro                 :=' and datamov='+FormatDateTime('yyyy-mm-dd',edtDataF.Date).QuotedString;
       GerarLista(vFiltro);
       MudarAba(tbiLista,sender)
     end;
     mrNo:
    end;
   end);
 end
end;

procedure TfrmMovEstoque.Rectangle25Click(Sender: TObject);
begin
 if vImg64TanqueFim.Length>0 then
  ImgTanqueFim.Bitmap  := BitmapFromBase64(vImg64TanqueFim)
 else
  ImgTanqueFim.Bitmap  := nil;
 MudarAba(tbiImgStop,sender)
end;

procedure TfrmMovEstoque.btnVoltaImgInicioClick(Sender: TObject);
begin
  if not imgTanque.Bitmap.IsEmpty then
  begin
   vImg64Tanque     := Base64FromBitmap(imgTanque.Bitmap);
   vImg64TanqueSend := Base64FromBitmapResize(imgTanque.Bitmap);
   ImgMnuTotalIni.Bitmap := imgTanque.Bitmap;
   if(edtTotalizadorInicial.Text.Length=0) then
   begin
     ShowMessage('Informe o Totalizado Inicial abaixo da foto!');
     Exit;
   end;
  end;

  if not ImgTanqueFim.Bitmap.IsEmpty then
  begin
   vImg64TanqueFim       := Base64FromBitmap(ImgTanqueFim.Bitmap);
   vImg64TanqueFimSend   := Base64FromBitmapResize(ImgTanqueFim.Bitmap);
   ImgMnuTotalFim.Bitmap := ImgTanqueFim.Bitmap;
   if(edtTotalizadorFinal.Text.Length=0) then
   begin
     ShowMessage('Informe o Totalizado Final abaixo da foto!');
     Exit;
   end;
  end;

 if(edtTotalizadorInicial.Text.Length>0)and(edtTotalizadorFinal.Text.Length>0)then
 begin
  vTotalizadorIni := StringReplace(edtTotalizadorInicial.Text,'.','',[rfReplaceAll]);
  vTotalizadorFim := StringReplace(edtTotalizadorFinal.Text,'.','',[rfReplaceAll]);
  if strToInt(vTotalizadorFim)<=strToInt(vTotalizadorIni) then
  begin
    frmPrincipal.ReproduzSom('Totalizado Final Menor');
    ShowMessage('Totalizador Final nao pode ser menor ou igual ao inicial!');
    Exit;
  end
  else
   edtLitros.Text :=intToStr(strToInt(vTotalizadorFim)-strToInt(vTotalizadorIni));
 end;

  imgChekStart.Visible    := vImg64Tanque.Length>0;
  imgChekEnd.Visible      := vImg64TanqueFim.Length>0;

  layImgHorimetro.Enabled := true;
  if vAbriImg=0 then
   MudarAba(tbiCad,sender)
  else
   MudarAba(tbilista,sender)
end;

procedure TfrmMovEstoque.TakePicturePermissionRequestResult(Sender: TObject;
  const APermissions: TArray<string>;
  const AGrantResults: TArray<TPermissionStatus>);
begin
  if (Length(AGrantResults) = 3) and
   (AGrantResults[0] = TPermissionStatus.Granted) and
   (AGrantResults[1] = TPermissionStatus.Granted) and
   (AGrantResults[2] = TPermissionStatus.Granted) then
        ActFoto.Execute
 else
  TDialogService.ShowMessage('Você não tem permissão para tirar fotos');

end;

procedure TfrmMovEstoque.FormCreate(Sender: TObject);
begin
permissao               := T99Permissions.Create;
  if NOT permissao.VerifyCameraAccess then
   permissao.Camera(nil, nil);
 {$IFDEF ANDROID}
  Access_Coarse_Location := JStringToString(TJManifest_permission.JavaClass.ACCESS_COARSE_LOCATION);
  Access_Fine_Location   := JStringToString(TJManifest_permission.JavaClass.ACCESS_FINE_LOCATION);
  PermissionsService.RequestPermissions([Access_Coarse_Location,
                                                       Access_Fine_Location],
                                                       LocationPermissionRequestResult,
                                                       DisplayRationale);
  PermissaoCamera       := JStringToString(TJManifest_permission.JavaClass.CAMERA);
  PermissaoReadStorage  := JStringToString(TJManifest_permission.JavaClass.READ_EXTERNAL_STORAGE);
  PermissaoWriteStorage := JStringToString(TJManifest_permission.JavaClass.WRITE_EXTERNAL_STORAGE);

 {$ENDIF}

end;

procedure TfrmMovEstoque.FormDestroy(Sender: TObject);
begin
 permissao.DisposeOf;
end;

procedure TfrmMovEstoque.FormShow(Sender: TObject);
begin
  btnExcluirTranferencia.Visible := false;
  vFiltro                        :=' and datamov='+FormatDateTime('yyyy-mm-dd',edtDataF.Date).QuotedString;
  tbPrincipal.TabPosition        := TTabPosition.None;
  tbPrincipal.ActiveTab          := tbiLista;
  layBombaDestino.Height         := 62;
  layBombaOrigem.Height          := 62;
  btnImgStop.Width               := (frmMovEstoque.width/2)-25;
  btnAbreImgInicial.width        := (frmMovEstoque.width/2)-25;

  RecImgStart.Width              := frmMovEstoque.width-10;
  RecImgIni.Width                := frmMovEstoque.width-10;

  RecImgStart.Height             := RecImgStart.Width;
  RecImgIni.Height               := RecImgIni.Width;

  GerarLista(vFiltro);
end;

procedure TfrmMovEstoque.FormVirtualKeyboardHidden(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
begin
 VScroll.Margins.Bottom := 0;
end;

procedure TfrmMovEstoque.GerarLista(vFiltro:string);
var
 item   : TListViewItem;
 txt    : TListItemText;
 txtH   : TListItemPurpose;
 img    : TListItemImage;
begin
 dmDB.AbrirTrasnferencia(edtDataF.Date);
 dmDB.TMovLocalEstoque.First;
 listaTranferencia.Items.Clear;
 while not dmDB.TMovLocalEstoque.eof do
 begin
   item := listaTranferencia.Items.Add;
   with frmMovEstoque do
   begin
     with item  do
     begin
       txt      := TListItemText(Objects.FindDrawable('Text5'));
       txt.Text := 'Origem: ';
       txt.TagString := dmDB.TMovLocalEstoqueid.AsString;

       txt      := TListItemText(Objects.FindDrawable('Text6'));
       txt.Text := dmDB.TMovLocalEstoqueLocalOrigem.AsString;
       txt.TagString := dmDB.TMovLocalEstoquesyncaws.AsString;

       txt      := TListItemText(Objects.FindDrawable('Text8'));
       txt.Text := 'Destino: ';
       txt.TagString := dmDB.TMovLocalEstoqueimg.AsString;

       txt      := TListItemText(Objects.FindDrawable('Text9'));
       txt.Text := dmDB.TMovLocalEstoqueLocalDestino.AsString;
       txt.TagString := dmDB.TMovLocalEstoqueimgfim.AsString;

       txt      := TListItemText(Objects.FindDrawable('Text10'));
       txt.Text := 'Produto: ';
       txt.TagString := dmDB.TMovLocalEstoquetotalizadorinicial.AsString;

       txt      := TListItemText(Objects.FindDrawable('Text11'));
       txt.Text := dmDB.TMovLocalEstoqueProduto.AsString;
       txt.TagString := dmDB.TMovLocalEstoquetotalizadorfinal.AsString;


       txt      := TListItemText(Objects.FindDrawable('Text12'));
       txt.Text := 'Data: ';
       txt      := TListItemText(Objects.FindDrawable('Text13'));
       txt.Text := dmDB.TMovLocalEstoquedatamov.AsString;

       txt      := TListItemText(Objects.FindDrawable('Text14'));
       txt.Text := 'Hora: ';
       txt      := TListItemText(Objects.FindDrawable('Text15'));
       txt.Text := dmDB.TMovLocalEstoquehora.AsString;


       txt      := TListItemText(Objects.FindDrawable('Text4'));
       txt.Text := 'Qtde.: ';
       txt      := TListItemText(Objects.FindDrawable('Text3'));
       txt.Text := dmDB.TMovLocalEstoqueqtde.AsString;

       txt      := TListItemText(Objects.FindDrawable('Text16'));
       txt.Text := 'Totalizador Ini.: ';
       txt      := TListItemText(Objects.FindDrawable('Text17'));
       txt.Text := dmDB.TMovLocalEstoquetotalizadorinicial.AsString;

       txt      := TListItemText(Objects.FindDrawable('Text19'));
       txt.Text := 'Totalizador Fim.: ';
       txt      := TListItemText(Objects.FindDrawable('Text18'));
       txt.Text := dmDB.TMovLocalEstoquetotalizadorfinal.AsString;

       img := TListItemImage(Objects.FindDrawable('Image10'));
       img.Bitmap     := frmPrincipal.imgTransf.Bitmap;


       if dmDB.TMovLocalEstoqueimg.AsString.Length>0 then
       begin
        img := TListItemImage(Objects.FindDrawable('Image20'));
        img.Bitmap     := frmPrincipal.imgTotalizadorInicio.Bitmap;
        txt      := TListItemText(Objects.FindDrawable('Text7'));
        txt.Text := 'Foto Inicio';
       end
       else
       begin
        img := TListItemImage(Objects.FindDrawable('Image20'));
        img.Bitmap     := nil;
        txt      := TListItemText(Objects.FindDrawable('Text7'));
        txt.Text := '';
       end;

       if dmDB.TMovLocalEstoqueimgfim.AsString.Length>0 then
       begin
        img := TListItemImage(Objects.FindDrawable('Image11'));
        img.Bitmap     := frmPrincipal.imgTotalizadorFim.Bitmap;
        txt      := TListItemText(Objects.FindDrawable('Text21'));
        txt.Text := 'Foto Fim';
       end
       else
       begin
        img := TListItemImage(Objects.FindDrawable('Image11'));
        img.Bitmap     := nil;
        txt      := TListItemText(Objects.FindDrawable('Text21'));
        txt.Text := '';
       end;
     end;
     dmDB.TMovLocalEstoque.Next;
   end;
 end;
end;

procedure TfrmMovEstoque.LibraryPermissionRequestResult(Sender: TObject;
  const APermissions: TArray<string>;
  const AGrantResults: TArray<TPermissionStatus>);
begin

end;

procedure TfrmMovEstoque.LimpaCampos;
begin
  layBombaDestino.Height :=62;
  layBombaOrigem.Height  :=62;
  edtLocalOrigem.Text    :='';
  edtLocalDestino.Text   :='';
  edtLitros.Text         :='';
  imgTanque.Bitmap       := nil;
  ImgTanqueFim.Bitmap    := nil;
  vTotalizadorIni        :='';
  vTotalizadorFim        :='';
  vAbriImg               :=0;
  vEditImg               :=0;
  vImg64Tanque           :='';
  vImg64TanqueFim        :='';
  ImgMnuTotalIni.Bitmap         := nil;
  ImgMnuTotalFim.Bitmap         := nil;
  imgTanque.Bitmap              := nil;
  ImgTanqueFim.Bitmap           := nil;
  imgChekEnd.Visible            := false;
  imgChekStart.Visible          := false;
  edtTotalizadorInicial.Enabled := true;
  edtTotalizadorFinal.Enabled   := true;
  edtTotalizadorInicial.Text    := '';
  edtTotalizadorFinal.Text      := '';
  layBombaDestino.Height        :=62;
  layBombaOrigem.Height         :=62;

end;

procedure TfrmMovEstoque.listaTranferenciaGesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  btnExcluirTranferencia.Visible := true;
end;

procedure TfrmMovEstoque.listaTranferenciaItemClickEx(const Sender: TObject;
  ItemIndex: Integer; const LocalClickPos: TPointF;
  const ItemObject: TListItemDrawable);
begin
  vIdTransferencia :=
  TAppearanceListViewItem(listaTranferencia.Selected).Objects.FindObjectT<TListItemText>
   ('Text5').TagString;
  vFlagSync :=
  TAppearanceListViewItem(listaTranferencia.Selected).Objects.FindObjectT<TListItemText>
   ('Text6').TagString;

  vImg64Tanque:=
  TAppearanceListViewItem(listaTranferencia.Selected).Objects.FindObjectT<TListItemText>
   ('Text8').TagString;

 vImg64TanqueFim:=
  TAppearanceListViewItem(listaTranferencia.Selected).Objects.FindObjectT<TListItemText>
   ('Text9').TagString;

  vTotalizadorIni  :=
  TAppearanceListViewItem(listaTranferencia.Selected).Objects.FindObjectT<TListItemText>
   ('Text10').TagString;

  vTotalizadorFim  :=
  TAppearanceListViewItem(listaTranferencia.Selected).Objects.FindObjectT<TListItemText>
   ('Text11').TagString;

  if ItemObject is TListItemImage then
  begin
    if TListItemImage(ItemObject).Name='Image20'  then
    begin
     if TListItemImage(ItemObject).Bitmap<>nil then
     begin
       btnFotoInicio.Visible := false;
       vAbriImg :=1;
       if vImg64Tanque.Length>0 then
        imgTanque.Bitmap  := BitmapFromBase64(vImg64Tanque)
       else
        imgTanque.Bitmap  := nil;
       edtTotalizadorInicial.Text := vTotalizadorIni;
       edtTotalizadorInicial.Enabled := false;
       MudarAba(tbiImg,sender);
     end;
    end;

    if TListItemImage(ItemObject).Name='Image11'  then
    begin
     if TListItemImage(ItemObject).Bitmap<>nil then
     begin
       btnFotoFim.Visible := false;
       vAbriImg :=1;
       if vImg64TanqueFim.Length>0 then
        ImgTanqueFim.Bitmap  := BitmapFromBase64(vImg64TanqueFim)
       else
        ImgTanqueFim.Bitmap  := nil;
       edtTotalizadorFinal.Text := vTotalizadorFim;
       edtTotalizadorFinal.Enabled := false;
       MudarAba(tbiImgStop,sender);
     end;
    end;
  end;

end;

procedure TfrmMovEstoque.LocationPermissionRequestResult(Sender: TObject;
  const APermissions: TArray<string>;
  const AGrantResults: TArray<TPermissionStatus>);
begin

end;

procedure TfrmMovEstoque.tbPrincipalChange(Sender: TObject);
begin
  btnVoltar.Visible     := tbPrincipal.TabIndex=0;
  if tbPrincipal.TabIndex=0 then
   lblPage.Text :='Lista de Transferência';
  if tbPrincipal.TabIndex=1 then
   lblPage.Text :='Cadastro Transferência';
end;

end.

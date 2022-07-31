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
  FMX.StdActns,u99Permissions
  {$IF DEFINED(iOS) or DEFINED(ANDROID)}
   ,Androidapi.JNI.Os, Androidapi.Helpers,
   Androidapi.JNI.GraphicsContentViewText,System.Permissions,FMX.DialogService
   {$ENDIF}
    ,Soap.EncdDecd, FMX.ExtCtrls;

type
  TfrmStartBomba = class(TForm)
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
    Lista: TListView;
    btnExcluiItem: TRectangle;
    Image1: TImage;
    lblExcluir: TLabel;
    Rectangle19: TRectangle;
    Layout2: TLayout;
    Layout4: TLayout;
    edtDataF: TDateEdit;
    Label1: TLabel;
    Layout22: TLayout;
    Label9: TLabel;
    edtLocalEstoqueF: TEdit;
    btnBuscar: TRectangle;
    LaybtnEntrar: TLayout;
    Label25: TLabel;
    Image11: TImage;
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
    layBuscaMaquina: TLayout;
    Rectangle2: TRectangle;
    Layout9: TLayout;
    Label2: TLabel;
    Layout34: TLayout;
    Layout14: TLayout;
    Rectangle7: TRectangle;
    Layout15: TLayout;
    Label10: TLabel;
    Label3: TLabel;
    edtData: TDateEdit;
    edtHora: TTimeEdit;
    LayLitrosIni: TLayout;
    Rectangle18: TRectangle;
    Layout41: TLayout;
    Label20: TLabel;
    btnImg: TRectangle;
    Image17: TImage;
    Label33: TLabel;
    tbiImg: TTabItem;
    Rectangle25: TRectangle;
    Layout71: TLayout;
    Layout42: TLayout;
    Rectangle21: TRectangle;
    Rectangle27: TRectangle;
    Image14: TImage;
    Label31: TLabel;
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
    edtLocalEstoque: TEdit;
    EditButton1: TEditButton;
    ClearEditButton3: TClearEditButton;
    laydataHoraFim: TLayout;
    Rectangle4: TRectangle;
    Layout11: TLayout;
    Label6: TLabel;
    edtHoraFim: TTimeEdit;
    layLitrosFim: TLayout;
    Rectangle5: TRectangle;
    Layout12: TLayout;
    Label11: TLabel;
    ClearEditButton1: TClearEditButton;
    Timer1: TTimer;
    GestureManager2: TGestureManager;
    actAcoes: TActionList;
    actMudarAba: TChangeTabAction;
    AcMudarAbaChart: TAction;
    AcMudarAbaDespesas: TAction;
    AcLeft: TAction;
    AcRigth: TAction;
    ActionList1: TActionList;
    ActLibrary: TTakePhotoFromLibraryAction;
    ActFoto: TTakePhotoFromCameraAction;
    GestureManager1: TGestureManager;
    layCombustivel: TLayout;
    Rectangle6: TRectangle;
    Layout16: TLayout;
    Label5: TLabel;
    edtCombustivel: TEdit;
    EditButton4: TEditButton;
    ClearEditButton4: TClearEditButton;
    Layout1: TLayout;
    timImgStop: TTabItem;
    Rectangle8: TRectangle;
    Layout18: TLayout;
    Rectangle11: TRectangle;
    Rectangle20: TRectangle;
    Image2: TImage;
    Label14: TLabel;
    LayImgStop: TLayout;
    RecImgStop: TRectangle;
    imgStop: TImage;
    btnFotoFim: TRectangle;
    Image13: TImage;
    Label30: TLabel;
    btnAbreImgInicial: TRectangle;
    Layout13: TLayout;
    Label12: TLabel;
    ImgMnuTotalIni: TImage;
    btnImgStop: TRectangle;
    Layout17: TLayout;
    Label13: TLabel;
    ImgMnuTotalFim: TImage;
    LayImgStart: TLayout;
    RecImgStart: TRectangle;
    btnFotoInicio: TRectangle;
    Image12: TImage;
    Label8: TLabel;
    ShadowEffect1: TShadowEffect;
    Rectangle23: TRectangle;
    Rectangle24: TRectangle;
    VertScrollBox1: TVertScrollBox;
    imgStart: TImage;
    Layout8: TLayout;
    Layout10: TLayout;
    imgChekStart: TImage;
    Image5: TImage;
    imgChekEnd: TImage;
    layTotInicial: TLayout;
    edtTotalIni1: TEdit;
    edtTotalIni2: TEdit;
    edtTotalIni3: TEdit;
    edtTotalIni4: TEdit;
    edtTotalIni5: TEdit;
    edtTotalIni6: TEdit;
    Label15: TLabel;
    Rectangle26: TRectangle;
    Layout19: TLayout;
    Rectangle28: TRectangle;
    edtTotalFim1: TEdit;
    edtTotalFim2: TEdit;
    edtTotalFim3: TEdit;
    edtTotalFim4: TEdit;
    edtTotalFim5: TEdit;
    edtTotalFim6: TEdit;
    Label16: TLabel;
    procedure EditButton1Click(Sender: TObject);
    procedure tbPrincipalChange(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImgClick(Sender: TObject);
    procedure btnFotoInicioClick(Sender: TObject);
    procedure btnFotoFimClick(Sender: TObject);
    procedure ActFotoDidFinishTaking(Image: TBitmap);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnConfirmarAClick(Sender: TObject);
    procedure EditButton4Click(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnVoltar1Click(Sender: TObject);
    procedure Rectangle17Click(Sender: TObject);
    procedure Rectangle27Click(Sender: TObject);
    procedure btnBuscarMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btnBuscarMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure ListaItemClickEx(const Sender: TObject; ItemIndex: Integer;
      const LocalClickPos: TPointF; const ItemObject: TListItemDrawable);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure ListaGesture(Sender: TObject; const EventInfo: TGestureEventInfo;
      var Handled: Boolean);
    procedure btnExcluiItemClick(Sender: TObject);
    procedure btnAbreImgInicialClick(Sender: TObject);
    procedure Layout17Click(Sender: TObject);
    procedure btnImgStopClick(Sender: TObject);
    procedure edtTotalIni1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure edtTotalIni1ChangeTracking(Sender: TObject);
    procedure edtTotalIni6ChangeTracking(Sender: TObject);
    procedure edtTotalFim1ChangeTracking(Sender: TObject);
    procedure edtTotalFim6ChangeTracking(Sender: TObject);
    procedure edtTotalIni5KeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtTotalIni6KeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtTotalIni4KeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtTotalIni3KeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure edtTotalIni2KeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
  private
    { Private declarations }
     FService : IFMXVirtualKeyboardService;
     FImageStream: TStringStream;
     PermissaoCamera, PermissaoReadStorage, PermissaoWriteStorage : string;
    {$IFDEF ANDROID}
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
    {$ENDIF}
    protected
     property ImageStream: TStringStream read FImageStream write FImageStream;
    procedure AfterConstruction; override;
  public
    vTotalizadorIni,vTotalizadorFim:String;
    vFlagSync,vIdStart,dLocalEstoque:string;
    permissao : T99Permissions;
    vImg64Start,vImg64Stop,vIdCombustivel,vIdLocalEstoque,
    vImg64StartSend,vImg64StopSend: string;
    vImgCapture,vStart,vVisualiza,vNext:integer;
    procedure GeraLista(vFiltro:string);
    function Base64FromBitmap(Bitmap: TBitmap): string;
    function Base64FromBitmapResize(Bitmap: TBitmap): string;
    function BitmapFromBase64(const base64: string): TBitmap;
    procedure MudarAba(ATabItem: TTabItem; sender: TObject);
    procedure LimpaCampos;
    procedure AjustaTotaliuzadorTela;
    procedure DelayedSetFocus(control : TControl);
    procedure AtualizaValoresTotalInicial(vTotaIni:String);
    function LPad(value:string; tamanho:integer; caractere:char): string;
  end;

var
  frmStartBomba: TfrmStartBomba;

implementation

{$R *.fmx}

uses UPrincipal, ULocalEstoque, UDmDB, UProdutos, uFormat;

procedure TfrmStartBomba.btnAbreImgInicialClick(Sender: TObject);
begin
 if vImg64Start.Length>0 then
  imgStart.Bitmap  := BitmapFromBase64(vImg64Start)
 else
  imgStart.Bitmap  := nil;
 MudarAba(tbiImg,sender);
end;

procedure TfrmStartBomba.btnBuscarClick(Sender: TObject);
var
 vFiltro:string;
begin
 vFiltro := ' and s.dataastart='+FormatDateTime('yyyy-mm-dd',edtDataF.DateTime).QuotedString;
 if edtLocalEstoqueF.Text.Length>0 then
  vFiltro := vFiltro+' and l.nome like '+QuotedStr('%'+edtLocalEstoqueF.Text+'%') ;
 GeraLista(vFiltro);
end;

procedure TfrmStartBomba.btnBuscarMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  TRectangle(sender).Opacity :=0.5;
end;

procedure TfrmStartBomba.btnBuscarMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  TRectangle(sender).Opacity :=1;
end;

procedure TfrmStartBomba.btnConfirmarAClick(Sender: TObject);
begin
 if edtLocalEstoque.Text.Length=0 then
 begin
   ShowMessage('Informe a Bomba!!');
   edtLocalEstoque.SetFocus;
   Exit;
 end;
 if(vStart=0)then //Inicia Bomba
 begin
  if(imgStart.Bitmap.IsEmpty)then
  begin
   ShowMessage('Foto do Inicio é Obrigatoria!!');
   Exit;
  end;
  if(strToFloat(vTotalizadorIni)<=0)then
  begin
   ShowMessage('Totalizado Inicial deve ser informado!');
   exit;
  end;
  dmdb.TStartBombaInsertidlocalestoque.AsString         := vIdLocalEstoque;
  dmdb.TStartBombaInsertdataastart.AsString             := edtData.Text;
  dmdb.TStartBombaInserthorastart.AsString              := edtHora.Text;
  dmdb.TStartBombaInsertvolumelitrosIni.AsString        := vTotalizadorIni;

  dmdb.TStartbombaInsertimgStartSend.AsString           := vImg64StartSend;
  dmdb.TStartbombaInsertimgStart.AsString               := vImg64Start;

  dmdb.TStartBombaInserthorastart.AsString              := edtHora.Text;
  dmdb.TStartBombaInsertidusuario.AsString              := dmDB.vIdUser;
  dmdb.TStartBombaInsertcombustivel.AsString            := vIdCombustivel;
  dmdb.TStartBombaInsertidcentrocusto.AsString          := dmDB.vIdCentroCusto;
 end;
 if(vStart=0)then // Abre bomba
 begin
   try
    dmdb.TStartBombaInsert.ApplyUpdates(-1);
    frmPrincipal.ReproduzSom('Operacao Finalizada');
    ShowMessage('Registro confirmado com sucesso!!');
    btnBuscarClick(sender);
    MudarAba(tbiLista,sender);
   except
    on E: Exception do
    begin
     frmPrincipal.ReproduzSom('Opa Erro');
     ShowMessage('Erro ao salvar registro:'+E.Message);
    end;
   end;
 end
 else  // Finaliza bomba
 begin
    if(imgStop.Bitmap.IsEmpty)then
    begin
     ShowMessage('Foto do Fim é Obrigatoria!!');
     Exit;
    end;
    if(strToFloat(vTotalizadorFim)=0) then
    begin
     ShowMessage('Totalizador final deve ser informado!');
     Exit;
    end
    else
    if strToFloat(vTotalizadorFim)<=strToFloat(vTotalizadorIni) then
    begin
     //frmPrincipal.ReproduzSom('Totalizado Final Menor');
     MessageDlg('Totalizador Final menor que Inicial, oque indica virada dos contadores'+#13+
     'Deseja confirmar assim mesmo?', System.UITypes.TMsgDlgType.mtInformation,
     [System.UITypes.TMsgDlgBtn.mbYes,
     System.UITypes.TMsgDlgBtn.mbNo
     ], 0,
     procedure(const AResult: System.UITypes.TModalResult)
     begin
      case AResult of
       mrYES:
       begin
          dmdb.TStartbombaInsertstatus.AsInteger := 2;
          if vTotalizadorFim.Length>0 then
           dmdb.TStartBombaInsertvolumelitrosFim.Asstring   :=vTotalizadorFim;
          if vImg64Stop.Length>0 then
          begin
           dmdb.TStartbombaInsertimgStopSend.AsString       := vImg64StopSend;
           dmdb.TStartBombaInsertimgEnd.AsString            := vImg64Stop;
          end;
          dmdb.TStartBombaInserthoraend.AsString            := edtHoraFim.Text;
          try
            dmdb.TStartBombaInsert.ApplyUpdates(-1);
            frmPrincipal.ReproduzSom('Operacao Finalizada');
            ShowMessage('Registro confirmado com sucesso!!');
            btnBuscarClick(sender);
            MudarAba(tbiLista,sender);
           except
            on E: Exception do
            begin
             frmPrincipal.ReproduzSom('Opa Erro');
             ShowMessage('Erro ao salvar registro:'+E.Message);
            end;
           end;
       end;
       mrNo:
        Exit;
      end;
     end);
    end
    else
    begin
      dmdb.TStartbombaInsertstatus.AsInteger := 2;
      if vTotalizadorFim.Length>0 then
       dmdb.TStartBombaInsertvolumelitrosFim.AsString   :=vTotalizadorFim;
      if vImg64Stop.Length>0 then
      begin
       dmdb.TStartbombaInsertimgStopSend.AsString       := vImg64StopSend;
       dmdb.TStartBombaInsertimgEnd.AsString            := vImg64Stop;
      end;
      dmdb.TStartBombaInserthoraend.AsString           := edtHoraFim.Text;
      try
        dmdb.TStartBombaInsert.ApplyUpdates(-1);
        frmPrincipal.ReproduzSom('Operacao Finalizada');
        ShowMessage('Registro confirmado com sucesso!!');
        btnBuscarClick(sender);
        MudarAba(tbiLista,sender);
       except
        on E: Exception do
        begin
         frmPrincipal.ReproduzSom('Opa Erro');
         ShowMessage('Erro ao salvar registro:'+E.Message);
        end;
       end;
    end;//finaliza bomba
 end;
end;

procedure TfrmStartBomba.btnExcluiItemClick(Sender: TObject);
begin
btnExcluiItem.Visible := false;
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
       dmDB.DeletaStart(vIdStart);
       GeraLista('');
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

procedure TfrmStartBomba.btnFotoFimClick(Sender: TObject);
begin
 vImgCapture:=2;
 {$IFDEF ANDROID}
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

procedure TfrmStartBomba.btnFotoInicioClick(Sender: TObject);
begin
 vImgCapture:=1;
 {$IFDEF ANDROID}
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

procedure TfrmStartBomba.btnImgClick(Sender: TObject);
begin
 if vImg64Start.Length>0 then
  imgStart.Bitmap  := BitmapFromBase64(vImg64Start)
 else
  imgStart.Bitmap  := nil;
 if vImg64Stop.Length>0 then
  imgStop.Bitmap  := BitmapFromBase64(vImg64Stop)
 else
  imgStop.Bitmap  := nil;
 MudarAba(tbiImg,sender);
end;

procedure TfrmStartBomba.btnImgStopClick(Sender: TObject);
begin
 if vImg64Start.Length>0 then
  imgStart.Bitmap  := BitmapFromBase64(vImg64Start)
 else
  imgStart.Bitmap  := nil;
 if vImg64Stop.Length>0 then
  imgStop.Bitmap  := BitmapFromBase64(vImg64Stop)
 else
  imgStop.Bitmap  := nil;
 MudarAba(timImgStop,sender);
end;

procedure TfrmStartBomba.btnNovoClick(Sender: TObject);
begin
 dmDB.TStartBombaInsert.Close;
 dmDB.TStartBombaInsert.Open;
 dmdb.TStartBombaInsert.Insert;
 LimpaCampos;
 frmPrincipal.ReproduzSom('Inicie Foto Totalizado');
 ShowMessage('Comece tirando a foto do totalizador inicial');
 MudarAba(tbiImg,sender);
end;

procedure TfrmStartBomba.btnVoltar1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmStartBomba.DelayedSetFocus(control: TControl);
begin
  TThread.CreateAnonymousThread(
    procedure
    begin
      TThread.Synchronize( nil,
         procedure
         begin
           control.SetFocus;
         end
      );
    end
  ).Start;
end;

procedure TfrmStartBomba.DisplayMessageCamera(Sender: TObject;
  const APermissions: TArray<string>; const APostProc: TProc);
begin
 TDialogService.ShowMessage('O app precisa acessar a câmera e as fotos do seu dispositivo',
  procedure(const AResult: TModalResult)
  begin
    APostProc;
  end);
end;

procedure TfrmStartBomba.DisplayMessageLibrary(Sender: TObject;
  const APermissions: TArray<string>; const APostProc: TProc);
begin
  TDialogService.ShowMessage('O app precisa acessar as fotos do seu dispositivo',
  procedure(const AResult: TModalResult)
  begin
    APostProc;
  end);
end;

procedure TfrmStartBomba.ActFotoDidFinishTaking(Image: TBitmap);
begin
  if vImgCapture=1 then
  begin
   imgStart.Bitmap.Assign(Image);
   Exit;
  end;
  if vImgCapture=2 then
  begin
   imgStop.Bitmap.Assign(Image);
   Exit;
  end;
end;

procedure TfrmStartBomba.AfterConstruction;
begin
  inherited;
  Self.ImageStream := TStringStream.Create;
end;

procedure TfrmStartBomba.AjustaTotaliuzadorTela;
var
 vWidth :single;
begin
 vWidth             := ((layTotInicial.Width/6)-10);
 edtTotalIni1.Width := vWidth;
 edtTotalIni2.Width := vWidth;
 edtTotalIni3.Width := vWidth;
 edtTotalIni4.Width := vWidth;
 edtTotalIni5.Width := vWidth;
 edtTotalIni6.Width := vWidth;
end;

procedure TfrmStartBomba.AtualizaValoresTotalInicial(vTotaIni: String);
var
 vText : string;
begin
 vText      := LPad(vTotaIni,7,'0');
 edtTotalIni6.Text :=  Copy(vText,(vText.Length),1);
 edtTotalIni5.Text :=  Copy(vText,5,1);
 edtTotalIni4.Text :=  Copy(vText,4,1);
 edtTotalIni3.Text :=  Copy(vText,3,1);
 edtTotalIni2.Text :=  Copy(vText,2,1);
 edtTotalIni1.Text :=  Copy(vText,1,1);
end;

function TfrmStartBomba.LPad(value:string; tamanho:integer; caractere:char): string;
var
  i : integer;
begin
  Result := value;
  if(Length(value) > tamanho)then
   exit;
  for i := 1 to (tamanho - Length(value)) do
    Result := caractere + Result;
end;

function TfrmStartBomba.Base64FromBitmap(Bitmap: TBitmap): string;
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

function TfrmStartBomba.Base64FromBitmapResize(Bitmap: TBitmap): string;
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

function TfrmStartBomba.BitmapFromBase64(const base64: string): TBitmap;
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

procedure TfrmStartBomba.EditButton1Click(Sender: TObject);
var
 vFiltro:string;
begin
   if not Assigned(frmLocalEstoque) then
   Application.CreateForm(TfrmLocalEstoque,frmLocalEstoque);
   frmLocalEstoque.ShowModal(procedure(ModalResult: TModalResult)
   begin
    if frmLocalEstoque.vIdLocalEstoque.Length>0 then
    begin
       edtLocalEstoque.Text   := frmLocalEstoque.vNomeLocalEstoque;
       vIdLocalEstoque        := frmLocalEstoque.vIdLocalEstoque;
       vIdCombustivel         := frmLocalEstoque.vIdCombustivel;
       edtCombustivel.Text    := frmLocalEstoque.vNomeCombustivel;
       vFiltro := ' and s.dataastart='+FormatDateTime('yyyy-mm-dd',
        frmStartBomba.edtData.DateTime).QuotedString;
       vFiltro := vFiltro+' and l.id='+vIdLocalEstoque;

//       edtLitros.Text := dmDB.RetornaUltimoTotalizador(vIdLocalEstoque);

       dmDB.AbrirStartBomba(vFiltro);
       if not dmDB.VerificaStartAberto(vIdLocalEstoque) then
       begin
         ShowMessage('Existe um start em aberto para esse Bomba na data:'+
          dmDB.VerificaStartData+','+
           ' finalize antes de iniciar um novo!');
         edtLocalEstoque.Text :='';
       end;
    end;
   end);
end;

procedure TfrmStartBomba.EditButton4Click(Sender: TObject);
begin
  frmProdutos := TfrmProdutos.Create(Self);
  try
    frmprodutos.vAbastecimento :=1;
    frmProdutos.ShowModal(
    procedure(ModalResult: TModalResult)
    begin
      vIdCombustivel          := dmDB.vIdProduto;
      edtCombustivel.Text     := dmDB.vNomeProduto;
    end);
  finally
    frmProdutos.free;
  end;
end;

procedure TfrmStartBomba.edtTotalFim1ChangeTracking(Sender: TObject);
begin
  if TEdit(Sender).Text.Length>0 then
  begin

    vTotalizadorFim :=(
      edtTotalFim1.Text+
      edtTotalFim2.Text+
      edtTotalFim3.Text+
      edtTotalFim4.Text+
      edtTotalFim5.Text+
      ','+
      edtTotalFim6.Text);

    if TEdit(Sender).Name='edtTotalFim1' then
     DelayedSetFocus(edtTotalFim2);

    if TEdit(Sender).Name='edtTotalFim2' then
     DelayedSetFocus(edtTotalFim3);

    if TEdit(Sender).Name='edtTotalFim3' then
     DelayedSetFocus(edtTotalFim4);

    if TEdit(Sender).Name='edtTotalFim4' then
     DelayedSetFocus(edtTotalFim5);

    if TEdit(Sender).Name='edtTotalFim5' then
     DelayedSetFocus(edtTotalFim6);

  end;
end;

procedure TfrmStartBomba.edtTotalFim6ChangeTracking(Sender: TObject);
begin
    vTotalizadorFim :=
      edtTotalFim1.Text+
      edtTotalFim2.Text+
      edtTotalFim3.Text+
      edtTotalFim4.Text+
      edtTotalFim5.Text+
      ','+
      edtTotalFim6.Text;
end;

procedure TfrmStartBomba.edtTotalIni1ChangeTracking(Sender: TObject);
begin
 if TEdit(Sender).Text.Length>0 then
  begin

    vTotalizadorIni :=(
      edtTotalIni1.Text+
      edtTotalIni2.Text+
      edtTotalIni3.Text+
      edtTotalIni4.Text+
      edtTotalIni5.Text+
      ','+
      edtTotalIni6.Text);

    if TEdit(Sender).Name='edtTotalIni1' then
     DelayedSetFocus(edtTotalIni2);

    if TEdit(Sender).Name='edtTotalIni2' then
     DelayedSetFocus(edtTotalIni3);

    if TEdit(Sender).Name='edtTotalIni3' then
     DelayedSetFocus(edtTotalIni4);

    if TEdit(Sender).Name='edtTotalIni4' then
     DelayedSetFocus(edtTotalIni5);

    if TEdit(Sender).Name='edtTotalIni5' then
     DelayedSetFocus(edtTotalIni6);

  end;
end;

procedure TfrmStartBomba.edtTotalIni1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
   TEdit(Sender).SelectAll;
end;

procedure TfrmStartBomba.edtTotalIni2KeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if key = vkBack then
    frmStartBomba.edtTotalIni1.SetFocus;
end;

procedure TfrmStartBomba.edtTotalIni3KeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if key = vkBack then
    frmStartBomba.edtTotalIni2.SetFocus;
end;

procedure TfrmStartBomba.edtTotalIni4KeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if key = vkBack then
    frmStartBomba.edtTotalIni3.SetFocus;
end;

procedure TfrmStartBomba.edtTotalIni5KeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  if key = vkBack then
    frmStartBomba.edtTotalIni4.SetFocus;
end;

procedure TfrmStartBomba.edtTotalIni6ChangeTracking(Sender: TObject);
begin
   vTotalizadorIni :=
      edtTotalIni1.Text+
      edtTotalIni2.Text+
      edtTotalIni3.Text+
      edtTotalIni4.Text+
      edtTotalIni5.Text+
      ','+
      edtTotalIni6.Text;
end;

procedure TfrmStartBomba.edtTotalIni6KeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if key = vkBack then
    frmStartBomba.edtTotalIni5.SetFocus;
end;

procedure TfrmStartBomba.FormCreate(Sender: TObject);
begin
 {$IFDEF ANDROID}
   PermissaoCamera := JStringToString(TJManifest_permission.JavaClass.CAMERA);
   PermissaoReadStorage := JStringToString(TJManifest_permission.JavaClass.READ_EXTERNAL_STORAGE);
   PermissaoWriteStorage := JStringToString(TJManifest_permission.JavaClass.WRITE_EXTERNAL_STORAGE);
 {$ENDIF}

end;

procedure TfrmStartBomba.FormDestroy(Sender: TObject);
begin
 permissao.DisposeOf;
end;

procedure TfrmStartBomba.FormKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
var
  KeyboardService: IFMXVirtualKeyboardService;
begin
 if Key = vkHardwareBack then
 begin
   if TPlatformServices.Current.SupportsPlatformService(IFMXVirtualKeyboardService,
    IInterface(KeyboardService)) then
    KeyboardService.HideVirtualKeyboard;
   key := 0;
 end;
end;

procedure TfrmStartBomba.FormShow(Sender: TObject);
begin
 btnImgStop.Width        := (frmStartBomba.width/2)-25;
 btnAbreImgInicial.width := (frmStartBomba.width/2)-25;
 permissao               := T99Permissions.Create;
 btnExcluiItem.Visible   := false;
 tbPrincipal.TabPosition := TTabPosition.None;
 tbPrincipal.ActiveTab   := tbiLista;
 RecImgStart.Width       :=frmStartBomba.width-10;
 RecImgStart.Width       :=frmStartBomba.width-10;
 RecImgStart.Height      :=RecImgStart.Width;
 RecImgStop.Height       :=RecImgStart.Width ;
 btnBuscarClick(Sender);
end;

procedure TfrmStartBomba.GeraLista(vFiltro: string);
var
 item   : TListViewItem;
 txt    : TListItemText;
 txtH   : TListItemPurpose;
 img    : TListItemImage;
begin
 dmDB.AbrirStartBomba(vFiltro);
 dmDB.TStartbomba.First;
 Lista.Items.Clear;
 while not dmDB.TStartbomba.eof do
 begin
   item := Lista.Items.Add;
   with frmStartBomba do
   begin
     with item  do
     begin
       txt      := TListItemText(Objects.FindDrawable('Text3'));
       txt.Text := dmDB.TStartbombaLocal.AsString;
       txt.TagString := dmDB.TStartbombaid.AsString;

       txt           := TListItemText(Objects.FindDrawable('Text5'));
       txt.Text      := 'Start: ';
       txt           := TListItemText(Objects.FindDrawable('Text6'));
       txt.Text      := dmDB.TStartbombadataastart.AsString;
       txt.TagString := dmDB.TStartbombasyncaws.AsString;

       txt      := TListItemText(Objects.FindDrawable('Text4'));
       txt.Text := 'Hora: ';
       txt      := TListItemText(Objects.FindDrawable('Text7'));
       txt.Text := dmDB.TStartbombahorastart.AsString;


       txt      := TListItemText(Objects.FindDrawable('Text8'));
       txt.Text := 'Totalizador Start: ';
       txt      := TListItemText(Objects.FindDrawable('Text9'));
       txt.Text := dmDB.TStartbombavolumelitrosIni.AsString;

       txt      := TListItemText(Objects.FindDrawable('Text10'));
       txt.Text := 'Totalizador Fim: ';
       txt      := TListItemText(Objects.FindDrawable('Text11'));
       txt.Text := dmDB.TStartbombavolumelitrosFim.AsString;

       txt      := TListItemText(Objects.FindDrawable('Text12'));
       txt.Text := 'Status: ';
       txt      := TListItemText(Objects.FindDrawable('Text13'));
       txt.Text := dmDB.TStartbombastatusStr.AsString;

       txt      := TListItemText(Objects.FindDrawable('Text16'));
       txt.Text := 'Finalizar';

       img := TListItemImage(Objects.FindDrawable('Image10'));
       img.Bitmap     := frmPrincipal.imgStart.Bitmap;

       if dmDB.TStartbombastatus.AsInteger=1 then
       begin
        img := TListItemImage(Objects.FindDrawable('Image11'));
        img.Bitmap     := frmPrincipal.imgFinalizar.Bitmap;
       end
       else
       begin
        img := TListItemImage(Objects.FindDrawable('Image11'));
        img.Bitmap     := nil;
       end;

       if dmDB.TStartbombaimgStart.AsString.Length>0 then
       begin
        img := TListItemImage(Objects.FindDrawable('Image21'));
        img.Bitmap     := frmPrincipal.imgTotalizadorInicio.Bitmap;
        txt      := TListItemText(Objects.FindDrawable('Text14'));
        txt.Text := 'Foto Inicio';
       end
       else
       begin
        img := TListItemImage(Objects.FindDrawable('Image21'));
        img.Bitmap     := nil;
        txt      := TListItemText(Objects.FindDrawable('Text14'));
        txt.Text := '';
       end;

       if dmDB.TStartbombaimgEnd.AsString.Length>0 then
       begin
        img := TListItemImage(Objects.FindDrawable('Image19'));
        img.Bitmap     := frmPrincipal.imgTotalizadorFim.Bitmap;
        txt      := TListItemText(Objects.FindDrawable('Text15'));
        txt.Text := 'Foto Fim';
       end
       else
       begin
        img := TListItemImage(Objects.FindDrawable('Image19'));
        img.Bitmap     := nil;
        txt      := TListItemText(Objects.FindDrawable('Text15'));
        txt.Text := '';
       end;
     end;
     dmDB.TStartbomba.Next;
   end;
 end;
end;

procedure TfrmStartBomba.Layout17Click(Sender: TObject);
begin
 if vImg64Stop.Length>0 then
  imgStop.Bitmap  := BitmapFromBase64(vImg64Stop)
 else
  imgStop.Bitmap  := nil;
 MudarAba(tbiImg,sender);
end;

procedure TfrmStartBomba.LibraryPermissionRequestResult(Sender: TObject;
  const APermissions: TArray<string>;
  const AGrantResults: TArray<TPermissionStatus>);
begin
 if (Length(AGrantResults) = 2) and
  (AGrantResults[0] = TPermissionStatus.Granted) and
  (AGrantResults[1] = TPermissionStatus.Granted) then
   ActLibrary.Execute
  else
   TDialogService.ShowMessage('Você não tem permissão para acessar as fotos');
end;

procedure TfrmStartBomba.LimpaCampos;
begin
 vStart :=0;
 edtLocalEstoque.Text :='';
 vTotalizadorIni      :='';
 vTotalizadorFim      :='';
 edtCombustivel.Text  :='';
 imgStart.Bitmap      :=nil;
 imgStop.Bitmap       :=nil;
 vImg64Start          :='';
 vImg64Stop           :='';
 btnImgStop.Visible   :=false;
 btnFotoInicio.Visible   := true;
 btnFotoFim.Visible      := true;
 layLitrosFim.Visible    := false;
 laydataHoraFim.Visible  := false;
 layBuscaMaquina.Enabled := true;
 LayLitrosIni.Enabled    := true;
 RecImgStart.Enabled     := true;
 btnFotoInicio.Enabled   := true;
 edtData.Enabled         := true;
 edtHora.Enabled         := true;
 edtData.Date            := date;
 imgChekEnd.Visible      := false;
 imgChekStart.Visible    := false;
 imgStart.Bitmap         := nil;
 imgStop.Bitmap          := nil;
 ImgMnuTotalIni.Bitmap   := nil;
 ImgMnuTotalFim.Bitmap   := nil;
 vImg64Start             := '';
 vImg64Stop              := '';

 edtTotalIni1.Text       := '';
 edtTotalIni2.Text       := '';
 edtTotalIni3.Text       := '';
 edtTotalIni4.Text       := '';
 edtTotalIni5.Text       := '';
 edtTotalIni6.Text       := '';

 edtTotalFim1.Text       := '';
 edtTotalFim2.Text       := '';
 edtTotalFim3.Text       := '';
 edtTotalFim4.Text       := '';
 edtTotalFim5.Text       := '';
 edtTotalFim6.Text       := '';

end;

procedure TfrmStartBomba.ListaGesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
 btnExcluiItem.Visible   := true;
end;

procedure TfrmStartBomba.ListaItemClickEx(const Sender: TObject;
  ItemIndex: Integer; const LocalClickPos: TPointF;
  const ItemObject: TListItemDrawable);
begin
  btnImgStop.Visible   :=true;
  vIdStart   := TAppearanceListViewItem(Lista.Selected).Objects.FindObjectT<TListItemText>
   ('Text3').TagString;
  vFlagSync          := TAppearanceListViewItem(Lista.Selected).Objects.FindObjectT<TListItemText>
   ('Text6').TagString;

  if ItemObject is TListItemImage then
  begin
    if TListItemImage(ItemObject).Name='Image11'  then
    begin
     if TListItemImage(ItemObject).Bitmap<>nil then
     begin
      dmDB.TStartBombaInsert.Close;
      dmDB.TStartBombaInsert.Open;
      dmDB.TStartBombaInsert.Filtered := false;
      dmDB.TStartBombaInsert.Filter   := 'id='+vIdStart;
      dmDB.TStartBombaInsert.Filtered := true;
      dmdb.TStartBombaInsert.Edit;
      vStart               := 1;
      dmDB.AbrirStartBomba(' and s.id='+vIdStart);
      edtLocalEstoque.Text := dmDB.TStartbombaLocal.AsString;
      vImg64Start          := dmDB.TStartbombaimgStart.AsString;
      vImg64Stop           := dmDB.TStartbombaimgEnd.AsString;
      if vImg64Start.Length>0 then
      begin
       ImgMnuTotalIni.Bitmap   := BitmapFromBase64(vImg64Start);
       imgChekStart.Visible    := true;
      end
      else
      begin
       imgChekStart.Visible    := false;
       ImgMnuTotalIni.Bitmap   := nil;
      end;

      if vImg64Stop.Length>0 then
      begin
       imgChekEnd.Visible      := true;
       ImgMnuTotalFim.Bitmap   := BitmapFromBase64(vImg64Stop)
      end
      else
      begin
       imgChekEnd.Visible      := false;
       ImgMnuTotalFim.Bitmap   := nil;
      end;

      imgChekStart.Visible    := vImg64Start.Length>0;
      imgChekEnd.Visible      := vImg64Stop.Length>0;

      edtCombustivel.Text  := dmDB.TStartbombaCombustivelNome.AsString;
      vIdLocalEstoque      := dmDB.TStartbombaidlocalestoque.AsString;
      vIdCombustivel       := dmDB.TStartbombacombustivel.AsString;
      vTotalizadorIni      := dmDB.TStartbombavolumelitrosIni.AsString;
      AtualizaValoresTotalInicial(vTotalizadorIni);
      edtData.Date         := dmDB.TStartbombadataastart.AsDateTime;
      vTotalizadorFim      := dmDB.TStartbombavolumelitrosFim.AsString;
      edtHora.Date         := dmDB.TStartbombahorastart.AsDateTime;
      edtHoraFim.Date      := dmDB.TStartbombahoraend.AsDateTime;

      layBuscaMaquina.Enabled := false;
      edtCombustivel.Enabled  := false;
      LayLitrosIni.Enabled    := false;
      edtData.Enabled         := false;
      edtHora.Enabled         := false;


      RecImgStart.Enabled     := false;
      btnFotoInicio.Enabled   := false;

      RecImgStop.Enabled      := true;
      btnFotoFim.Enabled      := true;

      laydataHoraFim.Visible  := true;
      layLitrosFim.Visible    := true;

      MudarAba(tbiCad,sender);
      Exit;
     end;
    end;
    if TListItemImage(ItemObject).Name='Image21'  then
    begin
     if TListItemImage(ItemObject).Bitmap<>nil then
     begin
       btnFotoInicio.Visible := false;
       vVisualiza :=1;
       dmDB.AbrirStartBomba(' and s.id='+vIdStart);
       if dmDB.TStartbombaimgStart.AsString.Length>0 then
        imgStart.Bitmap  := BitmapFromBase64(dmDB.TStartbombaimgStart.AsString)
       else
        imgStart.Bitmap  := nil;

       MudarAba(tbiImg,sender);
     end;
    end;

    if TListItemImage(ItemObject).Name='Image19'  then
    begin
     if TListItemImage(ItemObject).Bitmap<>nil then
     begin
       btnFotoFim.Visible := false;
       vVisualiza :=1;
       if dmDB.TStartbombaimgEnd.AsString.Length>0 then
        imgStop.Bitmap  := BitmapFromBase64(dmDB.TStartbombaimgEnd.AsString)
       else
        imgStop.Bitmap  := nil;
       MudarAba(timImgStop,sender);
     end;
    end;

  end;
end;

procedure TfrmStartBomba.MudarAba(ATabItem: TTabItem; sender: TObject);
begin
  actMudarAba.Tab := ATabItem;
  actMudarAba.ExecuteTarget(sender);
end;

procedure TfrmStartBomba.Rectangle17Click(Sender: TObject);
begin
 MudarAba(tbiLista,sender);
end;

procedure TfrmStartBomba.Rectangle27Click(Sender: TObject);
begin
 btnFotoInicio.Visible := true;
 btnFotoFim.Visible    := true;
 if not imgStart.Bitmap.IsEmpty then
 begin
  vImg64Start     := Base64FromBitmap(imgStart.Bitmap);
  vImg64StartSend := Base64FromBitmapResize(imgStart.Bitmap);
  ImgMnuTotalIni.Bitmap := imgStart.Bitmap;
 end;
 if not imgStop.Bitmap.IsEmpty then
 begin
  vImg64Stop     := Base64FromBitmap(imgStop.Bitmap);
  vImg64StopSend := Base64FromBitmapResize(imgStop.Bitmap);
  ImgMnuTotalFim.Bitmap := imgStop.Bitmap;
 end;
 imgChekStart.Visible    := vImg64Start.Length>0;
 imgChekEnd.Visible      := vImg64Stop.Length>0;

 if vVisualiza=1 then
  MudarAba(tbilista,sender)
 else
  MudarAba(tbiCad,sender);
 vVisualiza :=0;
end;

procedure TfrmStartBomba.TakePicturePermissionRequestResult(Sender: TObject;
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

procedure TfrmStartBomba.tbPrincipalChange(Sender: TObject);
begin
  case tbPrincipal.TabIndex of
  0:lblPage.Text            := 'Stard End Bomba';
  1:lblPage.Text            := 'Novo Start';
  2:lblPage.Text            := 'Foto Inicial';
  3:lblPage.Text            := 'Foto Final';
 end;
end;

end.

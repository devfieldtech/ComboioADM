unit UChekList;

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
    ,Soap.EncdDecd,UFrameLista, FMX.Memo.Types,uCombobox;
type
  TfrmCheckList = class(TForm)
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
    layBase: TLayout;
    recPrincipal: TRectangle;
    tbPrincipal: TTabControl;
    tbiLista: TTabItem;
    layBtnLista: TLayout;
    btnHabilitaSync: TRectangle;
    Image16: TImage;
    Label32: TLabel;
    btnExcluiItem: TRectangle;
    Image1: TImage;
    lblExcluir: TLabel;
    tbiCad: TTabItem;
    TimerMsg: TTimer;
    VertScrollBox4: TVertScrollBox;
    layTBICad: TLayout;
    Layout6: TLayout;
    Layout14: TLayout;
    Rectangle7: TRectangle;
    Layout15: TLayout;
    Label10: TLabel;
    Label3: TLabel;
    edtData: TDateEdit;
    edtHora: TTimeEdit;
    Layout44: TLayout;
    Rectangle20: TRectangle;
    Layout45: TLayout;
    Label34: TLabel;
    Label35: TLabel;
    edtLatitude: TEdit;
    edtLongitude: TEdit;
    layAlerta: TLayout;
    Rectangle5: TRectangle;
    Layout16: TLayout;
    Layout17: TLayout;
    Rectangle23: TRectangle;
    Label11: TLabel;
    cbxTipoAlerta: TComboBox;
    Layout46: TLayout;
    btnConfirmaAlerta: TRectangle;
    Image15: TImage;
    Label36: TLabel;
    ToolBar1: TToolBar;
    recToolBar: TRectangle;
    lblCad: TLabel;
    btnFechar: TImage;
    layTop: TLayout;
    Rectangle16: TRectangle;
    btnVoltar: TSpeedButton;
    lblPage: TLabel;
    LocationSensor1: TLocationSensor;
    Rectangle19: TRectangle;
    Layout2: TLayout;
    Layout4: TLayout;
    edtDataF: TDateEdit;
    Label1: TLabel;
    Layout22: TLayout;
    Label9: TLabel;
    edtChekListF: TEdit;
    btnBuscar: TRectangle;
    LaybtnEntrar: TLayout;
    Label25: TLabel;
    Image11: TImage;
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
    lista: TListView;
    imgData: TImage;
    imgSyncOf: TImage;
    imgSyncOn: TImage;
    imgStatus: TImage;
    imgCheckList: TImage;
    imgFinalizar: TImage;
    VertScrollBox5: TVertScrollBox;
    layListaItens: TLayout;
    listaItens: TListView;
    imgCheckFalse: TImage;
    imgChecked: TImage;
    imgCam: TImage;
    layImagemItem: TLayout;
    Layout1: TLayout;
    layFotoHorimetro: TLayout;
    RecImgTtem: TRectangle;
    imgItem: TImage;
    btnFotoItem: TRectangle;
    Image12: TImage;
    Label8: TLabel;
    Layout10: TLayout;
    Image2: TImage;
    imgNoPhoto: TImage;
    layDadosGeral: TLayout;
    Layout7: TLayout;
    Layout12: TLayout;
    Label6: TLabel;
    Layout18: TLayout;
    edtMaquina: TEdit;
    btnLerQrCodMaquina: TEditButton;
    Image6: TImage;
    btnBuscaMaquina: TEditButton;
    Image13: TImage;
    laydadosMaquina: TLayout;
    Layout8: TLayout;
    Layout47: TLayout;
    Label28: TLabel;
    edtDescricao: TMemo;
    Layout13: TLayout;
    Layout9: TLayout;
    Label2: TLabel;
    Layout34: TLayout;
    edtCheckListGeneric: TEdit;
    btnLerQr: TEditButton;
    Image5: TImage;
    ClearEditButton1: TClearEditButton;
    Layout36: TLayout;
    Label21: TLabel;
    Label27: TLabel;
    lblUltimoHr: TLabel;
    lblUltimoKM: TLabel;
    layCentroCustoDestino: TLayout;
    Layout20: TLayout;
    Label12: TLabel;
    Layout31: TLayout;
    edtCentroCustoDestino: TEdit;
    btnBuscaCentro: TEditButton;
    Image14: TImage;
    ClearEditButton2: TClearEditButton;
    layKmHorimetro: TLayout;
    Layout49: TLayout;
    Label39: TLabel;
    edtKm: TEdit;
    edtHorimetro: TEdit;
    Label13: TLabel;
    layDadosChek: TLayout;
    Rectangle2: TRectangle;
    Rectangle6: TRectangle;
    Rectangle8: TRectangle;
    Rectangle11: TRectangle;
    Rectangle13: TRectangle;
    Rectangle18: TRectangle;
    Rectangle1: TRectangle;
    layButon: TLayout;
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
    btnGeraItens: TRectangle;
    Layout11: TLayout;
    Label5: TLabel;
    Image3: TImage;
    tbiItensCheck: TTabItem;
    Rectangle21: TRectangle;
    Rectangle4: TRectangle;
    imgMaquina: TImage;
    btnExcluiItemCheck: TRectangle;
    Image19: TImage;
    Label15: TLabel;
    imgCentroCusto: TImage;
    Layout19: TLayout;
    Layout41: TLayout;
    Label16: TLabel;
    edtPrefixoF: TEdit;
    Rectangle24: TRectangle;
    Layout50: TLayout;
    Layout51: TLayout;
    Label29: TLabel;
    edtGrupoItemsCheque: TEdit;
    EdtGeraComboItens: TEditButton;
    Image20: TImage;
    imgObs: TImage;
    Layout43: TLayout;
    Rectangle27: TRectangle;
    Layout48: TLayout;
    Rectangle28: TRectangle;
    Image22: TImage;
    Label22: TLabel;
    Layout52: TLayout;
    Rectangle29: TRectangle;
    Image23: TImage;
    Label30: TLabel;
    Memo1: TMemo;
    layObservacaoChek: TLayout;
    Rectangle30: TRectangle;
    layObservacaoChekTexto: TLayout;
    Rectangle31: TRectangle;
    Layout54: TLayout;
    btnSalvaObsChek: TRectangle;
    Image24: TImage;
    Label31: TLabel;
    Layout55: TLayout;
    Rectangle32: TRectangle;
    Image25: TImage;
    Label33: TLabel;
    edtObsText: TEdit;
    layObservacao: TLayout;
    Rectangle33: TRectangle;
    layObservacaoText: TLayout;
    Rectangle25: TRectangle;
    Layout35: TLayout;
    btnSalvaObs: TRectangle;
    Image21: TImage;
    Label20: TLabel;
    Layout42: TLayout;
    Rectangle26: TRectangle;
    Image17: TImage;
    Label14: TLabel;
    memoObsItem: TEdit;
    imgFoto: TImage;
    ClearEditButton3: TClearEditButton;
    procedure FormShow(Sender: TObject);
    procedure btnLerQrClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure ClearEditButton1Click(Sender: TObject);
    procedure listaItensItemClickEx(const Sender: TObject; ItemIndex: Integer;
      const LocalClickPos: TPointF; const ItemObject: TListItemDrawable);
    procedure Image2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActFotoDidFinishTaking(Image: TBitmap);
    procedure btnBuscarClick(Sender: TObject);
    procedure Rectangle17Click(Sender: TObject);
    procedure btnConfirmarAClick(Sender: TObject);
    procedure listaItemClickEx(const Sender: TObject; ItemIndex: Integer;
      const LocalClickPos: TPointF; const ItemObject: TListItemDrawable);
    procedure btnVoltar1Click(Sender: TObject);
    procedure btnGeraItensClick(Sender: TObject);
    procedure listaItensScrollViewChange(Sender: TObject);
    procedure btnLerQrCodMaquinaClick(Sender: TObject);
    procedure btnBuscaMaquinaClick(Sender: TObject);
    procedure btnBuscaCentroClick(Sender: TObject);
    procedure btnExcluiItemCheckClick(Sender: TObject);
    procedure listaGesture(Sender: TObject; const EventInfo: TGestureEventInfo;
      var Handled: Boolean);
    procedure btnConfirmaAlertaClick(Sender: TObject);
    procedure EdtGeraComboItensClick(Sender: TObject);
    procedure Image17Click(Sender: TObject);
    procedure btnSalvaObsClick(Sender: TObject);
    procedure btnSalvaObsChekClick(Sender: TObject);
    procedure Image25Click(Sender: TObject);
    procedure ClearEditButton3Click(Sender: TObject);
  private
    c : TCustomCombo;
    vLatitude,vLongitude,vObsItem:string;
    vTipoAlerta,vErro:integer;
    permissao : T99Permissions;
    FImageStream: TStringStream;
    Location: TLocationCoord2D;
    FGeocoder: TGeocoder;
    Access_Fine_Location, Access_Coarse_Location : string;
    PermissaoCamera, PermissaoReadStorage, PermissaoWriteStorage,
    vImg64Item : string;
    function BitmapFromBase64(const base64: string): TBitmap;
    function Base64FromBitmap(Bitmap: TBitmap): string;
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
    procedure TakePicturePermissionRequestResult(
        Sender: TObject; const APermissions: TArray<string>;
        const AGrantResults: TArray<TPermissionStatus>);
    procedure LocationPermissionRequestResult
                (Sender: TObject; const APermissions: TArray<string>;
                const AGrantResults: TArray<TPermissionStatus>);
  public
    vFiltro,vIdCentroCusto,vIdCheckGeneric,vIdCheckList,
    vIdItem,vIdMaquina,vCheckTipo,vFlagSync,vIdCentroCustoDestino,vIdGrupoF,
    vObservacaoChek:string;
    vStatusCheck:integer;
    vItemChecado,vHorimetro,vKM,vFotoObrigatoria :Double;
    vIdexList:integer;
    procedure GeraLista;
    procedure GeraListaItens;
    procedure ItemCheckListClick(Sender: TObject; const Point: TPointF);
    procedure GeraComboCheklist;
    procedure GeraComboCentroCusto;
    procedure GeraComboGrupoItems;
    procedure ItemCheckListCentroClick(Sender: TObject; const Point: TPointF);
    procedure ItemCheckListGrupoClick(Sender: TObject; const Point: TPointF);
  end;

var
  frmCheckList: TfrmCheckList;

implementation

{$R *.fmx}

uses UPrincipal, UDmDB, UnitCamera, Maquinas;

{ TfrmCheckList }

procedure TfrmCheckList.LibraryPermissionRequestResult(Sender: TObject;
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

procedure TfrmCheckList.DisplayMessageCamera(Sender: TObject;
  const APermissions: TArray<string>; const APostProc: TProc);
begin
  TDialogService.ShowMessage('O app precisa acessar a câmera e as fotos do seu dispositivo',
  procedure(const AResult: TModalResult)
  begin
   APostProc;
  end);
end;

procedure TfrmCheckList.DisplayMessageLibrary(Sender: TObject;
  const APermissions: TArray<string>; const APostProc: TProc);
begin
 TDialogService.ShowMessage('O app precisa acessar as fotos do seu dispositivo',
  procedure(const AResult: TModalResult)
  begin
    APostProc;
  end);
end;

procedure TfrmCheckList.DisplayRationale(Sender: TObject;
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

procedure TfrmCheckList.EdtGeraComboItensClick(Sender: TObject);
begin
 GeraComboGrupoItems;
 c.ShowMenu;
end;

procedure TfrmCheckList.btnBuscaCentroClick(Sender: TObject);
begin
 GeraComboCentroCusto;
 c.ShowMenu;
end;

procedure TfrmCheckList.btnBuscaMaquinaClick(Sender: TObject);
begin
  frmMaquinas:= TfrmMaquinas.Create(nil);
  frmMaquinas.ShowModal(procedure(ModalResult: TModalResult)
  begin
    dmDB.AbrirMaquinaId(dmDB.vIdMaquinaSel);
    vIdMaquina                   := dmDB.TMaquinasid.AsString;
    layDadosChek.Visible         := true;
    edtMaquina.Text              := dmDB.TMaquinasprefixo.AsString;
    dmDB.RetornaUltimoKMHorimetro(dmDB.TMaquinasid.AsString);
    lblUltimoKM.Text             := dmDB.vUltimoKM;
    lblUltimoHr.Text             := dmDB.vUltimoHorimetro;
    case dmDB.TMaquinastipomedicao.AsInteger of
    0:begin
        edtHorimetro.Enabled     :=true;
        edtkm.Enabled            :=false;
      end;
    1:begin
        edtHorimetro.Enabled :=false;
        edtkm.Enabled        :=true;
      end;
    2:begin
        edtHorimetro.Enabled     :=true;
        edtkm.Enabled            :=true;
      end;
    end;
  end);
end;

procedure TfrmCheckList.btnBuscarClick(Sender: TObject);
begin
  GeraLista;
end;

procedure TfrmCheckList.btnConfirmaAlertaClick(Sender: TObject);
begin
 if cbxTipoAlerta.ItemIndex=-1 then
 begin
   ShowMessage('Selecione um aleta!');
   Exit;
 end;
   case cbxTipoAlerta.ItemIndex of
     0:vTipoAlerta:=1;
     1:vTipoAlerta:=2;
     2:vTipoAlerta:=3;
     3:vTipoAlerta:=4;
   end;
 layAlerta.Visible := false;
end;

procedure TfrmCheckList.btnConfirmarAClick(Sender: TObject);
begin
 MessageDlg('Deseja Realmente Finalizar esse Checklist?', System.UITypes.TMsgDlgType.mtInformation,
 [System.UITypes.TMsgDlgBtn.mbYes,
 System.UITypes.TMsgDlgBtn.mbNo
 ], 0,
 procedure(const AResult: System.UITypes.TModalResult)
 var
  vChekFoto:string;
 begin
  case AResult of
   mrYES:
   begin
     vChekFoto:=dmDB.CheckFotosTirada(vIdCheckList);
     if vChekFoto='OK' then
     begin
      dmDB.FinalizaCheckList(vIdCheckList);
      GeraLista;
      tbPrincipal.ActiveTab := tbiLista;
     end
     else
      ShowMessage(vChekFoto);
   end;
   mrNo:
  end;
 end);
end;

procedure TfrmCheckList.btnGeraItensClick(Sender: TObject);
begin
 vErro :=0;
 if dmDB.cheklistRealizado.State=dsInsert then
 begin
   if edtMaquina.Text.Length=0 then
   begin
     ShowMessage('Selecione a Maquina!');
     Exit;
   end;

   if edtCheckListGeneric.Text.Length=0 then
   begin
     ShowMessage('Selecione o Checklist Modelo!');
     Exit;
   end;
   if vCheckTipo='1' then
   begin
     if edtCentroCustoDestino.Text.Length=0 then
     begin
       ShowMessage('Informe o destino da maquina!');
       Exit;
     end;
   end;
   // checagem Horimetro Hodometro
    if dmDB.TMaquinastipomedicao.AsInteger=0 then // se for Horimetro
    begin
      if(edtHorimetro.Text.Length=0) then
      begin
       ShowMessage('Informe o Horimetro!!');
       edtHorimetro.SetFocus;
       Exit;
      end;
      vHorimetro := StrToFloat(StringReplace(edtHorimetro.Text,'.','',[rfReplaceAll]));
      if (vTipoAlerta=0)and(strToInt(lblUltimoHr.Text)>=vHorimetro) then
      begin
       vErro :=1;
       frmPrincipal.ReproduzSom('Horimetro Final Menor');
       MessageDlg('Horímetro Atual não pode ser menor ou igual ao último'+#13+
       'Deseja Informar um alerta para prosseguir?', System.UITypes.TMsgDlgType.mtInformation,
       [System.UITypes.TMsgDlgBtn.mbYes,
       System.UITypes.TMsgDlgBtn.mbNo
       ], 0,
       procedure(const AResult: System.UITypes.TModalResult)
       begin
        case AResult of
         mrYES:
         begin
           layAlerta.Visible := true;
           Exit;
         end;
         mrNo:
          Exit;
        end;
       end);
      end;
      if vErro=0 then
      begin
        if (vTipoAlerta=0)and(vHorimetro-strToInt(lblUltimoHr.Text)>24) then
        begin
         vErro :=1;
         frmPrincipal.ReproduzSom('Horimetro maior 24');
         MessageDlg('Horímetro Atual não pode ser maior do que 24 horas do último registrado'+#13+
         'Deseja Informar um alerta para prosseguir?', System.UITypes.TMsgDlgType.mtInformation,
         [System.UITypes.TMsgDlgBtn.mbYes,
         System.UITypes.TMsgDlgBtn.mbNo
         ], 0,
         procedure(const AResult: System.UITypes.TModalResult)
         begin
          case AResult of
           mrYES:
           begin
             layAlerta.Visible := true;
             Exit;
           end;
           mrNo:
            Exit;
          end;
         end);
        end
      end;
    end; // fim checagem Horimetro
    if dmDB.TMaquinastipomedicao.AsInteger=1 then // se for Hodometro
    begin
      if(edtKM.Text.Length=0) then
      begin
       ShowMessage('Informe o KM!!');
       edtHorimetro.SetFocus;
       Exit;
      end;
      vKM := StrToFloat(StringReplace(edtKM.Text,'.','',[rfReplaceAll]));
      if(vTipoAlerta=0)and(strToInt(lblUltimokm.Text)>=vKM) then
      begin
        vErro :=1;
        frmPrincipal.ReproduzSom('km Final Menor');
        MessageDlg('KM Atual não pode ser menor ou igual ao último'+#13+
        'Deseja Informar um alerta para prosseguir?', System.UITypes.TMsgDlgType.mtInformation,
        [System.UITypes.TMsgDlgBtn.mbYes,
        System.UITypes.TMsgDlgBtn.mbNo
        ], 0,
        procedure(const AResult: System.UITypes.TModalResult)
        begin
         case AResult of
          mrYES:
          begin
            layAlerta.Visible := true;
            Exit;
          end;
          mrNo:
           Exit;
         end;
        end);
      end;
      if vErro=0 then
      begin
        if (vTipoAlerta=0)and((vKM-strToInt(lblUltimokm.Text))>600) then
        begin
          vErro :=1;
          frmPrincipal.ReproduzSom('km maior 600');
          MessageDlg('KM Atual não pode ser 600 km maior do que o último registrado?',
          System.UITypes.TMsgDlgType.mtInformation,
          [System.UITypes.TMsgDlgBtn.mbYes,
          System.UITypes.TMsgDlgBtn.mbNo
          ], 0,
          procedure(const AResult: System.UITypes.TModalResult)
          begin
           case AResult of
            mrYES:
            begin
              layAlerta.Visible := true;
              Exit;
            end;
            mrNo:
             Exit;
           end;
          end);
        end
      end;
    end;//Fim  checagem Hdometro
    if dmDB.TMaquinastipomedicao.AsInteger=2 then // se for Horimetro e Hodometro
    begin
      if(edtHorimetro.Text.Length=0) then
      begin
       ShowMessage('Informe o Horimetro!!');
       edtHorimetro.SetFocus;
       Exit;
      end;
      vHorimetro := StrToFloat(StringReplace(edtHorimetro.Text,'.','',[rfReplaceAll]));
      if (edtKM.Text.Length=0) then
      begin
       ShowMessage('Informe o KM!!');
       edtKM.SetFocus;
       Exit;
      end;
      vKM := StrToFloat(StringReplace(edtKM.Text,'.','',[rfReplaceAll]));
      if (vTipoAlerta=0)and(strToInt(lblUltimoHr.Text)>=vHorimetro) then
      begin
        vErro :=1;
        frmPrincipal.ReproduzSom('Horimetro Final Menor');
        MessageDlg('Horímetro Atual não pode ser menor ou igual ao último'+#13+
        'Deseja Informar um alerta para prosseguir?', System.UITypes.TMsgDlgType.mtInformation,
        [System.UITypes.TMsgDlgBtn.mbYes,
        System.UITypes.TMsgDlgBtn.mbNo
        ], 0,
        procedure(const AResult: System.UITypes.TModalResult)
        begin
         case AResult of
          mrYES:
          begin
            layAlerta.Visible := true;
            Exit;
          end;
          mrNo:
           Exit;
         end;
        end);
      end;
      if vErro=0 then
      begin
        if (vTipoAlerta=0)and((vHorimetro-strToInt(lblUltimoHr.Text))>24) then
        begin
         vErro :=1;
         frmPrincipal.ReproduzSom('Horimetro maior 24');
         MessageDlg('Horímetro Atual não pode ser maior do que 24 horas do último registrado'+#13+
         'Deseja Informar um alerta para prosseguir?', System.UITypes.TMsgDlgType.mtInformation,
         [System.UITypes.TMsgDlgBtn.mbYes,
         System.UITypes.TMsgDlgBtn.mbNo
         ], 0,
         procedure(const AResult: System.UITypes.TModalResult)
         begin
          case AResult of
           mrYES:
           begin
             layAlerta.Visible := true;
             Exit;
           end;
           mrNo:
            Exit;
          end;
         end);
        end;
      end;
      if vErro=0 then
      begin
        if(vTipoAlerta=0)and(strToInt(lblUltimokm.Text)>=vkM) then
        begin
         vErro :=1;
         frmPrincipal.ReproduzSom('km Final Menor');
         MessageDlg('KM Atual não pode ser menor ou igual ao último'+#13+
         'Deseja Informar um alerta para prosseguir?', System.UITypes.TMsgDlgType.mtInformation,
         [System.UITypes.TMsgDlgBtn.mbYes,
         System.UITypes.TMsgDlgBtn.mbNo
         ], 0,
         procedure(const AResult: System.UITypes.TModalResult)
         begin
          case AResult of
           mrYES:
           begin
             layAlerta.Visible := true;
             Exit;
           end;
           mrNo:
            Exit;
          end;
         end);
        end;
        if (vTipoAlerta=0)and((vKM-strToInt(lblUltimokm.Text))>600) then
        begin
          vErro :=1;
          frmPrincipal.ReproduzSom('km maior 600');
          MessageDlg('KM Atual não pode ser 600 km maior do que o último registrado?',
          System.UITypes.TMsgDlgType.mtInformation,
          [System.UITypes.TMsgDlgBtn.mbYes,
          System.UITypes.TMsgDlgBtn.mbNo
          ], 0,
          procedure(const AResult: System.UITypes.TModalResult)
          begin
           case AResult of
            mrYES:
            begin
              layAlerta.Visible := true;
              Exit;
            end;
            mrNo:
             Exit;
           end;
          end);
        end
      end;
    end;
    if (vErro)=0 then
    begin
      edtCheckListGeneric.Enabled := false;
      vIdCheckList := dmDB.InsereChekListRealizado(vIdCheckGeneric,
       StringReplace(edtHorimetro.Text,',','.',[rfReplaceAll]),
       StringReplace(edtKm.Text,',','.',[rfReplaceAll]),
       vIdCentroCustoDestino,intToStr(vTipoAlerta));
      if vIdCheckList<>'0' then
      begin
       dmDB.AbrirChekList(' and a.id='+vIdCheckList);
       GeraListaItens;
       tbPrincipal.ActiveTab := tbiItensCheck;
      end;
    end;
 end
 else
 begin
   dmDB.AbrirChekList(' and a.id='+vIdCheckList);
   GeraListaItens;
   tbPrincipal.ActiveTab := tbiItensCheck;
 end;
end;

procedure TfrmCheckList.btnLerQrClick(Sender: TObject);
begin
 dmDB.AbreCheckList(dmDB.vIdGrupoMaquinaSel);
 GeraComboCheklist;
 c.ShowMenu;
end;

procedure TfrmCheckList.btnLerQrCodMaquinaClick(Sender: TObject);
begin
 if Not Assigned(FrmCamera) then
   Application.CreateForm(TFrmCamera, FrmCamera);
  FrmCamera.ShowModal(procedure(ModalResult: TModalResult)
  begin
     if dmDB.AbriMaquinaPrefixo(FrmCamera.codigo) then
     begin
       layDadosChek.Visible         := false;
       lblUltimoKM.Text             :='';
       lblUltimoHr.Text             :='';
       ShowMessage('Maquina Não Encontrado');
       edtMaquina.Text :='';
       Exit;
     end
     else
     begin
      vIdMaquina                   := dmDB.TMaquinasid.AsString;
      layDadosChek.Visible         := true;
      edtMaquina.Text              := dmDB.TMaquinasprefixo.AsString;
      dmDB.RetornaUltimoKMHorimetro(dmDB.TMaquinasid.AsString);
      lblUltimoKM.Text             := dmDB.vUltimoKM;
      lblUltimoHr.Text             := dmDB.vUltimoHorimetro;
      case dmDB.TMaquinastipomedicao.AsInteger of
      0:begin
          edtHorimetro.Enabled     :=true;
          edtkm.Enabled            :=false;
        end;
      1:begin
          edtHorimetro.Enabled :=false;
          edtkm.Enabled        :=true;
        end;
      2:begin
          edtHorimetro.Enabled     :=true;
          edtkm.Enabled            :=true;
        end;
      end;
     end;
  end);
end;

procedure TfrmCheckList.btnNovoClick(Sender: TObject);
begin
 vStatusCheck:=1;
 layDadosChek.Enabled        := true;
 edtCheckListGeneric.Enabled := true;
 edtCheckListGeneric.Text    :='';
 edtDescricao.Text           :='';
 edtHorimetro.Text           :='';
 edtKm.Text                  :='';
 edtMaquina.Text             :='';
 lblUltimoHr.Text            :='0';
 lblUltimoKM.Text            :='0';
 listaItens.Items.Clear;
 layDadosChek.Visible  := false;
 btnGeraItens.Visible  := false;
 layImagemItem.Visible := false;
 tbPrincipal.ActiveTab := tbiCad;
 dmDB.cheklistRealizado.Close;
 dmDB.cheklistRealizado.Open;
 dmDB.cheklistRealizado.Insert;
end;

procedure TfrmCheckList.btnSalvaObsChekClick(Sender: TObject);
begin
 dmDB.ObservacaoCheck(vIdCheckList,edtObsText.Text);
 ShowMessage('Observação atualizada com sucesso!!');
 GeraLista;
 layObservacaoChek.Visible := false;
end;

procedure TfrmCheckList.btnSalvaObsClick(Sender: TObject);
begin
 dmDB.ObservacaoItem(vidItem,memoObsItem.Text);
 ShowMessage('Observação atualizada com sucesso!!');
 GeraListaItens;
 layObservacao.Visible := false;
end;

procedure TfrmCheckList.btnVoltar1Click(Sender: TObject);
begin
 Close;
end;

procedure TfrmCheckList.ClearEditButton1Click(Sender: TObject);
begin
 edtCheckListGeneric.Text :='';
 layDadosChek.Visible     := false;
 btnGeraItens.Visible     := false;
end;

procedure TfrmCheckList.ClearEditButton3Click(Sender: TObject);
begin
 edtGrupoItemsCheque.Text :='';
 GeraListaItens;
end;

procedure TfrmCheckList.FormCreate(Sender: TObject);
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

procedure TfrmCheckList.FormShow(Sender: TObject);
begin
 layObservacaoChek.Width        := frmCheckList.Width-20;
 layObservacaoChek.Visible      := false;
 layObservacao.Width        := frmCheckList.Width-20;
 layObservacao.Visible      := false;
 btnExcluiItemCheck.Visible := false;
 btnExcluiItem.Visible      := false;
 layImagemItem.Visible      := false;
 lblPage.Text               := 'Checklist';
 tbPrincipal.TabPosition    := TTabPosition.None;
 tbPrincipal.ActiveTab      := tbiLista;
end;

procedure TfrmCheckList.GeraLista;
var
 item   : TListViewItem;
 txt    : TListItemText;
 txtH   : TListItemPurpose;
 img    : TListItemImage;
begin
 vFiltro := ' and date(a.datareg)='+FormatDateTime('yyyy-mm-dd',edtDataF.Date).QuotedString;
 if edtChekListF.Text.Length>0 then
  vFiltro := vFiltro + ' and a.nome like '+QuotedStr('%'+edtChekListF.Text+'%');
 if edtPrefixoF.Text.Length>0 then
  vFiltro := vFiltro + ' and m.prefixo='+QuotedStr('%'+edtPrefixoF.Text+'%');
 dmDB.AbrirChekList(vFiltro);
 Lista.Items.Clear;
 dmDB.cheklistRealizado.First;
 while not dmDB.cheklistRealizado.eof do
 begin
   item := Lista.Items.Add;
   with frmCheckList do
   begin
     with item  do
     begin
       txt      := TListItemText(Objects.FindDrawable('Text1'));
       txt.Text := dmDB.cheklistRealizadoNome.AsString;
       txt.TagString := dmDB.cheklistRealizadoid.AsString;
       txt.TagFloat  := dmDB.cheklistRealizadostatus.AsFloat;

       img := TListItemImage(Objects.FindDrawable('Image2'));
       img.Bitmap     := imgData.Bitmap;
       txt      := TListItemText(Objects.FindDrawable('Text4'));
       txt.Text := FormatDateTime('dd/mm/yyyy',dmDB.cheklistRealizadodata.AsDateTime);
       txt.TagString := dmDB.cheklistRealizadoidcentrocustodestino.AsString;

       img := TListItemImage(Objects.FindDrawable('Image12'));
       img.Bitmap     := imgMaquina.Bitmap;
       txt      := TListItemText(Objects.FindDrawable('Text13'));
       txt.Text := dmDB.cheklistRealizadoPrefixo.AsString;
       txt.TagString := dmDB.cheklistRealizadoidmaquia.AsString;

       img := TListItemImage(Objects.FindDrawable('Image16'));
       img.Bitmap     := imgObs.Bitmap;
       txt      := TListItemText(Objects.FindDrawable('Text17'));
       txt.Text := 'Observação';
       txt.TagString := dmDB.cheklistRealizadoobservasao.AsString;

       txt      := TListItemText(Objects.FindDrawable('Text14'));
       txt.Text := 'Maquina';
       txt.TagString := dmDB.cheklistRealizadosyncAws.AsString;

       txt      := TListItemText(Objects.FindDrawable('Text15'));
       txt.Text := 'Centro de Custo Destino';

       img := TListItemImage(Objects.FindDrawable('Image3'));
       img.Bitmap     := imgCentroCusto.Bitmap;
       txt      := TListItemText(Objects.FindDrawable('Text5'));
       txt.Text := dmDB.cheklistRealizadoCentroCustoDestino.AsString;
       txt.TagString := dmDB.cheklistRealizadoidcentrocustodestino.AsString;

       if dmDB.cheklistRealizadosyncAws.AsInteger=0 then
       begin
        txt      := TListItemText(Objects.FindDrawable('Text6'));
        txt.Text := 'Sincronização Pendente';

        img := TListItemImage(Objects.FindDrawable('Image7'));
        img.Bitmap     := imgSyncOf.Bitmap;
       end;

       if dmDB.cheklistRealizadosyncAws.AsInteger=1 then
       begin
        txt      := TListItemText(Objects.FindDrawable('Text6'));
        txt.Text := 'Sincronizado';

        img := TListItemImage(Objects.FindDrawable('Image7'));
        img.Bitmap     := imgSyncOn.Bitmap;
       end;

       txt      := TListItemText(Objects.FindDrawable('Text9'));
       txt.Text := 'Lista';
       img := TListItemImage(Objects.FindDrawable('Image8'));
       img.Bitmap     := imgCheckList.Bitmap;
       if dmDB.cheklistRealizadostatus.AsInteger=1 then
       begin
         txt      := TListItemText(Objects.FindDrawable('Text11'));
         txt.Text := 'Finalizar';
         img := TListItemImage(Objects.FindDrawable('Image10'));
         img.Bitmap     := imgFinalizar.Bitmap;
       end;
       if dmDB.cheklistRealizadostatus.AsInteger=2 then
       begin
         txt      := TListItemText(Objects.FindDrawable('Text11'));
         txt.Text := 'Finalizado';
         img := TListItemImage(Objects.FindDrawable('Image10'));
         img.Bitmap     := imgChecked.Bitmap;
       end;

     end;
     dmDB.cheklistRealizado.Next;
   end;
 end;
end;

procedure TfrmCheckList.GeraListaItens;
var
 item   : TListViewItem;
 txt    : TListItemText;
 txtH   : TListItemPurpose;
 img    : TListItemImage;
 vFiltroItens:string;
begin
 vFiltroItens := '';
 if edtGrupoItemsCheque.Text.Length>0 then
  vFiltroItens := ' and c.id='+vIdGrupoF;

 dmDB.AbreDetChekListRealizado(vIdCheckList,vFiltroItens);
 dmDB.detcheklistRealizado.First;
 listaItens.items.Clear;
 while not dmDB.detcheklistRealizado.eof do
 begin
   item := listaItens.Items.Add;
   with frmCheckList do
   begin
     with item  do
     begin
       txt      := TListItemText(Objects.FindDrawable('Text1'));
       txt.Text := 'Grupo :'+dmDB.detcheklistRealizadogrupo.AsString;
       txt.TagString := dmDB.detcheklistRealizadoid.AsString;
       txt.TagFloat  := dmDB.detcheklistRealizadoitemCheck.AsFloat;


       txt      := TListItemText(Objects.FindDrawable('Text2'));
       txt.Text := dmDB.detcheklistRealizadodescricao.AsString;
       txt.TagFloat := dmDB.detcheklistRealizadoItemFotoObrigatoria.AsFloat;

       txt      := TListItemText(Objects.FindDrawable('Text7'));
       txt.Text := 'Normal';
       txt      := TListItemText(Objects.FindDrawable('Text8'));
       txt.Text := 'Reparar';
       txt      := TListItemText(Objects.FindDrawable('Text9'));
       txt.Text := 'NA';

       img := TListItemImage(Objects.FindDrawable('Image10'));
       img.Bitmap     := imgOBS.Bitmap;
       txt      := TListItemText(Objects.FindDrawable('Text12'));
       txt.Text := 'Observação';
       txt.TagString := dmDB.detcheklistRealizadoItemObs.AsString;

       //Nomal
       if dmDB.detcheklistRealizadonormal.AsBoolean=false then
       begin
        img := TListItemImage(Objects.FindDrawable('Image3'));
        img.Bitmap     := imgCheckFalse.Bitmap;
       end
       else
       begin
        img := TListItemImage(Objects.FindDrawable('Image3'));
        img.Bitmap     := imgChecked.Bitmap;

        img := TListItemImage(Objects.FindDrawable('Image5'));
        img.Bitmap     := imgCheckFalse.Bitmap;

        img := TListItemImage(Objects.FindDrawable('Image6'));
        img.Bitmap     := imgCheckFalse.Bitmap;
       end;
       //reparar
       if dmDB.detcheklistRealizadoreparar.AsBoolean=false then
       begin
        img := TListItemImage(Objects.FindDrawable('Image5'));
        img.Bitmap     := imgCheckFalse.Bitmap;
       end
       else
       begin
        img := TListItemImage(Objects.FindDrawable('Image5'));
        img.Bitmap     := imgChecked.Bitmap;

        img := TListItemImage(Objects.FindDrawable('Image3'));
        img.Bitmap     := imgCheckFalse.Bitmap;

        img := TListItemImage(Objects.FindDrawable('Image6'));
        img.Bitmap     := imgCheckFalse.Bitmap;
       end;
       //nao se aplica
       if dmDB.detcheklistRealizadonaoseaplica.AsBoolean=false then
       begin
        img := TListItemImage(Objects.FindDrawable('Image6'));
        img.Bitmap     := imgCheckFalse.Bitmap;
       end
       else
       begin
        img := TListItemImage(Objects.FindDrawable('Image6'));
        img.Bitmap     := imgChecked.Bitmap;

        img := TListItemImage(Objects.FindDrawable('Image5'));
        img.Bitmap     := imgCheckFalse.Bitmap;

        img := TListItemImage(Objects.FindDrawable('Image3'));
        img.Bitmap     := imgCheckFalse.Bitmap;
       end;
       if dmDB.detcheklistRealizadoItemFotoObrigatoria.AsInteger=1  then
       begin
         if(dmDB.detcheklistRealizadoItemFoto.AsString.Length>100)then
         begin
          img := TListItemImage(Objects.FindDrawable('Image4'));
          img.Bitmap := BitmapFromBase64(dmDB.detcheklistRealizadoItemFoto.AsString);
          vImg64Item := dmDB.detcheklistRealizadoItemFoto.AsString;
          txt      := TListItemText(Objects.FindDrawable('Text11'));
          txt.Text := 'Foto Obrigatoria';
         end
         else
         begin
          img := TListItemImage(Objects.FindDrawable('Image4'));
          img.Bitmap := imgFoto.Bitmap;
          vImg64Item :='';
          txt      := TListItemText(Objects.FindDrawable('Text11'));
          txt.Text := 'Foto Obrigatoria';
         end;
       end
       else
       begin
         img := TListItemImage(Objects.FindDrawable('Image4'));
         img.Bitmap := nil;
         vImg64Item :='';
         txt      := TListItemText(Objects.FindDrawable('Text11'));
         txt.Text := '';
       end;
     end;
     dmDB.detcheklistRealizado.Next;
   end;
 end;
 layButon.Visible := true;
 if listaItens.Items.Count>0 then
  listaItens.ItemIndex:=vIdexList;
end;

procedure TfrmCheckList.ActFotoDidFinishTaking(Image: TBitmap);
begin
//  imgItem.Bitmap.Assign(Image);
  if Image<>nil then
   dmDB.AtualizaFotoItemCheckList(vIdItem, Base64FromBitmap(Image));
  GeraListaItens;
end;

function TfrmCheckList.Base64FromBitmap(Bitmap: TBitmap): string;
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

function TfrmCheckList.BitmapFromBase64(const base64: string): TBitmap;
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


procedure TfrmCheckList.Image17Click(Sender: TObject);
begin
 layObservacao.Visible := false;
end;

procedure TfrmCheckList.Image25Click(Sender: TObject);
begin
 layObservacaoChek.Visible := false;
end;

procedure TfrmCheckList.Image2Click(Sender: TObject);
var
 vIdexLista:integer;
begin
 vIdexLista := listaItens.ItemIndex;
 if not imgItem.Bitmap.IsEmpty then
 begin
  vImg64Item   := Base64FromBitmap(imgItem.Bitmap);
  dmDB.AtualizaFotoItem(vidItem,vImg64Item);
 end
 else
 begin
  dmDB.AtualizaFotoItem(vidItem,'');
 end;
 GeraListaItens;
 listaItens.ItemIndex  := vIdexLista;
 layImagemItem.Visible := false;
end;

procedure TfrmCheckList.ItemCheckListCentroClick(Sender: TObject;
  const Point: TPointF);
begin
 c.HideMenu;
 edtCentroCustoDestino.Text := c.NomeItem;
 vIdCentroCustoDestino      := c.CodItem;
end;

procedure TfrmCheckList.ItemCheckListClick(Sender: TObject;
  const Point: TPointF);
begin
 c.HideMenu;
 edtCheckListGeneric.Text   := c.NomeItem;
 vIdCheckGeneric            := c.CodItem;
 edtDescricao.Text          := copy(c.DescricaoItem,(pos('-',c.DescricaoItem)+1),c.DescricaoItem.Length);
 vCheckTipo                 := copy(c.DescricaoItem,0,(pos('-',c.DescricaoItem)-1));
 if vCheckTipo='1' then
 begin
  layCentroCustoDestino.Visible:= true;
 end
 else
 begin
  layCentroCustoDestino.Visible:= false;
 end;
 btnGeraItens.Visible       := true;
end;

procedure TfrmCheckList.ItemCheckListGrupoClick(Sender: TObject;
  const Point: TPointF);
begin
 c.HideMenu;
 edtGrupoItemsCheque.Text   := c.NomeItem;
 vIdGrupoF                  := c.CodItem;
 GeraListaItens;
end;

procedure TfrmCheckList.listaGesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  btnExcluiItemCheck.Visible   := true;
end;

procedure TfrmCheckList.listaItemClickEx(const Sender: TObject;
  ItemIndex: Integer; const LocalClickPos: TPointF;
  const ItemObject: TListItemDrawable);
begin
  vIdCheckList  := TAppearanceListViewItem(Lista.Selected).Objects.FindObjectT<TListItemText>
   ('Text1').TagString;

  vStatusCheck  := trunc(TAppearanceListViewItem(Lista.Selected).Objects.FindObjectT<TListItemText>
   ('Text1').TagFloat);

  vFlagSync     := TAppearanceListViewItem(Lista.Selected).Objects.FindObjectT<TListItemText>
   ('Text14').TagString;

  vObservacaoChek := TAppearanceListViewItem(Lista.Selected).Objects.FindObjectT<TListItemText>
   ('Text17').TagString;

  if ItemObject is TListItemImage then
  begin
    if TListItemImage(ItemObject).Name='Image8' then
    begin
     dmDB.AbrirChekListEdit(vIdCheckList);
      layDadosChek.Enabled     := true;
      edtMaquina.Text          := dmDB.cheklistRealizadoEditprefixo.AsString;
      vIdMaquina               := dmDB.cheklistRealizadoEditidmaquia.AsString;
      vIdCentroCustoDestino    := dmDB.cheklistRealizadoEditidcentrocustodestino.AsString;
      edtHorimetro.Text        := dmDB.cheklistRealizadoEdithorimetro.AsString;
      edtKm.Text               := dmDB.cheklistRealizadoEditkm.AsString;
      edtCheckListGeneric.Text := dmDB.cheklistRealizadoEditnome.AsString;
      edtDescricao.Text        := dmDB.cheklistRealizadoEditdescricao.AsString;
      tbPrincipal.ActiveTab := tbiCad;
      Exit;
    end;
    if TListItemImage(ItemObject).Name='Image16' then
    begin
      layObservacaoChek.Visible  := true;
      edtObsText.Text           :=vObservacaoChek;
      Exit;
    end;

    if TListItemImage(ItemObject).Name='Image10' then
    begin
      MessageDlg('Deseja Realmente Finalizar esse Checklist?', System.UITypes.TMsgDlgType.mtInformation,
       [System.UITypes.TMsgDlgBtn.mbYes,
       System.UITypes.TMsgDlgBtn.mbNo
       ], 0,
       procedure(const AResult: System.UITypes.TModalResult)
       var
        vChekFoto:string;
       begin
        case AResult of
         mrYES:
         begin
           vChekFoto:=dmDB.CheckFotosTirada(vIdCheckList);
           if vChekFoto='OK' then
           begin
            dmDB.FinalizaCheckList(vIdCheckList);
            GeraLista;
            tbPrincipal.ActiveTab := tbiLista;
           end
           else
            ShowMessage(vChekFoto);
         end;
         mrNo:
        end;
       end);
    end;
  end;
end;

procedure TfrmCheckList.listaItensItemClickEx(const Sender: TObject;
  ItemIndex: Integer; const LocalClickPos: TPointF;
  const ItemObject: TListItemDrawable);

begin
  vIdexList := listaItens.ItemIndex;
  vIdItem   := TAppearanceListViewItem(listaItens.Selected).Objects.FindObjectT<TListItemText>
   ('Text1').TagString;

  vItemChecado  := TAppearanceListViewItem(listaItens.Selected).Objects.FindObjectT<TListItemText>
   ('Text1').TagFloat;

  vFotoObrigatoria  := TAppearanceListViewItem(listaItens.Selected).Objects.FindObjectT<TListItemText>
   ('Text2').TagFloat;

  vObsItem := TAppearanceListViewItem(listaItens.Selected).Objects.FindObjectT<TListItemText>
   ('Text12').TagString;

  if vStatusCheck=2 then
  begin
   ShowMessage('Checklist Já Finalizado!');
   Exit;
  end;

  if ItemObject is TListItemImage then
  begin
    //normal
    if TListItemImage(ItemObject).Name='Image3' then
    begin
      if vItemChecado=0 then
      begin
        dmDB.ChecaItem(vIdItem,'Normal');
        GeraListaItens;
        listaItens.ItemIndex := vIdexList;
        Exit;
      end;
    end;
    if TListItemImage(ItemObject).Name='Image5' then
    begin
      if vItemChecado=0 then
      begin
        dmDB.ChecaItem(vIdItem,'Reparar');
        GeraListaItens;
        listaItens.ItemIndex := vIdexList;
        Exit;
      end;
    end;
    if TListItemImage(ItemObject).Name='Image6' then
    begin
      if vItemChecado=0 then
      begin
        dmDB.ChecaItem(vIdItem,'NA');
        GeraListaItens;
        listaItens.ItemIndex := vIdexList;
        Exit;
      end;
    end;

    if TListItemImage(ItemObject).Name='Image10' then
    begin
      layObservacao.Visible      := true;
      memoObsItem.Text           :=vObsItem;
      Exit;
    end;

    if(TListItemImage(ItemObject).Name='Image4')and(vFotoObrigatoria=1) then
    begin
     if TListItemImage(ItemObject).Bitmap<>nil then
     begin
       if (vImg64Item.Length>0) and (vImg64Item<>'(WideMemo)') then
        imgItem.Bitmap  := BitmapFromBase64(vImg64Item)
       else
       begin
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
     end;
    end;
  end;
end;

procedure TfrmCheckList.listaItensScrollViewChange(Sender: TObject);
var
  R: TRectF;
begin
//  if TListView(Sender).ItemCount > 0 then // Just in case...
//  begin
//   R := TListView(Sender).GetItemRect(TListView(Sender).ItemCount - 1);
//   if R.Bottom = TListView(Sender).Height then
//   TThread.Synchronize(TThread.Current, procedure
//   begin
//     layButon.Visible := true
//   end)
//  end;
end;

procedure TfrmCheckList.LocationPermissionRequestResult(Sender: TObject;
  const APermissions: TArray<string>;
  const AGrantResults: TArray<TPermissionStatus>);
var
         x : integer;
begin
  if (Length(AGrantResults) = 2) and
    (AGrantResults[0] = TPermissionStatus.Granted) and
    (AGrantResults[1] = TPermissionStatus.Granted) then
  begin
    LocationSensor1.Active := true;
  end
  else
  begin
    TDialogService.ShowMessage
      ('Não é possível acessar o GPS porque o app não possui acesso');
    vLatitude  := 'Sem Permissão';
    vLongitude := 'Sem Permissão';
  end;
end;

procedure TfrmCheckList.Rectangle17Click(Sender: TObject);
begin
  GeraLista;
  tbPrincipal.ActiveTab := tbiLista;
end;

procedure TfrmCheckList.btnExcluiItemCheckClick(Sender: TObject);
begin
 btnExcluiItemCheck.Visible := false;
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
       dmDB.DeletaCheckListRealizado(vIdCheckList);
       GeraLista;
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

procedure TfrmCheckList.TakePicturePermissionRequestResult(Sender: TObject;
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

procedure TfrmCheckList.GeraComboCentroCusto;
begin
  c := TCustomCombo.Create(frmCheckList);
  c.TitleMenuText := 'Escolha uma Centro de Custo';
  c.SubTitleMenuText := '';
  c.BackgroundColor := $FFF2F2F8;
  c.OnClick := ItemCheckListCentroClick;
 try
  with dmDB.qryAux,dmDB.qryAux.SQL do
  begin
   Clear;
   Add('select * from centrocustooutros');
   Open;
   while not dmDB.qryAux.Eof do
   begin
      c.AddItem(
       dmDB.qryAux.FieldByName('ID').AsString,
       dmDB.qryAux.FieldByName('Nome').AsString,
       dmDB.qryAux.FieldByName('Nome').AsString
      );
      dmDB.qryAux.Next;
   end;
  end;
 except
   on E : Exception do
    begin
     ShowMessage('Erro ao inserir Check : '+E.Message);
    end;
 end;
end;

procedure TfrmCheckList.GeraComboCheklist;
begin
  c := TCustomCombo.Create(frmCheckList);
  c.TitleMenuText := 'Escolha uma Checklist Modelo';
  c.SubTitleMenuText := '';
  c.BackgroundColor := $FFF2F2F8;
  c.OnClick := ItemCheckListClick;
//  dmDB.cheklistgeneric.Close;
//  dmDB.cheklistgeneric.Open;
  dmDB.cheklistgeneric.First;
  while not dmDB.cheklistgeneric.Eof do
  begin
    c.AddItem(
     dmDB.cheklistgenericID.AsString,
     dmDB.cheklistgenerictransferencia.AsString+'-'+dmDB.cheklistgenericDescricao.AsString,
     dmDB.cheklistgenericNome.AsString
    );
    dmDB.cheklistgeneric.Next;
  end;
end;



procedure TfrmCheckList.GeraComboGrupoItems;
begin
  c := TCustomCombo.Create(frmCheckList);
  c.TitleMenuText := 'Escolha um Grupo';
  c.SubTitleMenuText := '';
  c.BackgroundColor := $FFF2F2F8;
  c.OnClick := ItemCheckListGrupoClick;
  dmDB.cheklistregrupoitem.close;
  dmDB.cheklistregrupoitem.Open;
  while not dmDB.cheklistregrupoitem.Eof do
  begin
    c.AddItem(
     dmDB.cheklistregrupoitemID.AsString,
     dmDB.cheklistregrupoitemNome.AsString,
     dmDB.cheklistregrupoitemNome.AsString
    );
    dmDB.cheklistregrupoitem.Next;
  end;
end;

end.

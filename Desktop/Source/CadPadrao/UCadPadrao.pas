unit UCadPadrao;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  System.Rtti, FMX.Grid.Style, FMX.ScrollBox, FMX.Grid,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Objects, FMX.Edit,
  FMX.Ani, FMX.ActnList, System.Actions,Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmCadPadrao = class(TForm)
    tbPrincipal: TTabControl;
    tbiLista: TTabItem;
    tbiCad: TTabItem;
    layListaP: TLayout;
    layListaMnu: TLayout;
    layLista: TLayout;
    ToolBar1: TToolBar;
    layFiltros: TLayout;
    StringGrid1: TStringGrid;
    mnu: TImage;
    edtNomeFiltro: TEdit;
    Label1: TLabel;
    btnAdd: TRectangle;
    Image2: TImage;
    lblAdd: TLabel;
    btnEditar: TRectangle;
    Image3: TImage;
    lblEdit: TLabel;
    btnDeletar: TRectangle;
    Image4: TImage;
    lblDeleta: TLabel;
    actAcoes: TActionList;
    actMudarAba: TChangeTabAction;
    AcMudarAbaChart: TAction;
    AcMudarAbaDespesas: TAction;
    AcLeft: TAction;
    AcRigth: TAction;
    recCad: TRectangle;
    AnimacaoCad: TFloatAnimation;
    ToolBar3: TToolBar;
    btnVoltar: TImage;
    AnimacaoMnu: TFloatAnimation;
    btnFechar: TImage;
    layCad: TLayout;
    RectCad: TRectangle;
    LaySubCad: TLayout;
    laybutons: TLayout;
    Layout5: TLayout;
    btnCancela: TRectangle;
    Label3: TLabel;
    Image5: TImage;
    btnSalvar: TRectangle;
    Label2: TLabel;
    Image6: TImage;
    qryAux: TFDQuery;
    lblCad: TLabel;
    RecGro: TRectangle;
    recToolBar: TRectangle;
    RecPrincipalDefault: TRectangle;
    imgLogoCad: TImage;
    RectAnimation1: TRectAnimation;
    Rectangle1: TRectangle;
    Image8: TImage;
    btnBuscarFiltro: TButton;
    Image7: TImage;
    recmnulateral: TRectangle;
    ClearNameF: TClearEditButton;
    FoterGrid: TToolBar;
    lblFoterCout: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure mnuClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure StringGrid1CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure btnAddMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure btnAddMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
  private
    { Private declarations }
  public
    procedure MudarAba(ATabItem: TTabItem; sender: TObject);
    procedure MyShowMessage(msg: string; btnCancel: Boolean);
  end;

var
  frmCadPadrao: TfrmCadPadrao;

implementation

{$R *.fmx}

uses UPrincipal,UMsgDlg, UdmDB;

procedure TfrmCadPadrao.btnAddClick(Sender: TObject);
begin
  recCad.Opacity :=0;
  MudarAba(tbiCad,Sender);
  AnimacaoCad.Start;
end;

procedure TfrmCadPadrao.btnAddMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
(Sender as TRectangle).Opacity :=0.5;
end;

procedure TfrmCadPadrao.btnAddMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
 (Sender as TRectangle).Opacity :=1;
end;

procedure TfrmCadPadrao.btnBuscarClick(Sender: TObject);
begin
 if layFiltros.Height =0 then
  layFiltros.Height  := 200
 else
   layFiltros.Height := 0;
end;

procedure TfrmCadPadrao.btnCancelaClick(Sender: TObject);
begin
 MudarAba(tbiLista,Sender);
end;

procedure TfrmCadPadrao.btnSalvarClick(Sender: TObject);
begin
 MudarAba(tbiLista,sender);
end;

procedure TfrmCadPadrao.btnEditarClick(Sender: TObject);
begin
  recCad.Opacity :=0;
  MudarAba(tbiCad,Sender);
  AnimacaoCad.Start;
end;

procedure TfrmCadPadrao.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCadPadrao.btnVoltarClick(Sender: TObject);
begin
 layListaP.Opacity :=0;
 MudarAba(tbiLista,sender);
 AnimacaoMnu.Start;
end;

procedure TfrmCadPadrao.FormShow(Sender: TObject);
begin
  lblAdd.Text        := 'Adicionar';
  lblEdit.Text       := 'Editar';
  lblDeleta.Text     := 'Deletar';
  tbPrincipal.TabPosition := TTabPosition.None;
  tbPrincipal.ActiveTab   := tbiLista;
  btnAdd.Enabled          := dmdb.vTipoUsuario<>2;
  btnEditar.Enabled       := dmdb.vTipoUsuario<>2;
  btnDeletar.Enabled      := dmdb.vTipoUsuario<>2;
end;

procedure TfrmCadPadrao.mnuClick(Sender: TObject);
begin
  if layListaMnu.Width =57 then
  begin
   lblAdd.Text        := 'Adicionar';
   lblEdit.Text       := 'Editar';
   lblDeleta.Text     := 'Deletar';
   layListaMnu.Width  := 200
  end
  else
  begin
   lblAdd.Text        := '';
   lblEdit.Text       := '';
   lblDeleta.Text     := '';
   layListaMnu.Width  := 57;
  end;
end;

procedure TfrmCadPadrao.MudarAba(ATabItem: TTabItem; sender: TObject);
begin
   actMudarAba.Tab := ATabItem;
   actMudarAba.ExecuteTarget(sender);
end;

procedure TfrmCadPadrao.MyShowMessage(msg: string; btnCancel: Boolean);
var
 dlg :TFrmmsgDlg;
begin
  dlg := TFrmmsgDlg.Create(nil);
  dlg.Position := TFormPosition.ScreenCenter;
  dlg.msg.Text := msg;
  dlg.btnCancel.Visible := btnCancel;
  dlg.ShowModal(
  procedure(ModalResult: TModalResult)
  begin

  end);
end;

procedure TfrmCadPadrao.StringGrid1CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
 Close;
end;

end.

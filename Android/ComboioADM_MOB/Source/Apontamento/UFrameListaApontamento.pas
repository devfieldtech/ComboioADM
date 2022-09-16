unit UFrameListaApontamento;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Layouts, FMX.Objects;

type
  TFListaApontamento = class(TFrame)
    RecBack: TRectangle;
    imgEditar: TImage;
    imgViagens: TImage;
    imgFinalizar: TImage;
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    Label1: TLabel;
    lblData: TLabel;
    Label2: TLabel;
    lblHora: TLabel;
    Layout5: TLayout;
    Layout6: TLayout;
    Label6: TLabel;
    lblAplicacaoMateria: TLabel;
    Layout7: TLayout;
    Label5: TLabel;
    lblTipoMaterial: TLabel;
    Layout8: TLayout;
    Label3: TLabel;
    lblKMAtualEscavadeira: TLabel;
    Layout4: TLayout;
    lblMaquina: TLabel;
    layImg: TLayout;
    btnViagens: TLayout;
    Label4: TLabel;
    btnFinalizar: TLayout;
    Label7: TLabel;
    btnEditar: TLayout;
    Label8: TLabel;
    Layout9: TLayout;
    Label9: TLabel;
    lblStatus: TLabel;
    Label10: TLabel;
    lblTotalViagens: TLabel;
    Layout10: TLayout;
    Label11: TLabel;
    lblKMDestinoEscavadeira: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.

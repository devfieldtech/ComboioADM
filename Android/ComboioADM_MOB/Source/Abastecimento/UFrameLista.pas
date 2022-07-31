unit UFrameLista;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Objects, FMX.Layouts;

type
  TFItemListaAbastecimento = class(TFrame)
    RecBack: TRectangle;
    Layout1: TLayout;
    Image1: TImage;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    lblMaquina: TLabel;
    Layout5: TLayout;
    Layout6: TLayout;
    Layout7: TLayout;
    Layout8: TLayout;
    Label1: TLabel;
    lblData: TLabel;
    Label2: TLabel;
    lblHora: TLabel;
    Label3: TLabel;
    lblHorimetro: TLabel;
    Label4: TLabel;
    lblKM: TLabel;
    Label5: TLabel;
    lblBomba: TLabel;
    Label6: TLabel;
    lblCombustivel: TLabel;
    Layout9: TLayout;
    Label7: TLabel;
    lblLitros: TLabel;
    imgBomba: TImage;
    imgHorimetro: TImage;
    imgKM: TImage;
    layImg: TLayout;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.

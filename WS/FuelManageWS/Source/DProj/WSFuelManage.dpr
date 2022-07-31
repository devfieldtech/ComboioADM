program WSFuelManage;

uses
  System.StartUpCopy,
  FMX.Forms,
  UPrincipal in '..\Principal\UPrincipal.pas' {frmPrincipal},
  UdmMetodosLocal in '..\dmMetodosLocal\UdmMetodosLocal.pas' {dmLocal: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmLocal, dmLocal);
  Application.Run;
end.

program ComboioADM_Mob;

uses
  System.StartUpCopy,
  FMX.Forms,
  UPrincipal in '..\Principal\UPrincipal.pas' {frmPrincipal},
  UDmDB in '..\dmDB\UDmDB.pas' {dmDB: TDataModule},
  NetworkState in '..\util\NetworkState.pas',
  UDmSyncData in '..\dmSync\UDmSyncData.pas' {dmsync: TDataModule},
  UAbastecimento in '..\Abastecimento\UAbastecimento.pas' {frmAbastecimento},
  Maquinas in '..\Maquinas\Maquinas.pas' {frmMaquinas},
  ULocalEstoque in '..\LocalEstoque\ULocalEstoque.pas' {frmLocalEstoque},
  UProdutos in '..\Produtos\UProdutos.pas' {frmProdutos},
  UStartBomba in '..\StartBomba\UStartBomba.pas' {frmStartBomba},
  u99Permissions in '..\util\u99Permissions.pas',
  UnitCamera in '..\Camera\UnitCamera.pas' {FrmCamera},
  NetworkState.Android in '..\util\NetworkState.Android.pas',
  UMovEstoque in '..\MovEstoque\UMovEstoque.pas' {frmMovEstoque},
  uFormat in '..\util\uFormat.pas',
  ULubrificacao in '..\Lubrificacao\ULubrificacao.pas' {frmLubrificacao},
  UFrameLista in '..\Abastecimento\UFrameLista.pas' {FItemListaAbastecimento: TFrame},
  UChekList in '..\ChekList\UChekList.pas' {frmCheckList},
  uCombobox in '..\ChekList\uCombobox.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.FormFactor.Orientations := [TFormOrientation.Portrait];
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmDB, dmDB);
  Application.CreateForm(Tdmsync, dmsync);
  Application.CreateForm(TfrmCheckList, frmCheckList);
  Application.Run;
end.

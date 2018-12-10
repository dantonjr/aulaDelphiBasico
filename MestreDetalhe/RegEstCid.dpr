program RegEstCid;

uses
  Forms,
  uMestreDetalhe in 'uMestreDetalhe.pas' {frmMestreDetalhe},
  uDM in 'uDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMestreDetalhe, frmMestreDetalhe);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.

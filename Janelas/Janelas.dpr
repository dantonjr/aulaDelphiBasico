program Janelas;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uSegundo in 'uSegundo.pas' {frmSegundo},
  uTerceiro in 'uTerceiro.pas' {frmTerceiro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.

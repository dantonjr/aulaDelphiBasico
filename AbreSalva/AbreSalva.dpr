program AbreSalva;

uses
  Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uImagem in 'uImagem.pas' {frmImagem},
  uTexto in 'uTexto.pas' {frmTexto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.

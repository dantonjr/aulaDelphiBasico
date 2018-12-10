unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    lblMensagem: TLabel;
    btnChamaSegundo: TButton;
    btnChamaTerceiro: TButton;
    bbnSair: TBitBtn;
    tmrRelogio: TTimer;
    lblHora: TLabel;
    procedure btnChamaSegundoClick(Sender: TObject);
    procedure btnChamaTerceiroClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure tmrRelogioTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses uSegundo, uTerceiro;

{$R *.dfm}

procedure TfrmPrincipal.btnChamaSegundoClick(Sender: TObject);
begin
  Application.CreateForm(TfrmSegundo, frmSegundo);
  frmSegundo.ShowModal;
  FreeAndNil(frmSegundo);
end;

procedure TfrmPrincipal.btnChamaTerceiroClick(Sender: TObject);
begin
  if frmTerceiro = nil then
    Application.CreateForm(TfrmTerceiro, frmTerceiro);
  frmTerceiro.ShowModal;
end;

procedure TfrmPrincipal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := MessageDlg('Deseja sair?', mtConfirmation, [mbYes, mbNo], 0) = mrYes;
end;

procedure TfrmPrincipal.tmrRelogioTimer(Sender: TObject);
begin
  lblHora.Caption := DateTimeToStr(now);
end;

end.

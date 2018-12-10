unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    btnOlaMundo: TButton;
    bvlSeparador: TBevel;
    lblMensagem: TLabel;
    edtMensagem: TEdit;
    btnMensagem: TButton;
    edtValor1: TEdit;
    edtValor2: TEdit;
    lblValor1: TLabel;
    lblValor2: TLabel;
    btnTroca: TButton;
    procedure btnOlaMundoClick(Sender: TObject);
    procedure btnMensagemClick(Sender: TObject);
    procedure btnTrocaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnMensagemClick(Sender: TObject);
begin
  ShowMessage(edtMensagem.Text);
end;

procedure TfrmPrincipal.btnOlaMundoClick(Sender: TObject);
begin
  ShowMessage('Olá Mundo');
end;

procedure TfrmPrincipal.btnTrocaClick(Sender: TObject);
var
  auxiliar : string;

begin
  auxiliar := edtValor1.Text;
  edtValor1.Text := edtValor2.Text;
  edtValor2.Text := auxiliar;
end;

end.

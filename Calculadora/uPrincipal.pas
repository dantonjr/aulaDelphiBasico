unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmPrincipal = class(TForm)
    lblValor1: TLabel;
    lblValor2: TLabel;
    lblResultado: TLabel;
    edtValor1: TEdit;
    edtValor2: TEdit;
    btnSoma: TButton;
    btnSubtrai: TButton;
    btnDivide: TButton;
    btnMultiplica: TButton;
    procedure btnSomaClick(Sender: TObject);
    procedure btnSubtraiClick(Sender: TObject);
    procedure btnDivideClick(Sender: TObject);
    procedure btnMultiplicaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnDivideClick(Sender: TObject);
begin
  lblResultado.Caption  :=
      FloatToStr(StrToFloat(edtValor1.Text) / StrToFloat(edtValor2.Text));
end;

procedure TfrmPrincipal.btnMultiplicaClick(Sender: TObject);
begin
  lblResultado.Caption  :=
      FloatToStr(StrToFloat(edtValor1.Text) * StrToFloat(edtValor2.Text));
end;

procedure TfrmPrincipal.btnSomaClick(Sender: TObject);
begin
  lblResultado.Caption := FloatToStr(StrToFloat(edtValor1.Text) + StrToFloat(edtValor2.Text));
end;

procedure TfrmPrincipal.btnSubtraiClick(Sender: TObject);
begin
  lblResultado.Caption := FloatToStr(StrToFloat(edtValor1.Text) - StrToFloat(edtValor2.Text));
end;

end.

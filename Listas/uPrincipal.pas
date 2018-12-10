unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmPrincipal = class(TForm)
    edtInicio: TEdit;
    edtFim: TEdit;
    lblInicio: TLabel;
    lblFim: TLabel;
    btnProcessa: TButton;
    lbxValores: TListBox;
    ckbLimpaLista: TCheckBox;
    lbxResultado: TListBox;
    edtValor: TEdit;
    lblValor: TLabel;
    btnOperacao: TButton;
    rdgOperacao: TRadioGroup;
    procedure btnProcessaClick(Sender: TObject);
    procedure btnOperacaoClick(Sender: TObject);
    procedure rdgOperacaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnOperacaoClick(Sender: TObject);
var
  numero : Integer;

begin
  lbxResultado.Items.Clear;
  for numero := 0 to lbxValores.Items.Count - 1 do
  begin
    case rdgOperacao.ItemIndex of
      0: lbxResultado.Items.Add(IntToStr(StrToInt(lbxValores.Items.Strings[numero]) + StrToInt(edtValor.Text)));
      1: lbxResultado.Items.Add(IntToStr(StrToInt(lbxValores.Items.Strings[numero]) - StrToInt(edtValor.Text)));
      2: lbxResultado.Items.Add(IntToStr(StrToInt(lbxValores.Items.Strings[numero]) * StrToInt(edtValor.Text)));
      3: lbxResultado.Items.Add(FloatToStr(StrToInt(lbxValores.Items.Strings[numero]) / StrToInt(edtValor.Text)));
    end;
  end;
end;

procedure TfrmPrincipal.btnProcessaClick(Sender: TObject);
var
  numero : Integer;

begin
  if ckbLimpaLista.Checked then
  begin
    lbxValores.Items.Clear;
  end;
  if StrToInt(edtInicio.Text) < StrToInt(edtFim.Text) then
  begin
    for numero := StrToInt(edtInicio.Text) to StrToInt(edtFim.Text) do
    begin
      lbxValores.Items.Add(IntToStr(numero));
    end;
  end
  else
  begin
    ShowMessage('Valor inicial dever ser menor que valor final');
  end;

end;

procedure TfrmPrincipal.rdgOperacaoClick(Sender: TObject);
begin
  btnOperacao.Click;
end;

end.

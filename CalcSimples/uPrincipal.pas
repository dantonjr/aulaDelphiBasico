unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmPrincipal = class(TForm)
    edtValor1: TEdit;
    edtValor2: TEdit;
    lblValor1: TLabel;
    lblValor2: TLabel;
    btnSoma: TButton;
    procedure btnSomaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnSomaClick(Sender: TObject);
begin
  ShowMessage(IntToStr(StrToInt(edtValor1.Text) + StrToInt(edtValor2.Text)));
end;

end.

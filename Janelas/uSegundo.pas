unit uSegundo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfrmSegundo = class(TForm)
    lblMensagem: TLabel;
    btnChamaTerceiro: TButton;
    bbnFechar: TBitBtn;
    procedure btnChamaTerceiroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSegundo: TfrmSegundo;

implementation

uses uTerceiro;

{$R *.dfm}

procedure TfrmSegundo.btnChamaTerceiroClick(Sender: TObject);
begin
  if frmTerceiro = nil then
    Application.CreateForm(TfrmTerceiro, frmTerceiro);
  frmTerceiro.ShowModal;
end;

end.

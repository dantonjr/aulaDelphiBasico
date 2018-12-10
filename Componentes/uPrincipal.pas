unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, Menus, ImgList, jpeg, StdCtrls;

type
  TfrmPrincipal = class(TForm)
    stbStatus: TStatusBar;
    tmrHora: TTimer;
    mmuMenuPrincipal: TMainMenu;
    Arquivo1: TMenuItem;
    Abrir1: TMenuItem;
    Salvar1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Ajuda1: TMenuItem;
    Sobre1: TMenuItem;
    imlFiguras: TImageList;
    imgFundo: TImage;
    mmoTexto: TMemo;
    procedure tmrHoraTimer(Sender: TObject);
    procedure Abrir1Click(Sender: TObject);
    procedure Salvar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.Abrir1Click(Sender: TObject);
begin
  ShowMessage('Estou abrindo...');
end;

procedure TfrmPrincipal.Salvar1Click(Sender: TObject);
begin
  ShowMessage('Estou salvando...');
end;

procedure TfrmPrincipal.tmrHoraTimer(Sender: TObject);
begin
  stbStatus.Panels[1].Text := TimeToStr(Now);
end;

end.

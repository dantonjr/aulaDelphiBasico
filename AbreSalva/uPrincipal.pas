unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, Menus, ImgList, StdCtrls;

type
  TfrmPrincipal = class(TForm)
    stbStatus: TStatusBar;
    tmrHora: TTimer;
    mmuPrincipal: TMainMenu;
    Arquivo1: TMenuItem;
    Sair1: TMenuItem;
    Funo1: TMenuItem;
    Imagem1: TMenuItem;
    exto1: TMenuItem;
    Ajuda1: TMenuItem;
    Sobre1: TMenuItem;
    imlPrincipal: TImageList;
    btnImagem: TButton;
    btnTexto: TButton;
    procedure tmrHoraTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnImagemClick(Sender: TObject);
    procedure btnTextoClick(Sender: TObject);
    procedure Imagem1Click(Sender: TObject);
    procedure exto1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses uImagem, uTexto;

{$R *.dfm}

procedure TfrmPrincipal.btnImagemClick(Sender: TObject);
begin
  Application.CreateForm(TfrmImagem, frmImagem);
  frmImagem.ShowModal;
  FreeAndNil(frmImagem);
end;

procedure TfrmPrincipal.btnTextoClick(Sender: TObject);
begin
  Application.CreateForm(TfrmTexto, frmTexto);
  frmTexto.ShowModal;
  FreeAndNil(frmTexto);
end;

procedure TfrmPrincipal.exto1Click(Sender: TObject);
begin
  btnTexto.Click;
end;

procedure TfrmPrincipal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := MessageDlg('Deseja sair?', mtConfirmation, [mbYes, mbNo], 0) = mrYes;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  stbStatus.Panels[0].Text := TimeToStr(Now);
end;

procedure TfrmPrincipal.Imagem1Click(Sender: TObject);
begin
  btnImagem.Click;
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
  frmPrincipal.Close;
end;

procedure TfrmPrincipal.tmrHoraTimer(Sender: TObject);
begin
  stbStatus.Panels[0].Text := TimeToStr(Now);
end;

end.

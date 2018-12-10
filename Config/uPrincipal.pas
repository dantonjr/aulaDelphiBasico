unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, IniFiles, Menus;

type
  TfrmPrincipal = class(TForm)
    lblTexto: TLabel;
    edtTexto: TEdit;
    btnTexto: TButton;
    pnlFuncoes: TPanel;
    btnCaminhoApp: TButton;
    btnNomeApp: TButton;
    popCor: TPopupMenu;
    Alteraracor1: TMenuItem;
    cdgCor: TColorDialog;
    procedure btnTextoClick(Sender: TObject);
    procedure btnNomeAppClick(Sender: TObject);
    procedure btnCaminhoAppClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Alteraracor1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.Alteraracor1Click(Sender: TObject);
begin
  if cdgCor.Execute then
  begin
    frmPrincipal.Color := cdgCor.Color;
  end;
end;

procedure TfrmPrincipal.btnCaminhoAppClick(Sender: TObject);
begin
  ShowMessage(ExtractFilePath(Application.ExeName));
end;

procedure TfrmPrincipal.btnNomeAppClick(Sender: TObject);
begin
  ShowMessage(Application.ExeName);
end;

procedure TfrmPrincipal.btnTextoClick(Sender: TObject);
begin
  frmPrincipal.Caption := edtTexto.Text;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var
  arqConfig : TIniFile;

begin
  arqConfig := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'Config.ini');
  frmPrincipal.Caption := arqConfig.ReadString('Configuracao', 'Titulo', 'Padrão');
  frmPrincipal.Top := arqConfig.ReadInteger('Configuracao', 'Topo', 0);
  frmPrincipal.Left := arqConfig.ReadInteger('Configuracao', 'Margem', 0);
  frmPrincipal.Width := arqConfig.ReadInteger('Configuracao', 'Largura', 250);
  frmPrincipal.Height := arqConfig.ReadInteger('Configuracao', 'Altura', 200);
  frmPrincipal.Color := arqConfig.ReadInteger('Extras', 'Cor', clBtnFace);
  arqConfig.Free;
end;

procedure TfrmPrincipal.FormDestroy(Sender: TObject);
var
  arqConfig : TIniFile;

begin
  arqConfig := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'Config.ini');
  arqConfig.WriteString('Configuracao', 'Titulo', frmPrincipal.Caption);
  arqConfig.WriteInteger('Configuracao', 'Topo', frmPrincipal.Top);
  arqConfig.WriteInteger('Configuracao', 'Margem', frmPrincipal.Left);
  arqConfig.WriteInteger('Configuracao', 'Largura', frmPrincipal.Width);
  arqConfig.WriteInteger('Configuracao', 'Altura', frmPrincipal.Height);
  arqConfig.WriteInteger('Extras', 'Cor', frmPrincipal.Color);
  arqConfig.Free;
end;

end.

unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, IniFiles;

type
  TfrmPrincipal = class(TForm)
    lblNome: TLabel;
    lblIdade: TLabel;
    lblCidade: TLabel;
    edtNome: TEdit;
    edtIdade: TEdit;
    edtCidade: TEdit;
    rdgSexo: TRadioGroup;
    bbnFechar: TBitBtn;
    pnlFuncoes: TPanel;
    cbxIdioma: TComboBox;
    lblIdioma: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var
  arqTraduz : TIniFile;
  idioma    : string;
  idiomas   : TStringList;
  iDesc     : integer;

begin
  arqTraduz := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'Idiomas.ini');
  idiomas := TStringList.Create;
  arqTraduz.ReadSections(idiomas);
  idiomas.Delete(0);
  for iDesc := 0 to idiomas.Count - 1 do
    cbxIdioma.Items.Add(arqTraduz.ReadString(idiomas.Strings[iDesc], 'descricao', 'Padrão'));
  idioma := arqTraduz.ReadString('Padrao', 'idioma', 'PTBR');
  lblNome.Caption := arqTraduz.ReadString(idioma, 'lblNome', 'Nome');
  lblIdade.Caption := arqTraduz.ReadString(idioma, 'lblIdade', 'Idade');
  lblCidade.Caption := arqTraduz.ReadString(idioma, 'lblCidade', 'Cidade');
  lblIdioma.Caption := arqTraduz.ReadString(idioma, 'lblIdioma', 'Idioma');
  rdgSexo.Caption := ' ' + arqTraduz.ReadString(idioma, 'rdgSexo', 'Sexo') + ' ';
  rdgSexo.Items.Clear;
  rdgSexo.Items.Add(arqTraduz.ReadString(idioma, 'itmMas', 'Masculino'));
  rdgSexo.Items.Add(arqTraduz.ReadString(idioma, 'itmFem', 'Feminino'));
  bbnFechar.Caption := arqTraduz.ReadString(idioma, 'bbnFechar', '&Fchar');
  arqTraduz.Free;
end;

end.

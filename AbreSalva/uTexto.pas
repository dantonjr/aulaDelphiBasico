unit uTexto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Menus, ExtDlgs;

type
  TfrmTexto = class(TForm)
    pnlFuncoes: TPanel;
    bbnFechar: TBitBtn;
    pnlAcoes: TPanel;
    bbnAbrir: TBitBtn;
    bbnSalvar: TBitBtn;
    bbnLimpaTexto: TBitBtn;
    bbnSelecionaTudo: TBitBtn;
    bbnFonte: TBitBtn;
    ckbHorizontal: TCheckBox;
    ckbVertical: TCheckBox;
    mmoTexto: TMemo;
    stbStatus: TStatusBar;
    fdgFonte: TFontDialog;
    otdAbrir: TOpenTextFileDialog;
    stdSalvar: TSaveTextFileDialog;
    procedure ckbHorizontalClick(Sender: TObject);
    procedure bbnSelecionaTudoClick(Sender: TObject);
    procedure bbnLimpaTextoClick(Sender: TObject);
    procedure bbnFonteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbnAbrirClick(Sender: TObject);
    procedure bbnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTexto: TfrmTexto;

implementation

{$R *.dfm}

procedure TfrmTexto.bbnAbrirClick(Sender: TObject);
begin
  if otdAbrir.Execute then
  begin
    mmoTexto.Lines.LoadFromFile(otdAbrir.FileName);
    stbStatus.Panels[4].Text := otdAbrir.FileName;
  end;
end;

procedure TfrmTexto.bbnFonteClick(Sender: TObject);
begin
  fdgFonte.Font := mmoTexto.Font;
  if fdgFonte.Execute then
  begin
    if fsBold in fdgFonte.Font.Style then
      stbStatus.Panels[0].Text := 'N'
    else
      stbStatus.Panels[0].Text := ' ';

    if fsItalic in fdgFonte.Font.Style then
      stbStatus.Panels[1].Text := 'I'
    else
      stbStatus.Panels[1].Text := ' ';

    stbStatus.Panels[2].Text := IntToStr(fdgFonte.Font.Size);
    stbStatus.Panels[3].Text := fdgFonte.Font.Name;
    mmoTexto.Font := fdgFonte.Font;
  end;
end;

procedure TfrmTexto.bbnLimpaTextoClick(Sender: TObject);
begin
  if MessageDlg('Deseja limpar o texto?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    mmoTexto.Clear;
end;

procedure TfrmTexto.bbnSalvarClick(Sender: TObject);
var
  salva : boolean;

begin
  if Length(stbStatus.Panels[4].Text) <> 0 then
    stdSalvar.FileName := stbStatus.Panels[4].Text
  else
    stdSalvar.FileName := 'Texto1.txt';
  if stdSalvar.Execute then
  begin
    salva := true;
    if FileExists(stdSalvar.FileName) then
      salva := MessageDlg('Deseja substituir o arquivo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes;
    if salva then
    begin
      mmoTexto.Lines.SaveToFile(stdSalvar.FileName);
      stbStatus.Panels[4].Text := stdSalvar.FileName;
    end;
  end;
end;

procedure TfrmTexto.bbnSelecionaTudoClick(Sender: TObject);
begin
  mmoTexto.SelectAll;
  MessageDlg('Caracteres selecionados: ' + IntToStr(mmoTexto.SelLength), mtInformation, [mbOK], 0);
end;

procedure TfrmTexto.ckbHorizontalClick(Sender: TObject);
begin
  mmoTexto.ScrollBars := ssNone;
  if ckbHorizontal.Checked and ckbVertical.Checked then
    mmoTexto.ScrollBars := ssBoth
  else
    if ckbHorizontal.Checked then
      mmoTexto.ScrollBars := ssHorizontal
    else
      if ckbVertical.Checked then
        mmoTexto.ScrollBars := ssVertical;
end;

procedure TfrmTexto.FormCreate(Sender: TObject);
begin
  stbStatus.Panels[2].Text := IntToStr(mmoTexto.Font.Size);
  stbStatus.Panels[3].Text := mmoTexto.Font.Name;
end;

end.

unit uImagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, ExtDlgs, Jpeg;

type
  TfrmImagem = class(TForm)
    pnlFuncoes: TPanel;
    bbnFechar: TBitBtn;
    pnlAcoes: TPanel;
    imgImagem: TImage;
    stbStatus: TStatusBar;
    bbnAbrir: TBitBtn;
    bbnSalvar: TBitBtn;
    ckbAdaptar: TCheckBox;
    ckbProporcional: TCheckBox;
    ckbCentralizar: TCheckBox;
    opdAbrir: TOpenPictureDialog;
    procedure bbnAbrirClick(Sender: TObject);
    procedure ckbAdaptarClick(Sender: TObject);
    procedure ckbProporcionalClick(Sender: TObject);
    procedure ckbCentralizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImagem: TfrmImagem;

implementation

{$R *.dfm}

procedure TfrmImagem.bbnAbrirClick(Sender: TObject);
begin
  if opdAbrir.Execute then
  begin
    imgImagem.Picture.LoadFromFile(opdAbrir.FileName);
    stbStatus.Panels[1].Text := opdAbrir.FileName;
    stbStatus.Panels[0].Text := IntToStr(imgImagem.Picture.Graphic.Width) +
                                'x' +
                                IntToStr(imgImagem.Picture.Graphic.Height);
  end;
end;

procedure TfrmImagem.ckbAdaptarClick(Sender: TObject);
begin
  imgImagem.Stretch := ckbAdaptar.Checked;
end;

procedure TfrmImagem.ckbCentralizarClick(Sender: TObject);
begin
  imgImagem.Center := ckbCentralizar.Checked;
end;

procedure TfrmImagem.ckbProporcionalClick(Sender: TObject);
begin
  imgImagem.Proportional := ckbProporcional.Checked;
  ckbAdaptar.Enabled := not ckbProporcional.Checked;
end;

end.

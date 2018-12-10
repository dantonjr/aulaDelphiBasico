object frmSegundo: TfrmSegundo
  Left = 0
  Top = 0
  Caption = 'Segundo'
  ClientHeight = 213
  ClientWidth = 339
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblMensagem: TLabel
    Left = 72
    Top = 8
    Width = 153
    Height = 48
    Caption = 'Segundo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btnChamaTerceiro: TButton
    Left = 64
    Top = 136
    Width = 105
    Height = 25
    Caption = 'Chama Terceiro'
    TabOrder = 0
    OnClick = btnChamaTerceiroClick
  end
  object bbnFechar: TBitBtn
    Left = 216
    Top = 136
    Width = 75
    Height = 25
    Caption = '&Fechar'
    DoubleBuffered = True
    Kind = bkClose
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 1
  end
end

object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 213
  ClientWidth = 339
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object lblMensagem: TLabel
    Left = 88
    Top = 8
    Width = 146
    Height = 48
    Caption = 'Principal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblHora: TLabel
    Left = 8
    Top = 72
    Width = 23
    Height = 13
    Caption = 'Hora'
  end
  object btnChamaSegundo: TButton
    Left = 16
    Top = 152
    Width = 145
    Height = 25
    Caption = 'Chama Segundo'
    TabOrder = 0
    OnClick = btnChamaSegundoClick
  end
  object btnChamaTerceiro: TButton
    Left = 16
    Top = 180
    Width = 145
    Height = 25
    Caption = 'Chama Terceiro'
    TabOrder = 1
    OnClick = btnChamaTerceiroClick
  end
  object bbnSair: TBitBtn
    Left = 224
    Top = 180
    Width = 75
    Height = 25
    Caption = '&Sair'
    DoubleBuffered = True
    Kind = bkClose
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 2
  end
  object tmrRelogio: TTimer
    OnTimer = tmrRelogioTimer
    Left = 176
    Top = 80
  end
end

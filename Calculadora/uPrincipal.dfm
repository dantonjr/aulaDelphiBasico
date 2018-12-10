object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 147
  ClientWidth = 263
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblValor1: TLabel
    Left = 8
    Top = 8
    Width = 33
    Height = 13
    Caption = 'Valor 1'
  end
  object lblValor2: TLabel
    Left = 112
    Top = 8
    Width = 33
    Height = 13
    Caption = 'Valor 2'
  end
  object lblResultado: TLabel
    Left = 8
    Top = 101
    Width = 25
    Height = 48
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtValor1: TEdit
    Left = 16
    Top = 27
    Width = 75
    Height = 21
    TabOrder = 0
    Text = '0'
  end
  object edtValor2: TEdit
    Left = 120
    Top = 27
    Width = 75
    Height = 21
    TabOrder = 1
    Text = '0'
  end
  object btnSoma: TButton
    Left = 8
    Top = 54
    Width = 49
    Height = 41
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnSomaClick
  end
  object btnSubtrai: TButton
    Left = 71
    Top = 54
    Width = 49
    Height = 41
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btnSubtraiClick
  end
  object btnDivide: TButton
    Left = 135
    Top = 54
    Width = 49
    Height = 41
    Caption = '/'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = btnDivideClick
  end
  object btnMultiplica: TButton
    Left = 199
    Top = 54
    Width = 49
    Height = 41
    Caption = 'X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = btnMultiplicaClick
  end
end

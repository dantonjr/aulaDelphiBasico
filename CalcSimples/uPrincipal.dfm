object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Calcula Soma'
  ClientHeight = 119
  ClientWidth = 310
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
    Left = 16
    Top = 16
    Width = 33
    Height = 13
    Caption = 'Valor 1'
  end
  object lblValor2: TLabel
    Left = 156
    Top = 16
    Width = 33
    Height = 13
    Caption = 'Valor 2'
  end
  object edtValor1: TEdit
    Left = 24
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '0'
  end
  object edtValor2: TEdit
    Left = 168
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '0'
  end
  object btnSoma: TButton
    Left = 112
    Top = 72
    Width = 75
    Height = 25
    Caption = 'Soma'
    TabOrder = 2
    OnClick = btnSomaClick
  end
end

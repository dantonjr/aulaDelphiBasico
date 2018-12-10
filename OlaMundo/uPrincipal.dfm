object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Ol'#225' Mundo'
  ClientHeight = 235
  ClientWidth = 430
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object bvlSeparador: TBevel
    Left = 32
    Top = 39
    Width = 249
    Height = 9
  end
  object lblMensagem: TLabel
    Left = 40
    Top = 69
    Width = 55
    Height = 13
    Caption = 'M&ensagem:'
    FocusControl = edtMensagem
  end
  object lblValor1: TLabel
    Left = 264
    Top = 88
    Width = 37
    Height = 13
    Caption = 'Valor 1:'
  end
  object lblValor2: TLabel
    Left = 264
    Top = 136
    Width = 37
    Height = 13
    Caption = 'Valor 2:'
  end
  object btnOlaMundo: TButton
    Left = 120
    Top = 8
    Width = 75
    Height = 25
    Caption = '&Ol'#225' Mundo'
    TabOrder = 0
    OnClick = btnOlaMundoClick
  end
  object edtMensagem: TEdit
    Left = 40
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnMensagem: TButton
    Left = 40
    Top = 115
    Width = 121
    Height = 25
    Caption = '&Mostra Mensagem'
    TabOrder = 2
    OnClick = btnMensagemClick
  end
  object edtValor1: TEdit
    Left = 264
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object edtValor2: TEdit
    Left = 264
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object btnTroca: TButton
    Left = 264
    Top = 179
    Width = 75
    Height = 25
    Caption = 'Troca'
    TabOrder = 5
    OnClick = btnTrocaClick
  end
end

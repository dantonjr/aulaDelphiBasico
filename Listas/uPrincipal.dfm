object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Listas'
  ClientHeight = 285
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
  object lblInicio: TLabel
    Left = 8
    Top = 8
    Width = 25
    Height = 13
    Caption = 'In'#237'cio'
  end
  object lblFim: TLabel
    Left = 95
    Top = 8
    Width = 16
    Height = 13
    Caption = 'Fim'
  end
  object lblValor: TLabel
    Left = 182
    Top = 52
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object edtInicio: TEdit
    Left = 16
    Top = 27
    Width = 73
    Height = 21
    TabOrder = 0
    Text = '0'
  end
  object edtFim: TEdit
    Left = 103
    Top = 27
    Width = 73
    Height = 21
    TabOrder = 1
    Text = '10'
  end
  object btnProcessa: TButton
    Left = 261
    Top = 25
    Width = 75
    Height = 25
    Caption = 'Processa'
    TabOrder = 2
    OnClick = btnProcessaClick
  end
  object lbxValores: TListBox
    Left = 16
    Top = 54
    Width = 73
    Height = 223
    ItemHeight = 13
    TabOrder = 3
  end
  object ckbLimpaLista: TCheckBox
    Left = 182
    Top = 29
    Width = 73
    Height = 17
    Caption = 'Limpa Lista'
    TabOrder = 4
  end
  object lbxResultado: TListBox
    Left = 103
    Top = 54
    Width = 73
    Height = 223
    ItemHeight = 13
    TabOrder = 5
  end
  object edtValor: TEdit
    Left = 192
    Top = 71
    Width = 63
    Height = 21
    TabOrder = 6
    Text = '0'
  end
  object btnOperacao: TButton
    Left = 261
    Top = 69
    Width = 75
    Height = 25
    Caption = 'Opera'#231#227'o'
    TabOrder = 7
    OnClick = btnOperacaoClick
  end
  object rdgOperacao: TRadioGroup
    Left = 182
    Top = 120
    Width = 151
    Height = 105
    Caption = ' Opera'#231#227'o '
    ItemIndex = 0
    Items.Strings = (
      '+ Adi'#231#227'o'
      '- Subtra'#231#227'o'
      '* Multiplica'#231#227'o'
      '/ Divis'#227'o')
    TabOrder = 8
    OnClick = rdgOperacaoClick
  end
end

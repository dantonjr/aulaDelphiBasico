object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Sistema para Tradu'#231#227'o'
  ClientHeight = 237
  ClientWidth = 281
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblNome: TLabel
    Left = 8
    Top = 8
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object lblIdade: TLabel
    Left = 8
    Top = 54
    Width = 28
    Height = 13
    Caption = 'Idade'
  end
  object lblCidade: TLabel
    Left = 112
    Top = 54
    Width = 33
    Height = 13
    Caption = 'Cidade'
  end
  object edtNome: TEdit
    Left = 24
    Top = 27
    Width = 249
    Height = 21
    TabOrder = 0
  end
  object edtIdade: TEdit
    Left = 24
    Top = 73
    Width = 65
    Height = 21
    TabOrder = 1
  end
  object edtCidade: TEdit
    Left = 128
    Top = 73
    Width = 145
    Height = 21
    TabOrder = 2
  end
  object rdgSexo: TRadioGroup
    Left = 8
    Top = 100
    Width = 265
    Height = 61
    Caption = ' Sexo '
    Columns = 2
    Items.Strings = (
      'Masculino'
      'Feminino')
    TabOrder = 3
  end
  object bbnFechar: TBitBtn
    Left = 198
    Top = 167
    Width = 75
    Height = 25
    Caption = '&Sair'
    DoubleBuffered = True
    Kind = bkClose
    NumGlyphs = 2
    ParentDoubleBuffered = False
    TabOrder = 4
  end
  object pnlFuncoes: TPanel
    Left = 0
    Top = 196
    Width = 281
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 5
    ExplicitLeft = 8
    ExplicitTop = 251
    ExplicitWidth = 283
    object lblIdioma: TLabel
      Left = 8
      Top = 14
      Width = 66
      Height = 13
      Alignment = taRightJustify
      Caption = 'Idioma'
    end
    object cbxIdioma: TComboBox
      Left = 80
      Top = 11
      Width = 193
      Height = 21
      TabOrder = 0
    end
  end
end

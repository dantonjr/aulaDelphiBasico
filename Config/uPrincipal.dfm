object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'frmPrincipal'
  ClientHeight = 213
  ClientWidth = 339
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = popCor
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object lblTexto: TLabel
    Left = 8
    Top = 16
    Width = 28
    Height = 13
    Caption = 'Texto'
  end
  object edtTexto: TEdit
    Left = 8
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btnTexto: TButton
    Left = 8
    Top = 62
    Width = 121
    Height = 25
    Caption = 'Aplica Texto'
    TabOrder = 1
    OnClick = btnTextoClick
  end
  object pnlFuncoes: TPanel
    Left = 0
    Top = 172
    Width = 339
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 2
    DesignSize = (
      339
      41)
    object btnCaminhoApp: TButton
      Left = 104
      Top = 8
      Width = 105
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Caminho App'
      TabOrder = 0
      OnClick = btnCaminhoAppClick
    end
    object btnNomeApp: TButton
      Left = 224
      Top = 8
      Width = 105
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Nome App'
      TabOrder = 1
      OnClick = btnNomeAppClick
    end
  end
  object popCor: TPopupMenu
    Left = 128
    Top = 104
    object Alteraracor1: TMenuItem
      Caption = 'Alterar a cor...'
      OnClick = Alteraracor1Click
    end
  end
  object cdgCor: TColorDialog
    Left = 200
    Top = 104
  end
end

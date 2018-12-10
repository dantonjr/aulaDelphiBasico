object frmImagem: TfrmImagem
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Imagem'
  ClientHeight = 306
  ClientWidth = 415
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
  object imgImagem: TImage
    Left = 0
    Top = 41
    Width = 415
    Height = 205
    Align = alClient
    ExplicitLeft = 64
    ExplicitTop = 47
    ExplicitWidth = 105
    ExplicitHeight = 105
  end
  object pnlFuncoes: TPanel
    Left = 0
    Top = 265
    Width = 415
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 0
    ExplicitTop = 201
    DesignSize = (
      415
      41)
    object bbnFechar: TBitBtn
      Left = 332
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Fechar'
      DoubleBuffered = True
      Kind = bkClose
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 0
    end
  end
  object pnlAcoes: TPanel
    Left = 0
    Top = 0
    Width = 415
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    object bbnAbrir: TBitBtn
      Left = 8
      Top = 8
      Width = 25
      Height = 25
      Hint = 'Abrir arquivo'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555555555555555555555555555555555555555555555555555555555555
        555555555555555555555555555555555555555FFFFFFFFFF555550000000000
        55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
        B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
        000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
        555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
        55555575FFF75555555555700007555555555557777555555555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bbnAbrirClick
    end
    object bbnSalvar: TBitBtn
      Left = 39
      Top = 8
      Width = 25
      Height = 25
      Hint = 'Salvar arquivo'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
        00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
        00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
        00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
        0003737FFFFFFFFF7F7330099999999900333777777777777733}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object ckbAdaptar: TCheckBox
      Left = 70
      Top = 12
      Width = 107
      Height = 17
      Caption = 'Adaptar Tamanho'
      TabOrder = 2
      OnClick = ckbAdaptarClick
    end
    object ckbProporcional: TCheckBox
      Left = 183
      Top = 12
      Width = 97
      Height = 17
      Caption = 'Proporcional'
      TabOrder = 3
      OnClick = ckbProporcionalClick
    end
    object ckbCentralizar: TCheckBox
      Left = 286
      Top = 12
      Width = 97
      Height = 17
      Caption = 'Centralizar'
      TabOrder = 4
      OnClick = ckbCentralizarClick
    end
  end
  object stbStatus: TStatusBar
    Left = 0
    Top = 246
    Width = 415
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Width = 100
      end
      item
        Width = 50
      end>
    ExplicitTop = 182
  end
  object opdAbrir: TOpenPictureDialog
    Filter = 
      'Todos os arquivos (*.gif;*.png;*.jpg;*.jpeg;*.bmp;*.tif;*.tiff;*' +
      '.ico;*.emf;*.wmf)|*.gif;*.png;*.jpg;*.jpeg;*.bmp;*.tif;*.tiff;*.' +
      'ico;*.emf;*.wmf|GIF Image (*.gif)|*.gif|Portable Network Graphic' +
      's (*.png)|*.png|JPEG Image File (*.jpg)|*.jpg|JPEG Image File (*' +
      '.jpeg)|*.jpeg|Bitmaps (*.bmp)|*.bmp|TIFF Images (*.tif)|*.tif|TI' +
      'FF Images (*.tiff)|*.tiff|Icons (*.ico)|*.ico|Enhanced Metafiles' +
      ' (*.emf)|*.emf|Metafiles (*.wmf)|*.wmf'
    Title = 'Abrir arquivo'
    Left = 40
    Top = 112
  end
end

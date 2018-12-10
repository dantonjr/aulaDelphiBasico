object frmTexto: TfrmTexto
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Texto'
  ClientHeight = 258
  ClientWidth = 388
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
  object pnlFuncoes: TPanel
    Left = 0
    Top = 217
    Width = 388
    Height = 41
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 0
    DesignSize = (
      388
      41)
    object bbnFechar: TBitBtn
      Left = 305
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
    Width = 388
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
      OnClick = bbnSalvarClick
    end
    object bbnLimpaTexto: TBitBtn
      Left = 295
      Top = 8
      Width = 25
      Height = 25
      Hint = 'Limpar texto'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bbnLimpaTextoClick
    end
    object bbnSelecionaTudo: TBitBtn
      Left = 326
      Top = 8
      Width = 25
      Height = 25
      Hint = 'Selecionar texto'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300033300000
        00003777FF377777777707070330FFFFFFF077777F37F3FF3FF707370330F00F
        00F077F77F37F773773707370330FFFFFFF077F77F37F3FFFF3707070330F000
        0FF077777337F777733730003330FFFFFFF037773337F3FF3FF733033330F00F
        0000337FFF37F773777733000330FFFF0FF033777FF7F3FF7F3733007030F08F
        0F03337777F7F7737F7330703700FFFF003337773777FFFF7733307333700000
        0333377FF37777777FFF33073070333000033377F777FF37777F333077000307
        7770333777777F7777773333003300003300333377337777FF77333333333307
        7770333333333377777733333333333000033333333333377773}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bbnSelecionaTudoClick
    end
    object bbnFonte: TBitBtn
      Left = 357
      Top = 8
      Width = 25
      Height = 25
      Hint = 'Alterar fonte'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333FFF33FFFFF33333300033000
        00333337773377777333333330333300033333337FF33777F333333330733300
        0333333377FFF777F33333333700000073333333777777773333333333033000
        3333333337FF777F333333333307300033333333377F777F3333333333703007
        33333333377F7773333333333330000333333333337777F33333333333300003
        33333333337777F3333333333337007333333333337777333333333333330033
        3333333333377333333333333333033333333333333733333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = bbnFonteClick
    end
    object ckbHorizontal: TCheckBox
      Left = 70
      Top = 12
      Width = 115
      Height = 17
      Caption = 'Rolagem Horizontal'
      TabOrder = 5
      OnClick = ckbHorizontalClick
    end
    object ckbVertical: TCheckBox
      Left = 191
      Top = 12
      Width = 98
      Height = 17
      Caption = 'Rolagem Vertical'
      TabOrder = 6
      OnClick = ckbHorizontalClick
    end
  end
  object mmoTexto: TMemo
    Left = 0
    Top = 41
    Width = 388
    Height = 157
    Align = alClient
    HideSelection = False
    TabOrder = 2
    ExplicitTop = 39
  end
  object stbStatus: TStatusBar
    Left = 0
    Top = 198
    Width = 388
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Width = 25
      end
      item
        Alignment = taCenter
        Width = 25
      end
      item
        Alignment = taCenter
        Width = 45
      end
      item
        Width = 120
      end
      item
        Width = 5000
      end>
  end
  object fdgFonte: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 64
    Top = 88
  end
  object otdAbrir: TOpenTextFileDialog
    Filter = 
      'Todos os arquivos (*.*)|*.*|Arquivos texo (*.txt)|*.txt|Arquivos' +
      ' de log (*.log)|*.log|Arquivos do Pascal (*.pas)|*.pas'
    FilterIndex = 2
    Title = 'Abrir arquivo'
    Left = 120
    Top = 88
  end
  object stdSalvar: TSaveTextFileDialog
    DefaultExt = 'txt'
    Filter = 
      'Todos os arquivos (*.*)|*.*|Arquivos texo (*.txt)|*.txt|Arquivos' +
      ' de log (*.log)|*.log|Arquivos do Pascal (*.pas)|*.pas'
    FilterIndex = 2
    Title = 'Salvar arquivo'
    Left = 176
    Top = 88
  end
end

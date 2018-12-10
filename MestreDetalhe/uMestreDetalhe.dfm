object frmMestreDetalhe: TfrmMestreDetalhe
  Left = 0
  Top = 0
  Caption = 'Mestre Detalhe - Regi'#227'o/Estado/Cidade'
  ClientHeight = 622
  ClientWidth = 426
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dbgRegiao: TDBGrid
    Left = 8
    Top = 8
    Width = 410
    Height = 153
    DataSource = DM.dtsRegiao
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dbnRegiao: TDBNavigator
    Left = 8
    Top = 167
    Width = 410
    Height = 25
    DataSource = DM.dtsRegiao
    TabOrder = 1
  end
  object dbgEstado: TDBGrid
    Left = 8
    Top = 222
    Width = 410
    Height = 120
    DataSource = DM.dtsEstado
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dgnEstado: TDBNavigator
    Left = 8
    Top = 352
    Width = 410
    Height = 25
    DataSource = DM.dtsEstado
    TabOrder = 3
  end
  object dbgCidade: TDBGrid
    Left = 8
    Top = 400
    Width = 410
    Height = 120
    DataSource = DM.dtsCidade
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object dbnCidade: TDBNavigator
    Left = 8
    Top = 536
    Width = 410
    Height = 25
    DataSource = DM.dtsCidade
    TabOrder = 5
  end
end

object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Conex'#227'o'
  ClientHeight = 395
  ClientWidth = 517
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  DesignSize = (
    517
    395)
  PixelsPerInch = 96
  TextHeight = 13
  object lblCodigo: TLabel
    Left = 16
    Top = 8
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = dbeCodigo
  end
  object lblNome: TLabel
    Left = 112
    Top = 8
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = dbeNome
  end
  object Label3: TLabel
    Left = 16
    Top = 51
    Width = 28
    Height = 13
    Caption = 'Idade'
    FocusControl = dbeIdade
  end
  object lblSalario: TLabel
    Left = 112
    Top = 54
    Width = 32
    Height = 13
    Caption = 'Sal'#225'rio'
    FocusControl = dbeSalario
  end
  object dbgPessoa: TDBGrid
    Left = 11
    Top = 151
    Width = 498
    Height = 207
    Anchors = [akLeft, akTop, akRight]
    DataSource = dtsPessoa
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'codigo'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd.'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idade'
        Title.Alignment = taCenter
        Title.Caption = 'Idade'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sexo'
        PickList.Strings = (
          'M'
          'F')
        Title.Alignment = taCenter
        Title.Caption = 'Sexo'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ativo'
        PickList.Strings = (
          'S'
          'N')
        Title.Alignment = taCenter
        Title.Caption = 'Ativo'
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'salario'
        Title.Alignment = taCenter
        Title.Caption = 'Sal'#225'rio'
        Width = 80
        Visible = True
      end>
  end
  object dbnPessoa: TDBNavigator
    Left = 11
    Top = 364
    Width = 400
    Height = 27
    DataSource = dtsPessoa
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 1
  end
  object btnGravaBanco: TButton
    Left = 417
    Top = 364
    Width = 92
    Height = 27
    Caption = 'Gravar Banco'
    TabOrder = 2
    OnClick = btnGravaBancoClick
  end
  object dbeCodigo: TDBEdit
    Left = 16
    Top = 24
    Width = 73
    Height = 21
    DataField = 'codigo'
    DataSource = dtsPessoa
    TabOrder = 3
  end
  object dbeNome: TDBEdit
    Left = 112
    Top = 27
    Width = 353
    Height = 21
    DataField = 'nome'
    DataSource = dtsPessoa
    TabOrder = 4
  end
  object dbeIdade: TDBEdit
    Left = 16
    Top = 67
    Width = 73
    Height = 21
    DataField = 'idade'
    DataSource = dtsPessoa
    TabOrder = 5
  end
  object dbeSalario: TDBEdit
    Left = 112
    Top = 70
    Width = 134
    Height = 21
    DataField = 'salario'
    DataSource = dtsPessoa
    TabOrder = 6
  end
  object dbcAtivo: TDBCheckBox
    Left = 280
    Top = 69
    Width = 97
    Height = 17
    Caption = 'Ativo'
    DataField = 'ativo'
    DataSource = dtsPessoa
    TabOrder = 7
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
  object DBRadioGroup1: TDBRadioGroup
    Left = 16
    Top = 97
    Width = 281
    Height = 48
    Caption = ' Sexo '
    Columns = 2
    DataField = 'sexo'
    DataSource = dtsPessoa
    Items.Strings = (
      'Masculino'
      'Feminino')
    ParentBackground = True
    TabOrder = 8
    Values.Strings = (
      'M'
      'F')
  end
  object sqlConexao: TSQLConnection
    ConnectionName = 'MySQLConnection'
    DriverName = 'MySQL'
    GetDriverFunc = 'getSQLDriverMYSQL'
    LibraryName = 'dbxmys.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=DBXMySQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver150.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=15.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXMySqlMetaDataCommandFactory,DbxMySQLDr' +
        'iver150.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMySqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMySQLDriver,Version=15.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverMYSQL'
      'LibraryName=dbxmys.dll'
      'VendorLib=LIBMYSQL.dll'
      'MaxBlobSize=-1'
      'DriverName=MySQL'
      'HostName=10.33.1.113'
      'Database=dantonjr'
      'User_Name=root'
      'Password=social'
      'ServerCharSet='
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=False'
      'ConnectTimeout=60')
    VendorLib = 'LIBMYSQL.dll'
    Connected = True
    Left = 112
    Top = 186
  end
  object sdsPessoa: TSQLDataSet
    SchemaName = 'root'
    CommandText = 'SELECT * FROM pessoa'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConexao
    Left = 176
    Top = 182
  end
  object dspPessoa: TDataSetProvider
    DataSet = sdsPessoa
    Left = 248
    Top = 182
  end
  object cdsPessoa: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoa'
    Left = 312
    Top = 182
  end
  object dtsPessoa: TDataSource
    DataSet = cdsPessoa
    Left = 368
    Top = 182
  end
end

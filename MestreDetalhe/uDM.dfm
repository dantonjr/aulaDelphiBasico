object DM: TDM
  OldCreateOrder = False
  Height = 459
  Width = 423
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
      'HostName=10.33.1.46'
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
    Left = 32
    Top = 16
  end
  object sdsRegiao: TSQLDataSet
    CommandText = 'SELECT * FROM REGIAO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sqlConexao
    Left = 88
    Top = 48
  end
  object dspRegiao: TDataSetProvider
    DataSet = sdsRegiao
    Left = 152
    Top = 48
  end
  object cdsRegiao: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRegiao'
    Left = 216
    Top = 48
    object cdsRegiaoREGIAO: TSmallintField
      FieldName = 'REGIAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsRegiaoNOME: TStringField
      FieldName = 'NOME'
      Size = 15
    end
    object cdsRegiaosdsEstado: TDataSetField
      FieldName = 'sdsEstado'
    end
  end
  object dtsRegiao: TDataSource
    DataSet = cdsRegiao
    Left = 288
    Top = 48
  end
  object sdsEstado: TSQLDataSet
    SchemaName = 'root'
    CommandText = 'SELECT * FROM ESTADO WHERE REGIAO = :REGIAO'
    DbxCommandType = 'Dbx.SQL'
    DataSource = dtsRegiaoEstado
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftSmallint
        Name = 'REGIAO'
        ParamType = ptInput
      end>
    SQLConnection = sqlConexao
    Left = 88
    Top = 208
  end
  object dtsRegiaoEstado: TDataSource
    DataSet = sdsRegiao
    Left = 88
    Top = 128
  end
  object cdsEstado: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = cdsRegiaosdsEstado
    Params = <>
    Left = 216
    Top = 208
    object cdsEstadoUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsEstadoNOME: TStringField
      FieldName = 'NOME'
    end
    object cdsEstadoREGIAO: TSmallintField
      FieldName = 'REGIAO'
      Required = True
    end
    object cdsEstadoIBGE: TSmallintField
      FieldName = 'IBGE'
    end
    object cdsEstadosdsCidade: TDataSetField
      FieldName = 'sdsCidade'
    end
  end
  object dtsEstado: TDataSource
    DataSet = cdsEstado
    Left = 288
    Top = 208
  end
  object sdsCidade: TSQLDataSet
    SchemaName = 'root'
    CommandText = 'SELECT * FROM CIDADE WHERE UF = :UF'
    DbxCommandType = 'Dbx.SQL'
    DataSource = dtsEstadoCidade
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFixedChar
        Name = 'UF'
        ParamType = ptInput
        Size = 3
      end>
    SQLConnection = sqlConexao
    Left = 88
    Top = 352
  end
  object dtsEstadoCidade: TDataSource
    DataSet = sdsEstado
    Left = 88
    Top = 280
  end
  object cdsCidade: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = cdsEstadosdsCidade
    Params = <>
    Left = 216
    Top = 352
  end
  object dtsCidade: TDataSource
    DataSet = cdsCidade
    Left = 288
    Top = 352
  end
end

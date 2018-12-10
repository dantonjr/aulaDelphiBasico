unit uDM;

interface

uses
  SysUtils, Classes, DBXMySQL, DB, SqlExpr, FMTBcd, DBClient, Provider;

type
  TDM = class(TDataModule)
    sqlConexao: TSQLConnection;
    sdsRegiao: TSQLDataSet;
    dspRegiao: TDataSetProvider;
    cdsRegiao: TClientDataSet;
    dtsRegiao: TDataSource;
    sdsEstado: TSQLDataSet;
    dtsRegiaoEstado: TDataSource;
    cdsRegiaoREGIAO: TSmallintField;
    cdsRegiaoNOME: TStringField;
    cdsRegiaosdsEstado: TDataSetField;
    cdsEstado: TClientDataSet;
    dtsEstado: TDataSource;
    sdsCidade: TSQLDataSet;
    dtsEstadoCidade: TDataSource;
    cdsCidade: TClientDataSet;
    cdsEstadoUF: TStringField;
    cdsEstadoNOME: TStringField;
    cdsEstadoREGIAO: TSmallintField;
    cdsEstadoIBGE: TSmallintField;
    cdsEstadosdsCidade: TDataSetField;
    dtsCidade: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.

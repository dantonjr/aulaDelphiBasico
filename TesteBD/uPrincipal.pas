unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBXMySQL, DB, SqlExpr, StdCtrls, FMTBcd, Grids, DBGrids, DBClient,
  Provider, ExtCtrls, DBCtrls, Mask;

type
  TForm1 = class(TForm)
    sqlConexao: TSQLConnection;
    sdsPessoa: TSQLDataSet;
    dspPessoa: TDataSetProvider;
    cdsPessoa: TClientDataSet;
    dtsPessoa: TDataSource;
    dbgPessoa: TDBGrid;
    dbnPessoa: TDBNavigator;
    btnGravaBanco: TButton;
    lblCodigo: TLabel;
    dbeCodigo: TDBEdit;
    lblNome: TLabel;
    dbeNome: TDBEdit;
    Label3: TLabel;
    dbeIdade: TDBEdit;
    lblSalario: TLabel;
    dbeSalario: TDBEdit;
    dbcAtivo: TDBCheckBox;
    DBRadioGroup1: TDBRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGravaBancoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnGravaBancoClick(Sender: TObject);
begin
  cdsPessoa.ApplyUpdates(0);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if cdsPessoa.ChangeCount > 0 then
    if MessageDlg('Registros alterados sem salvamento. Deseja salvar?', mtWarning, [mbYes, mbNo], 0) = mrYes then
      cdsPessoa.ApplyUpdates(0);
end;

end.

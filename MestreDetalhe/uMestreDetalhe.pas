unit uMestreDetalhe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids;

type
  TfrmMestreDetalhe = class(TForm)
    dbgRegiao: TDBGrid;
    dbnRegiao: TDBNavigator;
    dbgEstado: TDBGrid;
    dgnEstado: TDBNavigator;
    dbgCidade: TDBGrid;
    dbnCidade: TDBNavigator;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMestreDetalhe: TfrmMestreDetalhe;

implementation

uses uDM;

{$R *.dfm}

end.

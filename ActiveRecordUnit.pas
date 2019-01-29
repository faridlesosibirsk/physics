unit ActiveRecordUnit;

interface

uses
  System.Classes,
  Data.DB,
  Data.Win.ADODB,
  Vcl.Grids,
  Vcl.DBGrids;

type

  ActiveRecord = class
  private
    ADOConnection: TADOConnection;
    ADOQuery: TADOQuery;
    DataSource: TDataSource;
  public
    function GetADOConnection: TADOConnection;
    constructor create;
    function GetADOQuery: TADOQuery;
    function GetDataSource: TDataSource;
  end;

implementation

{ ActiveRecord }

constructor ActiveRecord.create;
begin
  if not Assigned(ADOConnection) then
    ADOConnection := TADOConnection.create(nil);
  ADOConnection.ConnectionString :=
    'Provider=Microsoft.ACE.OLEDB.15.0;Data Source=D:\_data\accessDB.accdb;Persist Security Info=False';
  ADOConnection.LoginPrompt := false;
  ADOConnection.Connected := true;

  if not Assigned(ADOQuery) then
    ADOQuery := TADOQuery.create(nil);
  ADOQuery.Connection := GetADOConnection;
  ADOQuery.Close;
  ADOQuery.SQL.Clear;
  ADOQuery.SQL.add('SELECT * FROM Mechanics;'); //  WHERE id
  ADOQuery.Open;
  ADOQuery.Active := true;
  if not Assigned(DataSource) then
    DataSource := TDataSource.create(nil);
  DataSource.DataSet := ADOQuery;
end;

function ActiveRecord.GetADOConnection: TADOConnection;
begin
  result := ADOConnection;
end;

function ActiveRecord.GetADOQuery: TADOQuery;
begin
  result := ADOQuery;
end;

function ActiveRecord.GetDataSource: TDataSource;
begin
  result := DataSource;
end;

end.

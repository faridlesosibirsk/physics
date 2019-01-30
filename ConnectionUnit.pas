unit ConnectionUnit;

interface

uses
  System.Generics.Collections {TDictionary} ,
  Vcl.Controls,
  Data.DB, Data.Win.ADODB, Vcl.DBCGrids,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Forms;

type
  Connection = interface
    function theoryLab1: TList<String>;
  end;

  AccessConnection = class(TInterfacedObject, Connection)
  private
    ADOQuery: TADOQuery;
    DataSource: TDataSource;
    ADOConnection: TADOConnection;
  public
    function theoryLab1: TList<String>;
  published
    constructor create;
  end;

implementation

{ AccessConnection }

constructor AccessConnection.create;//(AOwner: TForm);
begin
  // if not Assigned(ADOConnection) then
  ADOConnection := TADOConnection.create(nil);
  with (ADOConnection) do
  begin
    Provider := 'Microsoft.ACE.OLEDB.12.0';
    Mode := cmShareDenyNone;
    LoginPrompt := False;
    ConnectionString :=
      'Provider=Microsoft.ACE.OLEDB.15.0;Data Source=D:\_data\accessDB.' +
      'accdb;Persist Security Info=False';
    Connected := True;
  end;
{
  // if not Assigned(ADOQuery) then
  ADOQuery := TADOQuery.create(nil);
  with (ADOQuery) do
  begin
    Connection := ADOConnection;
    Close;
    SQL.Clear;
    SQL.add('SELECT title FROM Mechanics WHERE id = 1;');
    Open;
    Active := True;
  end;
  // if not Assigned(DataSource) then
  DataSource := TDataSource.create(nil);
  with (DataSource) do
  begin
    DataSet := ADOQuery;
  end;
  //AOwner.Caption := ADOQuery.FieldByName('title').AsString;
}
end;

function AccessConnection.theoryLab1: TList<String>;
var
  theory1: TList<String>;
begin
  theory1:= TList<String>.create;

  ADOQuery := TADOQuery.create(nil);
  with (ADOQuery) do
  begin
    Connection := ADOConnection;
    Close;
    SQL.Clear;
    SQL.add('SELECT theory FROM Lab1;');
    Open;
    Active := True;
  end;
  // for string in ADOQuery do
  // theory1.add(string);
  // ADOQuery.free;
  result:=theory1;
end;

end.

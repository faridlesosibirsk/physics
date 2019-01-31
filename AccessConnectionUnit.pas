unit AccessConnectionUnit;

interface

uses
  System.Generics.Collections {TDictionary} ,
  Data.DB,
  Data.Win.ADODB,
  controllersunit,
  ConnectionUnit;

type
  AccessConnection = class(TInterfacedObject, Connection)
  private
    ADOQuery: TADOQuery;
    DataSource: TDataSource;
    ADOConnection: TADOConnection;
  public
    function theoryLab1: TList<String>;
    function testLab1: TList<String>;
  published
    constructor create;
  end;

implementation

{ AccessConnection }

constructor AccessConnection.create;
begin
  ADOConnection := TADOConnection.create(nil);
  with (ADOConnection) do
  begin
    Provider := 'Microsoft.ACE.OLEDB.12.0';
    Mode := cmShareDenyNone;
    LoginPrompt := False;
    ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;' +
      'Data Source=Phisics.accdb;' +
      'Persist Security Info=False';
    Connected := True;
  end;
end;

function AccessConnection.testLab1: TList<String>;
begin
  ADOQuery := TADOQuery.create(nil);
  with (ADOQuery) do
  begin
    Connection := ADOConnection;
    Close;
    SQL.Clear;
    SQL.add('SELECT test FROM TestLab1;');
    Open;
    Active := True;
  end;
  Result := TList<String>.create;
  ADOQuery.First;
  While not ADOQuery.Eof do
  begin
    Result.add(ADOQuery.FieldByName('test').AsString);
    ADOQuery.Next;
  end;
end;

function AccessConnection.theoryLab1: TList<String>;
begin
  ADOQuery := TADOQuery.create(nil);
  with (ADOQuery) do
  begin
    Connection := ADOConnection;
    Close;
    SQL.Clear;
    SQL.add('SELECT theory FROM TheoryLab1;');
    Open;
    Active := True;
  end;
  Result := TList<String>.create;
  ADOQuery.First;
  While not ADOQuery.Eof do
  begin
    Result.add(ADOQuery.FieldByName('theory').AsString);
    ADOQuery.Next;
  end;
end;

end.

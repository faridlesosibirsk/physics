unit ConnectionUnit;

interface

uses
  System.Generics.Collections {TDictionary} ,
  Vcl.Controls,
  Data.DB, Data.Win.ADODB, Vcl.DBCGrids,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Forms;

type
  TVarArray = Array of String;
  TVarList = TList<TVarArray>;

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

constructor AccessConnection.create; // (AOwner: TForm);
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
  Function GetRow: String;
  var
    i: Integer;
  begin
    SetLength(Result, ADOQuery.FieldCount);
    {or i := 0 to ADOQuery.FieldCount - 1 do
    begin
      Result[i] := ADOQuery.Fields[i].Value;

    end;}
    Result:= ADOQuery.FieldByName('theory').AsString;
  end;

begin
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
  Result := TList<String>.create;
  ADOQuery.First;
  While not ADOQuery.Eof do
  begin
    Result.add(ADOQuery.FieldByName('theory').AsString);
    ADOQuery.Next;
  end;
end;

end.

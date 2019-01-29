unit ConnectionUnit;

interface

uses
  Vcl.Controls,
  Data.DB, Data.Win.ADODB, Vcl.DBCGrids,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Forms;

type
  Connection = interface
    procedure setDBCtrlGrid(AOwner: TForm);
  end;

  AccessConnection = class(TInterfacedObject, Connection)
  private
    DBText1: TDBText;
    DBCtrlGrid1: TDBCtrlGrid;
    ADOQuery: TADOQuery;
    DataSource: TDataSource;
    ADOConnection: TADOConnection;
    function GetDataSource: TDataSource;
  public
    procedure setDBCtrlGrid(AOwner: TForm);
  published
    constructor create;
  end;

implementation

{ AccessConnection }

constructor AccessConnection.create;
begin
  if not Assigned(ADOConnection) then
    ADOConnection := TADOConnection.create(nil);
  with (ADOConnection) do
  begin
    ConnectionString :=
      'Provider=Microsoft.ACE.OLEDB.12.0;Data Source=D:\_data\accessDB.accdb;Persist Security Info=False';
    LoginPrompt := false;
    Connected := true;
    Mode:=cmShareDenyNone;
    Provider :='Microsoft.ACE.OLEDB.12.0';
  end;

end;

function AccessConnection.GetDataSource: TDataSource;
begin
  if not Assigned(ADOQuery) then
    ADOQuery := TADOQuery.create(nil);
  ADOQuery.Connection := ADOConnection;
  ADOQuery.Close;
  ADOQuery.SQL.Clear;
  ADOQuery.SQL.add('SELECT * FROM Mechanics;');
  ADOQuery.Open;
  ADOQuery.Active := true;
  if not Assigned(DataSource) then
    DataSource := TDataSource.create(nil);
  DataSource.DataSet := ADOQuery;
  ADOQuery.Active := true;
  result := DataSource;
end;

procedure AccessConnection.setDBCtrlGrid(AOwner: TForm);
begin
  DBCtrlGrid1 := TDBCtrlGrid.create(AOwner);
  with (DBCtrlGrid1) do
  begin
    Align := alLeft;
    Parent := AOwner;
    Left := 200;
    Top := 56;
    Width := 216;
    Height := 216;
    TabOrder := 0;
    DataSource := GetDataSource;
  end;
  DBText1 := TDBText.create(DBCtrlGrid1);
  with (DBText1) do
  begin
    Parent := DBCtrlGrid1;
    Left := 16;
    Top := 16;
    Width := 650;
    Height := 17;
    DataField := 'title';
  end;
end;

end.

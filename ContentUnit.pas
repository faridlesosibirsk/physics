unit ContentUnit;

interface

uses
  StrategyUnit {Strategy} ,
  System.Generics.Collections {TDictionary};

type
  Content = class(TInterfacedObject, Strategy)
  private
    db1: TDictionary<String, String>;
  public
    function db: TDictionary<String, String>;
  published
    constructor create;
  end;

implementation

{ Content }

constructor Content.create;
begin
  db1 := TDictionary<String, String>.create;
end;

function Content.db: TDictionary<String, String>;
begin
  db1.AddOrSetValue('title', '�������� ������');
  db1.AddOrSetValue('content', '��������');
  db1.AddOrSetValue('item', '�������� ��������');
  db1.AddOrSetValue('item', '�������� � ���������� ����������');
  db1.AddOrSetValue('item', '������������� ��������');
  db1.AddOrSetValue('item', '��������� ������� ���');
  db1.AddOrSetValue('item', '�������� �� ����������');
  db1.AddOrSetValue('item', '��� � �����������');
  db1.AddOrSetValue('item', '�������� �� ��������� ���������');
  db1.AddOrSetValue('item', '������� � ��������� ����������');
  db1.AddOrSetValue('item', '���������� ������� �����');
  db1.AddOrSetValue('item', '���������� ��������');
  db1.AddOrSetValue('item', '����� �������');
  db1.AddOrSetValue('item', '������ �������');
  db1.AddOrSetValue('item', '������� ��������� ��������');
  db1.AddOrSetValue('item', '����������� ������������ �������������');
  result := db1;
end;

end.

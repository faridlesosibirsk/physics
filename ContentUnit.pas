unit ContentUnit;

interface

uses
  System.Generics.Collections {TDictionary} ,
  LabsUnit;

type
  Content = class(TInterfacedObject, Labs)
  const
    title = 'Context';
  public
    function getTitle: String;
    function getText: TDictionary<String, String>;
  end;

implementation

{ Content }

function Content.getText: TDictionary<String, String>;
begin
  result := TDictionary<String, String>.create;
  result.Add('1', '�������� � ���������� ����������');
  result.Add('2', '������������� ��������');
  result.Add('3', '��������� ������� ���');
  result.Add('4', '�������� �� ����������');
  result.Add('5', '��� � �����������');
  result.Add('6', '�������� �� ��������� ���������');
  result.Add('7', '������� � ��������� ����������');
  result.Add('8', '���������� ������� �����');
  result.Add('9', '���������� ��������');
  result.Add('10', '����� �������');
  result.Add('11', '������ �������');
  result.Add('12', '������� ��������� ��������');
  result.Add('13', '����������� ������������ �������������');
end;

function Content.getTitle: String;
begin
  result := title;
end;

end.

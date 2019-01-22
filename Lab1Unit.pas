unit Lab1Unit;

interface

uses
  System.Generics.Collections {TDictionary};

type
  Lab1 = class
  const
    title = 'Лабораторная работа №1';
    caption = 'ДВИЖЕНИЕ С ПОСТОЯННЫМ УСКОРЕНИЕМ';
    // theory = 'Выберите «Механика» и «Свободное падение тел». Нажмите вверху внутрен­него окна кнопку с изображением страницы. Прочитайте краткие теоретиче­ские сведения и необходимое запишите в свой конспект.';
    item: array [1 .. 2] of String = ('qwe', 'asd');
  private
  public
    function getList(item: array of String): TList<String>;
  end;

implementation

{ Lab1 }

function Lab1.getList(item: array of String): TList<String>;
var
  list: TList<String>;
  i, count, low1, high1: Integer;
begin
  list:= TList<String>.create;
  //count := Length(item);
  low1 := low(item);
  high1 :=  high(item);
  for i := low1 to high1 do
  //for i := 1 to count do
    list.Add(Lab1.item[i]);
  result :=list;
end;

end.

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
  db1.AddOrSetValue('title', 'Открытая физика');
  db1.AddOrSetValue('content', 'Механика');
  db1.AddOrSetValue('item', 'Сложение векторов');
  db1.AddOrSetValue('item', 'Движение с постоянным ускорением');
  db1.AddOrSetValue('item', 'Относительное движение');
  db1.AddOrSetValue('item', 'Свободное падение тел');
  db1.AddOrSetValue('item', 'Движение по окружности');
  db1.AddOrSetValue('item', 'Вес и невесомость');
  db1.AddOrSetValue('item', 'Движение по наклонной плоскости');
  db1.AddOrSetValue('item', 'Упругие и неупругие соударения');
  db1.AddOrSetValue('item', 'Соударение упругих шаров');
  db1.AddOrSetValue('item', 'Реактивное движение');
  db1.AddOrSetValue('item', 'Закон Кеплера');
  db1.AddOrSetValue('item', 'Момент инерции');
  db1.AddOrSetValue('item', 'Течение идеальной жидкости');
  db1.AddOrSetValue('item', 'Видеозаписи механических эксперементов');
  result := db1;
end;

end.

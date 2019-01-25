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
  result.Add('1', 'Движение с постоянным ускорением');
  result.Add('2', 'Относительное движение');
  result.Add('3', 'Свободное падение тел');
  result.Add('4', 'Движение по окружности');
  result.Add('5', 'Вес и невесомость');
  result.Add('6', 'Движение по наклонной плоскости');
  result.Add('7', 'Упругие и неупругие соударения');
  result.Add('8', 'Соударение упругих шаров');
  result.Add('9', 'Реактивное движение');
  result.Add('10', 'Закон Кеплера');
  result.Add('11', 'Момент инерции');
  result.Add('12', 'Течение идеальной жидкости');
  result.Add('13', 'Видеозаписи механических эксперементов');
end;

function Content.getTitle: String;
begin
  result := title;
end;

end.

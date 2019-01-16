unit DocumentUnit;

interface

uses
  System.Generics.Collections {TList} ,
  System.Classes, {TComponent}
  Vcl.Controls, {TWinControl}
  Vcl.Forms, StateUnit,
    Vcl.ExtCtrls {TPanel},
    Vcl.StdCtrls {TButton};

type
  Document = class
  private
    /// <link>aggregation</link>
    State1: State;
  public
    function Render(State1: State; AOwner: TWinControl): TObjectList<TWinControl>;
  end;

implementation

{ Document }

function Document.Render(State1: State; AOwner: TWinControl): TObjectList<TWinControl>;
var
  b: TWinControl;
  buttons: TObjectList<TWinControl>;
begin
  buttons := TObjectList<TWinControl>.create;
  if Assigned(self.State1) then
    self.State1.destroy;
  self.State1 := State1;
  buttons := State1.Render;
  for b in buttons do
    b.parent := AOwner;
  result := buttons;
end;

end.

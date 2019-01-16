unit DocumentUnit;

interface

uses
  StateUnit,
  System.Generics.Collections {TList} ,
  System.Classes, {TComponent}
  Vcl.Controls, {TWinControl}
  Vcl.Forms {TForm},
  Vcl.ExtCtrls {TPanel} ,
  Vcl.StdCtrls {TButton};

type
  Document = class
  published
    constructor create(AOwner: TWinControl);
  private
    AOwner: TWinControl;
    /// <link>aggregation</link>
    State1: State;
  public
    function Render(State1: State): TObjectList<TWinControl>;

  end;

implementation

{ Document }

constructor Document.create(AOwner: TWinControl);
begin
  if Assigned(self.State1) then
    self.State1.destroy;
  self.AOwner := AOwner;
end;

function Document.Render(State1: State): TObjectList<TWinControl>;
var
  b: TWinControl;
  buttons: TObjectList<TWinControl>;
begin
  buttons := TObjectList<TWinControl>.create;
  if Assigned(self.State1) then
    self.State1.destroy;
  self.State1 := State1;
  //self.State1.setDocument(self);
  buttons := State1.Render;
  for b in buttons do
    b.parent := AOwner;
  result := buttons;
end;

end.

unit MainUnit;

interface

uses
  AccessConnectionUnit,
  System.Generics.Collections {TDictionary} ,
  ConnectionUnit,
  Vcl.Forms,
  Vcl.ExtCtrls {TPanel} ,
  ContentUnit;

type
  Main = class(TInterfacedObject, Content)
  private
    /// <link>aggregation</link>
    Connection1: Connection;
    panel1: TPanel;
    panels: TList<TPanel>;
    AOwner: TForm;
  public
    procedure createPanels;
    procedure createPanel1;
    function return: TPanel;
  published
    constructor create(AOwner: TForm);
  end;

implementation

{ Main }

constructor Main.create(AOwner: TForm);
begin
  self.AOwner:=AOwner;
  Connection1:= AccessConnection.create;
end;

procedure Main.createPanel1;
begin
  panel1 := TPanel.create(nil);
  with panel1 do
  begin
    Parent := AOwner;
    Caption := 'Lab1';
    // OnClick:=jjjjjjjjjjj;
  end;
end;

procedure Main.createPanels;
var
  stringList: TList<String>;
  s: string;
  p: TPanel;
  i: integer;
begin
  i:=0;
  panels:= TList<TPanel>.create;
  stringList:= TList<String>.create;
  stringList:= Connection1.getColTable('caption','Main');
  for s in stringList do begin
    panels.Add(TPanel.Create(nil));
    panels.Last.Caption:=s;
    panels.Last.Parent:=AOwner;
    panels.Last.Top:=i*40;
  end;

end;

function Main.return: TPanel;
begin
  result := panel1;
end;

end.

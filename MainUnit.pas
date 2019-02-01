unit MainUnit;

interface

uses
  Vcl.Controls {TWinControl} ,
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
    panel: TPanel;
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
  self.AOwner := AOwner;
  Connection1 := AccessConnection.create;
  panel := TPanel.create(nil);
  with panel do
  begin
    Parent := AOwner;
    Caption := 'Lab1';
    Align := alClient;
    // OnClick:=jjjjjjjjjjj;
  end;
end;

procedure Main.createPanel1;
begin

end;

procedure Main.createPanels;
var
  stringList: TList<String>;
  s: string;

  i: integer;
begin
  i := 0;
  panels := TList<TPanel>.create;
  stringList := TList<String>.create;
  stringList := Connection1.getColTable('caption', 'Main');
  for s in stringList do
  begin
    panels.Add(TPanel.create(nil));
    panels.Last.Caption := s;
    panels.Last.Parent := panel;
    panels.Last.Top := i * 41;
    i := i + 1;
  end;

end;

function Main.return: TPanel;
begin
  result := panel;
end;

end.

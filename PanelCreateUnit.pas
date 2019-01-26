unit PanelCreateUnit;

interface

uses
  Lab1Unit,
  TheoryUnit,
  classes {TNotifyEvent} ,
  ContentUnit,
  Vcl.ExtCtrls {TPanel},
  Vcl.Controls {TWinControl} ,
  LaboratoryUnit,
  MainUnit,
  FormCreateUnit;

type
  PanelCreate = class(TInterfacedObject, FormCreate)
  private
    Panel1: TPanel;
    /// <link>aggregation</link>
    Laboratory1: Laboratory;
    procedure AssignedPanel;
  public
    function Open: TPanel;
    procedure toLab1(Sender: TObject);
    procedure toOpen(Sender: TObject);
  end;

implementation

{ PanelCreate }

procedure PanelCreate.AssignedPanel;
begin
  if not assigned(Panel1) then
  begin
    Panel1 := TPanel.create(nil);
    Panel1.caption := 'PanelCreate';
    Panel1.Align := alClient;
    Panel1.BevelOuter := bvNone;
  end;
end;

function PanelCreate.Open: TPanel;
begin
  toLab1(nil);
  result:=Panel1;
end;

procedure PanelCreate.toLab1(Sender: TObject);
begin
  AssignedPanel;
  Laboratory1:= Main.create(Content.create(), toLab1);
  Laboratory1.Print.Parent:=Panel1;
end;

procedure PanelCreate.toOpen(Sender: TObject);
begin
  AssignedPanel;
  Laboratory1.Free;
  Laboratory1:= Main.create(Lab1.create(), toOpen);
  Laboratory1.Print.Parent:=Panel1;
end;

end.

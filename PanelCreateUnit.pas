unit PanelCreateUnit;

interface

uses
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
  AssignedPanel;
  Laboratory1:= Main.create(Content.create());
  Laboratory1.Print.Parent:=Panel1;
  result:=Panel1;
end;

end.

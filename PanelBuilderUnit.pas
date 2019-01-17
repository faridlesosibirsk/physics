unit PanelBuilderUnit;

interface

uses
  BuilderUnit {Builder} ,
  Vcl.ExtCtrls {TPanel};

type
  PanelBuilder = class(TInterfacedObject, Builder)
  private
    /// <link>aggregation</link>
    panel1: TPanel;
  public
    function getPanel: TPanel;
    procedure reset;
    procedure setLeft(left: Integer);
    procedure setTop(top: Integer);
    procedure setCaption(caption: String);
  end;

implementation

{ Panel }

function PanelBuilder.getPanel: TPanel;
begin
  result := panel1;
end;

procedure PanelBuilder.reset;
begin
  panel1 := TPanel.Create(nil);
end;

procedure PanelBuilder.setCaption(caption: String);
begin
  panel1.Caption:=caption;
end;

procedure PanelBuilder.setLeft(left: Integer);
begin
  panel1.Left:=left;
end;

procedure PanelBuilder.setTop(top: Integer);
begin
  panel1.Top:=top;
end;

end.

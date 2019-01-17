unit PanelUnit;

interface

uses
  BuilderUnit {Builder},
  Vcl.ExtCtrls {TPanel};

type
  Panel = class(Builder)
  private
    /// <link>aggregation</link>
    panel1: TPanel;
  public
  end;

implementation

end.

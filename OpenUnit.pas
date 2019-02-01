unit OpenUnit;

interface

uses
  Vcl.Forms,
  ContentUnit;

type
  Open = class(TInterfacedObject)
  private
    /// <link>aggregation</link>
    Content1: Content;
  public
    procedure make;
  published
    constructor create(Content1: Content);
  end;

implementation

{ Open }

constructor Open.create(Content1: Content);
begin
  self.Content1 := Content1;
end;

procedure Open.make;
begin
  //Content1.createPanel1;
  Content1.createPanels;
end;

end.

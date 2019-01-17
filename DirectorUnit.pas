unit DirectorUnit;

interface

uses
  BuilderUnit;

type
  Director = class
  private
    /// <link>aggregation</link>
    builder: Builder;
  public
    procedure makeNextButton(builder: Builder);
    procedure makeHeaderPanel(builder: Builder);
  end;

implementation

{ Director }

procedure Director.makeHeaderPanel(builder: Builder);
begin
  builder.reset;
  builder.setLeft(0);
  builder.setTop(0);
  builder.setCaption('');
end;

procedure Director.makeNextButton(builder: Builder);
begin
  builder.reset;
  builder.setLeft(300);
  builder.setTop(300);
  builder.setCaption('Next >');
end;

end.

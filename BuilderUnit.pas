unit BuilderUnit;

interface

type
  Builder = interface
    procedure reset;
    procedure setLeft(left: Integer);
    procedure setTop(top: Integer);
    procedure setCaption(caption: String);
  end;

implementation

end.

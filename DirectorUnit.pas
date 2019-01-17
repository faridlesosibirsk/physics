unit DirectorUnit;

interface

uses
  BuilderUnit;

type
  Director = class
  private
    /// <link>aggregation</link>
    build: Builder;
  public
    procedure makeFirst(build: Builder);
  end;

implementation

end.

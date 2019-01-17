unit ButtonUnit;

interface

uses
  BuilderUnit {Builder} ,
  Vcl.StdCtrls {TButton};

type
  Button = class(Builder)
  private
    /// <link>aggregation</link>
    button1: TButton;
  public
  end;

implementation

end.

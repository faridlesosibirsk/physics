unit ButtonBuilderUnit;

interface

uses
  BuilderUnit {Builder} ,
  Vcl.StdCtrls {TButton};

type
  ButtonBuilder = class(TInterfacedObject, Builder)
  private
    /// <link>aggregation</link>
    button1: TButton;
  public
    function getButton: TButton;
    procedure reset;
    procedure setLeft(left: Integer);
    procedure setTop(top: Integer);
    procedure setCaption(caption: String);
  end;

implementation

{ Button }

function ButtonBuilder.getButton: TButton;
begin
  result := button1;
end;

procedure ButtonBuilder.reset;
begin
  button1 := TButton.Create(nil);
end;

procedure ButtonBuilder.setCaption(caption: String);
begin
  button1.Caption := caption;
end;

procedure ButtonBuilder.setLeft(left: Integer);
begin
  button1.Left:=left;
end;

procedure ButtonBuilder.setTop(top: Integer);
begin
  button1.Top := top;
end;

end.

unit StudentUnit;

interface

uses
  Vcl.Controls {TWinControl} ,
  Vcl.ExtCtrls {TPanel} ,
  Lab1BuilderUnit {Lab1Builder} ,
  ContentBuilderUnit {ContentBuilder} ,
  RoomUnit {Room} ,
  BuilderUnit {Builder};

type

  Student = class(TInterfacedObject, room)
  private
    /// <link>aggregation</link>
    Builder1: Builder;
    // Builder1: TDictionary<String, Builder>;
    WinControl: TWinControl;
    procedure toLab1(Sender: TObject);
    procedure toContent(Sender: TObject);
  public
    procedure Content(WinControl: TWinControl);
    procedure Lab1(WinControl: TWinControl);
  published
    constructor create;
  end;

implementation

{ Director }

procedure Student.Content(WinControl: TWinControl);
begin
  self.WinControl := WinControl;
  if assigned(Builder1) then
    Builder1.free;
  Builder1 := ContentBuilder.create;
  with Builder1 do
  begin
    header;
    main;
    footer(toLab1);
    install(WinControl);
  end;
end;

procedure Student.Lab1(WinControl: TWinControl);
begin
  Builder1.free;
  Builder1 := Lab1Builder.create;
  with Builder1 do
  begin
    header;
    main;
    footer(toContent);
    install(WinControl);
  end;
end;

procedure Student.toContent(Sender: TObject);
begin
  Content(WinControl);
end;

procedure Student.toLab1(Sender: TObject);
begin
  Lab1(WinControl);
end;

constructor Student.create;
begin

end;

end.

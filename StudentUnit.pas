unit StudentUnit;

interface

uses
  StudentsUnit {Students} ,
  LabsContentUnit {LabsContent} ,
  Labs1Unit {Labs1} ,
  LabsUnit {Labs} ,
  Vcl.Controls {TWinControl} ,
  Vcl.ExtCtrls {TPanel} ,
  Lab1BuilderUnit {Lab1Builder} ,
  ContentBuilderUnit {ContentBuilder} ,
  //RoomsUnit {Rooms} ,
  BuilderUnit {Builder};

type

  Student = class(TInterfacedObject, Students)
  private
    /// <link>aggregation</link>
    Builder1: Builder;
    // Builder1: TDictionary<String, Builder>;
    WinControl: TWinControl;
    /// <link>aggregation</link>
    model: Labs;
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
  model:= LabsContent.create;
  if assigned(Builder1) then
    Builder1.free(model);
  Builder1 := ContentBuilder.create;
  with Builder1 do
  begin
    header;
    main(toLab1);
    footer(toLab1);
    install(WinControl);
  end;
end;

procedure Student.Lab1(WinControl: TWinControl);
begin
  model:= Labs1.create;
  Builder1.free(model);
  Builder1 := Lab1Builder.create;
  with Builder1 do
  begin
    header;
    main(toLab1);
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

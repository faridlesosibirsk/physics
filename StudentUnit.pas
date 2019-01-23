unit StudentUnit;

interface

uses
  LabsUnit {Labs} ,
  StudentsUnit {Students} ,
  Vcl.Controls {TWinControl} ,
  Vcl.ExtCtrls {TPanel} ,
  TheoryUnit {Theory} ,
  ContentUnit {Content} ,
  BuilderUnit {Builder};

type

  Student = class(TInterfacedObject, Students)
  private
    /// <link>aggregation</link>
    Builder1: Builder;
    // Builder1: TDictionary<String, Builder>;
    WinControl: TWinControl;
    /// <link>aggregation</link>
    Labs1: Labs;
    procedure toLab1(Sender: TObject);
    procedure toContent(Sender: TObject);
  public
    procedure getContent(WinControl: TWinControl);
    procedure getTheory(WinControl: TWinControl);
  published
    constructor create;
  end;

implementation

{ Director }

procedure Student.getContent(WinControl: TWinControl);
begin
  self.WinControl := WinControl;
  if assigned(Builder1) then
    Builder1.free;
  Builder1 := Content.create;
  with Builder1 do
  begin
    header;
    main(toLab1);
    footer(toLab1);
    install(WinControl);
  end;
end;

procedure Student.getTheory(WinControl: TWinControl);
begin
  Builder1.free;
  Builder1 := Theory.create;
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
  getContent(WinControl);
end;

procedure Student.toLab1(Sender: TObject);
begin
  getTheory(WinControl);
end;

constructor Student.create;
begin

end;

end.

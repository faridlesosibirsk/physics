unit DirectorUnit;

interface

uses
  BuilderUnit,
  ContentUnit {Content} ,
  Graphics {TColor} ,
  System.Classes {TAlignment} ,
  Vcl.Controls {TAlign} ,
  System.Generics.Collections {TDictionary};

type
  Director = class
  private
    /// <link>aggregation</link>
    builder: builder;
    doc: TDictionary<String, String>;
    procedure NotifyEvent(Sender: TObject);
  public
    procedure makeNextButton(builder: builder);
    procedure makeHeaderPanel(builder: builder);
    procedure makeFooterPanel(builder: builder);
    procedure makeContentPanel(builder: builder);
  published
    constructor create(doc: TDictionary<String, String>);
  end;

implementation

{ Director }

constructor Director.create(doc: TDictionary<String, String>);
begin
  self.doc := TDictionary<String, String>.create;
  self.doc := doc;
end;

procedure Director.makeContentPanel(builder: builder);
begin
  with builder do
  begin
    reset;
    Left(100);
    Top(100);
    Align(alClient);
    BevelOuter(bvNone);
  end;
end;

procedure Director.makeFooterPanel(builder: builder);
begin
  with builder do
  begin
    reset;
    Left(0);
    Top(0);
    Align(alBottom);
    BevelEdges([beTop]);
    BevelKind(bkTile);
    BevelOuter(bvNone);
    Height(60);
  end;
end;

procedure Director.makeHeaderPanel(builder: builder);
begin
  with builder do
  begin
    reset;
    Left(0);
    Top(0);
    Caption(doc['title']);
    Align(alTop);
    Alignment(taLeftJustify);
    BevelEdges([beBottom]);
    BevelKind(bkTile);
    BevelOuter(bvNone);
    BorderWidth(20);
    Color(clWhite);
    Height(60);
    FontStyle([fsBold]);
  end;
end;

procedure Director.makeNextButton(builder: builder);
begin
  with builder do
  begin
    reset;
    Left(300);
    Top(19);
    Caption('Next >');
    onClick(NotifyEvent);
  end;
end;

procedure Director.NotifyEvent(Sender: TObject);
begin
  //
end;

end.

unit Unit1;

interface

uses
  FirstUnit {First},
  OneUnit {One},
  TwoUnit {Two},
  DocumentUnit, {Document}
  System.Generics.Collections {TList},
  Vcl.StdCtrls {TButton},
  Vcl.ExtCtrls {TPanel},
  Vcl.Forms {TForm},
  Vcl.Controls {TWinControl},
  System.Classes {TComponent};

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
  published
  private
    /// <link>aggregation</link>
    Document1: Document;
    /// <link>aggregation</link>
    First1: First;
    /// <link>aggregation</link>
    One1: One;
    Two1: Two;
    buttons: TObjectList<TWinControl>;
    procedure clickFirst(Sender: TObject);
    procedure clickOne(Sender: TObject);
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.clickFirst(Sender: TObject);
begin
  One1:= One.create;
  buttons:=Document1.Render(One1);
  One1.getButton.OnClick:=self.clickOne;
end;

procedure TForm1.clickOne(Sender: TObject);
begin
  First1:= First.create;
  buttons:=Document1.Render(First1);
  First1.getButton.OnClick:=self.clickFirst;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Document1:= Document.Create(self);
  First1:= First.create;
  buttons:=Document1.Render(First1);
  First1.getButton.OnClick:=self.clickFirst;
end;

end.

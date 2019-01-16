unit Unit1;

interface

uses
  FirstUnit,
  System.Generics.Collections {TList},
  DocumentUnit, {Document}
  OneUnit, {First}
  Vcl.StdCtrls {TButton},
  TwoUnit, {Second}
  Vcl.ExtCtrls {TPanel},
  Vcl.Forms {TForm},
  Vcl.Controls, System.Classes;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
  published
  private
    /// <link>aggregation</link>
    Document1: Document;
    /// <link>aggregation</link>
    First1: First;
    buttons: TObjectList<TWinControl>;
    procedure click(Sender: TObject);
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.click(Sender: TObject);
begin
  buttons:=Document1.Render(One.Create);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Document1:= Document.Create(self);
  First1:= First.create;
  buttons:=Document1.Render(First1);
  First1.getButton.OnClick:=self.click;
end;

end.

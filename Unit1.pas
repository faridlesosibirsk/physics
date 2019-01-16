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
    buttons: TObjectList<TWinControl>;
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  Document1:= Document.Create(self);
  buttons:=Document1.Render(First.Create);
end;

end.

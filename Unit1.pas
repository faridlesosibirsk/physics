unit Unit1;

interface

uses
  System.Generics.Collections {TList},
  DocumentUnit, {Document}
  OneUnit, {First}
  Vcl.StdCtrls {TButton},
  TwoUnit, {Second}
  Vcl.ExtCtrls {TPanel},
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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

procedure TForm1.Button1Click(Sender: TObject);
begin
  buttons:=Document1.Render(Two.Create, Panel1);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  buttons:=Document1.Render(One.Create, Panel1);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Document1:= Document.Create;
end;

end.

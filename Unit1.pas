unit Unit1;

interface

uses
  StudentUnit {Student} ,
  PhisicsUnit {Phisics} ,
  Vcl.Forms {Forms} ,
  Vcl.ExtCtrls {TPanel};

type
  TForm1 = class(TForm)
  private
    /// <link>aggregation</link>
    Phisica1: Phisics;
    Panel: TPanel;
  public
  published
    procedure FormCreate(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  Panel:= TPanel.Create(nil);
  Phisica1 := Student.create;
  Panel := Phisica1.Open;
  Panel.Parent := self;
end;

end.

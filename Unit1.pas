unit Unit1;

interface

uses
  StudentUnit {Student} ,
  PhisicsUnit {Phisics} ,
  Vcl.Forms {Forms};

type
  TForm1 = class(TForm)
  private
    /// <link>aggregation</link>
    Phisica1: Phisics;
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
  Phisica1 := Student.create;
  Phisica1.Open.Parent := self;
end;

end.

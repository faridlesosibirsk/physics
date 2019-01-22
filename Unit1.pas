unit Unit1;

interface

uses
  PhisicaUnit {Phisica} ,
  PhisicsUnit {Phisics} ,
  Vcl.Forms {Forms} ,
  System.Classes,
  Vcl.Controls,
  Vcl.ExtCtrls,
  Vcl.StdCtrls;

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
  Phisica1 := Phisica.create;
  Phisica1.open.Parent := self;
end;

end.

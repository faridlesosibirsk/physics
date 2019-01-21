unit Unit1;

interface

uses
  DirectorUnit {Director} ,
  PhisicsUnit {Phisics} ,
  Vcl.Forms, System.Classes, Vcl.Controls, Vcl.ExtCtrls, Vcl.StdCtrls {Forms};

type
  TForm1 = class(TForm)
  private
    /// <link>aggregation</link>
    Phisica: Phisics;
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
  Phisica := Director.create;
  Phisica.getPanel.Parent := self;
end;

end.

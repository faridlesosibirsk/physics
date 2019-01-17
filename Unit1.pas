unit Unit1;

interface

uses
  // System.Generics.Collections {TList},
  // Vcl.StdCtrls {TButton},
  // Vcl.ExtCtrls {TPanel},
  // Vcl.Controls,
  // System.Classes
  ButtonUnit {Button},
  DirectorUnit {Director},
  Vcl.Forms {TForm};

type
  TForm1 = class(TForm)
  private
    /// <link>aggregation</link>
    Director1: Director;
    /// <link>aggregation</link>
    Button1: Button;
  public
  published
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.

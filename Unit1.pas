unit Unit1;
interface

uses
  PhysicsUnit {Physics},
  OpenUnit {Open},
  Vcl.ExtCtrls {TPanel},
  Vcl.Forms {TForm};

type
  TForm1 = class(TForm)
  private
    /// <link>aggregation</link>
    Physics1: Physics;
  public
  published
    procedure FormCreate(Sender: TObject);
  end;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  Panel4: TPanel;
begin
  Physics1 := Open.create;
  Panel4:=Physics1.makeContent;
  Panel4.Parent:=self;
end;

end.

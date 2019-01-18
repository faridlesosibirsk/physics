unit Unit1;
interface

uses
  PhysicsUnit {Physics},
  OpenUnit {Open},
  Vcl.ExtCtrls {TPanel},
  Vcl.Forms, System.Classes, Vcl.Controls, Vcl.StdCtrls {TForm};

type
  TForm1 = class(TForm)
    Button1: TButton;
  private
    /// <link>aggregation</link>
    Physics1: Physics;
    Panel4: TPanel;
  public
  published
    procedure FormCreate(Sender: TObject);
  end;

implementation

{$R *.dfm}


procedure TForm1.FormCreate(Sender: TObject);
begin
  Panel4:= TPanel.Create(nil);
  Physics1 := Open.create;
  Panel4:=Physics1.makeContent;
  Panel4.Parent:=self;
end;

end.

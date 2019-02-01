unit Unit1;

interface

uses
  LaboratoryControllerUnit,
  ControllersUnit,
  Vcl.Forms, Vcl.Menus, System.Classes;

type
  TForm1 = class(TForm)
  published
    procedure FormCreate(Sender: TObject);
  private
    /// <link>aggregation</link>
    Controller: Controllers;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);

begin
  Controller:= LaboratoryController.Create(self);
end;

end.

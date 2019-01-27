unit Unit1;

interface

uses
  FormCreateUnit,
  PanelCreateUnit,
  Vcl.Controls {TWinControl} ,
  Vcl.ExtCtrls {TPanel} ,
  Vcl.Forms;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    /// <link>aggregation</link>
    FormCreate1: FormCreate;
    procedure Panelcreate1;
  end;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  Panelcreate1;
end;

procedure TForm1.Panelcreate1;
begin
  FormCreate1 := PanelCreate.create;
  FormCreate1.OpenMechanics(self);
end;

end.

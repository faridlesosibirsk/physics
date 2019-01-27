unit PanelCreateUnit;

interface

uses
  MechanicsUnit,
  BuilderUnit,
  Lab1Unit,
  Lab2Unit,
  TheoryUnit,
  classes {TNotifyEvent} ,
  Vcl.ExtCtrls {TPanel} ,
  Vcl.Controls {TWinControl} ,
  LaboratoryUnit,
  FormCreateUnit,
  Vcl.Forms;

type
  PanelCreate = class(TInterfacedObject, FormCreate)
  private
    Form: TForm;
    Panel1: TPanel;
    /// <link>aggregation</link>
    Laboratory1: Laboratory;
    function InstancePanel(Form: TForm): TPanel;
    procedure toAny(Mechanics1: Mechanics; notify: TNotifyEvent);
  public
    procedure OpenMechanics(Form: TForm);
    procedure toOpen(Sender: TObject);
    procedure toLab1(Sender: TObject);
    procedure toLab2(Sender: TObject);
  end;

implementation

{ PanelCreate }

function PanelCreate.InstancePanel(Form: TForm): TPanel;
begin
  self.Form := Form;
  if not assigned(Panel1) then
  begin
    Panel1 := TPanel.create(nil);
    with Panel1 do
    begin
      caption := 'PanelCreate';
      Align := alClient;
      BevelOuter := bvNone;
      Parent := Form;
    end;
  end;
  result := Panel1;
end;

procedure PanelCreate.OpenMechanics(Form: TForm);
begin
  self.Form := Form;
  toAny(Mechanics.create(), toLab1);
end;

procedure PanelCreate.toAny(Mechanics1: Mechanics; notify: TNotifyEvent);
begin
  if assigned(Laboratory1) then
    Laboratory1.Destroy;
  Laboratory1 := Builder.create(Mechanics1, notify);
  Laboratory1.Print(InstancePanel(Form));
end;

procedure PanelCreate.toLab1(Sender: TObject);
begin
  toAny(Lab1.create(), toOpen);
end;

procedure PanelCreate.toLab2(Sender: TObject);
begin
  toAny(Lab2.create(), toOpen);
end;

procedure PanelCreate.toOpen(Sender: TObject);
begin
  toAny(Mechanics.create(), toLab1);
end;

end.

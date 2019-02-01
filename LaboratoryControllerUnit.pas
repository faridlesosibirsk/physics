unit LaboratoryControllerUnit;

interface

uses
  ContentUnit,
  MainUnit,
  Vcl.Forms,
  OpenUnit,
  MechanicsUnit,
  ControllersUnit;

type
  LaboratoryController = class(TInterfacedObject, Controllers)
  private
    /// <link>aggregation</link>
    Open1: Open;
    /// <link>aggregation</link>
    Mechanics1_: Mechanics;
    /// <link>aggregation</link>
    Main1: Main;
    AOwner: TForm;
  public
    procedure toOpen(Sender: TObject);
  published
    constructor create(AOwner: TForm);
  end;

implementation

{ LaboratoryController }

constructor LaboratoryController.create(AOwner: TForm);
begin
  self.AOwner:=AOwner;
  toOpen(nil);
end;

procedure LaboratoryController.toOpen(Sender: TObject);
begin
  Main1:= Main.create(AOwner);
  Open1:= Open.create(Main1);
  Open1.make;
  Main1.return.Parent:=AOwner;
end;

end.

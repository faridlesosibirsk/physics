unit BuilderUnit;

interface

uses
  MechanicsUnit,
  Vcl.ExtCtrls {TPanel} ,
  classes {TNotifyEvent} ,
  Vcl.StdCtrls {TButton} ,
  System.Generics.Collections {TDictionary} ,
  Vcl.Controls {TWinControl} ,
  LaboratoryUnit,
  Data.DB,
  Data.Win.ADODB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.DBCtrls,
  Vcl.DBCGrids;

type
  Builder = class(Laboratory)
  private
    LeftPanel: TPanel;
    Button: TButton;
    DBCtrlGrid1: TDBCtrlGrid;
    { TODO : }
    notify: TNotifyEvent;
    /// <link>aggregation</link>
    Mechanics1: Mechanics;
    procedure createLeftPanel;
    procedure createButton;
    procedure createDBCtrlGrid;
    procedure install;
  public
    procedure Print(panel: TPanel); override;
  published
    constructor create(Mechanics1: Mechanics; notify: TNotifyEvent);
    destructor destroy; override;

  end;

implementation

{ Builder }

constructor Builder.create(Mechanics1: Mechanics; notify: TNotifyEvent);
begin
  if assigned(LeftPanel) then
    LeftPanel.parent := nil;
  self.Mechanics1 := Mechanics1;
  self.notify := notify;
  LeftPanel := TPanel.create(nil);
  Button := TButton.create(nil);
  DBCtrlGrid1:= TDBCtrlGrid.create(nil);
  { TODO : }
end;

procedure Builder.createButton;
begin
  with Button do
  begin
    OnClick := notify;
    parent := LeftPanel;
  end;
end;

procedure Builder.createDBCtrlGrid;
begin
  with DBCtrlGrid1 do
  begin
    { TODO :  }
  end;
end;

procedure Builder.createLeftPanel;
begin
  with LeftPanel do
  begin
    Align := alLeft;
    Caption := Mechanics1.getModel.Last;//  .First;
  end;
end;

destructor Builder.destroy;
begin
    LeftPanel.parent := nil
end;

procedure Builder.install;
begin
  createLeftPanel;
  createButton;
  { TODO : }
end;

procedure Builder.Print(panel: TPanel);
begin
  install;
  LeftPanel.parent := panel;
end;

end.

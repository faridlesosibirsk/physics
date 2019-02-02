unit ReportLab1Unit;
interface

uses
  ConnectionUnit,
  Vcl.ValEdit {TValueListEditor} ,
  Vcl.StdCtrls {TButton} ,
  classes {TNotifyEvent} ,
  Vcl.Forms,
  Laboratory1Unit;

type
  ReportLab1 = class(TInterfacedObject, Laboratory1)
  private
    AOwner: TForm;
    Notify: TNotifyEvent;
    /// <link>aggregation</link>
    Connection1: Connection;
    BackButton: TButton;
    TheoryButton: TButton;
    ResultDimension: TValueListEditor;
  published
    constructor create(AOwner: TForm; toLab1Method, Open: TNotifyEvent);
    procedure reset;
  end;

implementation

{ ReportLab1 }

constructor ReportLab1.create(AOwner: TForm; toLab1Method, Open: TNotifyEvent);
begin
  AOwner.Caption := 'Обработка результатов и оформление отчета';
  BackButton:= TButton.Create(AOwner);
  with BackButton do begin
    Parent:=AOwner;
    Caption:='< Method';
    OnClick:=toLab1Method;
  end;
  TheoryButton:= TButton.Create(AOwner);
  with TheoryButton do begin
    Parent:=AOwner;
    Caption:='Exit >';
    Left:=100;
    OnClick:=Open;
  end;

  ResultDimension:= TValueListEditor.Create(AOwner);
  with ResultDimension do begin
    Parent := AOwner;
    Left := 400;
    Top := 50;
  end;
end;

procedure ReportLab1.reset;
begin
  ResultDimension.Parent:=nil;
  BackButton.Parent:=nil;
  TheoryButton.Parent:=nil;
end;

end.

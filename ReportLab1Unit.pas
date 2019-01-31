unit ReportLab1Unit;

interface

uses
  Vcl.ValEdit {TValueListEditor} ,
  Vcl.StdCtrls {TButton} ,
  classes {TNotifyEvent} ,
  Vcl.Forms,
  Lab1Unit;

type
  ReportLab1 = class(Lab1)
  private
    BackButton: TButton;
    TheoryButton: TButton;
    ResultDimension: TValueListEditor;
  published
    constructor create(AOwner: TForm; toLab1Method, Open: TNotifyEvent);
    procedure clear; override;
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

procedure ReportLab1.clear;
begin
  inherited;
  ResultDimension.Parent:=nil;
  BackButton.Parent:=nil;
  TheoryButton.Parent:=nil;
end;

end.

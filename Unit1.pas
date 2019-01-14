unit Unit1;
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms,
  Vcl.StdCtrls, System.Generics.Collections, Vcl.Grids, Vcl.Outline,
  Vcl.ComCtrls, Vcl.ExtCtrls;

type
  FactoryInterface = interface;

  TForm1 = class(TForm)
  private
    /// <link>aggregation</link>
    Factory1: FactoryInterface;
  public
  published
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);  
    procedure FormCreate(Sender: TObject);
  end;

  FactoryInterface = interface
    procedure ButtonCreate(AOwner: TForm);
    procedure ButtonDestroy;
  end;

  Factory = class(TInterfacedObject, FactoryInterface)
  private
    ButtonDictionary: TDictionary<String, TButton>;
  public
    procedure ButtonCreate(AOwner: TForm);
    procedure ButtonDestroy;
  published
    constructor create;
  end;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Factory1.ButtonCreate(self);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Factory1.ButtonDestroy;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Factory1 := Factory.create;
end;

{ Factory }

procedure Factory.ButtonDestroy;
var
  b: TButton;
  i:integer;
begin
  try
    if (ButtonDictionary.ContainsKey('button1')) then
    begin
      ButtonDictionary['button1'].Parent := nil;
      ButtonDictionary.Remove('button1');
    end;
  except
  end;
end;

constructor Factory.create;
begin
  ButtonDictionary := TDictionary<String, TButton>.create;
end;

procedure Factory.ButtonCreate(AOwner: TForm);
var
  b: TButton;
begin
  try
    if not(ButtonDictionary.ContainsKey('button1')) then
    begin
      b := TButton.create(nil);
      b.Parent := AOwner;
      b.Caption := 'button1';
      ButtonDictionary.add('button1', b);
    end;
  except
  end;
end;

end.

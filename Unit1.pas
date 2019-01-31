unit Unit1;

interface

uses
  PhisicsControllerUnit,
  ControllersUnit,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Data.Win.ADODB, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
  published
    procedure FormCreate(Sender: TObject);
  private
    /// <link>aggregation</link>
    Controllers1: Controllers;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  Controllers1 := PhisicsController.create(self);
end;

end.

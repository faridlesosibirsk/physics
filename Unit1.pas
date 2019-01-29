unit Unit1;

interface

uses
  ConnectionUnit,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.DBCGrids,
  Vcl.StdCtrls, Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    DBCtrlGrid1: TDBCtrlGrid;
    DBText1: TDBText;
    procedure FormCreate(Sender: TObject);
  private
    /// <link>aggregation</link>
    Connection1: Connection;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  Connection1:= AccessConnection.Create;
  Connection1.setDBCtrlGrid(self);
end;

end.

unit StudentsUnit;

interface

uses
  Vcl.Controls {TWinControl};

type

  Students = interface
    procedure getContent(WinControl: TWinControl);
    procedure getTheory(WinControl: TWinControl);
  end;

implementation

end.

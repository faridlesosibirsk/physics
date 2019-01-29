unit ADOConnectionUnit;

interface

type
  ADOConnection = interface

  end;

  TADOConnection = class(TInterfacedObject, ADOConnection)
  private
    ADOConnection1: TADOConnection;
  end;

implementation

end.

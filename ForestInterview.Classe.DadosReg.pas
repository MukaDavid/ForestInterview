unit ForestInterview.Classe.DadosReg;

interface

uses
  Generics.collections, FMX.ListBox;

type
  TDadosReg = class
    ID : integer;
    Check : boolean;
  end;

  TDicReg = TObjectDictionary<TListBoxItem,TDadosReg>;

  TDicRegHelper = class helper for TDicReg
    function CountCheck: integer;
    procedure New(pListBoxItem: TListBoxItem; pId: integer);
  end;

implementation

{ TDicRegHelper }

function TDicRegHelper.CountCheck: integer;
begin
  Result := 0;
  for var lItem in self.Values do
  begin
    if lItem.Check then
      inc(Result);
  end;
end;

procedure TDicRegHelper.New(pListBoxItem: TListBoxItem; pId: integer);
begin
  var lDadosReg := TDadosReg.Create;
  lDadosReg.ID := pID;
  lDadosReg.Check := False;
  Add(pListBoxItem, lDadosReg);
end;

end.

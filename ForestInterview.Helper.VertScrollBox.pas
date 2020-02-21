unit ForestInterview.Helper.VertScrollBox;

interface

uses FMX.Layouts, System.Types, FMX.Controls;

type
  TVertScrollBoxHelper = class helper for TVertScrollBox
    procedure AjustarScrollTeclado(pControl: TControl);
  end;

implementation

{ TVertScrollBoxHelper }

procedure TVertScrollBoxHelper.AjustarScrollTeclado(pControl: TControl);
begin
  Self.Margins.Bottom := 250;
  Self.ViewportPosition := pointF(Self.ViewportPosition.X,pControl.Position.Y);
end;

end.

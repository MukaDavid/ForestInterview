unit ForestInterview.Helper.Edit;

interface

uses FMX.Edit, System.SysUtils, FMX.Types;

type
  TEditHelper = class helper for TEdit
    procedure OnChangeTrackingDecimal(Sender: TObject);
    procedure AtivarModoDecimal;
  end;

implementation

{ TEditHelper }

procedure TEditHelper.AtivarModoDecimal;
begin
  Self.OnChangeTracking := OnChangeTrackingDecimal;
  Self.KeyboardType := TVirtualKeyboardType.DecimalNumberPad;
  Self.FilterChar := '0123456789,.';
end;

procedure TEditHelper.OnChangeTrackingDecimal(Sender: TObject);
var
  lTexto: string;
begin
  lTexto := StringReplace((Sender as TEdit).Text,'.',',',[rfReplaceAll]);
  if (Pos(',',lTexto) <> Length(lTexto)) and (Copy(lTexto,Length(lTexto),1) = ',') then
    lTexto := Copy(lTexto,0,Length(lTexto)-1);

  if lTexto <> (Sender as TEdit).Text then
  begin
    (Sender as TEdit).Text := lTexto;
    (Sender as TEdit).SelStart := Length(lTexto);
  end;
end;

end.

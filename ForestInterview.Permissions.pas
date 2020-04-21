unit ForestInterview.Permissions;

interface

uses System.Permissions;

type
  TPermissions = class
    FLocationStatus: TPermissionStatus;
    class var FPermissions: TPermissions;
    class function Location: TArray<string>;
    class procedure RequestPermissions;
    class constructor Create;
    class Destructor Destroy;
    procedure PermissionsResult(Sender: TObject; const APermissions: TArray<string>; const AGrantResults: TArray<TPermissionStatus>);
  end;


implementation
{$IF DEFINED(iOS) or DEFINED(ANDROID)}
uses Androidapi.Jni.Os, Androidapi.Jni.JavaTypes, Androidapi.Helpers;
{$ENDIF}

{ TPermissions }

class constructor TPermissions.Create;
begin
  TPermissions.FPermissions := TPermissions.Create;
  TPermissions.FPermissions.FLocationStatus := TPermissionStatus.Denied;
end;

class destructor TPermissions.Destroy;
begin
  TPermissions.FPermissions.Free;
  TPermissions.FPermissions := Nil;
end;

class function TPermissions.Location: TArray<string>;
begin
{$IF DEFINED(iOS) or DEFINED(ANDROID)}

  Result := [
  JStringToString(TJManifest_permission.JavaClass.ACCESS_COARSE_LOCATION),
  JStringToString(TJManifest_permission.JavaClass.ACCESS_FINE_LOCATION)]
{$ENDIF}
end;

class procedure TPermissions.RequestPermissions;
begin
{$IF DEFINED(iOS) or DEFINED(ANDROID)}
  PermissionsService.RequestPermissions(TPermissions.Location, TPermissions.FPermissions.PermissionsResult);
{$ENDIF}
end;

procedure TPermissions.PermissionsResult(Sender: TObject; const APermissions: TArray<string>; const AGrantResults: TArray<TPermissionStatus>);
var
  lPermission: string;
  li: Integer;
begin
  for li := 0 to Length(APermissions) do
  begin
    FLocationStatus :=  AGrantResults[li];
  end;
end;

end.

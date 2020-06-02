unit ForestInterview.Utils;

interface

uses System.IOUtils
  {$IF DEFINED(iOS) or DEFINED(ANDROID)}
  ,Androidapi.JNIBridge // ILocalObject
  ,Androidapi.JNI.App // TJActivity
  ,Androidapi.JNI.Os // JVibrator
  ,Androidapi.JNI.JavaTypes // JObject
  ,FMX.Helpers.Android
  ,Androidapi.Helpers
  {$ENDIF}
  ; // SharedActivity;

type
  TUtils = class
    class function Diretorio: string;
    class function DirArquivo(pArquivo: string): string;
    class procedure Vibrar(pTempo: cardinal); static;
  end;

implementation

{ TPecUtils }

class function TUtils.DirArquivo(pArquivo: string): string;
begin
  result := Diretorio + pArquivo;
end;

class function TUtils.Diretorio: String;
begin
  {$IF DEFINED(iOS) or DEFINED(ANDROID)}
    result := TPath.GetHomePath() + TPath.DirectorySeparatorChar;
  {$ENDIF}

  {$IFDEF WIN32}
    result :=  TPath.GetLibraryPath() + TPath.DirectorySeparatorChar;
  {$ENDIF WIN32}
end;


class procedure TUtils.Vibrar(pTempo: cardinal);
{$IF DEFINED(iOS) or DEFINED(ANDROID)}
var
  VibratorObj: JObject;
  Vibrator: JVibrator;
{$ENDIF}
begin
{$IF DEFINED(iOS) or DEFINED(ANDROID)}
  VibratorObj := TAndroidHelper.Activity.getSystemService(TJActivity.JavaClass.VIBRATOR_SERVICE);
  Vibrator    := TJVibrator.Wrap((VibratorObj as ILocalObject).GetObjectID);
  Vibrator.vibrate(pTempo); //1000 milesegundo
{$ENDIF}
end;

end.

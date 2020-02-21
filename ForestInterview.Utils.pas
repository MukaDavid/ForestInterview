unit ForestInterview.Utils;

interface

uses System.IOUtils;

type
  TUtils = class
    class function Diretorio: string;
    class function DirArquivo(pArquivo: string): string;
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

end.

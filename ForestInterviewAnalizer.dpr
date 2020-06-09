program ForestInterviewAnalizer;

uses
  Vcl.Forms,
  ForestInterview.Form.AnalizaDado in 'ForestInterview.Form.AnalizaDado.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

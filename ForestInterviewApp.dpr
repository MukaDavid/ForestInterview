program ForestInterviewApp;

uses
  System.StartUpCopy,
  FMX.Forms,
  ForestInterview.Form.Main in 'ForestInterview.Form.Main.pas' {FormMain},
  ForestInterview.Module.Main in 'ForestInterview.Module.Main.pas' {ModuleMain: TDataModule},
  ForestInterview.Utils in 'ForestInterview.Utils.pas',
  ForestInterview.Form.Cubagem in 'ForestInterview.Form.Cubagem.pas' {formCubagem},
  ForestInterview.Form.Parcela in 'ForestInterview.Form.Parcela.pas' {FormParcela},
  ForestInterview.Helper.VertScrollBox in 'ForestInterview.Helper.VertScrollBox.pas',
  ForestInterview.ControleTeclado in 'ForestInterview.ControleTeclado.pas',
  ForestInterview.Classe.DadosReg in 'ForestInterview.Classe.DadosReg.pas',
  ForestInterview.Helper.FDQuery in 'ForestInterview.Helper.FDQuery.pas',
  ForestInterview.Permissions in 'ForestInterview.Permissions.pas',
  ForestInterview.Helper.Edit in 'ForestInterview.Helper.Edit.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TModuleMain, ModuleMain);
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.

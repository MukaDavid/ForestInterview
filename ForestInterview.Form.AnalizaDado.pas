unit ForestInterview.Form.AnalizaDado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Stan.StorageXML;

type
  TForm1 = class(TForm)
    qryArvoreExp: TFDQuery;
    dtsArvoreExp: TDataSource;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    btnArvore: TButton;
    OpenDialog1: TOpenDialog;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDStanStorageXMLLink1: TFDStanStorageXMLLink;
    mtbArvoreExp: TFDMemTable;
    memFiltro: TMemo;
    Splitter1: TSplitter;
    btnFiltar: TButton;
    procedure btnArvoreClick(Sender: TObject);
    procedure btnFiltarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnArvoreClick(Sender: TObject);
begin
  mtbArvoreExp.Close;
  if OpenDialog1.Execute then
    mtbArvoreExp.LoadFromFile(OpenDialog1.FileName);
end;

procedure TForm1.btnFiltarClick(Sender: TObject);
begin
  mtbArvoreExp.Filtered := False;
  if memFiltro.Text <> '' then
  begin
    mtbArvoreExp.Filter := memFiltro.Text;
    mtbArvoreExp.Filtered := True;
  end;

end;

procedure TForm1.FormShow(Sender: TObject);
begin
  mtbArvoreExp.LoadFromFile('C:\Muka\Delphi\Git\ForestInterview\Dados\Arvore.xml');
end;

end.

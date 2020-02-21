unit ForestInterview.Module.Main;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.FMXUI.Wait, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, ForestInterview.Utils, System.ImageList, FMX.ImgList;

type
  TModuleMain = class(TDataModule)
    FDConnection: TFDConnection;
    qryCreateTable: TFDQuery;
    qrySequence: TFDQuery;
    qryColetasList: TFDQuery;
    qryColetasCad: TFDQuery;
    qryColetasListCOL_ID: TIntegerField;
    qryColetasListCOL_EQUIPE: TStringField;
    qryColetasListCOL_FAZENDA: TStringField;
    qryColetasListCOL_TALHAO: TStringField;
    qryColetasListCOL_DATA: TDateField;
    qryColetasListCOL_AREA_PARCELA: TFMTBCDField;
    qryColetasListCOL_AREA_TALHAO: TFMTBCDField;
    qryColetasListCOL_PARCELA_TIPO: TStringField;
    qryColetasListCOL_CUBAGEM_TIPO: TStringField;
    qryColetasListCOL_FATOR_FORMA: TFMTBCDField;
    qryColetasListCOL_LIM_CAPDAP_MIN: TFMTBCDField;
    qryColetasListCOL_LIM_CAPDAP_MAX: TFMTBCDField;
    qryColetasListCOL_LIM_ALT_MIN: TFMTBCDField;
    qryColetasListCOL_LIM_ALT_MAX: TFMTBCDField;
    qryColetasListCOL_ERRO_AMOSTRAL: TFMTBCDField;
    qryColetasCadCOL_ID: TIntegerField;
    qryColetasCadCOL_EQUIPE: TStringField;
    qryColetasCadCOL_FAZENDA: TStringField;
    qryColetasCadCOL_TALHAO: TStringField;
    qryColetasCadCOL_DATA: TDateField;
    qryColetasCadCOL_AREA_PARCELA: TFMTBCDField;
    qryColetasCadCOL_AREA_TALHAO: TFMTBCDField;
    qryColetasCadCOL_PARCELA_TIPO: TStringField;
    qryColetasCadCOL_CUBAGEM_TIPO: TStringField;
    qryColetasCadCOL_FATOR_FORMA: TFMTBCDField;
    qryColetasCadCOL_LIM_CAPDAP_MIN: TFMTBCDField;
    qryColetasCadCOL_LIM_CAPDAP_MAX: TFMTBCDField;
    qryColetasCadCOL_LIM_ALT_MIN: TFMTBCDField;
    qryColetasCadCOL_LIM_ALT_MAX: TFMTBCDField;
    qryColetasCadCOL_ERRO_AMOSTRAL: TFMTBCDField;
    qryParcelaList: TFDQuery;
    qryParcelaCad: TFDQuery;
    qryCubagemList: TFDQuery;
    qryCubagemCad: TFDQuery;
    qryCubMedidasList: TFDQuery;
    qryCubMedidasCad: TFDQuery;
    qryCubagemListCUB_ID: TIntegerField;
    qryCubagemListCOL_ID: TIntegerField;
    qryCubagemListCUB_X: TFMTBCDField;
    qryCubagemListCUB_Y: TFMTBCDField;
    qryCubagemListCUB_COD: TIntegerField;
    qryCubMedidasListMED_ID: TIntegerField;
    qryCubMedidasListCUB_ID: TIntegerField;
    qryCubMedidasListMED_ALTURA: TFMTBCDField;
    qryCubMedidasListMED_TRONCO: TFMTBCDField;
    qryCubMedidasListMED_CASCA: TFMTBCDField;
    qryCubagemCadCUB_ID: TIntegerField;
    qryCubagemCadCOL_ID: TIntegerField;
    qryCubagemCadCUB_X: TFMTBCDField;
    qryCubagemCadCUB_Y: TFMTBCDField;
    qryCubagemCadCUB_COD: TIntegerField;
    qryCubMedidasCadMED_ID: TIntegerField;
    qryCubMedidasCadCUB_ID: TIntegerField;
    qryCubMedidasCadMED_ALTURA: TFMTBCDField;
    qryCubMedidasCadMED_TRONCO: TFMTBCDField;
    qryCubMedidasCadMED_CASCA: TFMTBCDField;
    qryParcelaListPAR_ID: TIntegerField;
    qryParcelaListCOL_ID: TIntegerField;
    qryParcelaListPAR_X: TFMTBCDField;
    qryParcelaListPAR_Y: TFMTBCDField;
    qryParcelaListPAR_FILA: TIntegerField;
    qryParcelaListPAR_COVA: TIntegerField;
    qryParcelaListPAR_TRONCO: TFMTBCDField;
    qryParcelaListPAR_ALTURA: TFMTBCDField;
    qryParcelaListPAR_SANIDADE: TStringField;
    qryParcelaListPAR_BIFURCACAO: TStringField;
    qryParcelaListPAR_PONTA: TStringField;
    qryParcelaListPAR_SINUOSIDADE: TStringField;
    qryParcelaListPAR_OUTROS: TStringField;
    qryParcelaListPAR_VOLUME: TFMTBCDField;
    qryParcelaCadPAR_ID: TIntegerField;
    qryParcelaCadCOL_ID: TIntegerField;
    qryParcelaCadPAR_X: TFMTBCDField;
    qryParcelaCadPAR_Y: TFMTBCDField;
    qryParcelaCadPAR_FILA: TIntegerField;
    qryParcelaCadPAR_COVA: TIntegerField;
    qryParcelaCadPAR_TRONCO: TFMTBCDField;
    qryParcelaCadPAR_ALTURA: TFMTBCDField;
    qryParcelaCadPAR_SANIDADE: TStringField;
    qryParcelaCadPAR_BIFURCACAO: TStringField;
    qryParcelaCadPAR_PONTA: TStringField;
    qryParcelaCadPAR_SINUOSIDADE: TStringField;
    qryParcelaCadPAR_OUTROS: TStringField;
    qryParcelaCadPAR_VOLUME: TFMTBCDField;
    qrySequenceUpdate: TFDQuery;
    qrySequenceInsert: TFDQuery;
    ImageList1: TImageList;
    procedure DataModuleCreate(Sender: TObject);
    procedure FDConnectionBeforeConnect(Sender: TObject);
  private
    function NextID(pTableName: String): Integer;
    { Private declarations }
  public
    { Public declarations }
    procedure IncluirColeta;
    function EditarColeta: boolean;
    procedure CancelarColeta;
    procedure SalvarColeta;
    procedure ExcluirColeta(pID: Integer);

    procedure IncluirParcela;
    function EditarParcela: boolean;
    procedure ListarParcela;
    procedure CancelarParcela;
    procedure SalvarParcela;


    procedure IncluirCubagem;
    procedure ListarCubagem;
    procedure CancelarCubagem;
    procedure SalvarCubagem;

    procedure IncluirCubMedida;
    procedure ListarCubMedida;
    procedure CancelarCubMedida;
    procedure SalvarCubMedida;
  end;

var
  ModuleMain: TModuleMain;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

procedure TModuleMain.CancelarColeta;
begin
  qryColetasCad.Cancel;
  qryColetasCad.Close;
end;

procedure TModuleMain.CancelarCubagem;
begin

end;

procedure TModuleMain.CancelarCubMedida;
begin

end;

procedure TModuleMain.CancelarParcela;
begin
  qryParcelaCad.Cancel;
  qryParcelaCad.Close;
end;

procedure TModuleMain.DataModuleCreate(Sender: TObject);
begin
  FDConnection.Open;

  qryCreateTable.SQL.Text := 'CREATE TABLE IF NOT EXISTS COLETAS ('+
                             'COL_ID INT NOT NULL, '+
                             'COL_EQUIPE VARCHAR(50), '+
                             'COL_FAZENDA VARCHAR(50), '+
                             'COL_TALHAO VARCHAR(50), '+
                             'COL_DATA DATE, '+
                             'COL_AREA_PARCELA DECIMAL(10,5), '+
                             'COL_AREA_TALHAO DECIMAL(10,5), '+
                             'COL_PARCELA_TIPO VARCHAR(1), '+
                             'COL_CUBAGEM_TIPO VARCHAR(1), '+
                             'COL_FATOR_FORMA DECIMAL(10,5), '+
                             'COL_LIM_CAPDAP_MIN DECIMAL(10,5), '+
                             'COL_LIM_CAPDAP_MAX DECIMAL(10,5), '+
                             'COL_LIM_ALT_MIN DECIMAL(10,5), '+
                             'COL_LIM_ALT_MAX DECIMAL(10,5), '+
                             'COL_ERRO_AMOSTRAL DECIMAL(10,5) '+
                             ');';

  qryCreateTable.ExecSQL;

  qryCreateTable.SQL.Text := 'CREATE TABLE IF NOT EXISTS PARCELAS ('+
                             'PAR_ID INT NOT NULL, '+
                             'COL_ID INT NOT NULL, '+
                             'PAR_X  DECIMAL(10,5), '+
                             'PAR_Y  DECIMAL(10,5), '+
                             'PAR_FILA INT, '+
                             'PAR_COVA INT, '+
                             'PAR_TRONCO DECIMAL(10,5), '+
                             'PAR_ALTURA DECIMAL(10,5), '+
                             'PAR_SANIDADE VARCHAR(1), '+
                             'PAR_BIFURCACAO VARCHAR(1), '+
                             'PAR_PONTA VARCHAR(1), '+
                             'PAR_SINUOSIDADE VARCHAR(1), '+
                             'PAR_OUTROS VARCHAR(1), '+
                             'PAR_VOLUME DECIMAL(10,5) '+
                             ');';

  qryCreateTable.ExecSQL;


  qryCreateTable.SQL.Text := 'CREATE TABLE IF NOT EXISTS CUBAGEM ('+
                             'CUB_ID INT NOT NULL, '+
                             'COL_ID INT NOT NULL, '+
                             'CUB_X  DECIMAL(10,5), '+
                             'CUB_Y  DECIMAL(10,5), '+
                             'CUB_COD INT'+
                             ');';

  qryCreateTable.ExecSQL;

  qryCreateTable.SQL.Text := 'CREATE TABLE IF NOT EXISTS CUBMEDIDAS ('+
                             'MED_ID INT NOT NULL, '+
                             'CUB_ID INT NOT NULL, '+
                             'MED_ALTURA  DECIMAL(10,5), '+
                             'MED_TRONCO  DECIMAL(10,5), '+
                             'MED_CASCA   DECIMAL(10,5) '+
                             ');';

  qryCreateTable.ExecSQL;




  qryCreateTable.SQL.Text := 'CREATE TABLE IF NOT EXISTS SEQUENCE ('+
                             'SEQ_TABLENAME VARCHAR(50) NOT NULL,'+
                             'SEQ_VAL INT NOT NULL'+
                             ');';
  qryCreateTable.ExecSQL;
  qryColetasList.Open;
end;

function TModuleMain.NextID(pTableName: string): Integer;
begin
  qrySequence.Close;
  qrySequenceUpdate.ParamByName('SEQ_TABLENAME').AsString := pTableName;
  qrySequenceUpdate.ExecSQL;

  qrySequence.ParamByName('SEQ_TABLENAME').AsString := pTableName;
  qrySequence.Open;

  if qrySequence.IsEmpty then
  begin
    qrySequence.Close;
    qrySequenceInsert.ParamByName('SEQ_TABLENAME').AsString := pTableName;
    qrySequenceInsert.ExecSQL;
    qrySequence.Open;
  end;

  Result := qrySequence.FieldByName('SEQ_VAL').AsInteger;
  qrySequence.Close;
end;


procedure TModuleMain.SalvarColeta;
begin
  qryColetasCad.Post;
  qryColetasCad.Close;
  qryColetasList.Refresh;
end;

procedure TModuleMain.SalvarCubagem;
begin

end;

procedure TModuleMain.SalvarCubMedida;
begin

end;

procedure TModuleMain.SalvarParcela;
begin
  qryParcelaCad.Post;
  qryParcelaCad.Close;
  qryParcelaList.Refresh;
end;

procedure TModuleMain.IncluirColeta;
begin
  var lid := NextID('COLETAS');
  qryColetasCad.Close;
  qryColetasCad.ParamByName('COL_ID').AsInteger := lid;
  qryColetasCad.Open;
  qryColetasCad.Append;
  qryColetasCad.FieldByName('COL_ID').AsInteger := lid;
end;

procedure TModuleMain.IncluirCubagem;
begin

end;

procedure TModuleMain.IncluirCubMedida;
begin

end;

procedure TModuleMain.IncluirParcela;
begin
  var lid := NextID('PARCELAS');
  qryParcelaCad.Close;
  qryParcelaCad.ParamByName('PAR_ID').AsInteger := lid;
  qryParcelaCad.Open;
  qryParcelaCad.Append;
  qryParcelaCad.FieldByName('PAR_ID').AsInteger := lid;
  qryParcelaCad.FieldByName('COL_ID').AsInteger := qryColetasList.FieldByName('COL_ID').AsInteger;
end;

procedure TModuleMain.ListarCubagem;
begin

end;

procedure TModuleMain.ListarCubMedida;
begin

end;

procedure TModuleMain.ListarParcela;
begin
  qryParcelaList.Close;
  qryParcelaList.ParamByName('COL_ID').AsInteger := qryColetasList.FieldByName('COL_ID').AsInteger;
  qryParcelaList.Open;
end;

function TModuleMain.EditarColeta: boolean;
begin
  result := false;
  if not qryColetasList.IsEmpty then
  begin
    qryColetasCad.Close;
    qryColetasCad.ParamByName('COL_ID').AsInteger := qryColetasList.FieldByName('COL_ID').AsInteger;
    qryColetasCad.Open;
    qryColetasCad.Edit;
    result := True;
  end;
end;


function TModuleMain.EditarParcela: boolean;
begin
  result := false;
  if not qryParcelaList.IsEmpty then
  begin
    qryParcelaCad.Close;
    qryParcelaCad.ParamByName('PAR_ID').AsInteger := qryParcelaList.FieldByName('PAR_ID').AsInteger;
    qryParcelaCad.Open;
    qryParcelaCad.Edit;
    result := True;
  end;
end;

procedure TModuleMain.ExcluirColeta(pID: Integer);
begin
  if qryColetasList.Locate('COL_ID',pId) then
    qryColetasList.Delete;
end;

procedure TModuleMain.FDConnectionBeforeConnect(Sender: TObject);
begin
  FDConnection.Params.Values['Database'] := TUtils.DirArquivo('ForestInterview.db');
end;

end.

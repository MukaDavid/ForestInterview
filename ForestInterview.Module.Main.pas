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
    qrySequenceUpdate: TFDQuery;
    qrySequenceInsert: TFDQuery;
    ImageList1: TImageList;
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
    qryColetasCadCOL_LONGITUDE: TFMTBCDField;
    qryColetasCadCOL_LATITUDE: TFMTBCDField;
    qryColetasCadCOL_PARCELA: TStringField;
    qryParcelaCadPAR_ID: TIntegerField;
    qryParcelaCadCOL_ID: TIntegerField;
    qryParcelaCadPAR_ARVORE: TIntegerField;
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
    qryParcelaCadPAR_OBS: TWideMemoField;
    qryMaxParArvore: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure FDConnectionBeforeConnect(Sender: TObject);
    procedure qryColetasCadNewRecord(DataSet: TDataSet);
    procedure qryParcelaCadNewRecord(DataSet: TDataSet);
  private
    FColID: integer;
    function NextID(pTableName: String): Integer;
    { Private declarations }
  public
    property ColID: integer read FColID write FColID;
    { Public declarations }
    procedure IncluirColeta;
    function EditarColeta(pID: Integer): boolean;
    procedure CancelarColeta;
    procedure SalvarColeta;
    procedure ExcluirColeta(pID: Integer);

    procedure IncluirParcela(pColID: Integer);
    function EditarParcela(pParID: Integer): boolean;
    procedure ListarParcela(pColID: Integer);
    function MaxParArvore(pColID: Integer): integer;
    procedure CancelarParcela;
    procedure SalvarParcela;
    function ParcelaBifurcacao: string;
    function ParcelaPonta: string;
    function ParcelaSanidade: string;
    function ParcelaSinuosidade: string;

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
                             'COL_ERRO_AMOSTRAL DECIMAL(10,5), '+
                             'COL_LONGITUDE DECIMAL(10,5), '+
                             'COL_LATITUDE DECIMAL(10,5),'+
                             'COL_PARCELA VARCHAR(50)'+
                             ');';

  qryCreateTable.ExecSQL;

  qryCreateTable.SQL.Text := 'CREATE TABLE IF NOT EXISTS PARCELAS ('+
                             'PAR_ID INT NOT NULL, '+
                             'COL_ID INT NOT NULL, '+
                             'PAR_ARVORE INT, '+
                             'PAR_FILA INT, '+
                             'PAR_COVA INT, '+
                             'PAR_TRONCO DECIMAL(10,5), '+
                             'PAR_ALTURA DECIMAL(10,5), '+
                             'PAR_SANIDADE VARCHAR(1), '+
                             'PAR_BIFURCACAO VARCHAR(1), '+
                             'PAR_PONTA VARCHAR(1), '+
                             'PAR_SINUOSIDADE VARCHAR(1), '+
                             'PAR_OUTROS VARCHAR(1), '+
                             'PAR_VOLUME DECIMAL(10,5), '+
                             'PAR_OBS TEXT '+
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


function TModuleMain.ParcelaBifurcacao: string;
begin
  if qryParcelaList.FieldByName('PAR_BIFURCACAO').AsString = 'S' then
    Result := 'Sim'
  else if qryParcelaList.FieldByName('PAR_BIFURCACAO').AsString = 'N' then
    Result := 'Não'
  else
    Result := '-';
end;

function TModuleMain.ParcelaPonta: string;
begin
  if qryParcelaList.FieldByName('PAR_PONTA').AsString = 'N' then
    Result := 'Normal'
  else if qryParcelaList.FieldByName('PAR_PONTA').AsString = 'S' then
    Result := 'Seca'
  else if qryParcelaList.FieldByName('PAR_PONTA').AsString = 'Q' then
    Result := 'Quebrada'
  else
    Result := '-';
end;

function TModuleMain.ParcelaSanidade: string;
begin
  if qryParcelaList.FieldByName('PAR_SANIDADE').AsString = 'S' then
    Result := 'Saudável'
  else if qryParcelaList.FieldByName('PAR_SANIDADE').AsString = 'M' then
    Result := 'Morta'
  else if qryParcelaList.FieldByName('PAR_SANIDADE').AsString = 'F' then
    Result := 'Falha'
  else
    Result := '-';
end;

function TModuleMain.ParcelaSinuosidade: string;
begin
  if qryParcelaList.FieldByName('PAR_SINUOSIDADE').AsString = 'R' then
    Result := 'Reta'
  else if qryParcelaList.FieldByName('PAR_SINUOSIDADE').AsString = 'S' then
    Result := 'Sinuosa'
  else
    Result := '-';
end;

procedure TModuleMain.qryColetasCadNewRecord(DataSet: TDataSet);
begin
  qryColetasCad.FieldByName('COL_DATA').AsDateTime := Date;
end;

procedure TModuleMain.qryParcelaCadNewRecord(DataSet: TDataSet);
begin
  qryParcelaCad.FieldByName('PAR_ARVORE').AsInteger := MaxParArvore(FColID) + 1;
end;

procedure TModuleMain.SalvarColeta;
begin
  qryColetasCad.Post;
  qryColetasCad.Close;
  qryColetasList.Close;
  qryColetasList.Open;
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

procedure TModuleMain.IncluirParcela(pColID: Integer);
begin
  var lid := NextID('PARCELAS');
  qryParcelaCad.Close;
  qryParcelaCad.ParamByName('PAR_ID').AsInteger := lid;
  qryParcelaCad.Open;
  qryParcelaCad.Append;
  qryParcelaCad.FieldByName('PAR_ID').AsInteger := lid;
  qryParcelaCad.FieldByName('COL_ID').AsInteger := pColID;
end;

procedure TModuleMain.ListarCubagem;
begin

end;

procedure TModuleMain.ListarCubMedida;
begin

end;

procedure TModuleMain.ListarParcela(pColID: Integer);
begin
  qryParcelaList.Close;
  qryParcelaList.ParamByName('COL_ID').AsInteger := pColID;
  qryParcelaList.Open;
end;

function TModuleMain.MaxParArvore(pColID: Integer): integer;
begin
  result := 0;

  qryMaxParArvore.Close;
  qryMaxParArvore.ParamByName('COL_ID').AsInteger := pColID;
  qryMaxParArvore.Open;
  try
    if qryMaxParArvore.FieldByName('MAX_PAR_ARVORE').isNull then
      result := 0
    else
      result := qryMaxParArvore.FieldByName('MAX_PAR_ARVORE').AsInteger;
  finally
    qryMaxParArvore.Close;
  end;

end;

function TModuleMain.EditarColeta(pID: Integer): boolean;
begin
  result := false;
  FColID := pID;
  if not qryColetasList.IsEmpty then
  begin
    qryColetasCad.Close;
    qryColetasCad.ParamByName('COL_ID').AsInteger := pID;
    qryColetasCad.Open;
    qryColetasCad.Edit;
    result := True;
  end;
end;


function TModuleMain.EditarParcela(pParID: Integer): boolean;
begin
  result := false;
  if not qryParcelaList.IsEmpty then
  begin
    qryParcelaCad.Close;
    qryParcelaCad.ParamByName('PAR_ID').AsInteger := pParID;
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

unit ForestInterview.Module.Main;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.FMXUI.Wait, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, ForestInterview.Utils, System.ImageList, FMX.ImgList, System.IOUtils, FireDAC.Stan.StorageJSON,
  FireDAC.Stan.StorageXML, System.Zip;

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
    qryMaxParArvore: TFDQuery;
    qryParcelaCadPAR_ID: TIntegerField;
    qryParcelaCadCOL_ID: TIntegerField;
    qryParcelaCadPAR_NOME: TStringField;
    qryParcelaCadPAR_LONGITUDE: TFMTBCDField;
    qryParcelaCadPAR_LATITUDE: TFMTBCDField;
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
    qryArvoreList: TFDQuery;
    qryArvoreCad: TFDQuery;
    qryColetaExp: TFDQuery;
    qryParcelaExp: TFDQuery;
    qryArvoreExp: TFDQuery;
    FDStanStorageXMLLink1: TFDStanStorageXMLLink;
    FDStanStorageJSONLink1: TFDStanStorageJSONLink;
    qryParNome: TFDQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    FMTBCDField1: TFMTBCDField;
    FMTBCDField2: TFMTBCDField;
    qryArvoreDominate: TFDQuery;
    qryArvoreQuebrada: TFDQuery;
    qryExportacao: TFDQuery;
    qryExportacaoCOL_ID: TIntegerField;
    qryExportacaoCOL_EQUIPE: TStringField;
    qryExportacaoCOL_FAZENDA: TStringField;
    qryExportacaoCOL_TALHAO: TStringField;
    qryExportacaoCOL_DATA: TDateField;
    qryExportacaoCOL_AREA_PARCELA: TFMTBCDField;
    qryExportacaoCOL_AREA_TALHAO: TFMTBCDField;
    qryExportacaoCOL_PARCELA_TIPO: TStringField;
    qryExportacaoCOL_CUBAGEM_TIPO: TStringField;
    qryExportacaoCOL_FATOR_FORMA: TFMTBCDField;
    qryExportacaoCOL_LIM_CAPDAP_MIN: TFMTBCDField;
    qryExportacaoCOL_LIM_CAPDAP_MAX: TFMTBCDField;
    qryExportacaoCOL_LIM_ALT_MIN: TFMTBCDField;
    qryExportacaoCOL_LIM_ALT_MAX: TFMTBCDField;
    qryExportacaoCOL_ERRO_AMOSTRAL: TFMTBCDField;
    qryExportacaoPAR_ID: TIntegerField;
    qryExportacaoCOL_ID_1: TIntegerField;
    qryExportacaoPAR_NOME: TStringField;
    qryExportacaoPAR_LONGITUDE: TFMTBCDField;
    qryExportacaoPAR_LATITUDE: TFMTBCDField;
    qryExportacaoARV_ID: TIntegerField;
    qryExportacaoPAR_ID_1: TIntegerField;
    qryExportacaoARV_NUMERO: TIntegerField;
    qryExportacaoARV_FILA: TIntegerField;
    qryExportacaoARV_COVA: TIntegerField;
    qryExportacaoARV_ULTIMA: TStringField;
    qryExportacaoARV_TRONCO: TFMTBCDField;
    qryExportacaoARV_ALTURA: TFMTBCDField;
    qryExportacaoARV_NORMAL: TStringField;
    qryExportacaoARV_SANIDADE: TStringField;
    qryExportacaoARV_BIFURCACAO_ABAIXO: TStringField;
    qryExportacaoARV_BIFURCACAO_ACIMA: TStringField;
    qryExportacaoARV_PONTA: TStringField;
    qryExportacaoARV_SINUOSIDADE: TStringField;
    qryExportacaoARV_OUTROS: TStringField;
    qryExportacaoARV_VOLUME: TFMTBCDField;
    qryExportacaoARV_OBS: TWideMemoField;
    procedure DataModuleCreate(Sender: TObject);
    procedure FDConnectionBeforeConnect(Sender: TObject);
    procedure qryColetasCadNewRecord(DataSet: TDataSet);
  private
    FColID: integer;
    FParID: integer;
    function NextID(pTableName: String): Integer;
    { Private declarations }
  public
    property ColID: integer read FColID write FColID;
    property ParID: integer read FParID write FParID;

    procedure ExportarDados;
    procedure GerarCSV(pArquivo: string);

    procedure IncluirColeta;
    function EditarColeta(pID: Integer): boolean;
    procedure CancelarColeta;
    procedure SalvarColeta;
    procedure ExcluirColeta(pID: Integer);

    procedure IncluirParcela(pColID: Integer);
    function EditarParcela(pParID: Integer): boolean;
    procedure CancelarParcela;
    procedure SalvarParcela;
    procedure ExcluirParcela(pParID: Integer);
    procedure ListarParcela(pColID: Integer);
    function MaxParArvore(pParID: Integer): integer;
    function NomeParcelaExistente(pColID, pParID: Integer; pNome: String): Boolean;

    function ArvBifurcacao: string;
    function ArvPonta: string;
    function ArvSanidade: string;
    function ArvSinuosidade: string;
    function ArvNormal: string;
    function ArvSituacao: string;


    procedure IncluirArvore(pParID: Integer);
    function EditarArvore(pArvID: Integer): boolean;
    procedure CancelarArvore;
    procedure SalvarArvore;
    procedure ExcluirArvore(pArvID: Integer);
    procedure ListarArvore(pParID: Integer);
    procedure ListarArvoreDominate(pParID: Integer);
    procedure ListarArvoreQuebrada(pParID: Integer);
    function EhArvoreDominate(pArvID: Integer): boolean;
    function EhArvoreQuebrada(pArvID: Integer): boolean;


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

procedure TModuleMain.CancelarArvore;
begin

end;

procedure TModuleMain.CancelarColeta;
begin
  qryColetasCad.Cancel;
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
                             'PAR_NOME VARCHAR(25), '+
                             'PAR_LONGITUDE DECIMAL(10,5), '+
                             'PAR_LATITUDE DECIMAL(10,5)'+
                             ');';

  qryCreateTable.ExecSQL;


  qryCreateTable.SQL.Text := 'CREATE TABLE IF NOT EXISTS ARVORES ('+
                             'ARV_ID INT, '+
                             'PAR_ID INT NOT NULL, '+
                             'ARV_NUMERO INT, '+
                             'ARV_FILA INT, '+
                             'ARV_COVA INT, '+
                             'ARV_ULTIMA VARCHAR(1), '+
                             'ARV_TRONCO DECIMAL(10,5), '+
                             'ARV_ALTURA DECIMAL(10,5), '+
                             'ARV_NORMAL VARCHAR(1), '+
                             'ARV_SANIDADE VARCHAR(1), '+
                             'ARV_BIFURCACAO_ABAIXO VARCHAR(1), '+
                             'ARV_BIFURCACAO_ACIMA VARCHAR(1), '+
                             'ARV_PONTA VARCHAR(1), '+
                             'ARV_SINUOSIDADE VARCHAR(1), '+
                             'ARV_OUTROS VARCHAR(1), '+
                             'ARV_VOLUME DECIMAL(10,5), '+
                             'ARV_OBS TEXT '+
                             ');';

  qryCreateTable.ExecSQL;

  qryCreateTable.SQL.Text := 'CREATE TABLE IF NOT EXISTS CUBAGENS ('+
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


function TModuleMain.NomeParcelaExistente(pColID, pParID: Integer; pNome: String): Boolean;
begin
  qryParNome.Close;
  qryParNome.ParamByName('COL_ID').AsInteger := pColID;
  qryParNome.ParamByName('PAR_ID').AsInteger := pParID;
  qryParNome.ParamByName('PAR_NOME').AsString := pNome;
  qryParNome.Open;
  Result := not qryParNome.IsEmpty;
  qryParNome.Close;
end;

function TModuleMain.ArvNormal: string;
begin
  if qryArvoreList.FieldByName('ARV_NORMAL').AsString = 'S' then
    Result := 'Sim'
  else if qryArvoreList.FieldByName('ARV_NORMAL').AsString = 'N' then
    Result := 'Não'
  else if qryArvoreList.FieldByName('ARV_NORMAL').AsString = 'F' then
    Result := 'Falha'
  else
    Result := '-';
end;

function TModuleMain.ArvSituacao: string;
begin
  if qryArvoreList.FieldByName('ARV_NORMAL').AsString = 'S' then
    Result := 'Normal'
  else if qryArvoreList.FieldByName('ARV_NORMAL').AsString = 'N' then
    Result := 'Com observações'
  else if qryArvoreList.FieldByName('ARV_NORMAL').AsString = 'F' then
    Result := 'Falha'
  else
    Result := '-';
end;


function TModuleMain.ArvBifurcacao: string;
begin
  if qryArvoreList.FieldByName('ARV_BIFURCACAO_ACIMA').AsString = 'S' then
    Result := 'Sim'
  else if qryArvoreList.FieldByName('ARV_BIFURCACAO_ACIMA').AsString = 'N' then
    Result := 'Não'
  else
    Result := '-';
end;

function TModuleMain.ArvPonta: string;
begin
  if qryArvoreList.FieldByName('ARV_PONTA').AsString = 'N' then
    Result := 'Normal'
  else if qryArvoreList.FieldByName('ARV_PONTA').AsString = 'S' then
    Result := 'Seca'
  else if qryArvoreList.FieldByName('ARV_PONTA').AsString = 'Q' then
    Result := 'Quebrada'
  else
    Result := '-';
end;

function TModuleMain.ArvSanidade: string;
begin
  if qryArvoreList.FieldByName('ARV_SANIDADE').AsString = 'S' then
    Result := 'Saudável'
  else if qryArvoreList.FieldByName('ARV_SANIDADE').AsString = 'M' then
    Result := 'Morta'
  else if qryArvoreList.FieldByName('ARV_SANIDADE').AsString = 'D' then
    Result := 'Doente'
  else
    Result := '-';
end;

function TModuleMain.ArvSinuosidade: string;
begin
  if qryArvoreList.FieldByName('ARV_SINUOSIDADE').AsString = 'R' then
    Result := 'Reta'
  else if qryArvoreList.FieldByName('ARV_SINUOSIDADE').AsString = 'S' then
    Result := 'Sinuosa'
  else
    Result := '-';
end;

procedure TModuleMain.qryColetasCadNewRecord(DataSet: TDataSet);
begin
  qryColetasCad.FieldByName('COL_DATA').AsDateTime := Date;
end;

procedure TModuleMain.SalvarArvore;
begin
  qryArvoreCad.Post;
  qryArvoreList.Close;
  qryArvoreList.Open;
end;

procedure TModuleMain.SalvarColeta;
begin
  qryColetasCad.Post;
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
  qryParcelaList.Close;
  qryParcelaList.Open;
end;

procedure TModuleMain.IncluirArvore(pParID: Integer);
var
  lFila, lCova, lNumero: Integer;

begin
  var lid := NextID('ARVORES');
  qryArvoreCad.Close;
  qryArvoreCad.ParamByName('ARV_ID').AsInteger := lid;
  qryArvoreCad.Open;
  qryArvoreCad.Append;
  qryArvoreCad.FieldByName('ARV_ID').AsInteger := lid;
  qryArvoreCad.FieldByName('PAR_ID').AsInteger := pParID;
  if qryArvoreList.IsEmpty then
  begin
    qryArvoreCad.FieldByName('ARV_FILA').AsInteger := 1;
    qryArvoreCad.FieldByName('ARV_COVA').AsInteger := 1;
    qryArvoreCad.FieldByName('ARV_NUMERO').AsInteger := 1;
  end else begin
    qryArvoreList.Last;
    lFila := qryArvoreList.FieldByName('ARV_FILA').AsInteger;
    lCova := qryArvoreList.FieldByName('ARV_COVA').AsInteger;
    lNumero := qryArvoreList.FieldByName('ARV_NUMERO').AsInteger;
    qryArvoreCad.FieldByName('ARV_NUMERO').AsInteger := lNumero + 1;
    if qryArvoreList.FieldByName('ARV_BIFURCACAO_ABAIXO').AsString = 'S' then
    begin
      qryArvoreCad.FieldByName('ARV_FILA').AsInteger := lFila;
      qryArvoreCad.FieldByName('ARV_COVA').AsInteger := lCova;
      qryArvoreCad.FieldByName('ARV_OBS').AsString := 'Bifurcação da Arvore '+lNumero.ToString+'.';
    end else if qryArvoreList.FieldByName('ARV_ULTIMA').AsString = 'S' then
    begin
      qryArvoreCad.FieldByName('ARV_FILA').AsInteger := lFila + 1;
      qryArvoreCad.FieldByName('ARV_COVA').AsInteger := 1;
    end else begin
      qryArvoreCad.FieldByName('ARV_FILA').AsInteger := lFila;
      qryArvoreCad.FieldByName('ARV_COVA').AsInteger := lCova + 1;
    end;
  end;
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
  FParID := lid;
end;

procedure TModuleMain.ListarArvore(pParID: Integer);
begin
  qryArvoreList.Close;
  qryArvoreList.ParamByName('PAR_ID').AsInteger := pParID;
  qryArvoreList.Open;
end;

procedure TModuleMain.ListarArvoreDominate(pParID: Integer);
begin
  qryArvoreDominate.Close;
  qryArvoreDominate.ParamByName('PAR_ID').AsInteger := pParID;
  qryArvoreDominate.Open;
end;

procedure TModuleMain.ListarArvoreQuebrada(pParID: Integer);
begin
  qryArvoreQuebrada.Close;
  qryArvoreQuebrada.ParamByName('PAR_ID').AsInteger := pParID;
  qryArvoreQuebrada.Open;
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

function TModuleMain.MaxParArvore(pParID: Integer): integer;
begin
  result := 0;

  qryMaxParArvore.Close;
  qryMaxParArvore.ParamByName('PAR_ID').AsInteger := pParID;
  qryMaxParArvore.Open;
  try
    if qryMaxParArvore.FieldByName('MAX_ARV_ARVORE').isNull then
      result := 0
    else
      result := qryMaxParArvore.FieldByName('MAX_ARV_ARVORE').AsInteger;
  finally
    qryMaxParArvore.Close;
  end;

end;

function TModuleMain.EditarArvore(pArvID: Integer): boolean;
begin
  result := false;
  if not qryArvoreList.IsEmpty then
  begin
    qryArvoreCad.Close;
    qryArvoreCad.ParamByName('ARV_ID').AsInteger := pArvID;
    qryArvoreCad.Open;
    qryArvoreCad.Edit;
    result := True;
  end;
end;

function TModuleMain.EditarColeta(pID: Integer): boolean;
begin
  result := false;
  if not qryColetasList.IsEmpty then
  begin
    qryColetasCad.Close;
    qryColetasCad.ParamByName('COL_ID').AsInteger := pID;
    qryColetasCad.Open;
    qryColetasCad.Edit;
    FColID := pID;
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
    FParID := pParID;
    result := True;
  end;
end;

function TModuleMain.EhArvoreDominate(pArvID: Integer): boolean;
begin
  Result := qryArvoreDominate.Locate('ARV_ID',pArvID,[]);
end;

function TModuleMain.EhArvoreQuebrada(pArvID: Integer): boolean;
begin
  Result := qryArvoreQuebrada.Locate('ARV_ID',pArvID,[]);
end;

procedure TModuleMain.ExcluirArvore(pArvID: Integer);
begin
  qryArvoreCad.Close;
  qryArvoreCad.ParamByName('ARV_ID').AsInteger := pArvID;
  qryArvoreCad.Open;
  if not qryArvoreCad.IsEmpty then
    qryArvoreCad.Delete;
end;

procedure TModuleMain.ExcluirColeta(pID: Integer);
begin

  qryParcelaList.Close;
  qryParcelaList.ParamByName('Col_ID').AsInteger := pID;
  qryParcelaList.Open;
  while not qryParcelaList.IsEmpty do
  begin
    qryArvoreList.Close;
    qryArvoreList.ParamByName('PAR_ID').AsInteger := qryParcelaList.FieldByName('PAR_ID').AsInteger;
    qryArvoreList.Open;
    while not qryArvoreList.IsEmpty do
    begin
      qryArvoreList.Delete;
    end;
    qryParcelaList.Delete;
  end;

  qryColetasCad.Close;
  qryColetasCad.ParamByName('COL_ID').AsInteger := pID;
  qryColetasCad.Open;
  if not qryColetasCad.IsEmpty then
    qryColetasCad.Delete;

  qryColetasList.Close;
  qryColetasList.Open;
end;

procedure TModuleMain.ExcluirParcela(pParID: Integer);
begin
  qryArvoreList.Close;
  qryArvoreList.ParamByName('PAR_ID').AsInteger := pParID;
  qryArvoreList.Open;
  while not qryArvoreList.Eof do
  begin
    qryArvoreList.Delete;
  end;

  qryParcelaCad.Close;
  qryParcelaCad.ParamByName('PAR_ID').AsInteger := pParID;
  qryParcelaCad.Open;
  if not qryParcelaCad.IsEmpty then
    qryParcelaCad.Delete;
end;

procedure TModuleMain.ExportarDados;
var
  lZipFile: TZipFile;
  lArqColeta, lArqParcela, lArqArvore, lArqDados: String;
begin

  lArqColeta  := TPath.GetTempPath+PathDelim+'Coleta.xml';
  lArqParcela := TPath.GetTempPath+PathDelim+'Parcela.xml';
  lArqArvore  := TPath.GetTempPath+PathDelim+'Arvore.xml';
  lArqDados   := TPath.GetTempPath+PathDelim+'Dados.csv';

  qryColetaExp.Close;
  qryColetaExp.Open;
  qryColetaExp.SaveToFile(lArqColeta,sfXML);
  qryColetaExp.Close;

  qryParcelaExp.Close;
  qryParcelaExp.Open;
  qryParcelaExp.SaveToFile(lArqParcela,sfXML);
  qryParcelaExp.Close;

  qryArvoreExp.Close;
  qryArvoreExp.Open;
  qryArvoreExp.SaveToFile(lArqArvore,sfXML);
  qryArvoreExp.Close;

  GerarCSV(lArqDados);

  lZipFile := TZipFile.Create;
  try
    lZipFile.Open(TPath.GetTempPath+PathDelim+'DadosColetados.zip', zmWrite);

    lZipFile.Add(lArqColeta);
    lZipFile.Add(lArqParcela);
    lZipFile.Add(lArqArvore);
    lZipFile.Add(lArqDados);
  finally
    lZipFile.Free;
  end;

end;

procedure TModuleMain.FDConnectionBeforeConnect(Sender: TObject);
begin
  FDConnection.Params.Values['Database'] := TUtils.DirArquivo('ForestInterview.db');
end;

procedure TModuleMain.GerarCSV(pArquivo: string);
var
  lStringList: TStringList;
  lLinha: string;
begin
  qryExportacao.Close;
  qryExportacao.Open;
  lStringList := TStringList.Create;
  try
    for var li := 0 to qryExportacao.FieldCount - 1 do
    begin
      if qryExportacao.Fields[li].FieldName <> qryExportacao.Fields[li].DisplayName then
        lLinha := lLinha + qryExportacao.Fields[li].DisplayName+';';
    end;
    lStringList.Add(lLinha);


    while not qryExportacao.Eof do
    begin
      lLinha := '';
      for var li := 0 to qryExportacao.FieldCount - 1 do
      begin
        if qryExportacao.Fields[li].FieldName <> qryExportacao.Fields[li].DisplayName then
        begin
          if qryExportacao.Fields[li].DataType = ftFMTBcd then
            lLinha := lLinha + FormatFloat('0.,##',qryExportacao.Fields[li].AsFloat)+';';
          if qryExportacao.Fields[li].DataType = ftString then
            lLinha := lLinha + qryExportacao.Fields[li].AsString+';';
          if qryExportacao.Fields[li].DataType = ftDate then
            lLinha := lLinha + FormatDateTime('DD/MM/YYYY',qryExportacao.Fields[li].AsDateTime)+';';
          if qryExportacao.Fields[li].DataType = ftMemo then
            lLinha := lLinha + qryExportacao.Fields[li].AsString+';';
          if qryExportacao.Fields[li].DataType = ftInteger then
            lLinha := lLinha + qryExportacao.Fields[li].AsInteger.ToString+';';

        end;
      end;
      lStringList.Add(lLinha);
      qryExportacao.Next;
    end;
    lStringList.SaveToFile(pArquivo);

  finally
    lStringList.Free;
    //qryArvoreDominate.Close;
    qryExportacao.Close;
  end;
end;

end.

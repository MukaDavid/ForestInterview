unit ForestInterview.Helper.FDQuery;

interface

uses FireDAC.Comp.Client, FMX.StdCtrls, FMX.Edit, FMX.DateTimeCtrls, FMX.Memo;

type
  TFDQueryHelper = class helper for TFDQuery
    procedure LoadValue(pRdg: TRadioButton; pFieldName, pCheckValue: string); overload;
    procedure SaveValue(pRdg: TRadioButton; pFieldName, pValue: string); overload;
    procedure LoadValue(pEdt: TEdit; pFieldName: string); overload;
    procedure SaveValue(pEdt: TEdit; pFieldName: string); overload;
    procedure LoadValue(pDateEdit: TDateEdit; pFieldName: string); overload;
    procedure SaveValue(pDateEdit: TDateEdit; pFieldName: string); overload;
    procedure LoadValue(pMem: TMemo; pFieldName: string); overload;
    procedure SaveValue(pMem: TMemo; pFieldName: string); overload;
    procedure LoadValue(pLbl: TLabel; pFieldName: string); overload;
  end;

implementation

{ TFDQueryHelper }

procedure TFDQueryHelper.LoadValue(pRdg: TRadioButton; pFieldName, pCheckValue: string);
begin
  if FieldByName(pFieldName).AsString = pCheckValue then
    pRdg.IsChecked := True;
end;

procedure TFDQueryHelper.SaveValue(pRdg: TRadioButton; pFieldName, pValue: string);
begin
  if pRdg.IsChecked then
  begin
    Edit;
    FieldByName(pFieldName).AsString:= pValue;
  end;
end;

procedure TFDQueryHelper.LoadValue(pEdt: TEdit; pFieldName: string);
begin
  pEdt.Text := FieldByName(pFieldName).AsString;
end;

procedure TFDQueryHelper.SaveValue(pEdt: TEdit; pFieldName: string);
begin
  Edit;
  FieldByName(pFieldName).AsString := pEdt.Text;
end;

procedure TFDQueryHelper.LoadValue(pDateEdit: TDateEdit; pFieldName: string);
begin
  pDateEdit.Date := FieldByName(pFieldName).AsDateTime;
end;

procedure TFDQueryHelper.SaveValue(pDateEdit: TDateEdit; pFieldName: string);
begin
  Edit;
  FieldByName(pFieldName).AsDateTime := pDateEdit.Date;
end;

procedure TFDQueryHelper.LoadValue(pMem: TMemo; pFieldName: string);
begin
  pMem.Text := FieldByName(pFieldName).AsString;
end;

procedure TFDQueryHelper.SaveValue(pMem: TMemo; pFieldName: string);
begin
  Edit;
  FieldByName(pFieldName).AsString := pMem.Text;
end;

procedure TFDQueryHelper.LoadValue(pLbl: TLabel; pFieldName: string);
begin
  pLbl.Text := FieldByName(pFieldName).AsString;
end;

end.

unit ForestInterview.Form.Parcela;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, ForestInterview.ControleTeclado,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, ForestInterview.Module.Main, FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components, Data.Bind.DBScope, FMX.StdCtrls, FMX.Layouts, FMX.ListView, FMX.Edit, FMX.TabControl,
  FMX.Controls.Presentation, System.ImageList, FMX.ImgList, FMX.Header, System.Actions, FMX.ActnList, FMX.StdActns, FMX.Colors, FMX.Objects, System.Sensors, System.Sensors.Components;

type
  TFormParcela = class(TForm)
    tbcParcela: TTabControl;
    TabListaParcela: TTabItem;
    Layout8: TLayout;
    edtParcEquipe: TEdit;
    Label2: TLabel;
    Layout9: TLayout;
    edtParcFazenda: TEdit;
    Label3: TLabel;
    Layout10: TLayout;
    edtParcTalhao: TEdit;
    Label4: TLabel;
    ltvParcela: TListView;
    TabCadParcela: TTabItem;
    Layout12: TLayout;
    edtFila: TEdit;
    lblFila: TLabel;
    Layout13: TLayout;
    edtCova: TEdit;
    lblCova: TLabel;
    VerticalScroll: TVertScrollBox;
    Layout16: TLayout;
    edtVolume: TEdit;
    Label10: TLabel;
    Layout21: TLayout;
    edtAltura: TEdit;
    Label20: TLabel;
    Layout22: TLayout;
    edtTronco: TEdit;
    Label21: TLabel;
    GroupBox4: TGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    edtX: TEdit;
    edtY: TEdit;
    Button1: TButton;
    GroupBox7: TGroupBox;
    rdgMorta: TRadioButton;
    rdgSaudavel: TRadioButton;
    rdgFalha: TRadioButton;
    GroupBox8: TGroupBox;
    rdgBifurcNao: TRadioButton;
    rdgBifurcSim: TRadioButton;
    GroupBox9: TGroupBox;
    rgdPontaSeca: TRadioButton;
    rdgPontaNormal: TRadioButton;
    rdgPontaQueb: TRadioButton;
    GroupBox10: TGroupBox;
    rdgSinSinuosa: TRadioButton;
    rdgSinReta: TRadioButton;
    GroupBox11: TGroupBox;
    rdgOutros2: TRadioButton;
    rdgOutros1: TRadioButton;
    rdgOutros3: TRadioButton;
    BindingsList1: TBindingsList;
    LinkControlToField8: TLinkControlToField;
    LinkControlToField9: TLinkControlToField;
    LinkListControlToField2: TLinkListControlToField;
    LinkControlToField10: TLinkControlToField;
    LinkControlToField11: TLinkControlToField;
    LinkControlToField12: TLinkControlToField;
    BindParcelaCad: TBindSourceDB;
    BindParcelaList: TBindSourceDB;
    BindColetaList: TBindSourceDB;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    Layout2: TLayout;
    ColorBox7: TColorBox;
    Label9: TLabel;
    ColorBox9: TColorBox;
    Layout3: TLayout;
    Label1: TLabel;
    Label16: TLabel;
    Rectangle1: TRectangle;
    Layout14: TLayout;
    Rectangle3: TRectangle;
    imgSave: TImage;
    imgCancel: TImage;
    Layout15: TLayout;
    ColorBox6: TColorBox;
    Label12: TLabel;
    Layout11: TLayout;
    ColorBox5: TColorBox;
    Sanidade: TLabel;
    Layout7: TLayout;
    ColorBox3: TColorBox;
    Label8: TLabel;
    Layout6: TLayout;
    ColorBox2: TColorBox;
    Label7: TLabel;
    Layout5: TLayout;
    ColorBox1: TColorBox;
    Label6: TLabel;
    Layout4: TLayout;
    ColorBox4: TColorBox;
    Label5: TLabel;
    LayoutMain: TLayout;
    Layout1: TLayout;
    Rectangle2: TRectangle;
    ImgIncParcela: TImage;
    SpeedButton1: TSpeedButton;
    LocationSensor1: TLocationSensor;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ltvParcelaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImgIncParcelaClick(Sender: TObject);
    procedure imgCancelClick(Sender: TObject);
    procedure imgSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    procedure rgdSave(pRdg: TRadioButton; pFieldName, pValue: string);
    procedure rgdEdit(pRdg: TRadioButton; pFieldName, pValue: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormParcela: TFormParcela;

implementation

{$R *.fmx}

procedure TFormParcela.Button1Click(Sender: TObject);
begin
  LocationSensor1.Active := True;
  edtX.Text := LocationSensor1.Sensor.Latitude.ToString;
  edtY.Text := LocationSensor1.Sensor.Longitude.ToString;
end;

procedure TFormParcela.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
end;

procedure TFormParcela.FormCreate(Sender: TObject);
var
  lControleTeclado: TControleTeclado;
begin
  lControleTeclado := TControleTeclado.Create(self);
  lControleTeclado.FormControle := self;
  lControleTeclado.LayoutControle := LayoutMain;
  lControleTeclado.VerticalScrollControle := VerticalScroll;
end;

procedure TFormParcela.FormShow(Sender: TObject);
begin
  tbcParcela.ActiveTab := TabListaParcela;
end;

procedure TFormParcela.imgCancelClick(Sender: TObject);
begin
  ModuleMain.CancelarParcela;
  tbcParcela.ActiveTab := TabListaParcela;
end;

procedure TFormParcela.ImgIncParcelaClick(Sender: TObject);
begin
  ModuleMain.IncluirParcela;
  tbcParcela.ActiveTab := TabCadParcela;

  rdgSinSinuosa.IsChecked := False;
  rdgSinReta.IsChecked := False;
  rdgPontaQueb.IsChecked := False;
  rdgPontaNormal.IsChecked := False;
  rgdPontaSeca.IsChecked := False;
  rdgSaudavel.IsChecked := False;
  rdgMorta.IsChecked := False;
  rdgFalha.IsChecked := False;
  rdgBifurcSim.IsChecked := False;
  rdgBifurcNao.IsChecked := False;
  rdgOutros1.IsChecked := False;
  rdgOutros2.IsChecked := False;
  rdgOutros3.IsChecked := False;
end;

procedure TFormParcela.imgSaveClick(Sender: TObject);
begin
  rgdSave(rdgSinSinuosa,'PAR_SINUOSIDADE','S');
  rgdSave(rdgSinReta,'PAR_SINUOSIDADE','R');
  rgdSave(rdgPontaQueb,'PAR_PONTA','Q');
  rgdSave(rdgPontaNormal,'PAR_PONTA','N');
  rgdSave(rgdPontaSeca,'PAR_PONTA','S');
  rgdSave(rdgSaudavel,'PAR_SANIDADE','S');
  rgdSave(rdgMorta,'PAR_SANIDADE','M');
  rgdSave(rdgFalha,'PAR_SANIDADE','F');
  rgdSave(rdgBifurcSim,'PAR_BIFURCACAO','S');
  rgdSave(rdgBifurcNao,'PAR_BIFURCACAO','N');
  rgdSave(rdgOutros1,'PAR_OUTROS','1');
  rgdSave(rdgOutros2,'PAR_OUTROS','2');
  rgdSave(rdgOutros3,'PAR_OUTROS','3');

  ModuleMain.SalvarParcela;
  tbcParcela.ActiveTab := TabListaParcela;
end;

procedure TFormParcela.ltvParcelaClick(Sender: TObject);
begin
  if ModuleMain.EditarParcela then
  begin
    tbcParcela.ActiveTab := TabCadParcela;

    rgdEdit(rdgSinSinuosa,'PAR_SINUOSIDADE','S');
    rgdEdit(rdgSinReta,'PAR_SINUOSIDADE','R');
    rgdEdit(rdgPontaQueb,'PAR_PONTA','Q');
    rgdEdit(rdgPontaNormal,'PAR_PONTA','N');
    rgdEdit(rgdPontaSeca,'PAR_PONTA','S');
    rgdEdit(rdgSaudavel,'PAR_SANIDADE','S');
    rgdEdit(rdgMorta,'PAR_SANIDADE','M');
    rgdEdit(rdgFalha,'PAR_SANIDADE','F');
    rgdEdit(rdgBifurcSim,'PAR_BIFURCACAO','S');
    rgdEdit(rdgBifurcNao,'PAR_BIFURCACAO','N');
    rgdEdit(rdgOutros1,'PAR_OUTROS','1');
    rgdEdit(rdgOutros2,'PAR_OUTROS','2');
    rgdEdit(rdgOutros3,'PAR_OUTROS','3');
  end;
end;

procedure TFormParcela.rgdSave(pRdg: TRadioButton; pFieldName, pValue : string);
begin
  if pRdg.IsChecked then
  begin
    ModuleMain.qryParcelaCad.Edit;
    ModuleMain.qryParcelaCad.FieldByName(pFieldName).AsString:= pValue;
  end;
end;

procedure TFormParcela.rgdEdit(pRdg: TRadioButton; pFieldName, pValue : string);
begin
  if ModuleMain.qryParcelaCad.FieldByName(pFieldName).AsString = pValue then
    pRdg.IsChecked := True;
end;



procedure TFormParcela.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;

end.

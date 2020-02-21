unit ForestInterview.Form.Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, System.Math,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl, FMX.StdCtrls, FMX.Controls.Presentation,
  FMX.Gestures, System.Actions, FMX.ActnList, FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView, ForestInterview.Module.Main, System.Rtti, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, FMX.Layouts, FMX.DateTimeCtrls, FMX.Edit, FMX.Objects, System.ImageList, FMX.ImgList,
  FMX.StdActns, ForestInterview.Form.Parcela, ForestInterview.Form.Cubagem, ForestInterview.Helper.VertScrollBox, FMX.Colors;

type
  TFormMain = class(TForm)
    tbcColeta: TTabControl;
    TabListaColeta: TTabItem;
    ToolBar1: TToolBar;
    TabCadColeta: TTabItem;
    GestureManager1: TGestureManager;
    ActionList1: TActionList;
    ListView1: TListView;
    BindColetaCad: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    BindColetaList: TBindSourceDB;
    LayoutMain: TLayout;
    edtEquipe: TEdit;
    lblEquipe: TLabel;
    lblFazenda: TLabel;
    edtFazenda: TEdit;
    lblTalhao: TLabel;
    edtTalhao: TEdit;
    lblData: TLabel;
    edtData: TDateEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    edtAreaParcela: TEdit;
    edtAreaTalhao: TEdit;
    GroupBox7: TGroupBox;
    VerticalScroll: TVertScrollBox;
    GroupBox5: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    EdtLimCapDapMin: TEdit;
    EdtLimCapDapMax: TEdit;
    GroupBox6: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    EdtLimAlturaMin: TEdit;
    EdtLimAlturaMax: TEdit;
    lblErroAmostral: TText;
    Label15: TLabel;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    LinkControlToField13: TLinkControlToField;
    LinkControlToField14: TLinkControlToField;
    LinkControlToField15: TLinkControlToField;
    LinkControlToField16: TLinkControlToField;
    LinkPropertyToFieldText: TLinkPropertyToField;
    Action1: TAction;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    Layout5: TLayout;
    Layout6: TLayout;
    rdgParcDap: TRadioButton;
    rdgParcCap: TRadioButton;
    rdgCubCap: TRadioButton;
    rdgCubDap: TRadioButton;
    Layout7: TLayout;
    edtFatorForma: TEdit;
    Label1: TLabel;
    LinkControlToField7: TLinkControlToField;
    ColorBox1: TColorBox;
    Label2: TLabel;
    ColorBox2: TColorBox;
    Layout1: TLayout;
    Layout8: TLayout;
    ColorBox3: TColorBox;
    Label3: TLabel;
    Layout9: TLayout;
    ColorBox4: TColorBox;
    Label4: TLabel;
    Layout10: TLayout;
    ColorBox5: TColorBox;
    Label7: TLabel;
    Layout11: TLayout;
    ColorBox6: TColorBox;
    Label8: TLabel;
    Layout12: TLayout;
    ColorBox7: TColorBox;
    Label9: TLabel;
    Label10: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Rectangle1: TRectangle;
    Layout13: TLayout;
    ImgIncColeta: TImage;
    ColorBox9: TColorBox;
    Rectangle2: TRectangle;
    Layout14: TLayout;
    Rectangle3: TRectangle;
    imgSave: TImage;
    imgCancel: TImage;
    btnParcela: TSpeedButton;
    btnCubagem: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure ListView1ItemClick(const Sender: TObject; const AItem: TListViewItem);
    procedure btnParcelaClick(Sender: TObject);
    procedure btnCubagemClick(Sender: TObject);
    procedure ImgIncColetaClick(Sender: TObject);
    procedure imgSaveClick(Sender: TObject);
    procedure imgCancelClick(Sender: TObject);
  private
    procedure rgdSave(pRdg: TRadioButton; pFieldName, pValue: string);
    procedure rgdEdit(pRdg: TRadioButton; pFieldName, pValue: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.fmx}

uses ForestInterview.ControleTeclado;

procedure TFormMain.FormCreate(Sender: TObject);
var
  lControleTeclado: TControleTeclado;
begin
  lControleTeclado := TControleTeclado.Create(self);
  lControleTeclado.FormControle := Self;
  lControleTeclado.LayoutControle := LayoutMain;
  lControleTeclado.VerticalScrollControle := VerticalScroll;

  tbcColeta.ActiveTab := TabListaColeta;
end;

procedure TFormMain.imgSaveClick(Sender: TObject);
begin
  rgdSave(rdgParcDap,'COL_PARCELA_TIPO','D');
  rgdSave(rdgParcCap,'COL_PARCELA_TIPO','C');
  rgdSave(rdgCubCap,'COL_CUBAGEM_TIPO','D');
  rgdSave(rdgCubDap,'COL_CUBAGEM_TIPO','C');

  ModuleMain.SalvarColeta;
  tbcColeta.ActiveTab := TabListaColeta;
end;

procedure TFormMain.imgCancelClick(Sender: TObject);
begin
  ModuleMain.CancelarColeta;
  tbcColeta.ActiveTab := TabListaColeta;
end;

procedure TFormMain.ImgIncColetaClick(Sender: TObject);
begin
  ModuleMain.IncluirColeta;

  rdgParcDap.IsChecked := False;
  rdgParcCap.IsChecked := False;
  rdgCubCap.IsChecked := False;
  rdgCubDap.IsChecked := False;

  tbcColeta.ActiveTab := TabCadColeta;
end;

procedure TFormMain.ListView1ItemClick(const Sender: TObject; const AItem: TListViewItem);
begin
  if ModuleMain.EditarColeta then
  begin
    tbcColeta.ActiveTab := TabCadColeta;

    rgdEdit(rdgParcDap,'COL_PARCELA_TIPO','D');
    rgdEdit(rdgParcCap,'COL_PARCELA_TIPO','C');
    rgdEdit(rdgCubCap,'COL_CUBAGEM_TIPO','D');
    rgdEdit(rdgCubDap,'COL_CUBAGEM_TIPO','C');
  end;
end;

procedure TFormMain.rgdSave(pRdg: TRadioButton; pFieldName, pValue: string);
begin
  if pRdg.IsChecked then
  begin
    ModuleMain.qryColetasCad.Edit;
    ModuleMain.qryColetasCad.FieldByName(pFieldName).AsString:= pValue;
  end;
end;

procedure TFormMain.rgdEdit(pRdg: TRadioButton; pFieldName, pValue: string);
begin
  if ModuleMain.qryColetasCad.FieldByName(pFieldName).AsString = pValue then
    pRdg.IsChecked := True;
end;

procedure TFormMain.btnCubagemClick(Sender: TObject);
begin
  ModuleMain.ListarCubagem;
  TformCubagem.Create(Application).Show;
end;

procedure TFormMain.btnParcelaClick(Sender: TObject);
begin
  ModuleMain.ListarParcela;
  TFormParcela.Create(Application).Show;
end;

end.


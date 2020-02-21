unit ForestInterview.Form.Cubagem;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, ForestInterview.ControleTeclado,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView, FMX.StdCtrls, FMX.Edit, FMX.Layouts,
  System.ImageList, FMX.ImgList, FMX.TabControl, FMX.Controls.Presentation, ForestInterview.Module.Main, System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt, Fmx.Bind.DBEngExt,
  Data.Bind.Components, Data.Bind.DBScope, FMX.Header, System.Sensors, System.Sensors.Components, FMX.Colors, FMX.Objects;

type
  TformCubagem = class(TForm)
    tbcCubagem: TTabControl;
    TabListaCubagem: TTabItem;
    Layout10: TLayout;
    edtTalhao: TEdit;
    Label4: TLabel;
    Layout9: TLayout;
    edtFazenda: TEdit;
    Label3: TLabel;
    GroupBox4: TGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    edtX: TEdit;
    edtY: TEdit;
    Button1: TButton;
    ltvMedidas: TListView;
    TabCadCubagem: TTabItem;
    Layout16: TLayout;
    edtCasca: TEdit;
    Label10: TLabel;
    Layout21: TLayout;
    edtAltura: TEdit;
    Label20: TLabel;
    Layout22: TLayout;
    edtTronco: TEdit;
    Label21: TLabel;
    Layout1: TLayout;
    edtIntervalo: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtAlturaTotal: TEdit;
    BindColetasCad: TBindSourceDB;
    LinkControlToFieldCOL_FAZENDA: TLinkControlToField;
    BindingsList1: TBindingsList;
    BindCubagemCad: TBindSourceDB;
    LinkControlToFieldCUB_X: TLinkControlToField;
    LinkControlToField1: TLinkControlToField;
    BindCubMedidasList: TBindSourceDB;
    LinkListControlToField1: TLinkListControlToField;
    BindSourceDB1: TBindSourceDB;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    Layout2: TLayout;
    Rectangle2: TRectangle;
    ImgIncCubagem: TImage;
    SpeedButton5: TSpeedButton;
    Layout14: TLayout;
    Rectangle3: TRectangle;
    imgSave: TImage;
    imgCancel: TImage;
    Layout3: TLayout;
    Rectangle1: TRectangle;
    Label5: TLabel;
    Label16: TLabel;
    Label6: TLabel;
    Layout15: TLayout;
    ColorBox6: TColorBox;
    Label12: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    LocationSensor1: TLocationSensor;
    ColorBox9: TColorBox;
    Layout4: TLayout;
    ColorBox7: TColorBox;
    Label9: TLabel;
    VerticalScroll: TVertScrollBox;
    LayoutMain: TLayout;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure ImgIncCubagemClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure imgSaveClick(Sender: TObject);
    procedure imgCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCubagem: TformCubagem;

implementation

{$R *.fmx}

procedure TformCubagem.Button1Click(Sender: TObject);
begin
  LocationSensor1.Active := True;
  edtX.Text := LocationSensor1.Sensor.Latitude.ToString;
  edtY.Text := LocationSensor1.Sensor.Longitude.ToString;
end;

procedure TformCubagem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
end;

procedure TformCubagem.FormCreate(Sender: TObject);
var
  lControleTeclado: TControleTeclado;
begin
  lControleTeclado := TControleTeclado.Create(self);
  lControleTeclado.FormControle := self;
  lControleTeclado.LayoutControle := LayoutMain;
  lControleTeclado.VerticalScrollControle := VerticalScroll;
end;

procedure TformCubagem.imgCancelClick(Sender: TObject);
begin
  ModuleMain.CancelarCubagem;
  tbcCubagem.ActiveTab := TabListaCubagem;
end;

procedure TformCubagem.ImgIncCubagemClick(Sender: TObject);
begin
  ModuleMain.IncluirCubagem;
  tbcCubagem.ActiveTab := TabCadCubagem;
end;

procedure TformCubagem.imgSaveClick(Sender: TObject);
begin
  ModuleMain.SalvarCubagem;
  tbcCubagem.ActiveTab := TabListaCubagem;
end;

procedure TformCubagem.SpeedButton5Click(Sender: TObject);
begin
  Close;
end;

end.

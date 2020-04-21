unit ForestInterview.Form.Parcela;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, ForestInterview.ControleTeclado,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, ForestInterview.Module.Main, FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components, Data.Bind.DBScope, FMX.StdCtrls, FMX.Layouts, FMX.ListView, FMX.Edit, FMX.TabControl,
  FMX.Controls.Presentation, System.ImageList, FMX.ImgList, FMX.Header, System.Actions, FMX.ActnList, FMX.StdActns, FMX.Colors, FMX.Objects, System.Sensors, System.Sensors.Components,
  FMX.ListBox, ForestInterview.Classe.DadosReg, Generics.collections, ForestInterview.Utils, System.Math, FMX.ScrollBox,
  FMX.Memo, ForestInterview.Helper.FDQuery, FMX.Effects, ForestInterview.Permissions, System.Permissions;

type
  TFormParcela = class(TForm)
    tbcParcela: TTabControl;
    TabListaParcela: TTabItem;
    Layout9: TLayout;
    edtParcela: TEdit;
    Label3: TLabel;
    TabCadParcela: TTabItem;
    Layout12: TLayout;
    edtFila: TEdit;
    lblFila: TLabel;
    VerticalScroll: TVertScrollBox;
    Layout16: TLayout;
    edtVolume: TEdit;
    Label10: TLabel;
    Layout21: TLayout;
    Layout22: TLayout;
    edtTronco: TEdit;
    Label21: TLabel;
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
    Layout2: TLayout;
    ColorBox7: TColorBox;
    Label9: TLabel;
    ColorBox9: TColorBox;
    Layout3: TLayout;
    lblArvores: TLabel;
    Layout14: TLayout;
    Rectangle3: TRectangle;
    imgSave: TImage;
    imgCancel: TImage;
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
    LocationSensor1: TLocationSensor;
    lbxParcela: TListBox;
    ListBoxItem1: TListBoxItem;
    imgDelete: TImage;
    Image1: TImage;
    Layout17: TLayout;
    ColorBox8: TColorBox;
    Label13: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label11: TLabel;
    edtLog: TEdit;
    edtLat: TEdit;
    Layout8: TLayout;
    ColorBox10: TColorBox;
    Label14: TLabel;
    Image3: TImage;
    Label15: TLabel;
    lblFazenda: TLabel;
    lblTalhao: TLabel;
    Label19: TLabel;
    P: TGroupBox;
    Layout15: TLayout;
    ColorBox6: TColorBox;
    Label12: TLabel;
    memObs: TMemo;
    lblCova: TLabel;
    edtCova: TEdit;
    rdgOutros5: TRadioButton;
    rdgOutros4: TRadioButton;
    rdgOutros6: TRadioButton;
    StyleBook1: TStyleBook;
    Label4: TLabel;
    edtArvore: TEdit;
    Label20: TLabel;
    edtAltura: TEdit;
    ListBoxItem2: TListBoxItem;
    Rectangle1: TRectangle;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImgIncParcelaClick(Sender: TObject);
    procedure imgCancelClick(Sender: TObject);
    procedure imgSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
  private
    FDicReg : TObjectDictionary<TListBoxItem,TDadosReg>;
    FControleTeclado: TControleTeclado;
    procedure MontarListBox;
    procedure onEditListaClick(Sender: TObject);
    procedure ListBoxItemGesture(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure SelecionarItem(pListBoxItem: TListBoxItem);
    procedure LimparListBox;
    procedure LoadValuesToControls;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormParcela: TFormParcela;

implementation

{$R *.fmx}

procedure TFormParcela.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := TCloseAction.caFree;
end;

procedure TFormParcela.FormCreate(Sender: TObject);
begin
  FControleTeclado := TControleTeclado.Create(self);
  FControleTeclado.FormControle := self;
  FControleTeclado.LayoutControle := LayoutMain;
  FControleTeclado.VerticalScrollControle := VerticalScroll;
  imgDelete.Visible := False;
  FDicReg := TObjectDictionary<TListBoxItem,TDadosReg>.Create([doOwnsValues]);
  tbcParcela.ActiveTab := TabListaParcela;
end;

procedure TFormParcela.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
  if Key = vkHardwareBack then
  begin
    if (tbcParcela.ActiveTab = TabCadParcela) and not (FControleTeclado.TecladoVisivel) then
    begin
      tbcParcela.Previous;
      Key := 0;
    end;
  end;
end;

procedure TFormParcela.FormShow(Sender: TObject);
begin
  tbcParcela.ActiveTab := TabListaParcela;
  LocationSensor1.Active := True;
  LimparListBox;
  MontarListBox;

  ModuleMain.qryColetasCad.LoadValue(edtParcela,'COL_PARCELA');
  ModuleMain.qryColetasCad.LoadValue(edtLog,'COL_LONGITUDE');
  ModuleMain.qryColetasCad.LoadValue(edtLat,'COL_LATITUDE');
  ModuleMain.qryColetasCad.LoadValue(lblFazenda,'COL_FAZENDA');
  ModuleMain.qryColetasCad.LoadValue(lblTalhao,'COL_TALHAO');

end;

procedure TFormParcela.Image1Click(Sender: TObject);
begin
  ModuleMain.qryColetasCad.SaveValue(edtParcela,'COL_PARCELA');
  ModuleMain.qryColetasCad.SaveValue(edtLog,'COL_LONGITUDE');
  ModuleMain.qryColetasCad.SaveValue(edtLat,'COL_LATITUDE');

  Close;
end;

procedure TFormParcela.Image2Click(Sender: TObject);
begin
  edtLog.Text := FloatToStr(RoundTo(LocationSensor1.Sensor.Latitude,-5));
  edtLat.Text := FloatToStr(RoundTo(LocationSensor1.Sensor.Longitude,-5));
end;

procedure TFormParcela.imgCancelClick(Sender: TObject);
begin
  ModuleMain.CancelarParcela;
  tbcParcela.Previous;
end;

procedure TFormParcela.ImgIncParcelaClick(Sender: TObject);
begin
  ModuleMain.IncluirParcela(ModuleMain.ColID);
  tbcParcela.Next;

  LoadValuesToControls;

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
  ModuleMain.qryParcelaCad.SaveValue(rdgSinSinuosa,'PAR_SINUOSIDADE','S');
  ModuleMain.qryParcelaCad.SaveValue(rdgSinReta,'PAR_SINUOSIDADE','R');
  ModuleMain.qryParcelaCad.SaveValue(rdgPontaQueb,'PAR_PONTA','Q');
  ModuleMain.qryParcelaCad.SaveValue(rdgPontaNormal,'PAR_PONTA','N');
  ModuleMain.qryParcelaCad.SaveValue(rgdPontaSeca,'PAR_PONTA','S');
  ModuleMain.qryParcelaCad.SaveValue(rdgSaudavel,'PAR_SANIDADE','S');
  ModuleMain.qryParcelaCad.SaveValue(rdgMorta,'PAR_SANIDADE','M');
  ModuleMain.qryParcelaCad.SaveValue(rdgFalha,'PAR_SANIDADE','F');
  ModuleMain.qryParcelaCad.SaveValue(rdgBifurcSim,'PAR_BIFURCACAO','S');
  ModuleMain.qryParcelaCad.SaveValue(rdgBifurcNao,'PAR_BIFURCACAO','N');
  ModuleMain.qryParcelaCad.SaveValue(rdgOutros1,'PAR_OUTROS','1');
  ModuleMain.qryParcelaCad.SaveValue(rdgOutros2,'PAR_OUTROS','2');
  ModuleMain.qryParcelaCad.SaveValue(rdgOutros3,'PAR_OUTROS','3');

  ModuleMain.qryParcelaCad.SaveValue(edtArvore,'PAR_ARVORE');
  ModuleMain.qryParcelaCad.SaveValue(edtFila,'PAR_FILA');
  ModuleMain.qryParcelaCad.SaveValue(edtCova,'PAR_COVA');
  ModuleMain.qryParcelaCad.SaveValue(edtTronco,'PAR_TRONCO');
  ModuleMain.qryParcelaCad.SaveValue(edtAltura,'PAR_ALTURA');
  ModuleMain.qryParcelaCad.SaveValue(memObs,'PAR_OBS');


  ModuleMain.SalvarParcela;
  LimparListBox;
  MontarListBox;
  tbcParcela.Previous;
end;

procedure TFormParcela.MontarListBox;
var
  lListBoxItem: TListBoxItem;
begin
  lbxParcela.BeginUpdate;
  ModuleMain.qryParcelaList.First;
  while not ModuleMain.qryParcelaList.Eof do
  begin
    lListBoxItem := TListBoxItem.Create(lbxParcela);
    lListBoxItem.Touch.InteractiveGestures := [TInteractiveGesture.LongTap];
    lListBoxItem.OnGesture := ListBoxItemGesture;

    lListBoxItem.Visible := True;
    lListBoxItem.Enabled := True;
    lListBoxItem.StyleLookup := 'ListBoxItemParcelaStyle';
    lListBoxItem.Height := 100;
    lListBoxItem.StylesData['stlEdit.Onclick'] := TValue.From<TNotifyEvent>(onEditListaClick);
    lListBoxItem.StylesData['stlEdit.Tag'] := Integer(lListBoxItem);

    lListBoxItem.StylesData['stlCova.Text'] := ModuleMain.qryParcelaList.FieldByName('PAR_COVA').AsString;
    lListBoxItem.StylesData['stlFila.Text'] := ModuleMain.qryParcelaList.FieldByName('PAR_FILA').AsString;

    lListBoxItem.StylesData['stlArvore.Text'] := ModuleMain.qryParcelaList.FieldByName('PAR_ARVORE').AsString;
    lListBoxItem.StylesData['stlDapCap.Text'] := ModuleMain.qryParcelaList.FieldByName('PAR_TRONCO').AsString;
    lListBoxItem.StylesData['stlSanidade.Text'] := ModuleMain.ParcelaSanidade;
    lListBoxItem.StylesData['stlBifurcacao.Text'] := ModuleMain.ParcelaBifurcacao;
    lListBoxItem.StylesData['stlPontas.Text'] := ModuleMain.ParcelaPonta;
    lListBoxItem.StylesData['stlSinosidade.Text'] := ModuleMain.ParcelaSinuosidade;
    lListBoxItem.StylesData['stlAltura.Text'] := ModuleMain.qryParcelaList.FieldByName('PAR_ALTURA').AsString;


    lListBoxItem.StylesData['ImgSel.Visible'] := TValue.From<Boolean>(False);
    lbxParcela.AddObject(lListBoxItem);

    FDicReg.New(lListBoxItem, ModuleMain.qryParcelaList.FieldByName('PAR_ID').AsInteger);

    ModuleMain.qryParcelaList.Next;
  end;
  lbxParcela.EndUpdate;
end;

procedure TFormParcela.onEditListaClick(Sender: TObject);
var
  lListBoxItem: TListBoxItem;
begin
  lListBoxItem := TListBoxItem(TComponent(Sender).Tag);

  if ModuleMain.EditarParcela(FDicReg.Items[lListBoxItem].ID) then
  begin
    LoadValuesToControls;

    tbcParcela.Next;
  end;
end;

procedure TFormParcela.ListBoxItemGesture(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  if EventInfo.GestureID = igiLongTap then
  begin
    SelecionarItem(TListBoxItem(Sender));
  end;
end;

procedure TFormParcela.SelecionarItem(pListBoxItem : TListBoxItem);
begin
  if not FDicReg.Items[pListBoxItem].Check then
  begin
    pListBoxItem.StylesData['stlColor.Fill.Color'] := TValue.From<TAlphaColor>(TAlphaColorRec.Papayawhip);
    pListBoxItem.StylesData['ImgSel.Visible'] := TValue.From<Boolean>(True);
    FDicReg.Items[pListBoxItem].Check := True;
  end else begin
    pListBoxItem.StylesData['stlColor.Fill.Color'] := TValue.From<TAlphaColor>(TAlphaColorRec.White);
    pListBoxItem.StylesData['ImgSel.Visible'] := TValue.From<Boolean>(False);
    FDicReg.Items[pListBoxItem].Check := False;
  end;
  TUtils.Vibrar(50);
  imgDelete.Visible := FDicReg.CountCheck > 0;
end;

procedure TFormParcela.LimparListBox;
begin
  FDicReg.Clear;
  lbxParcela.Clear;
end;

procedure TFormParcela.LoadValuesToControls;
begin
  ModuleMain.qryParcelaCad.LoadValue(rdgSinSinuosa, 'PAR_SINUOSIDADE', 'S');
  ModuleMain.qryParcelaCad.LoadValue(rdgSinReta, 'PAR_SINUOSIDADE', 'R');
  ModuleMain.qryParcelaCad.LoadValue(rdgPontaQueb, 'PAR_PONTA', 'Q');
  ModuleMain.qryParcelaCad.LoadValue(rdgPontaNormal, 'PAR_PONTA', 'N');
  ModuleMain.qryParcelaCad.LoadValue(rgdPontaSeca, 'PAR_PONTA', 'S');
  ModuleMain.qryParcelaCad.LoadValue(rdgSaudavel, 'PAR_SANIDADE', 'S');
  ModuleMain.qryParcelaCad.LoadValue(rdgMorta, 'PAR_SANIDADE', 'M');
  ModuleMain.qryParcelaCad.LoadValue(rdgFalha, 'PAR_SANIDADE', 'F');
  ModuleMain.qryParcelaCad.LoadValue(rdgBifurcSim, 'PAR_BIFURCACAO', 'S');
  ModuleMain.qryParcelaCad.LoadValue(rdgBifurcNao, 'PAR_BIFURCACAO', 'N');
  ModuleMain.qryParcelaCad.LoadValue(rdgOutros1, 'PAR_OUTROS', '1');
  ModuleMain.qryParcelaCad.LoadValue(rdgOutros2, 'PAR_OUTROS', '2');
  ModuleMain.qryParcelaCad.LoadValue(rdgOutros3, 'PAR_OUTROS', '3');
  ModuleMain.qryParcelaCad.LoadValue(rdgOutros4, 'PAR_OUTROS', '4');
  ModuleMain.qryParcelaCad.LoadValue(rdgOutros5, 'PAR_OUTROS', '5');
  ModuleMain.qryParcelaCad.LoadValue(rdgOutros6, 'PAR_OUTROS', '6');
  ModuleMain.qryParcelaCad.LoadValue(edtArvore, 'PAR_ARVORE');
  ModuleMain.qryParcelaCad.LoadValue(edtFila, 'PAR_FILA');
  ModuleMain.qryParcelaCad.LoadValue(edtCova, 'PAR_COVA');
  ModuleMain.qryParcelaCad.LoadValue(edtTronco, 'PAR_TRONCO');
  ModuleMain.qryParcelaCad.LoadValue(edtAltura, 'PAR_ALTURA');
  ModuleMain.qryParcelaCad.LoadValue(memObs, 'PAR_OBS');
end;


end.

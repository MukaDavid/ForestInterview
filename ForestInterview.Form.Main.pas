unit ForestInterview.Form.Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, System.Math,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl, FMX.StdCtrls, FMX.Controls.Presentation,
  FMX.Gestures, System.Actions, FMX.ActnList, FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView, ForestInterview.Module.Main, System.Rtti, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, FMX.Layouts, FMX.DateTimeCtrls, FMX.Edit, FMX.Objects, System.ImageList, FMX.ImgList,
  FMX.StdActns, ForestInterview.Form.Parcela, ForestInterview.Form.Cubagem, ForestInterview.Helper.VertScrollBox, FMX.Colors, FMX.ListBox, System.Math.Vectors, FMX.Controls3D, FMX.Layers3D,
  FMX.Styles.Objects, Generics.collections, ForestInterview.Classe.DadosReg, ForestInterview.ControleTeclado,
  ForestInterview.Utils, ForestInterview.Helper.FDQuery, ForestInterview.Permissions,
  FMX.Effects, FMX.Filter.Effects, System.IOUtils;

type
  TFormMain = class(TForm)
    tbcColeta: TTabControl;
    TabListaColeta: TTabItem;
    TabCadColeta: TTabItem;
    GestureManager1: TGestureManager;
    ActionList1: TActionList;
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
    edtLimCapDapMin: TEdit;
    edtLimCapDapMax: TEdit;
    GroupBox6: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    edtLimAlturaMin: TEdit;
    edtLimAlturaMax: TEdit;
    Label15: TLabel;
    Action1: TAction;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    Layout5: TLayout;
    layErroAmostral: TLayout;
    rdgParcDap: TRadioButton;
    rdgParcCap: TRadioButton;
    rdgCubCap: TRadioButton;
    rdgCubDap: TRadioButton;
    Layout7: TLayout;
    edtFatorForma: TEdit;
    Label1: TLabel;
    ColorBox1: TColorBox;
    Label2: TLabel;
    ColorBox2: TColorBox;
    Layout1: TLayout;
    Layout8: TLayout;
    ColorBox3: TColorBox;
    Label3: TLabel;
    layCubagem: TLayout;
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
    Rectangle1: TRectangle;
    Layout13: TLayout;
    ImgIncColeta: TImage;
    ColorBox9: TColorBox;
    Rectangle2: TRectangle;
    Layout14: TLayout;
    Rectangle3: TRectangle;
    imgSave: TImage;
    imgCancel: TImage;
    ListBox1: TListBox;
    ListBoxItem1: TListBoxItem;
    Layout3D1: TLayout3D;
    imgDelete: TImage;
    imgParcela: TImage;
    imgCubagem: TImage;
    Image1: TImage;
    ListBoxItem2: TListBoxItem;
    Layout17: TLayout;
    ColorBox8: TColorBox;
    Label19: TLabel;
    StyleBook1: TStyleBook;
    edtErroAmostral: TEdit;
    Image2: TImage;
    RectBloqueio: TRectangle;
    MonochromeEffect: TMonochromeEffect;
    procedure FormCreate(Sender: TObject);
    procedure ImgIncColetaClick(Sender: TObject);
    procedure imgSaveClick(Sender: TObject);
    procedure imgCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure imgParcelaClick(Sender: TObject);
    procedure imgCubagemClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    FDicReg : TDicReg;
    FControleTeclado: TControleTeclado;
    procedure onEditListaClick(Sender: TObject);
    procedure SelecionarItem(pListBoxItem : TListBoxItem);
    procedure MontarListBox;
    procedure LimparListBox;
    procedure ListBoxItemGesture(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure LoadValuesToControls;
    procedure SaveValuesToDataset;
    procedure TravarSistema(pData:TDateTime);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$IF DEFINED(ANDROID)}
uses Androidapi.Jni.Os, Androidapi.Jni.JavaTypes, Androidapi.Helpers,
  Androidapi.JNI.App, FMX.Platform.Android, Androidapi.JNIBridge,
  Androidapi.JNI.GraphicsContentViewText, Androidapi.JNI.Net;
{$ENDIF}

{$R *.fmx}

procedure TFormMain.FormCreate(Sender: TObject);
begin
  TPermissions.FPermissions.RequestPermissions;

  FControleTeclado := TControleTeclado.Create(self);
  FControleTeclado.FormControle := Self;
  FControleTeclado.LayoutControle := LayoutMain;
  FControleTeclado.VerticalScrollControle := VerticalScroll;

  imgCubagem.Visible := False;

  tbcColeta.ActiveTab := TabListaColeta;
  FDicReg := TObjectDictionary<TListBoxItem,TDadosReg>.Create([doOwnsValues]);
  imgDelete.Visible := False;

end;

procedure TFormMain.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
  if Key = vkHardwareBack then
  begin
    if (tbcColeta.ActiveTab = TabCadColeta) and not (FControleTeclado.TecladoVisivel) then
    begin
      tbcColeta.Previous;
      Key := 0;
    end;
  end;
end;

procedure TFormMain.FormShow(Sender: TObject);
begin
  TravarSistema(StrToDate('05/05/2020'));
  LimparListBox;
  MontarListBox;
end;



procedure TFormMain.Image1Click(Sender: TObject);
var
  sfilename: string;
  AttachmentFile: JFile;
  Intent: JIntent;
  AddressesTo: TJavaObjectArray<JString>;
  AddressesCC, AddressesBCC: TJavaObjectArray<JString>;
  lArquivo: TStringList;
begin
  Intent := TJIntent.Create;
  Intent.setAction(TJIntent.JavaClass.ACTION_SENDTO);
  Intent.setData(TJnet_Uri.JavaClass.parse(StringToJString('mailto:')));
  AddressesTo := TJavaObjectArray<JString>.Create(1);
  AddressesTo.Items[0] := StringToJString('mukadavid@gmail.com');
  //AddressesTo.Items[1] := StringToJString('mail3@anydomain.com');
  {AddressesCC := TJavaObjectArray<JString>.Create(1);
  AddressesCC.Items[0] := StringToJString('mail4@anydomain.com');
  AddressesBCC := TJavaObjectArray<JString>.Create(1);
  AddressesBCC.Items[0] := StringToJString('mail5@anydomain.com');}
  Intent.putExtra(TJIntent.JavaClass.EXTRA_EMAIL, AddressesTo);
  //Intent.putExtra(TJIntent.JavaClass.EXTRA_CC, AddressesCC);
  //Intent.putExtra(TJIntent.JavaClass.EXTRA_BCC, AddressesBCC);
  Intent.putExtra(TJIntent.JavaClass.EXTRA_SUBJECT, StringToJString('Forest Interview'));
  Intent.putExtra(TJIntent.JavaClass.EXTRA_TEXT, StringToJString('Segue em anexo dados do Forest Interview'));
  lArquivo := TStringList.Create;
  lArquivo.Add('Campo1,Campo2,Campo3,Campo4');
  lArquivo.Add('A,B,C,D');
  lArquivo.Add('1,2,3,4');
  lArquivo.Add('João,Maria,Pedro,Ana');
  sfilename := TPath.GetTempPath+ PathDelim +'Teste.csv';
  lArquivo.SaveToFile(sfilename);
  lArquivo.Free;

  if sfilename <> '' then
  begin
    AttachmentFile := TJFile.JavaClass.init(StringToJString(sfilename));
    Intent.putExtra(TJIntent.JavaClass.EXTRA_STREAM,
      TJParcelable.Wrap((TJnet_Uri.JavaClass.fromFile(AttachmentFile)
      as ILocalObject).GetObjectID));
  end;
  SharedActivity.startActivity(Intent);
end;


procedure TFormMain.imgParcelaClick(Sender: TObject);
begin
  SaveValuesToDataset;
  ModuleMain.ListarParcela(ModuleMain.ColID);
  TFormParcela.Create(Application).Show;
end;

procedure TFormMain.ListBoxItemGesture(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  case EventInfo.GestureID of
    igiLongTap, igiDoubleTap : SelecionarItem(TListBoxItem(Sender));
  end;
end;

procedure TFormMain.LoadValuesToControls;
begin
  ModuleMain.qryColetasCad.LoadValue(rdgParcDap, 'COL_PARCELA_TIPO', 'D');
  ModuleMain.qryColetasCad.LoadValue(rdgParcCap, 'COL_PARCELA_TIPO', 'C');
  ModuleMain.qryColetasCad.LoadValue(rdgCubCap, 'COL_CUBAGEM_TIPO', 'D');
  ModuleMain.qryColetasCad.LoadValue(rdgCubDap, 'COL_CUBAGEM_TIPO', 'C');
  ModuleMain.qryColetasCad.LoadValue(edtEquipe, 'COL_EQUIPE');
  ModuleMain.qryColetasCad.LoadValue(edtFazenda, 'COL_FAZENDA');
  ModuleMain.qryColetasCad.LoadValue(edtTalhao, 'COL_TALHAO');
  ModuleMain.qryColetasCad.LoadValue(edtData, 'COL_DATA');
  ModuleMain.qryColetasCad.LoadValue(edtAreaParcela, 'COL_AREA_PARCELA');
  ModuleMain.qryColetasCad.LoadValue(edtAreaTalhao, 'COL_AREA_TALHAO');
  ModuleMain.qryColetasCad.LoadValue(edtFatorForma, 'COL_FATOR_FORMA');
  ModuleMain.qryColetasCad.LoadValue(edtLimCapDapMin, 'COL_LIM_CAPDAP_MIN');
  ModuleMain.qryColetasCad.LoadValue(edtLimCapDapMax, 'COL_LIM_CAPDAP_MAX');
  ModuleMain.qryColetasCad.LoadValue(edtLimAlturaMin, 'COL_LIM_ALT_MIN');
  ModuleMain.qryColetasCad.LoadValue(edtLimAlturaMax, 'COL_LIM_ALT_MAX');
  ModuleMain.qryColetasCad.LoadValue(edtErroAmostral, 'COL_ERRO_AMOSTRAL');
end;

procedure TFormMain.SaveValuesToDataset;
begin
  ModuleMain.qryColetasCad.SaveValue(rdgParcDap, 'COL_PARCELA_TIPO', 'D');
  ModuleMain.qryColetasCad.SaveValue(rdgParcCap, 'COL_PARCELA_TIPO', 'C');
  ModuleMain.qryColetasCad.SaveValue(rdgCubCap, 'COL_CUBAGEM_TIPO', 'D');
  ModuleMain.qryColetasCad.SaveValue(rdgCubDap, 'COL_CUBAGEM_TIPO', 'C');
  ModuleMain.qryColetasCad.SaveValue(edtEquipe, 'COL_EQUIPE');
  ModuleMain.qryColetasCad.SaveValue(edtFazenda, 'COL_FAZENDA');
  ModuleMain.qryColetasCad.SaveValue(edtTalhao, 'COL_TALHAO');
  ModuleMain.qryColetasCad.SaveValue(edtData, 'COL_DATA');
  ModuleMain.qryColetasCad.SaveValue(edtAreaParcela, 'COL_AREA_PARCELA');
  ModuleMain.qryColetasCad.SaveValue(edtAreaTalhao, 'COL_AREA_TALHAO');
  ModuleMain.qryColetasCad.SaveValue(edtFatorForma, 'COL_FATOR_FORMA');
  ModuleMain.qryColetasCad.SaveValue(EdtLimCapDapMin, 'COL_LIM_CAPDAP_MIN');
  ModuleMain.qryColetasCad.SaveValue(EdtLimCapDapMax, 'COL_LIM_CAPDAP_MAX');
  ModuleMain.qryColetasCad.SaveValue(EdtLimAlturaMin, 'COL_LIM_ALT_MIN');
  ModuleMain.qryColetasCad.SaveValue(EdtLimAlturaMax, 'COL_LIM_ALT_MAX');
  ModuleMain.qryColetasCad.SaveValue(edtErroAmostral, 'COL_ERRO_AMOSTRAL');
end;

procedure TFormMain.imgSaveClick(Sender: TObject);
begin
  ModuleMain.qryColetasCad.Edit;
  SaveValuesToDataset;

  ModuleMain.SalvarColeta;
  LimparListBox;
  MontarListBox;
  tbcColeta.Previous;
end;

procedure TFormMain.imgCancelClick(Sender: TObject);
begin
  ModuleMain.CancelarColeta;
  tbcColeta.Previous;
end;

procedure TFormMain.imgCubagemClick(Sender: TObject);
begin
  ModuleMain.ListarCubagem;
  TformCubagem.Create(Application).Show;
end;

procedure TFormMain.ImgIncColetaClick(Sender: TObject);
begin
  ModuleMain.IncluirColeta;

  rdgParcDap.IsChecked := False;
  rdgParcCap.IsChecked := False;
  rdgCubCap.IsChecked := False;
  rdgCubDap.IsChecked := False;
  LoadValuesToControls;

  tbcColeta.Next;
end;

procedure TFormMain.onEditListaClick(Sender: TObject);
var
  lListBoxItem : TListBoxItem;
begin
  lListBoxItem := TListBoxItem(TComponent(Sender).Tag);

  if ModuleMain.EditarColeta(FDicReg.Items[lListBoxItem].ID) then
  begin
    tbcColeta.Next;
    LoadValuesToControls;
  end;
end;

procedure TFormMain.SelecionarItem(pListBoxItem : TListBoxItem);
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


procedure TFormMain.TravarSistema(pData: TDateTime);
begin
  if pData <= Date then
  begin
    RectBloqueio.Visible := True;
    MonochromeEffect.Enabled := True;
  end;

end;

procedure TFormMain.MontarListBox;
var
  lListBoxItem: TListBoxItem;
  lDadosReg: TDadosReg;
begin
  ListBox1.BeginUpdate;
  ModuleMain.qryColetasList.First;
  while not ModuleMain.qryColetasList.Eof do
  begin
    lListBoxItem := TListBoxItem.Create(ListBox1);
    lListBoxItem.Touch.InteractiveGestures := [TInteractiveGesture.LongTap];
    lListBoxItem.OnGesture := ListBoxItemGesture;

    lListBoxItem.Visible := True;
    lListBoxItem.Enabled := True;
    lListBoxItem.Height := 54;
    lListBoxItem.StyleLookup := 'ListBox1Style1';
    lListBoxItem.StylesData['stlEdit.Onclick'] := TValue.From<TNotifyEvent>(onEditListaClick);
    lListBoxItem.StylesData['stlEdit.Tag'] := Integer(lListBoxItem);

    lListBoxItem.StylesData['stlFazenda'] := ModuleMain.qryColetasList.FieldByName('COL_FAZENDA').AsString;
    lListBoxItem.StylesData['stlEquipe']  := ModuleMain.qryColetasList.FieldByName('COL_EQUIPE').AsString;
    lListBoxItem.StylesData['stlTalhao']  := ModuleMain.qryColetasList.FieldByName('COL_TALHAO').AsString;
    lListBoxItem.StylesData['stlData']    := formatDateTime('dd/mm/yyyy', ModuleMain.qryColetasList.FieldByName('COL_DATA').AsDateTime);
    lListBoxItem.StylesData['ImgSel.Visible'] := TValue.From<Boolean>(False);

    ListBox1.AddObject(lListBoxItem);

    FDicReg.New(lListBoxItem, ModuleMain.qryColetasList.FieldByName('COL_ID').AsInteger);
    ModuleMain.qryColetasList.Next;
  end;
  ListBox1.EndUpdate;
end;

procedure TFormMain.LimparListBox;
begin
  FDicReg.Clear;
  ListBox1.Clear;
end;

end.

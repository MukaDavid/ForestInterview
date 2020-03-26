unit ForestInterview.Form.Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, System.Math,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl, FMX.StdCtrls, FMX.Controls.Presentation,
  FMX.Gestures, System.Actions, FMX.ActnList, FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView, ForestInterview.Module.Main, System.Rtti, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, FMX.Layouts, FMX.DateTimeCtrls, FMX.Edit, FMX.Objects, System.ImageList, FMX.ImgList,
  FMX.StdActns, ForestInterview.Form.Parcela, ForestInterview.Form.Cubagem, ForestInterview.Helper.VertScrollBox, FMX.Colors, FMX.ListBox, System.Math.Vectors, FMX.Controls3D, FMX.Layers3D,
  FMX.Styles.Objects, Generics.collections, ForestInterview.Classe.DadosReg, ForestInterview.ControleTeclado,
  ForestInterview.Utils;

type
  TFormMain = class(TForm)
    tbcColeta: TTabControl;
    TabListaColeta: TTabItem;
    ToolBar1: TToolBar;
    TabCadColeta: TTabItem;
    GestureManager1: TGestureManager;
    ActionList1: TActionList;
    BindColetaCad: TBindSourceDB;
    BindingsList1: TBindingsList;
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
    ListBox1: TListBox;
    StyleBook1: TStyleBook;
    ListBoxItem1: TListBoxItem;
    Layout3D1: TLayout3D;
    StyleTextObject1: TStyleTextObject;
    imgDelete: TImage;
    imgParcela: TImage;
    imgCubagem: TImage;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure ImgIncColetaClick(Sender: TObject);
    procedure imgSaveClick(Sender: TObject);
    procedure imgCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure layoutimgBtnClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure imgParcelaClick(Sender: TObject);
    procedure imgCubagemClick(Sender: TObject);
  private
    FDicReg : TDicReg;
    FControleTeclado: TControleTeclado;
    procedure onEditListaClick(Sender: TObject);
    procedure SelecionarItem(pListBoxItem : TListBoxItem);
    procedure rgdSave(pRdg: TRadioButton; pFieldName, pValue: string);
    procedure rgdEdit(pRdg: TRadioButton; pFieldName, pValue: string);
    procedure MontarListBox;
    procedure LimparListBox;
    procedure ListBoxItemGesture(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.fmx}

procedure TFormMain.FormCreate(Sender: TObject);
begin
  FControleTeclado := TControleTeclado.Create(self);
  FControleTeclado.FormControle := Self;
  FControleTeclado.LayoutControle := LayoutMain;
  FControleTeclado.VerticalScrollControle := VerticalScroll;

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
  LimparListBox;
  MontarListBox;
end;

procedure TFormMain.imgParcelaClick(Sender: TObject);
begin
  ModuleMain.ListarParcela;
  TFormParcela.Create(Application).Show;
end;

procedure TFormMain.ListBoxItemGesture(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  case EventInfo.GestureID of
    igiLongTap : SelecionarItem(TListBoxItem(Sender));
  end;
end;

procedure TFormMain.imgSaveClick(Sender: TObject);
begin
  rgdSave(rdgParcDap,'COL_PARCELA_TIPO','D');
  rgdSave(rdgParcCap,'COL_PARCELA_TIPO','C');
  rgdSave(rdgCubCap,'COL_CUBAGEM_TIPO','D');
  rgdSave(rdgCubDap,'COL_CUBAGEM_TIPO','C');

  ModuleMain.SalvarColeta;
  LimparListBox;
  MontarListBox;
  tbcColeta.ActiveTab := TabListaColeta;
end;

procedure TFormMain.layoutimgBtnClick(Sender: TObject);
begin
  ShowMessage('Teste');
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

  tbcColeta.ActiveTab := TabCadColeta;
end;

procedure TFormMain.onEditListaClick(Sender: TObject);
var
  lListBoxItem : TListBoxItem;
begin
  if Sender is TListBoxItem then
    lListBoxItem := TListBoxItem(Sender)
  else
    lListBoxItem := TListBoxItem(TComponent(Sender).Tag);

  if ModuleMain.EditarColeta(FDicReg.Items[lListBoxItem].ID) then
  begin
    tbcColeta.Next;

    rgdEdit(rdgParcDap,'COL_PARCELA_TIPO','D');
    rgdEdit(rdgParcCap,'COL_PARCELA_TIPO','C');
    rgdEdit(rdgCubCap,'COL_CUBAGEM_TIPO','D');
    rgdEdit(rdgCubDap,'COL_CUBAGEM_TIPO','C');
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


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
  FMX.Effects, FMX.Filter.Effects, System.IOUtils, FMX.DialogService;

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
    lbxColeta: TListBox;
    ListBoxItem1: TListBoxItem;
    Layout3D1: TLayout3D;
    imgDeleteCol: TImage;
    imgParcela: TImage;
    imgCubagem: TImage;
    imgExportar: TImage;
    ListBoxItem2: TListBoxItem;
    Layout17: TLayout;
    StyleBook1: TStyleBook;
    edtErroAmostral: TEdit;
    Image2: TImage;
    RectBloqueio: TRectangle;
    MonochromeEffect: TMonochromeEffect;
    TabListaParcela: TTabItem;
    Rectangle4: TRectangle;
    lblParcelas: TLabel;
    lbxParcela: TListBox;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    Layout6: TLayout;
    Rectangle5: TRectangle;
    imgIncParcela: TImage;
    imgDeletePar: TImage;
    Layout9: TLayout;
    ColorBox10: TColorBox;
    Label17: TLabel;
    lblFazendaParc: TLabel;
    lblTalhaoParc: TLabel;
    Label21: TLabel;
    ColorBox8: TColorBox;
    Label19: TLabel;
    imgVoltar: TImage;
    Layout15: TLayout;
    imgCancelSelCol: TImage;
    imgCancelSelPar: TImage;
    lblValidade: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure ImgIncColetaClick(Sender: TObject);
    procedure imgSaveClick(Sender: TObject);
    procedure imgCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure imgParcelaClick(Sender: TObject);
    procedure imgCubagemClick(Sender: TObject);
    procedure imgExportarClick(Sender: TObject);
    procedure lbxColetaItemClick(const Sender: TCustomListBox; const Item: TListBoxItem);
    procedure imgIncParcelaClick(Sender: TObject);
    procedure lbxParcelaItemClick(const Sender: TCustomListBox; const Item: TListBoxItem);
    procedure imgVoltarClick(Sender: TObject);
    procedure tbcColetaChange(Sender: TObject);
    procedure lbxColetaGesture(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure imgDeleteColClick(Sender: TObject);
    procedure imgDeleteParClick(Sender: TObject);
    procedure imgCancelSelColClick(Sender: TObject);
    procedure imgCancelSelParClick(Sender: TObject);
    procedure lbxParcelaGesture(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
  private
    FDicRegColeta : TDicReg;
    FDicRegParcela : TDicReg;
    FControleTeclado: TControleTeclado;
    FLongTapCol: Boolean;
    FLongTapPar: Boolean;
    procedure SelecionarItem(pDicReg: TDicReg; pListBoxItem : TListBoxItem);
    procedure MontarListBoxColeta;
    procedure LimparListBoxColeta;
    procedure MontarListBoxParcela;
    procedure LimparListBoxParcela;
    procedure ListBoxItemGestureColeta(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure ListBoxItemGestureParcela(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
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
  FDicRegColeta := TObjectDictionary<TListBoxItem,TDadosReg>.Create([doOwnsValues]);
  FDicRegParcela := TObjectDictionary<TListBoxItem,TDadosReg>.Create([doOwnsValues]);
  imgDeleteCol.Visible := False;
  imgDeletePar.Visible := False;
  imgCancelSelCol.Visible := False;
  imgCancelSelPar.Visible := False;
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
  lblValidade.Text := '';
  TravarSistema(StrToDate('10/06/2020'));
  LimparListBoxColeta;
  MontarListBoxColeta;
end;



procedure TFormMain.imgCancelSelColClick(Sender: TObject);
begin
  for var lReg in FDicRegColeta do
  begin
    if lReg.Value.Check then
      SelecionarItem(FDicRegColeta,lReg.Key);
  end;
  imgDeleteCol.Visible := FDicRegColeta.CountCheck > 0;
  imgCancelSelCol.Visible := FDicRegColeta.CountCheck > 0;
end;

procedure TFormMain.imgCancelSelParClick(Sender: TObject);
begin
  for var lReg in FDicRegParcela do
  begin
    if lReg.Value.Check then
      SelecionarItem(FDicRegParcela,lReg.Key);
  end;
  imgDeletePar.Visible := FDicRegParcela.CountCheck > 0;
  imgCancelSelPar.Visible := FDicRegParcela.CountCheck > 0;
end;

procedure TFormMain.imgExportarClick(Sender: TObject);
{$IF DEFINED(ANDROID)}
var
  Intent: JIntent;
  lUriZip: Jnet_Uri;
  lAttachmentFileZip: JFile;
{$ENDIF}
begin
{$IF DEFINED(ANDROID)}
  Intent := TJIntent.Create;
  Intent.setAction(TJIntent.JavaClass.ACTION_SENDTO);
  Intent.setData(TJnet_Uri.JavaClass.parse(StringToJString('mailto:')));
  var AddressesTo := TJavaObjectArray<JString>.Create(1);
  AddressesTo.Items[0] := StringToJString('mukadavid@gmail.com');
  Intent.putExtra(TJIntent.JavaClass.EXTRA_EMAIL, AddressesTo);
  Intent.putExtra(TJIntent.JavaClass.EXTRA_SUBJECT, StringToJString('Forest Interview'));
  Intent.putExtra(TJIntent.JavaClass.EXTRA_TEXT, StringToJString('Segue em anexo dados do Forest Interview'));

  ModuleMain.ExportarDados;

  var lArqZip := TPath.GetTempPath+PathDelim+'DadosColetados.zip';
  lAttachmentFileZip := TJFile.JavaClass.init(StringToJString(lArqZip));
  lUriZip := TJnet_Uri.JavaClass.fromFile(lAttachmentFileZip);
  Intent.putExtra(TJIntent.JavaClass.EXTRA_STREAM,TJParcelable.Wrap(
                 (lUriZip as ILocalObject).GetObjectID));


  TAndroidHelper.Activity.startActivity(Intent);

{$ENDIF}
end;


procedure TFormMain.imgIncParcelaClick(Sender: TObject);
begin
  SaveValuesToDataset;
  ModuleMain.IncluirParcela(ModuleMain.ColID);
  TFormParcela.Create(Application).ShowModal(
    procedure(ModalResult: TModalResult)
    begin
      ModuleMain.ListarParcela(ModuleMain.ColID);
      LimparListBoxParcela;
      MontarListBoxParcela;
    end);
end;

procedure TFormMain.imgParcelaClick(Sender: TObject);
begin
  tbcColeta.GotoVisibleTab(TabListaParcela.Index);
end;

procedure TFormMain.lbxColetaGesture(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  if EventInfo.GestureID = igiLongTap then
  begin
    for var li := 0 to lbxColeta.Items.Count - 1 do
      if lbxColeta.ListItems[li].IsSelected then
      begin
        SelecionarItem(FDicRegColeta,lbxColeta.ListItems[li]);
        imgDeleteCol.Visible := FDicRegColeta.CountCheck > 0;
        imgCancelSelCol.Visible := FDicRegColeta.CountCheck > 0;
        FLongTapCol := True;
      end;
  end;
end;

procedure TFormMain.lbxColetaItemClick(const Sender: TCustomListBox; const Item: TListBoxItem);
begin
  if (lbxColeta.Items.Count > 0) and not FLongTapCol then
  begin
    if FDicRegColeta.CountCheck > 0 then
    begin
      SelecionarItem(FDicRegColeta,Item);
      imgDeleteCol.Visible := FDicRegColeta.CountCheck > 0;
      imgCancelSelCol.Visible := FDicRegColeta.CountCheck > 0;
    end else begin
      if ModuleMain.EditarColeta(FDicRegColeta.Items[Item].ID) then
      begin
        tbcColeta.GotoVisibleTab(TabCadColeta.Index);
        LoadValuesToControls;
      end;
    end;
  end;
  FLongTapCol := False;
end;

procedure TFormMain.lbxParcelaGesture(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  if EventInfo.GestureID = igiLongTap then
  begin
    for var li := 0 to lbxParcela.Items.Count - 1 do
      if lbxParcela.ListItems[li].IsSelected then
      begin
        SelecionarItem(FDicRegParcela,lbxParcela.ListItems[li]);
        imgDeletePar.Visible := FDicRegParcela.CountCheck > 0;
        imgCancelSelPar.Visible := FDicRegParcela.CountCheck > 0;
        FLongTapPar := True;
      end;
  end;
end;

procedure TFormMain.lbxParcelaItemClick(const Sender: TCustomListBox; const Item: TListBoxItem);
begin
  if (lbxParcela.Items.Count > 0) and not FLongTapPar then
  begin
    if FDicRegParcela.CountCheck > 0 then
    begin
      SelecionarItem(FDicRegParcela,Item);
      imgDeletePar.Visible := FDicRegParcela.CountCheck > 0;
      imgCancelSelPar.Visible := FDicRegParcela.CountCheck > 0;
    end else begin
      if ModuleMain.EditarParcela(FDicRegParcela.Items[Item].ID) then
      begin
        TFormParcela.Create(Application).ShowModal(
        procedure(ModalResult: TModalResult)
        begin
          ModuleMain.ListarParcela(ModuleMain.ColID);
          LimparListBoxParcela;
          MontarListBoxParcela;
        end);
      end;
    end;
  end;
  FLongTapPar := False;
end;

procedure TFormMain.ListBoxItemGestureColeta(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  case EventInfo.GestureID of
    igiLongTap, igiDoubleTap : begin
      SelecionarItem(FDicRegColeta,TListBoxItem(Sender));
      imgDeleteCol.Visible := FDicRegColeta.CountCheck > 0;
      imgCancelSelCol.Visible := FDicRegColeta.CountCheck > 0;
    end;
  end;
end;

procedure TFormMain.ListBoxItemGestureParcela(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  case EventInfo.GestureID of
    igiLongTap, igiDoubleTap : begin
      SelecionarItem(FDicRegParcela,TListBoxItem(Sender));
      imgDeletePar.Visible := FDicRegParcela.CountCheck > 0;
      imgCancelSelPar.Visible := FDicRegParcela.CountCheck > 0;
    end;
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

  ModuleMain.ListarParcela(ModuleMain.ColID);

end;

procedure TFormMain.SaveValuesToDataset;
begin
  ModuleMain.qryColetasCad.Edit;
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
  ModuleMain.SalvarColeta;
end;

procedure TFormMain.imgSaveClick(Sender: TObject);
begin
  SaveValuesToDataset;
  LimparListBoxColeta;
  MontarListBoxColeta;
  tbcColeta.Previous;
end;

procedure TFormMain.imgVoltarClick(Sender: TObject);
begin
  tbcColeta.GotoVisibleTab(TabCadColeta.Index);
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

procedure TFormMain.imgDeleteColClick(Sender: TObject);
begin
  if FDicRegColeta.CountCheck = 1 then
  begin
    if ModuleMain.qryColetasList.Locate('COL_ID',FDicRegColeta.Selecionado.ID,[]) then
    begin
      TDialogService.MessageDialog('Excluir este registro?'+sLineBreak+
                                   'Fazenda: '+ModuleMain.qryColetasList.FieldByName('COL_FAZENDA').AsString+sLineBreak+
                                   'Talhão: '+ModuleMain.qryColetasList.FieldByName('COL_TALHAO').AsString,
                                   TMsgDlgType.mtConfirmation,[TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], TMsgDlgBtn.mbNo, 0,
                                   procedure(const AResult: TModalResult)
                                   begin
                                     if AResult = mrYes then
                                     begin
                                       ModuleMain.ExcluirColeta(FDicRegColeta.Selecionado.ID);
                                       LimparListBoxColeta;
                                       MontarListBoxColeta;
                                     end;
                                   end);
    end;
  end;

  if FDicRegColeta.CountCheck > 1 then
  begin
    TDialogService.MessageDialog('Excluir os '+ FDicRegColeta.CountCheck.ToString+' registros selecionados?',
                                 TMsgDlgType.mtConfirmation,[TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], TMsgDlgBtn.mbNo,0,
                                 procedure(const AResult: TModalResult)
                                 begin
                                   if AResult = mrYes then
                                   begin
                                     for var lItem in FDicRegColeta.Values do
                                     begin
                                       if lItem.Check then
                                         ModuleMain.ExcluirColeta(lItem.ID);
                                     end;
                                     LimparListBoxColeta;
                                     MontarListBoxColeta;
                                   end;
                                 end);
  end;
end;

procedure TFormMain.imgDeleteParClick(Sender: TObject);
begin
  if FDicRegParcela.CountCheck = 1 then
  begin
    if ModuleMain.qryParcelaList.Locate('PAR_ID',FDicRegParcela.Selecionado.ID,[]) then
    begin
      TDialogService.MessageDialog('Excluir este registro?'+sLineBreak+
                                   'Parcela: '+ModuleMain.qryParcelaList.FieldByName('PAR_NOME').AsString,
                                   TMsgDlgType.mtConfirmation,[TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], TMsgDlgBtn.mbNo, 0,
                                   procedure(const AResult: TModalResult)
                                   begin
                                     if AResult = mrYes then
                                     begin
                                       ModuleMain.ExcluirParcela(FDicRegParcela.Selecionado.ID);
                                       LimparListBoxParcela;
                                       MontarListBoxColeta;
                                     end;
                                   end);
    end;
  end;

  if FDicRegParcela.CountCheck > 1 then
  begin
    TDialogService.MessageDialog('Excluir os '+ FDicRegParcela.CountCheck.ToString+' registros selecionados?',
                                 TMsgDlgType.mtConfirmation,[TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], TMsgDlgBtn.mbNo,0,
                                 procedure(const AResult: TModalResult)
                                 begin
                                   if AResult = mrYes then
                                   begin
                                     for var lItem in FDicRegParcela.Values do
                                     begin
                                       if lItem.Check then
                                         ModuleMain.ExcluirParcela(lItem.ID);
                                     end;
                                     LimparListBoxParcela;
                                     MontarListBoxParcela;
                                   end;
                                 end);
  end;
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

procedure TFormMain.SelecionarItem(pDicReg: TDicReg; pListBoxItem : TListBoxItem);
begin
  if not pDicReg.Items[pListBoxItem].Check then
  begin
    pListBoxItem.StylesData['stlColor.Fill.Color'] := TValue.From<TAlphaColor>(TAlphaColorRec.Papayawhip);
    pListBoxItem.StylesData['ImgSel.Visible'] := TValue.From<Boolean>(True);
    pDicReg.Items[pListBoxItem].Check := True;
  end else begin
    pListBoxItem.StylesData['stlColor.Fill.Color'] := TValue.From<TAlphaColor>(TAlphaColorRec.White);
    pListBoxItem.StylesData['ImgSel.Visible'] := TValue.From<Boolean>(False);
    pDicReg.Items[pListBoxItem].Check := False;
  end;
  TUtils.Vibrar(50);

end;


procedure TFormMain.tbcColetaChange(Sender: TObject);
begin
  if tbcColeta.ActiveTab = TabListaParcela then
  begin
    lblFazendaParc.Text := edtFazenda.Text;
    lblTalhaoParc.Text := edtTalhao.Text;
    LimparListBoxParcela;
    MontarListBoxParcela;
  end;
end;

procedure TFormMain.TravarSistema(pData: TDateTime);
begin
  lblValidade.Text := 'Validade: '+FormatDateTime('DD/MM/YYYY',pData);
  if pData <= Date then
  begin
    RectBloqueio.Visible := True;
    MonochromeEffect.Enabled := True;
  end;

end;

procedure TFormMain.MontarListBoxColeta;
var
  lListBoxItem: TListBoxItem;
  lDadosReg: TDadosReg;
begin
  lbxColeta.BeginUpdate;
  ModuleMain.qryColetasList.First;
  while not ModuleMain.qryColetasList.Eof do
  begin
    lListBoxItem := TListBoxItem.Create(lbxColeta);
    lListBoxItem.Touch.InteractiveGestures := [TInteractiveGesture.LongTap];
    lListBoxItem.OnGesture := ListBoxItemGestureColeta;

    lListBoxItem.Visible := True;
    lListBoxItem.Enabled := True;
    lListBoxItem.Height := 54;
    lListBoxItem.StyleLookup := 'ListBoxColeta';

    lListBoxItem.StylesData['stlFazenda'] := ModuleMain.qryColetasList.FieldByName('COL_FAZENDA').AsString;
    lListBoxItem.StylesData['stlEquipe']  := ModuleMain.qryColetasList.FieldByName('COL_EQUIPE').AsString;
    lListBoxItem.StylesData['stlTalhao']  := ModuleMain.qryColetasList.FieldByName('COL_TALHAO').AsString;
    lListBoxItem.StylesData['stlData']    := formatDateTime('dd/mm/yyyy', ModuleMain.qryColetasList.FieldByName('COL_DATA').AsDateTime);
    lListBoxItem.StylesData['ImgSel.Visible'] := TValue.From<Boolean>(False);

    lbxColeta.AddObject(lListBoxItem);

    FDicRegColeta.New(lListBoxItem, ModuleMain.qryColetasList.FieldByName('COL_ID').AsInteger);
    ModuleMain.qryColetasList.Next;
  end;
  lbxColeta.EndUpdate;
end;

procedure TFormMain.MontarListBoxParcela;
var
  lListBoxItem: TListBoxItem;
  lDadosReg: TDadosReg;
begin
  lbxParcela.BeginUpdate;
  ModuleMain.qryParcelaList.First;
  while not ModuleMain.qryParcelaList.Eof do
  begin
    lListBoxItem := TListBoxItem.Create(lbxParcela);
    lListBoxItem.Touch.InteractiveGestures := [TInteractiveGesture.LongTap];
    lListBoxItem.OnGesture := ListBoxItemGestureParcela;

    lListBoxItem.Visible := True;
    lListBoxItem.Enabled := True;
    lListBoxItem.Height := 35;
    lListBoxItem.StyleLookup := 'ListBoxParcela';

    if ModuleMain.qryParcelaList.FieldByName('PAR_NOME').AsString <> '' then
      lListBoxItem.StylesData['stlParcela'] := ModuleMain.qryParcelaList.FieldByName('PAR_NOME').AsString
    else
      lListBoxItem.StylesData['stlParcela'] := '<Sem Nome>';

    lListBoxItem.StylesData['ImgSel.Visible'] := TValue.From<Boolean>(False);

    lbxParcela.AddObject(lListBoxItem);

    FDicRegParcela.New(lListBoxItem, ModuleMain.qryParcelaList.FieldByName('PAR_ID').AsInteger);
    ModuleMain.qryParcelaList.Next;
  end;
  lbxParcela.EndUpdate;
end;

procedure TFormMain.LimparListBoxColeta;
begin
  FDicRegColeta.Clear;
  lbxColeta.Clear;
end;

procedure TFormMain.LimparListBoxParcela;
begin
  FDicRegParcela.Clear;
  lbxParcela.Clear;
end;

end.

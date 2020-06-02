unit ForestInterview.Form.Parcela;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, ForestInterview.ControleTeclado,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, ForestInterview.Module.Main, FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components, Data.Bind.DBScope, FMX.StdCtrls, FMX.Layouts, FMX.ListView, FMX.Edit, FMX.TabControl,
  FMX.Controls.Presentation, System.ImageList, FMX.ImgList, FMX.Header, System.Actions, FMX.ActnList, FMX.StdActns, FMX.Colors, FMX.Objects, System.Sensors, System.Sensors.Components,
  FMX.ListBox, ForestInterview.Classe.DadosReg, Generics.collections, ForestInterview.Utils, System.Math, FMX.ScrollBox,
  FMX.Memo, ForestInterview.Helper.FDQuery, FMX.Effects, ForestInterview.Permissions, System.Permissions,
  FMX.Memo.Types, FMX.DialogService, Data.DB;

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
    LayAltura: TLayout;
    LayDapCap: TLayout;
    edtTronco: TEdit;
    Label21: TLabel;
    grpSanidade: TGroupBox;
    rdgMorta: TRadioButton;
    rdgDoente: TRadioButton;
    rdgSaudavel: TRadioButton;
    grpBifurcacaoAcima: TGroupBox;
    rdgBifurcAcimaNao: TRadioButton;
    rdgBifurcAcimaSim: TRadioButton;
    grpPonta: TGroupBox;
    rgdPontaSeca: TRadioButton;
    rdgPontaNormal: TRadioButton;
    rdgPontaQueb: TRadioButton;
    grpSinuosidade: TGroupBox;
    rdgSinSinuosa: TRadioButton;
    rdgSinReta: TRadioButton;
    grpOutros: TGroupBox;
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
    imgDeleteArv: TImage;
    imgVoltar: TImage;
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
    imgCoordenadas: TImage;
    Label15: TLabel;
    lblFazenda: TLabel;
    lblTalhao: TLabel;
    Label19: TLabel;
    grpObservacao: TGroupBox;
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
    Layout10: TLayout;
    Layout13: TLayout;
    grpNormal: TGroupBox;
    rdgNormalNao: TRadioButton;
    rdgNormalSim: TRadioButton;
    rdgFalha: TRadioButton;
    Layout18: TLayout;
    ColorBox11: TColorBox;
    Label1: TLabel;
    LayDetalhes: TLayout;
    cbxUltimaFila: TCheckBox;
    imgCancelSelArv: TImage;
    ColorBox12: TColorBox;
    Label10: TLabel;
    Layout16: TLayout;
    Label16: TLabel;
    cbxFiltro: TComboBox;
    grpBifurcacaoAbaixo: TGroupBox;
    rdgBifurcAbaixoNao: TRadioButton;
    rdgBifurcAbaixoSim: TRadioButton;
    Layout19: TLayout;
    ColorBox13: TColorBox;
    Label17: TLabel;
    lbxArvoreCad: TListBox;
    lbiNormal: TListBoxItem;
    lbiBifurcAbaixa: TListBoxItem;
    lbiMedidas: TListBoxItem;
    lbiDetalhes: TListBoxItem;
    lbiOutros: TListBoxItem;
    lbiObservacao: TListBoxItem;
    corMedidas: TColorBox;
    ColorBox14: TColorBox;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImgIncParcelaClick(Sender: TObject);
    procedure imgCancelClick(Sender: TObject);
    procedure imgSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure imgVoltarClick(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure lbxParcelaItemClick(const Sender: TCustomListBox; const Item: TListBoxItem);
    procedure rdgNormalNaoChange(Sender: TObject);
    procedure rdgNormalSimChange(Sender: TObject);
    procedure rdgFalhaChange(Sender: TObject);
    procedure imgDeleteArvClick(Sender: TObject);
    procedure lbxParcelaGesture(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure imgCancelSelArvClick(Sender: TObject);
    procedure cbxFiltroChange(Sender: TObject);
  private
    FDicReg : TObjectDictionary<TListBoxItem,TDadosReg>;
    FControleTeclado: TControleTeclado;
    FLongTap : boolean;
    procedure MontarListBox;
    procedure ListBoxItemGesture(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure SelecionarItem(pListBoxItem: TListBoxItem);
    procedure LimparListBox;
    procedure LoadValuesToControls;
    procedure SalvarParcela;
    procedure SaveValuesToDataset;
    procedure LimparControlesArvore;
    procedure AjustarExibicaoDeLayouts;
    procedure CriarItemNoListBox;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormParcela: TFormParcela;

implementation

{$R *.fmx}

procedure TFormParcela.cbxFiltroChange(Sender: TObject);
begin
  MontarListBox;
end;

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
  imgDeleteArv.Visible := False;
  imgCancelSelArv.Visible := False;
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
  ModuleMain.ListarArvore(ModuleMain.ParID);

  MontarListBox;


  ModuleMain.qryParcelaCad.LoadValue(edtParcela,'PAR_NOME');
  ModuleMain.qryParcelaCad.LoadValue(edtLog,'PAR_LONGITUDE');
  ModuleMain.qryParcelaCad.LoadValue(edtLat,'PAR_LATITUDE');
  ModuleMain.qryColetasCad.LoadValue(lblFazenda,'COL_FAZENDA');
  ModuleMain.qryColetasCad.LoadValue(lblTalhao,'COL_TALHAO');

end;

procedure TFormParcela.imgVoltarClick(Sender: TObject);
begin
  if (ModuleMain.qryParcelaCad.State <> dsInsert) or
     (edtParcela.Text <> '') or
     not (ModuleMain.qryArvoreList.IsEmpty) then
  begin
    SalvarParcela;
  end;
  Close;
end;

procedure TFormParcela.lbxParcelaGesture(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  if EventInfo.GestureID = igiLongTap then
  begin
    for var li := 0 to lbxParcela.Items.Count - 1 do
      if lbxParcela.ListItems[li].IsSelected then
      begin
        SelecionarItem(lbxParcela.ListItems[li]);
        imgDeleteArv.Visible := FDicReg.CountCheck > 0;
        imgCancelSelArv.Visible := FDicReg.CountCheck > 0;
        FLongTap := True;
      end;
  end;
end;

procedure TFormParcela.lbxParcelaItemClick(const Sender: TCustomListBox; const Item: TListBoxItem);
begin
  if (lbxParcela.Items.Count > 0) and not FLongTap then
  begin
    if FDicReg.CountCheck > 0 then
    begin
      SelecionarItem(Item);
      imgDeleteArv.Visible := FDicReg.CountCheck > 0;
    end else begin
      if ModuleMain.EditarArvore(FDicReg.Items[Item].ID)then
      begin
        LoadValuesToControls;
        tbcParcela.Next;
      end;
    end;
  end;
  FLongTap := False;
end;

procedure TFormParcela.Image2Click(Sender: TObject);
begin
  //edtLog.Text := FloatToStr(RoundTo(LocationSensor1.Sensor.Latitude,-5));
  //edtLat.Text := FloatToStr(RoundTo(LocationSensor1.Sensor.Longitude,-5));
  edtLog.Text := FloatToStr(LocationSensor1.Sensor.Latitude);
  edtLat.Text := FloatToStr(LocationSensor1.Sensor.Longitude);

end;

procedure TFormParcela.imgCancelClick(Sender: TObject);
begin
  ModuleMain.CancelarParcela;
  tbcParcela.Previous;
end;

procedure TFormParcela.imgCancelSelArvClick(Sender: TObject);
begin
  for var lReg in FDicReg do
  begin
    if lReg.Value.Check then
      SelecionarItem(lReg.Key);
  end;
  imgDeleteArv.Visible := FDicReg.CountCheck > 0;
  imgCancelSelArv.Visible := FDicReg.CountCheck > 0;
end;

procedure TFormParcela.imgDeleteArvClick(Sender: TObject);
begin
  if FDicReg.CountCheck = 1 then
  begin
    if ModuleMain.qryArvoreList.Locate('ARV_ID',FDicReg.Selecionado.ID,[]) then
    begin
      TDialogService.MessageDialog('Excluir este registro?'+sLineBreak+
                                   'Arvore: '+ModuleMain.qryArvoreList.FieldByName('ARV_NUMERO').AsString,
                                   TMsgDlgType.mtConfirmation,[TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], TMsgDlgBtn.mbNo, 0,
                                   procedure(const AResult: TModalResult)
                                   begin
                                     if AResult = mrYes then
                                     begin
                                       ModuleMain.ExcluirArvore(FDicReg.Selecionado.ID);
                                       ModuleMain.ListarArvore(ModuleMain.ParID);
                                       MontarListBox;
                                     end;
                                   end);
    end;
  end;

  if FDicReg.CountCheck > 1 then
  begin
    TDialogService.MessageDialog('Excluir os '+ FDicReg.CountCheck.ToString+' registros selecionados?',
                                 TMsgDlgType.mtConfirmation,[TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], TMsgDlgBtn.mbNo,0,
                                 procedure(const AResult: TModalResult)
                                 begin
                                   if AResult = mrYes then
                                   begin
                                     for var lDadosReg in FDicReg.Values do
                                     begin
                                       if lDadosReg.Check then
                                         ModuleMain.ExcluirArvore(lDadosReg.ID);
                                     end;
                                     ModuleMain.ListarArvore(ModuleMain.ParID);
                                     MontarListBox;
                                   end;
                                 end);
  end;

end;

procedure TFormParcela.ImgIncParcelaClick(Sender: TObject);
begin
  SalvarParcela;

  ModuleMain.IncluirArvore(ModuleMain.ParID);
  tbcParcela.Next;

  LoadValuesToControls;
end;

procedure TFormParcela.SaveValuesToDataset;
begin
  ModuleMain.qryArvoreCad.Edit;
  ModuleMain.qryArvoreCad.SaveValue(rdgNormalSim,'ARV_NORMAL','S');
  ModuleMain.qryArvoreCad.SaveValue(rdgNormalNao,'ARV_NORMAL','N');
  ModuleMain.qryArvoreCad.SaveValue(rdgFalha,'ARV_NORMAL','F');

  ModuleMain.qryArvoreCad.SaveValue(rdgSinSinuosa,'ARV_SINUOSIDADE','S');
  ModuleMain.qryArvoreCad.SaveValue(rdgSinReta,'ARV_SINUOSIDADE','R');
  ModuleMain.qryArvoreCad.SaveValue(rdgPontaQueb,'ARV_PONTA','Q');
  ModuleMain.qryArvoreCad.SaveValue(rdgPontaNormal,'ARV_PONTA','N');
  ModuleMain.qryArvoreCad.SaveValue(rgdPontaSeca,'ARV_PONTA','S');
  ModuleMain.qryArvoreCad.SaveValue(rdgSaudavel,'ARV_SANIDADE','S');
  ModuleMain.qryArvoreCad.SaveValue(rdgDoente,'ARV_SANIDADE','D');
  ModuleMain.qryArvoreCad.SaveValue(rdgMorta,'ARV_SANIDADE','M');
  ModuleMain.qryArvoreCad.SaveValue(rdgBifurcAbaixoSim, 'ARV_BIFURCACAO_ABAIXO', 'S');
  ModuleMain.qryArvoreCad.SaveValue(rdgBifurcAbaixoNao, 'ARV_BIFURCACAO_ABAIXO', 'N');
  ModuleMain.qryArvoreCad.SaveValue(rdgBifurcAcimaSim,'ARV_BIFURCACAO_ACIMA','S');
  ModuleMain.qryArvoreCad.SaveValue(rdgBifurcAcimaNao,'ARV_BIFURCACAO_ACIMA','N');
  ModuleMain.qryArvoreCad.SaveValue(rdgOutros1,'ARV_OUTROS','1');
  ModuleMain.qryArvoreCad.SaveValue(rdgOutros2,'ARV_OUTROS','2');
  ModuleMain.qryArvoreCad.SaveValue(rdgOutros3,'ARV_OUTROS','3');

  ModuleMain.qryArvoreCad.SaveValue(edtArvore,'ARV_NUMERO');
  ModuleMain.qryArvoreCad.SaveValue(edtFila,'ARV_FILA');
  ModuleMain.qryArvoreCad.SaveValue(edtCova,'ARV_COVA');
  ModuleMain.qryArvoreCad.SaveValue(edtTronco,'ARV_TRONCO');
  ModuleMain.qryArvoreCad.SaveValue(edtAltura,'ARV_ALTURA');
  ModuleMain.qryArvoreCad.SaveValue(memObs,'ARV_OBS');
  ModuleMain.qryArvoreCad.SaveValue(cbxUltimaFila, 'ARV_ULTIMA');
  ModuleMain.SalvarArvore;

end;

procedure TFormParcela.LimparControlesArvore;
begin
  rdgNormalNao.IsChecked := False;
  rdgFalha.IsChecked := False;
  rdgNormalSim.IsChecked := True;
  rdgSinSinuosa.IsChecked := False;
  rdgSinReta.IsChecked := False;
  rdgPontaQueb.IsChecked := False;
  rdgPontaNormal.IsChecked := False;
  rgdPontaSeca.IsChecked := False;
  rdgMorta.IsChecked := False;
  rdgDoente.IsChecked := False;
  rdgSaudavel.IsChecked := True;
  rdgFalha.IsChecked := False;
  rdgBifurcABaixoNao.IsChecked := True;
  rdgBifurcAcimaSim.IsChecked := False;
  rdgBifurcAcimaNao.IsChecked := False;
  rdgOutros1.IsChecked := False;
  rdgOutros2.IsChecked := False;
  rdgOutros3.IsChecked := False;
  cbxUltimaFila.IsChecked := False;
end;

procedure TFormParcela.imgSaveClick(Sender: TObject);
begin
  if not rdgFalha.IsChecked and (StrToFloatDef(edtTronco.Text,0) = 0) then
  begin
    TDialogService.ShowMessage('Informe o valo de Dap/Cap.');
    edtTronco.SetFocus;
    Exit;
  end;

  if not rdgFalha.IsChecked and (StrToFloatDef(edtTronco.Text,0) < ModuleMain.qryColetasCad.FieldByName('COL_LIM_CAPDAP_MIN').AsFloat) then
  begin
    TDialogService.ShowMessage('Valor de Dap/Cap inferior ao mínimo permitido.');
    edtTronco.SetFocus;
    Exit;
  end;

  SaveValuesToDataset;

  MontarListBox;
  tbcParcela.Previous;
end;

procedure TFormParcela.MontarListBox;
var
  lArvID: integer;
begin
  LimparListBox;

  if (cbxFiltro.ItemIndex = 1) then
    ModuleMain.ListarArvoreDominate(ModuleMain.ParID);

  if (cbxFiltro.ItemIndex = 2) then
    ModuleMain.ListarArvoreQuebrada(ModuleMain.ParID);

  lbxParcela.BeginUpdate;
  ModuleMain.qryArvoreList.First;
  while not ModuleMain.qryArvoreList.Eof do
  begin
    lArvID := ModuleMain.qryArvoreList.FieldByName('ARV_ID').AsInteger;
    if (cbxFiltro.ItemIndex = 0) or
      ((cbxFiltro.ItemIndex = 1) and ModuleMain.EhArvoreDominate(lArvID)) or
      ((cbxFiltro.ItemIndex = 2) and ModuleMain.EhArvoreQuebrada(lArvID)) then
    begin
      CriarItemNoListBox;
    end;
    ModuleMain.qryArvoreList.Next;
  end;
  lbxParcela.EndUpdate;
end;


procedure TFormParcela.CriarItemNoListBox;
var
  lListBoxItem: TListBoxItem;
begin
  lListBoxItem := TListBoxItem.Create(lbxParcela);

  lListBoxItem.Visible := True;
  lListBoxItem.Enabled := True;

  if ModuleMain.qryArvoreList.FieldByName('ARV_NORMAL').AsString = 'N' then
  begin
    lListBoxItem.StyleLookup := 'ListBoxItemParcelaStyle';
    lListBoxItem.Height := 100;
    lListBoxItem.StylesData['stlSanidade.Text'] := ModuleMain.ArvSanidade;
    lListBoxItem.StylesData['stlBifurcacao.Text'] := ModuleMain.ArvBifurcacao;
    lListBoxItem.StylesData['stlPontas.Text'] := ModuleMain.ArvPonta;
    lListBoxItem.StylesData['stlSinosidade.Text'] := ModuleMain.ArvSinuosidade;
    lListBoxItem.StylesData['stlAltura.Text'] := ModuleMain.qryArvoreList.FieldByName('ARV_ALTURA').AsString;
  end;

  if ModuleMain.qryArvoreList.FieldByName('ARV_NORMAL').AsString = 'S' then
  begin
    lListBoxItem.StyleLookup := 'ListBoxItemAvrNormal';
    lListBoxItem.Height := 65;
    lListBoxItem.StylesData['stlStatus.Text'] := ModuleMain.ArvSituacao;
  end;

  if ModuleMain.qryArvoreList.FieldByName('ARV_NORMAL').AsString = 'F' then
  begin
    lListBoxItem.StyleLookup := 'ListBoxItemAvrNormal';
    lListBoxItem.Height := 65;
    lListBoxItem.StylesData['stlStatus.Text'] := ModuleMain.ArvSituacao;
    lListBoxItem.StylesData['stlDapCap.Visible'] := False;
    lListBoxItem.StylesData['stlDapCapTit.Visible'] := False;
  end;

  lListBoxItem.StylesData['stlDapCap.Text'] := ModuleMain.qryArvoreList.FieldByName('ARV_TRONCO').AsString;
  lListBoxItem.StylesData['stlCova.Text'] := ModuleMain.qryArvoreList.FieldByName('ARV_COVA').AsString;
  lListBoxItem.StylesData['stlFila.Text'] := ModuleMain.qryArvoreList.FieldByName('ARV_FILA').AsString;
  lListBoxItem.StylesData['stlArvore.Text'] := ModuleMain.qryArvoreList.FieldByName('ARV_NUMERO').AsString;


  lListBoxItem.StylesData['ImgSel.Visible'] := TValue.From<Boolean>(False);
  lbxParcela.AddObject(lListBoxItem);

  FDicReg.New(lListBoxItem, ModuleMain.qryArvoreList.FieldByName('ARV_ID').AsInteger);
end;

procedure TFormParcela.AjustarExibicaoDeLayouts;
begin
  lbiBifurcAbaixa.Visible := not rdgFalha.IsChecked;
  lbiMedidas.Visible := not rdgFalha.IsChecked;
  lbiDetalhes.Visible := rdgNormalNao.IsChecked;
end;

procedure TFormParcela.rdgFalhaChange(Sender: TObject);
begin
  AjustarExibicaoDeLayouts;
end;

procedure TFormParcela.rdgNormalNaoChange(Sender: TObject);
begin
  AjustarExibicaoDeLayouts;
end;

procedure TFormParcela.rdgNormalSimChange(Sender: TObject);
begin
  AjustarExibicaoDeLayouts;
end;

procedure TFormParcela.ListBoxItemGesture(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  if EventInfo.GestureID = igiLongTap then
  begin
    SelecionarItem(TListBoxItem(Sender));
  end;
end;

procedure TFormParcela.SalvarParcela;
begin
  if edtParcela.Text = '' then
  begin
    TDialogService.ShowMessage('Informe nome da parcela.');
    edtParcela.SetFocus;
    Abort;
  end;

  if ModuleMain.NomeParcelaExistente(ModuleMain.ColID,ModuleMain.ParID,edtParcela.Text) then
  begin
    TDialogService.ShowMessage('O nome da parcela informado já existe.');
    edtParcela.SetFocus;
    Abort;
  end;

  ModuleMain.qryParcelaCad.SaveValue(edtParcela,'PAR_NOME');
  ModuleMain.qryParcelaCad.SaveValue(edtLog,'PAR_LONGITUDE');
  ModuleMain.qryParcelaCad.SaveValue(edtLat,'PAR_LATITUDE');
  ModuleMain.SalvarParcela;
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
  imgDeleteArv.Visible := FDicReg.CountCheck > 0;
  imgCancelSelArv.Visible := FDicReg.CountCheck > 0;
end;

procedure TFormParcela.LimparListBox;
begin
  FDicReg.Clear;
  lbxParcela.Clear;
end;

procedure TFormParcela.LoadValuesToControls;
begin
  LimparControlesArvore;
  ModuleMain.qryArvoreCad.LoadValue(rdgNormalSim,'ARV_NORMAL','S');
  ModuleMain.qryArvoreCad.LoadValue(rdgNormalNao,'ARV_NORMAL','N');
  ModuleMain.qryArvoreCad.LoadValue(rdgFalha,'ARV_NORMAL','F');

  ModuleMain.qryArvoreCad.LoadValue(rdgSinSinuosa, 'ARV_SINUOSIDADE', 'S');
  ModuleMain.qryArvoreCad.LoadValue(rdgSinReta, 'ARV_SINUOSIDADE', 'R');
  ModuleMain.qryArvoreCad.LoadValue(rdgPontaQueb, 'ARV_PONTA', 'Q');
  ModuleMain.qryArvoreCad.LoadValue(rdgPontaNormal, 'ARV_PONTA', 'N');
  ModuleMain.qryArvoreCad.LoadValue(rgdPontaSeca, 'ARV_PONTA', 'S');
  ModuleMain.qryArvoreCad.LoadValue(rdgSaudavel, 'ARV_SANIDADE', 'S');
  ModuleMain.qryArvoreCad.LoadValue(rdgMorta, 'ARV_SANIDADE', 'M');
  ModuleMain.qryArvoreCad.LoadValue(rdgDoente, 'ARV_SANIDADE', 'D');
  ModuleMain.qryArvoreCad.LoadValue(rdgBifurcAbaixoSim, 'ARV_BIFURCACAO_ABAIXO', 'S');
  ModuleMain.qryArvoreCad.LoadValue(rdgBifurcAbaixoNao, 'ARV_BIFURCACAO_ABAIXO', 'N');
  ModuleMain.qryArvoreCad.LoadValue(rdgBifurcAcimaSim,  'ARV_BIFURCACAO_ACIMA', 'S');
  ModuleMain.qryArvoreCad.LoadValue(rdgBifurcAcimaNao,  'ARV_BIFURCACAO_ACIMA', 'N');
  ModuleMain.qryArvoreCad.LoadValue(rdgOutros1, 'ARV_OUTROS', '1');
  ModuleMain.qryArvoreCad.LoadValue(rdgOutros2, 'ARV_OUTROS', '2');
  ModuleMain.qryArvoreCad.LoadValue(rdgOutros3, 'ARV_OUTROS', '3');
  ModuleMain.qryArvoreCad.LoadValue(rdgOutros4, 'ARV_OUTROS', '4');
  ModuleMain.qryArvoreCad.LoadValue(rdgOutros5, 'ARV_OUTROS', '5');
  ModuleMain.qryArvoreCad.LoadValue(rdgOutros6, 'ARV_OUTROS', '6');
  ModuleMain.qryArvoreCad.LoadValue(edtArvore, 'ARV_NUMERO');
  ModuleMain.qryArvoreCad.LoadValue(edtFila, 'ARV_FILA');
  ModuleMain.qryArvoreCad.LoadValue(edtCova, 'ARV_COVA');
  ModuleMain.qryArvoreCad.LoadValue(edtTronco, 'ARV_TRONCO');
  ModuleMain.qryArvoreCad.LoadValue(edtAltura, 'ARV_ALTURA');
  ModuleMain.qryArvoreCad.LoadValue(memObs, 'ARV_OBS');
  ModuleMain.qryArvoreCad.LoadValue(cbxUltimaFila, 'ARV_ULTIMA');

  AjustarExibicaoDeLayouts;
end;


end.

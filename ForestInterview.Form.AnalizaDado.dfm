object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 394
  ClientWidth = 562
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 302
    Width = 562
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ResizeStyle = rsUpdate
    ExplicitTop = 65
    ExplicitWidth = 240
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 65
    Width = 562
    Height = 237
    Align = alClient
    DataSource = dtsArvoreExp
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 562
    Height = 65
    Align = alTop
    TabOrder = 1
    object btnArvore: TButton
      Left = 9
      Top = 9
      Width = 75
      Height = 43
      Caption = 'Arvore'
      TabOrder = 0
      OnClick = btnArvoreClick
    end
    object btnFiltar: TButton
      Left = 104
      Top = 9
      Width = 75
      Height = 43
      Caption = 'Filtar'
      TabOrder = 1
      OnClick = btnFiltarClick
    end
  end
  object memFiltro: TMemo
    Left = 0
    Top = 305
    Width = 562
    Height = 89
    Align = alBottom
    TabOrder = 2
    ExplicitLeft = 168
    ExplicitTop = 272
    ExplicitWidth = 185
  end
  object qryArvoreExp: TFDQuery
    SQL.Strings = (
      'SELECT *'
      'FROM ARVORES')
    Left = 271
    Top = 71
  end
  object dtsArvoreExp: TDataSource
    DataSet = mtbArvoreExp
    Left = 176
    Top = 72
  end
  object OpenDialog1: TOpenDialog
    Filter = 'xml|*.xml'
    Left = 272
    Top = 200
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 152
    Top = 200
  end
  object FDStanStorageXMLLink1: TFDStanStorageXMLLink
    Left = 360
    Top = 152
  end
  object mtbArvoreExp: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 376
    Top = 232
  end
end

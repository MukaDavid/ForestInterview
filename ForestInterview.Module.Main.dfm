object ModuleMain: TModuleMain
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 454
  Width = 491
  object FDConnection: TFDConnection
    Params.Strings = (
      
        'Database=C:\Muka\Delphi\Beno\ForestInterview\Win32\Debug\ForestI' +
        'nterview.db'
      'DriverID=SQLite')
    LoginPrompt = False
    BeforeConnect = FDConnectionBeforeConnect
    Left = 64
    Top = 40
  end
  object qryCreateTable: TFDQuery
    Connection = FDConnection
    Left = 64
    Top = 104
  end
  object qrySequence: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT *'
      'FROM SEQUENCE'
      'WHERE SEQ_TABLENAME = :SEQ_TABLENAME')
    Left = 64
    Top = 168
    ParamData = <
      item
        Name = 'SEQ_TABLENAME'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end>
  end
  object qryColetasList: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * '
      'from COLETAS')
    Left = 64
    Top = 232
    object qryColetasListCOL_ID: TIntegerField
      FieldName = 'COL_ID'
      Origin = 'COL_ID'
      Required = True
    end
    object qryColetasListCOL_EQUIPE: TStringField
      FieldName = 'COL_EQUIPE'
      Origin = 'COL_EQUIPE'
      Size = 50
    end
    object qryColetasListCOL_FAZENDA: TStringField
      FieldName = 'COL_FAZENDA'
      Origin = 'COL_FAZENDA'
      Size = 50
    end
    object qryColetasListCOL_TALHAO: TStringField
      FieldName = 'COL_TALHAO'
      Origin = 'COL_TALHAO'
      Size = 50
    end
    object qryColetasListCOL_DATA: TDateField
      FieldName = 'COL_DATA'
      Origin = 'COL_DATA'
    end
    object qryColetasListCOL_AREA_PARCELA: TFMTBCDField
      FieldName = 'COL_AREA_PARCELA'
      Origin = 'COL_AREA_PARCELA'
      Precision = 10
      Size = 5
    end
    object qryColetasListCOL_AREA_TALHAO: TFMTBCDField
      FieldName = 'COL_AREA_TALHAO'
      Origin = 'COL_AREA_TALHAO'
      Precision = 10
      Size = 5
    end
    object qryColetasListCOL_PARCELA_TIPO: TStringField
      FieldName = 'COL_PARCELA_TIPO'
      Origin = 'COL_PARCELA_TIPO'
      Size = 1
    end
    object qryColetasListCOL_CUBAGEM_TIPO: TStringField
      FieldName = 'COL_CUBAGEM_TIPO'
      Origin = 'COL_CUBAGEM_TIPO'
      Size = 1
    end
    object qryColetasListCOL_FATOR_FORMA: TFMTBCDField
      FieldName = 'COL_FATOR_FORMA'
      Origin = 'COL_FATOR_FORMA'
      Precision = 10
      Size = 5
    end
    object qryColetasListCOL_LIM_CAPDAP_MIN: TFMTBCDField
      FieldName = 'COL_LIM_CAPDAP_MIN'
      Origin = 'COL_LIM_CAPDAP_MIN'
      Precision = 10
      Size = 5
    end
    object qryColetasListCOL_LIM_CAPDAP_MAX: TFMTBCDField
      FieldName = 'COL_LIM_CAPDAP_MAX'
      Origin = 'COL_LIM_CAPDAP_MAX'
      Precision = 10
      Size = 5
    end
    object qryColetasListCOL_LIM_ALT_MIN: TFMTBCDField
      FieldName = 'COL_LIM_ALT_MIN'
      Origin = 'COL_LIM_ALT_MIN'
      Precision = 10
      Size = 5
    end
    object qryColetasListCOL_LIM_ALT_MAX: TFMTBCDField
      FieldName = 'COL_LIM_ALT_MAX'
      Origin = 'COL_LIM_ALT_MAX'
      Precision = 10
      Size = 5
    end
    object qryColetasListCOL_ERRO_AMOSTRAL: TFMTBCDField
      FieldName = 'COL_ERRO_AMOSTRAL'
      Origin = 'COL_ERRO_AMOSTRAL'
      Precision = 10
      Size = 5
    end
  end
  object qryColetasCad: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * '
      'from COLETAS'
      'where COL_ID = :COL_ID')
    Left = 64
    Top = 296
    ParamData = <
      item
        Name = 'COL_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryColetasCadCOL_ID: TIntegerField
      FieldName = 'COL_ID'
      Origin = 'COL_ID'
      Required = True
    end
    object qryColetasCadCOL_EQUIPE: TStringField
      FieldName = 'COL_EQUIPE'
      Origin = 'COL_EQUIPE'
      Size = 50
    end
    object qryColetasCadCOL_FAZENDA: TStringField
      FieldName = 'COL_FAZENDA'
      Origin = 'COL_FAZENDA'
      Size = 50
    end
    object qryColetasCadCOL_TALHAO: TStringField
      FieldName = 'COL_TALHAO'
      Origin = 'COL_TALHAO'
      Size = 50
    end
    object qryColetasCadCOL_DATA: TDateField
      FieldName = 'COL_DATA'
      Origin = 'COL_DATA'
    end
    object qryColetasCadCOL_AREA_PARCELA: TFMTBCDField
      FieldName = 'COL_AREA_PARCELA'
      Origin = 'COL_AREA_PARCELA'
      Precision = 10
      Size = 5
    end
    object qryColetasCadCOL_AREA_TALHAO: TFMTBCDField
      FieldName = 'COL_AREA_TALHAO'
      Origin = 'COL_AREA_TALHAO'
      Precision = 10
      Size = 5
    end
    object qryColetasCadCOL_PARCELA_TIPO: TStringField
      FieldName = 'COL_PARCELA_TIPO'
      Origin = 'COL_PARCELA_TIPO'
      Size = 1
    end
    object qryColetasCadCOL_CUBAGEM_TIPO: TStringField
      FieldName = 'COL_CUBAGEM_TIPO'
      Origin = 'COL_CUBAGEM_TIPO'
      Size = 1
    end
    object qryColetasCadCOL_FATOR_FORMA: TFMTBCDField
      FieldName = 'COL_FATOR_FORMA'
      Origin = 'COL_FATOR_FORMA'
      Precision = 10
      Size = 5
    end
    object qryColetasCadCOL_LIM_CAPDAP_MIN: TFMTBCDField
      FieldName = 'COL_LIM_CAPDAP_MIN'
      Origin = 'COL_LIM_CAPDAP_MIN'
      Precision = 10
      Size = 5
    end
    object qryColetasCadCOL_LIM_CAPDAP_MAX: TFMTBCDField
      FieldName = 'COL_LIM_CAPDAP_MAX'
      Origin = 'COL_LIM_CAPDAP_MAX'
      Precision = 10
      Size = 5
    end
    object qryColetasCadCOL_LIM_ALT_MIN: TFMTBCDField
      FieldName = 'COL_LIM_ALT_MIN'
      Origin = 'COL_LIM_ALT_MIN'
      Precision = 10
      Size = 5
    end
    object qryColetasCadCOL_LIM_ALT_MAX: TFMTBCDField
      FieldName = 'COL_LIM_ALT_MAX'
      Origin = 'COL_LIM_ALT_MAX'
      Precision = 10
      Size = 5
    end
    object qryColetasCadCOL_ERRO_AMOSTRAL: TFMTBCDField
      FieldName = 'COL_ERRO_AMOSTRAL'
      Origin = 'COL_ERRO_AMOSTRAL'
      Precision = 10
      Size = 5
    end
  end
  object qryParcelaList: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT *'
      'FROM PARCELAS'
      'WHERE COL_ID = :COL_ID')
    Left = 168
    Top = 232
    ParamData = <
      item
        Name = 'COL_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryParcelaListPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
      Origin = 'PAR_ID'
      Required = True
    end
    object qryParcelaListCOL_ID: TIntegerField
      FieldName = 'COL_ID'
      Origin = 'COL_ID'
      Required = True
    end
    object qryParcelaListPAR_X: TFMTBCDField
      FieldName = 'PAR_X'
      Origin = 'PAR_X'
      Precision = 10
      Size = 5
    end
    object qryParcelaListPAR_Y: TFMTBCDField
      FieldName = 'PAR_Y'
      Origin = 'PAR_Y'
      Precision = 10
      Size = 5
    end
    object qryParcelaListPAR_FILA: TIntegerField
      FieldName = 'PAR_FILA'
      Origin = 'PAR_FILA'
    end
    object qryParcelaListPAR_COVA: TIntegerField
      FieldName = 'PAR_COVA'
      Origin = 'PAR_COVA'
    end
    object qryParcelaListPAR_TRONCO: TFMTBCDField
      FieldName = 'PAR_TRONCO'
      Origin = 'PAR_TRONCO'
      Precision = 10
      Size = 5
    end
    object qryParcelaListPAR_ALTURA: TFMTBCDField
      FieldName = 'PAR_ALTURA'
      Origin = 'PAR_ALTURA'
      Precision = 10
      Size = 5
    end
    object qryParcelaListPAR_SANIDADE: TStringField
      FieldName = 'PAR_SANIDADE'
      Origin = 'PAR_SANIDADE'
      Size = 1
    end
    object qryParcelaListPAR_BIFURCACAO: TStringField
      FieldName = 'PAR_BIFURCACAO'
      Origin = 'PAR_BIFURCACAO'
      Size = 1
    end
    object qryParcelaListPAR_PONTA: TStringField
      FieldName = 'PAR_PONTA'
      Origin = 'PAR_PONTA'
      Size = 1
    end
    object qryParcelaListPAR_SINUOSIDADE: TStringField
      FieldName = 'PAR_SINUOSIDADE'
      Origin = 'PAR_SINUOSIDADE'
      Size = 1
    end
    object qryParcelaListPAR_OUTROS: TStringField
      FieldName = 'PAR_OUTROS'
      Origin = 'PAR_OUTROS'
      Size = 1
    end
    object qryParcelaListPAR_VOLUME: TFMTBCDField
      FieldName = 'PAR_VOLUME'
      Origin = 'PAR_VOLUME'
      Precision = 10
      Size = 5
    end
  end
  object qryParcelaCad: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT *'
      'FROM PARCELAS'
      'WHERE PAR_ID = :PAR_ID')
    Left = 168
    Top = 296
    ParamData = <
      item
        Name = 'PAR_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryParcelaCadPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
      Origin = 'PAR_ID'
      Required = True
    end
    object qryParcelaCadCOL_ID: TIntegerField
      FieldName = 'COL_ID'
      Origin = 'COL_ID'
      Required = True
    end
    object qryParcelaCadPAR_X: TFMTBCDField
      FieldName = 'PAR_X'
      Origin = 'PAR_X'
      Precision = 10
      Size = 5
    end
    object qryParcelaCadPAR_Y: TFMTBCDField
      FieldName = 'PAR_Y'
      Origin = 'PAR_Y'
      Precision = 10
      Size = 5
    end
    object qryParcelaCadPAR_FILA: TIntegerField
      FieldName = 'PAR_FILA'
      Origin = 'PAR_FILA'
    end
    object qryParcelaCadPAR_COVA: TIntegerField
      FieldName = 'PAR_COVA'
      Origin = 'PAR_COVA'
    end
    object qryParcelaCadPAR_TRONCO: TFMTBCDField
      FieldName = 'PAR_TRONCO'
      Origin = 'PAR_TRONCO'
      Precision = 10
      Size = 5
    end
    object qryParcelaCadPAR_ALTURA: TFMTBCDField
      FieldName = 'PAR_ALTURA'
      Origin = 'PAR_ALTURA'
      Precision = 10
      Size = 5
    end
    object qryParcelaCadPAR_SANIDADE: TStringField
      FieldName = 'PAR_SANIDADE'
      Origin = 'PAR_SANIDADE'
      Size = 1
    end
    object qryParcelaCadPAR_BIFURCACAO: TStringField
      FieldName = 'PAR_BIFURCACAO'
      Origin = 'PAR_BIFURCACAO'
      Size = 1
    end
    object qryParcelaCadPAR_PONTA: TStringField
      FieldName = 'PAR_PONTA'
      Origin = 'PAR_PONTA'
      Size = 1
    end
    object qryParcelaCadPAR_SINUOSIDADE: TStringField
      FieldName = 'PAR_SINUOSIDADE'
      Origin = 'PAR_SINUOSIDADE'
      Size = 1
    end
    object qryParcelaCadPAR_OUTROS: TStringField
      FieldName = 'PAR_OUTROS'
      Origin = 'PAR_OUTROS'
      Size = 1
    end
    object qryParcelaCadPAR_VOLUME: TFMTBCDField
      FieldName = 'PAR_VOLUME'
      Origin = 'PAR_VOLUME'
      Precision = 10
      Size = 5
    end
  end
  object qryCubagemList: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select *'
      'from CUBAGEM'
      'where COL_ID = :COL_ID')
    Left = 264
    Top = 232
    ParamData = <
      item
        Name = 'COL_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryCubagemListCUB_ID: TIntegerField
      FieldName = 'CUB_ID'
      Origin = 'CUB_ID'
      Required = True
    end
    object qryCubagemListCOL_ID: TIntegerField
      FieldName = 'COL_ID'
      Origin = 'COL_ID'
      Required = True
    end
    object qryCubagemListCUB_X: TFMTBCDField
      FieldName = 'CUB_X'
      Origin = 'CUB_X'
      Precision = 10
      Size = 5
    end
    object qryCubagemListCUB_Y: TFMTBCDField
      FieldName = 'CUB_Y'
      Origin = 'CUB_Y'
      Precision = 10
      Size = 5
    end
    object qryCubagemListCUB_COD: TIntegerField
      FieldName = 'CUB_COD'
      Origin = 'CUB_COD'
    end
  end
  object qryCubagemCad: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select *'
      'from CUBAGEM'
      'where CUB_ID = :CUB_ID')
    Left = 264
    Top = 296
    ParamData = <
      item
        Name = 'CUB_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryCubagemCadCUB_ID: TIntegerField
      FieldName = 'CUB_ID'
      Origin = 'CUB_ID'
      Required = True
    end
    object qryCubagemCadCOL_ID: TIntegerField
      FieldName = 'COL_ID'
      Origin = 'COL_ID'
      Required = True
    end
    object qryCubagemCadCUB_X: TFMTBCDField
      FieldName = 'CUB_X'
      Origin = 'CUB_X'
      Precision = 10
      Size = 5
    end
    object qryCubagemCadCUB_Y: TFMTBCDField
      FieldName = 'CUB_Y'
      Origin = 'CUB_Y'
      Precision = 10
      Size = 5
    end
    object qryCubagemCadCUB_COD: TIntegerField
      FieldName = 'CUB_COD'
      Origin = 'CUB_COD'
    end
  end
  object qryCubMedidasList: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select *'
      'from CUBMEDIDAS'
      'where CUB_ID = :CUB_ID')
    Left = 368
    Top = 232
    ParamData = <
      item
        Name = 'CUB_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryCubMedidasListMED_ID: TIntegerField
      FieldName = 'MED_ID'
      Origin = 'MED_ID'
      Required = True
    end
    object qryCubMedidasListCUB_ID: TIntegerField
      FieldName = 'CUB_ID'
      Origin = 'CUB_ID'
      Required = True
    end
    object qryCubMedidasListMED_ALTURA: TFMTBCDField
      FieldName = 'MED_ALTURA'
      Origin = 'MED_ALTURA'
      Precision = 10
      Size = 5
    end
    object qryCubMedidasListMED_TRONCO: TFMTBCDField
      FieldName = 'MED_TRONCO'
      Origin = 'MED_TRONCO'
      Precision = 10
      Size = 5
    end
    object qryCubMedidasListMED_CASCA: TFMTBCDField
      FieldName = 'MED_CASCA'
      Origin = 'MED_CASCA'
      Precision = 10
      Size = 5
    end
  end
  object qryCubMedidasCad: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select *'
      'from CUBMEDIDAS'
      'where MED_ID = :MED_ID')
    Left = 368
    Top = 296
    ParamData = <
      item
        Name = 'MED_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryCubMedidasCadMED_ID: TIntegerField
      FieldName = 'MED_ID'
      Origin = 'MED_ID'
      Required = True
    end
    object qryCubMedidasCadCUB_ID: TIntegerField
      FieldName = 'CUB_ID'
      Origin = 'CUB_ID'
      Required = True
    end
    object qryCubMedidasCadMED_ALTURA: TFMTBCDField
      FieldName = 'MED_ALTURA'
      Origin = 'MED_ALTURA'
      Precision = 10
      Size = 5
    end
    object qryCubMedidasCadMED_TRONCO: TFMTBCDField
      FieldName = 'MED_TRONCO'
      Origin = 'MED_TRONCO'
      Precision = 10
      Size = 5
    end
    object qryCubMedidasCadMED_CASCA: TFMTBCDField
      FieldName = 'MED_CASCA'
      Origin = 'MED_CASCA'
      Precision = 10
      Size = 5
    end
  end
  object qrySequenceUpdate: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'UPDATE SEQUENCE SET'
      'SEQ_VAL = COALESCE(SEQ_VAL,0) + 1 '
      'WHERE SEQ_TABLENAME = :SEQ_TABLENAME')
    Left = 168
    Top = 168
    ParamData = <
      item
        Name = 'SEQ_TABLENAME'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end>
  end
  object qrySequenceInsert: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      
        'INSERT INTO SEQUENCE (SEQ_TABLENAME,SEQ_VAL) VALUES (:SEQ_TABLEN' +
        'AME,1)')
    Left = 368
    Top = 168
    ParamData = <
      item
        Name = 'SEQ_TABLENAME'
        DataType = ftString
        ParamType = ptInput
        Value = ''
      end>
  end
  object ImageList1: TImageList
    Source = <
      item
        MultiResBitmap.Height = 64
        MultiResBitmap.Width = 64
        MultiResBitmap = <
          item
            Width = 64
            Height = 64
            PNG = {
              89504E470D0A1A0A0000000D4948445200000040000000400806000000AA6971
              DE000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              086849444154785EE59B096C54551486A7335D905541511402215410648BA848
              45761045D9145C40221240055C2090B8468D620463588CA848140414142A1635
              C6A0D022AB586411A8101417144428A59D96D2FA7FAF739BE9D069A79DDB761C
              FFE4E3CDBC29EFDD7BDE5DCE3DF7BC1857D5EB527193E824127D5C26EA8ADA82
              32648B33E22FF193C8103F880DE217F19F5317F1AAD82F0AC3E4B058207A08EB
              0FCCE60579A2E3C5047125277CE2E96EF2814178BA474496E0A917883A82FFDF
              449856729DE82E2E1246BF8A8562BEF89B1391A0FAE205714298A74653A69054
              204E54563C20BACE8BE29030D7C7707305DDABC644E1EE17478529184F79A888
              1555210CBA46D06AB8DF29F1B8A8AAFB055573912A4CC5BF1514AEBA7495F858
              98FBEF12ED45B56898F84770E33FC47DC2FAE014A2FA8ABD82B2E488074595EA
              2561ACFEA968246A5A0982F1C694EB5D61BD4B78C43B821BE48BC744A4698860
              4CA08C6B053E861551F955820B33A5DD2622551DC5EF82B26E14568CC0BCCB05
              4F8A244E5810D3D714B1482C164F0AE67E1B6A21F03528F36722ACEEF0BCE042
              0C30B8B336F4A8A025715D7FCE09E6F670FC06238C605AC27B9CA88C68EA5C80
              3ECFDC6E434F8B42574C4C61E76123B68C59BC3C75DCB2D569DD274E4AF5C4C7
              E739BFB95C2BF8430BC2813263C2439C284DC1A6AF2BC44EC1284FF364F40F57
              F4CF1D6E8FC7357EF5E7DB1A366D767DD1E922E56565EF9BDF3FA989D7EB6DA0
              AFF78A65CE0FE169B04816B982FB51A71272FB8E81A2D950F9AFC4CB9CB0A049
              C2DD6FFA1369819547F1756BB719B568F96EDF57C6071BFA44BC2E982A978BF3
              BA5769061821FA089C9DD102B7D3869C01B4DDA02141FDF7C62D9B76F1C4C5D1
              E5AE1514DA86A60A9C25BC47C69F120A3400D3C6ECA28FAE67047EBE2D39ABBA
              184F4243E75B698AAF9BE069D0807E4BB9E80A3644F39F5CF4D119835871162B
              D000FC61334130E20D4E585468EE7241816971C1BA6765B44E7C24EA098C502C
              FF9BD0E41E29FAE80C7C4C4BD124EA847159C136E604F23700FD9DE6B147E04A
              469B0E0866845AA27890F53700911C44288BB9331A35CB777C40E0E2171B0037
              94381E91165B8E48246AB3202C4750B617278C01EEF61D89B660846816FE0072
              EA6C0C30D0778CE6A76FB4D277BC997F300073FF35821172BD8876E114E1DF5C
              2E5A6180AE021791B81ADEDFFF416CB8A01E1880450ADAE23B86A21B044DE998
              60C608858A86B0893796769D40F01CBF141559B13218A20E18C00422982743D1
              738268CB1DE2624ED4B0D897E827885A7D2042892710304189B8A7588F0BB074
              6416284B0F8BF9EED8D873839E9D99D6B6FF8044775C1C7DA9C624CFF9C46FE9
              E97B564E1ED7C99B9383ABFBA698E8FC185C6DC48F220303A40BBA017EC07722
              98589C1C71C5C4D49BB02A6553A3E62DE90611236F66F6FEB903925AE4E77A71
              E93B0BEA154C6CC39D16997401BE20F6EACAD2EDA25EEBEEBD77465AE551ADFA
              B55BF79932CD8C630454CA12BE0EE3471D0CC0C624C22265A91DFF74183A9CE0
              68442AB1574F130576CA5A86A83C46F060808AA9306A1689CEF21C0398A66FBA
              423039E1AA9DC9C9173ADF225007BEFE86683332A1B560A2F2B4967318C0F8FE
              E519801922F340EABA8EC70F65B0191A51CACB3AB56FDD9C59387534EFF79D93
              C1455D3142160630612F22C1652953CC701516BA168E1CDA75574AF2FA82FC7C
              12166A540539678FFFBC7DEB867903FB34CBCFCB8DD729225944B4CA5253DFF1
              2856982788D8B2CFFE9A284F849470869C3E54514DDDBCFB5842BCE712DFD7F3
              34BB6FD2B1BC132782FE5E8E960A223E679D6FC1C59E072D3A851660BC22FFB4
              96B24436084DED434126084DAE26C5ACF485609A1E25CAAB3C3275CDC000C661
              A052A16AABB84BE0DF730D5A4379FC292A22C273A55D2710A2CD2CE7D9AE0F55
              A6AE3B293C952174DC4144EC086F59669F733D06F00A8CC06752D1A25D570BA2
              C2E41F1EA6D2886D64C4AE50B4CBD4D1A9B33100CB480633568456920A225826
              FEE9C4068D01C8C624C58D754134B702F6275B09FC17B2DC8A0D80CC56D834C1
              E81A8D9AEE3B123370A66F7F03D00D18185849DDCA8928535B8103C4DA872D73
              47FE06605B9A5D21446AAAB373124522CF8196FDB6280EFEFA1B00D1340E0A7C
              82F2C24A1555681EA3DB6DCA642B2F01E128F1F4A978896C974003E010992402
              5CDE127BE961CAB17AA13797A4EA5275C6E5F5E69F3C893346E56D055E98D5E6
              147D74D631C78B3E1629D0002845B050C0C55C224AFB9BCAC8197577AF5D1DD4
              253EBDE7E076AD30E97A84B6489AB221167B44BE7708DE3B28A160A33DAB3112
              8A68014F09C684708507961EE3F6B8C7AF58B3B951CB9271C5EC53A7F72EB8A5
              47335F6477A4B0B14D778F6085C8C0C7EE57A8A17F47BD05F12F18CE090B9A21
              9C34B9F683066F1BBD70E986314B56A6761B3B7EA33B36964138946046A8C2C0
              261F9184EE4A099F800BB05EE8C9090B22A39B002CD7F50703BC226CCC3EC4FD
              79A384EB927C19964CC2045B50B68C400A1EB30C7D92545C0C4D76A70D31DFF3
              4A0E65A61B853D86314E9082CE056909778A48D58DC2BCBAC38E97AD543BC708
              A6253026309DD89A1D6C69AC20A79932B2D0213E685D34550CC04D483DB3E927
              5456CC1A8CF49409886B56E95A862C52B3754D7323A05A536E332B57D62F9485
              318AE9B35A44440587C9581D9F810554955ADE4FC4F46881E6FEEC53B414D52E
              0228FEEFF39165C29C7B81B02D5E7CC09F27BBC3DC0FAF9230787519BE549178
              48423241065330365170A329307DB4B2E2DAA4B3B17C352178608E676F22EC7C
              629B9663D4655B1A47876C6F2306CDEF0511275C51F3EA2CCE102E2ABF6324B6
              AB48B6C06F075E9D25ADDE7F2A23C1E92D81EF10D1E97C849D982AC9C561A3C2
              3CB98A628C3753B044B7AEEAE83BC419BB09FFD7E7993E79E2803F615A43E0EB
              F369A20AF3115CAE7F010F454C4093AF8B910000000049454E44AE426082}
            FileName = 'C:\Users\mukad\Downloads\iconfinder_38_icons_2191562.png'
          end>
        Name = 'Item 3'
      end
      item
        MultiResBitmap.Height = 64
        MultiResBitmap.Width = 64
        MultiResBitmap = <
          item
            Width = 64
            Height = 64
            PNG = {
              89504E470D0A1A0A0000000D4948445200000040000000400806000000AA6971
              DE000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              025949444154785EEDDA3B6B14511887F1356A8CB7580892426D1411142C2482
              560ADA78E904AD6C6C040B3F819FC0CA4244C1421035411124119544BC8514F6
              622B0A8282822422E2EDF98F3B302CEFC69DECE49C93D9F7811FC9A418CE99DD
              9D3D339386E7799EE7799EE7799ED7832D6DFE0CD96EECC567CCEA0FBD521FAE
              E24FD30C0EA227D2E4AF239F7CEE0D6A9F3E6637D03A79F98D5AA7C9DF8235F9
              5C6D5B865158932EAA65CB7107D6845BD52E4DFE1EACC95A6A553FEEC39A683B
              B56905C6604D722E51AB6A253800BDED0F675BE53A847DD8846FF88445D54A3C
              82F5EACEC73B5CC00E249F263F016B22557800BD3B926C159EC01A78D56E6323
              9269359EC11AEC42F9821388DE1ABC8035C8102E22C6657CD620A6600D2C24AD
              35F4B51B344D7E1AD68062D09A430BAFAED275FA62ED08AEFCFB355C6BF112D6
              2B12CB39044D27C1E7B00613C377EC44D0F435F814D68062788525089A164293
              B00614C329044F4BE1C7B00614DA5BE82E54F07425F810D6A0423B8928695132
              0E6B5021E9E45CAA2A4F1C5A94E83EE0B16CABF3F431D2F9641D3640173D5BA0
              33FB30B6A3D3741036E37DB615211D8432F703E57F0DE13474D9FD0BD63E8ACE
              226ABA297A17D6E02C65DA8ACBF8016B5F3282E875FA4C40E6930E44BBBB50BA
              A39444BA64BD096B9045DD74065A09B6EE53ABD5249AEBB960AEDBF6E0238AFB
              DC85646AF76458AA7A38BA0D1F90EFF700924A07E11A8A9397D7A82ADD45D63F
              5D68BF65BF8A83A435C725E493FF8AFDA8323D63F889E3D956A269817314EBB3
              ADEA3B8FA40FC042A713AF56929EE7799EE7799EE7799E5DA3F1175CC17F9B0C
              BE3C370000000049454E44AE426082}
            FileName = 'C:\Users\mukad\Downloads\iconfinder_arrow-back_216437.png'
          end>
        Name = 'Item 1'
      end
      item
        MultiResBitmap.Height = 64
        MultiResBitmap.Width = 64
        MultiResBitmap = <
          item
            Width = 64
            Height = 64
            PNG = {
              89504E470D0A1A0A0000000D4948445200000040000000400806000000AA6971
              DE000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              09DC49444154785ED59B0B7054E515C73744238DC8A388A514D93C30084C05A6
              4A12A4F539DAB1AD06453105B545A46D46A755EC535BEB03AB7546652A201502
              43C5169BB6405B753A45A5A5C9AE6821BC0C49D8469147788C6D29210493EDFF
              B7D9B3B389D9DDBB8F6C36FF995F36F7EEEEBDF77C8FF39DEF7CDF66B97A5FA3
              45A99822C68B3CF12931549C25D029F16F714834893AB155548BFDA25F8942BD
              543C2B1A843F49EAC533629A487985A5F282D4E83CF10D319613419D109BC53B
              624F106AFAB8F89F4083C43962A41817E462315DE40A1305BA4C2C17FFE14426
              6898785C6090D51A063E2D30E04C91A872C4E7052DA059D8F5FF2B1E13147A9F
              6980A810C7843DD81BE24B225BA45A67882F8BBF09BBDF11418B4B872FEBA20B
              040ECA1E64A3A08FA64BB48A3785DDFFEFA250A445B709FA2E37C643CF127DA5
              D9E2A0E059E882E5A2D74493A72F5AA9FF460C167D2DFC4095B0E77A4AA4BC4B
              E08C7E27B841ABF8A6C834DD2D882778C6974532CEB78B30FECF820B33F45C2E
              3255570B1B8DFE28922E049ABDD5FC61413497E9FA9CE05979E6B522A9EE607D
              9E9AEF0FC69B280462059EFDE79C4844787B2E409FCFE4661F495709F309B772
              221E31CEDB5097890ECFA9EE11D8406B28E08413D1EF2DC861A8EBEF321F4604
              E9C81F10DEF205829C4C18E79315710273136C62B216554C6C2CB6EFCB082F9A
              C82FFC44BC2AA8D517057D9CB94224CD11D8C4E830841391C4AC8E0F12DB67A2
              E68B938267ECCE36116D3EB049F0B98703473D88A66241443A27364EF53DE1CF
              1A30C05F7CC79DD5157FFA8BF73BAF6FAE9DF3CBD59B068F717FC07B629F20DB
              D4932E137C86213DD4B5C39DC2FD82389A59D6159CC8207D5F3C31203BBBE3AE
              B51BBCC30B0A48B185E43FE93FF1EBFBE63635793D1375B85ADC1178E3E362D6
              488E6281205F112A005E493D91C961CE4DE89B29FA81F819C6CFAB5AF7D6B9EE
              B1259DA7BBEAA3B6B6F79E9A36C5EDEFE838ADC311A2A78CD1F562BD202B7521
              2718F2104D1EE3C9BABCC6890CD10F454CE3D1193939EE914513F6EA5FE2FFC9
              81931FD72B82240A29B7624E5801DC1C7C7D49B477FEDBE7C2F8C79D186FCA19
              32040789CE0EBE76D747C2629B99FCB102208D857E1F7CED6BFD48C465BCABAD
              E5D4A11D5B49B9235FF0B5271118A180CD1400E32ACD9FECAD5738154D0D8742
              56A64C7C46A4420F8885018757B5C1EBC878A9A1C6EB39D5D24276195F461F8F
              248FA0A5B046319202308F4AEA1A07124B38CC6F09861EBC2A81C81F82C73818
              B748540F8AC7CCF8E1EEAEDE3E920E35D457572DB8E70BC1430A90E12E929820
              FDA3F35FD7A514804D73C9DBC712C62F164BC47983468CF8A0E8CA6B3C232F9A
              B45DE333BE032FFBB69824E2D58FC5A38918BFB2FCC6527F473BCFF6A4203D16
              4B66EB64BE44EDD184193B1943A389CFACCACEC93975DBCA17AB87BA0B2FCBCD
              CD0DF891F6B6D6BD2F55DC7562DF3FDFBE488784D3C4123B78CF8130FE91248D
              67DECF9019ADF64D5F132B45150F6F8E235ABF41DCE421FEB9BDF25735A3C67F
              F60A331E65E70C2C9CF3C2B2FCFCE26242D2E182707A02EFC510717DA7F10439
              8919FF84706A3C325BF331C04247664CD1C4D8993F68D8B0C343F2C65A7FEBA2
              ACACDC736E5DB2A430BFB8A456870423AF8B40C0114114E8C321E3BB457891D4
              CD78E62F8C1A4E8D47666BC009DAF212F380680A78F95193A71C08AFF9EEEA2C
              84C505632E2EDDAE430A974228E2BD6EFA29A4C0781C673CC623B3751886D812
              B52D54465220B43C7EE4288B98514521CC5EF65CBEFB92527CC0A7054B66E10B
              A618FF50BCC61FF535841BBF5024623CB202382B624DF6208C397E68F7CEC2D3
              274FFCABF3546451085F7DFEB93CF7D4E29D3A1C252804D25221E3E7AE5DEFD8
              F8C3BEBD35CB67CD28091AFFA8C07126627C1751008C8B8820229AF8DC524D36
              5C6B2AE6F9DB4EFB63B598CE4258BAC41D2C04022E363D848C3FAFA0D091F1C7
              7CBE9ACA59371477B4B7F3BC8F087C4732C65B2B6EE582ECCC40319BB6443261
              EB81DA6D05BFAD987B906968E7E9C8B242C89B5AB24B8783E335FE6853A3E785
              59D7871B4F0B4AB6E6CDD60FB968C823065FA3A9455C2376BCF78EE782350BEE
              DCEFB410CA972E1EE39E367D675CC637367A96DF5C3635C5C623B3B599FEC404
              68867012089918E2E8D3130B4A4AEBCB16AF183D505606DE89A69616BF2B3797
              7BC6D41119BFA2BC8C9AE7F3A9341E7D5D548A4020C48624C438EF54CCA9AF14
              BB7D9E9AA27515F3F7B5FAFDB48EE872687C73438337CC78BA5DB27DBEBBCCD6
              7729001C13624F4E3C22C34A21D4F9BC9BC7ADFFF6FCF7FDFE769B8F27AC830D
              759ECAF219347B339E9A4FB5583A43DBB809010E33396A90A0C8C98C305C36CE
              8F2B9C7E79DD57163D93979B357060E09D3885F1ABCA6732D471D85BC613F77C
              283E210291200B20ECBEA20F3B9A7B77133B3468090D7B37BF79E12BF7DDEF6B
              71B5B29E18970ED6A5C5788403C67846A5660A005912F4C6E06BBC3A2098FD35
              D66FDA38E1D57BBF1B572134EFD9ED5D35272DC6A39B82AFE40743596192A224
              09488A12B0903B4B447C97B47A61D15557EF9AB9F0C9B1AE9C5C0BB57B14C657
              CEBEA5384DC693C5A2B2CE1553C5166B0135826EC0E4E58B9C4850F8125A82AF
              7EE35F27563DF84023B9BAC03B3DE840DDAEB7D2683CBA4E60FCBB620B27C2F7
              F3B1158620875A5CC58904C552F43A31E398AFB1A8B9E9FD3DE3A75F7B76D699
              595C3FA4FDBBB67B57DF5E9E4EE31163FFF9825924B9C12E62D1D0765590EC4C
              56245AD8F8EC1F3AFAFC23B72C5A567DF76B6FD4CEABDAB06552D9CC5A8587DC
              07D26138A265723F42FF88613FDB4FF910FD3815A235856FA80C8798810D0CE9
              10BE8EA42FF70D64B522893880288F0F92EE4E85F033244B57089223ECDE622A
              4B534C97C8016213F39E98933EF6DEF261C677CB16F5677D52D8AE31E6003145
              7321DFCF179CA498335D38646C215A752C361AD85E017660F657DD2BB001C767
              D96FC762E3315F661C6707667FD3B5A24D604360213411B161820B303CDA0CAA
              3FE81261DBFC18F31316FE808DC75C0847D21F0A01E36D245B232CDC4F58C4CF
              0C5DD612D88199A9A2D95BCDE3FCA2ED1C8B4B14021B8FB9303E215D014C3CC2
              E1599FA7E65366BC89A6C40224370086C84C881318E76DA803FA7CD2CD3E9AD8
              94687306222B3621F685309208CF821C56AE12F6F6F18A159EF05F6FB109917D
              78E912131B0BD6802027EE713E595103ECBDB51A001E8AB83FE5FD4FC20FDD20
              6C5203B440C2DB5E6DF2B1C4349AF93C4DD01E8C42592468155DF200718A6C12
              BF55F885B0A10D88EC98D53959CD8AAA54961CDB4F6911ECE70D5F6360DA4BBA
              8D6D29AC4184FF74D65669310458B1613F01DF274DCF6F90C333CC7C9F9FCE32
              B3B4EF66A4D8844814B95B58AD250A0BAB8C3E043829573AFA0EB54A4DB27B93
              DACD0F9E636BBE254CC92093AB2729CBD23B393BB6DA58A2B697E472FD1F498A
              7D69D6731B510000000049454E44AE426082}
            FileName = 'C:\Users\mukad\Downloads\iconfinder_revisi_05_2191542.png'
          end>
        Name = 'Item 0'
      end
      item
        MultiResBitmap.Height = 64
        MultiResBitmap.Width = 64
        MultiResBitmap = <
          item
            Width = 64
            Height = 64
            PNG = {
              89504E470D0A1A0A0000000D4948445200000040000000400806000000AA6971
              DE000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
              0ADB49444154785ED59B7F7054D515C7B3492450214A8B537E2621108896B6FC
              2C6804ECD8193BAD8353C12A421511930A012BDAFE41A7D376FA63B495961F2D
              0A0263550228389DE9B4B5B69DA2527E93F0D3D08A859004423B1D245A084960
              FBFDBCBCB32C90ECDEB7BB81E43BF3CD7BFB76DF7BF79C7BEFB9E79C7B124A6B
              7FF4176F154788378B79E2A7C51BC52C119C133F14EBC4A3E221B142DC22D68A
              9D0A28B5485C24BE2F8693E43FC55F8AB78929EFB0543E901E9D25968883B9E0
              E37FE26671B7F80F9FF4F447E2C722E82EF6107B8B437D8E166F173F211A50E8
              7271A5789A0B1D013DC59F8A0864BD8680BF1011E03A31517411C78B8C8093A2
              3DBF5EFCB188D2AF19D2C5D9E27F456BD8DFC4AF8A1962AA9129DE2DBE23DAFB
              FE2332E2AE862DBB04052206CA1AF25791397AB5C0A8D824DAFBDF1507895705
              DF1099BBBC180B7DBF78AD304D3C21D216A6E054B1DDC090672E9AD6D789D9E2
              B50676608368EDFAB998F2298131DA28F28206F19B624743A9883F411B5F1393
              31BE9700E17F2FF260969E3BC48E8A2F89B61AFD4E4C5A090C7BEBF97F8B7873
              1D1DA344DA4A9BD78B494D079BF3F47C6710DE8012F01568FBCFB89008B0F63C
              8039DF91877D5BB853349BF00017828075DE96BA8E68F05C3157440646433E17
              5CC0BC372787A52E28AE17BBB59CA614C4043C3B28CC86E1413AD903DC5B6EC0
              C9715DE77B89ACBFD522F7420297EF898934DA4090F403F103D19E7B4C7C56FC
              A4E802FC046213EE25588B09021BF3ED5D3DBCE1E271D16B60283DBD212D14B2
              B9072BC55C3128068A84C2F65C8FF659AC113F2BBA60BAC83DAC0E3770A12D10
              D5F1437C7B17D0F39EF0B9B716ED9BFFF68E8A05E5079A9F28AF383BF78F9B36
              DF949FFF1EDF8924394884B882F95A2586FB140E3B3CEFAD4DBB4A37559E5B50
              5ED938EFCD77CB7B0F1B668A4109AE11E1DB22F7FCD0FBE4237A4EF0208630C3
              8E840676201E18F64FE78D1B7FF0EE67561464677B4E5304E1E6F0A9574AA61D
              ADA9A860094520561394110BF43C814E4EDEB87107A72E5C9D17EA16BA641A69
              593A53F6D07DB575070E60ACE9B4EF7A5FC4C64491E7621007F847CFE019981F
              08CF8F5C8407DEF272EFB3CFA55F2E3C0865867A4E5BB66660FF1123F7E823D3
              8067C71A097185075D6510BFBEF0579E0082EB12C7082031835D8BD802530023
              81B81A3CE71FE38186F5CFCCEA9AD6B54736B9BE56919115BA71DAB257F3068C
              18B5571F6329C1497843F79B7ADD225BC329D3C5728BF1C08805C5FE31A20062
              79D258645DDEE482032E787FC39A56F5F5CCAD368112A6AFFC4DDE8091A3F7E9
              636B4AE09C648A27FC94C5AB7363090F1AC23288BCBB655EB7B4253EFE209244
              21E536960BA680FBFC639978BEE5342ECE8A879B1BCFA57D7CAE114B1F13A150
              C60DD35F7C293767F898FDFA18AD04C8796EDED816E1BB5C17622AC644434DCD
              01FF1443DBD4721A17CDA2F93653F8630A208D05DEF08FAE78993FEB9E28CD0E
              87CFA3909840090FAC5A999B33E20B34DE947051F8256EC2EB5DA75F9B3F9BD4
              3AF0DA10003846C093994944DE1EEB4FF6163FC0559B8061BA4B2CCC2B1AFFC1
              D425CFF7959071BDC0E67063FDFAC78AABABCAB77F86CF4184E7DEB299B38ED7
              ECDD59A88F0745B2C7C42BAEC05E9C1269671F14C0F02781F027F1CB6250D093
              58D8DCDCDB6E3F3C79E98ABE5D43A1E85476AB0887CF7C54563CBB3AA43E98B2
              6C754E02C2FF4B6459A5F382E2CF22B983294C010B73C9DB27025BDFABAAB66C
              1EBCB174566D83A4F3BE8901E9A8C7832B960D4850F823E217C544840726EB70
              14604B181B168902E7A645095BB7146C9C33AB367C36CC948A099490A0F0BC8B
              982051B0F5060A51802D47C928005C54C2B62D056B9E7AD44909F1D00EC20393
              75200A306B4AC4942C224A38B66DEB9075F31FA9696C0ADBF65760B431EC9315
              1E98ACBD518005132413538188128E6CDF3E74C3DC190929E132E17926C2636F
              520193B5270A303732E19E6A0511251CDDB1A370C39C99D5587DEF1B07B422BC
              F72CBE4B11AC2D5928A0FD919176A1A9B95B74E41904DC97E8BD718102485E80
              B8D638002CB0C9F57C7B4727C79019EA92FDE0EA957DFB7F7E0CD63A56009528
              D88A070D2880CA0C60179305C213D8E0181D20AA0B22BCC194D06FF468CB28A5
              520926EB291410B188FE3119447A7E5051D17E7985F9F1A2BA584009D396AFEA
              D70E4A30594FA2008C0C20444C0691787E70D1C4FDF72C7971908B4B1C0F28E1
              A1E5CBFBA7580918577004059857948C02484AB4083F61E2BE494B5F70121E6B
              0FFD8F6D028F31C54A30592B5100D55880A82A11D89CCF1932E1CEBD9316BD30
              989495F74D0CD852B7A6E4D1DA204AC81D3596F8DF94C03111B07506F6B0BCF4
              13C9AE12C0E014050987316EE562C150093F79D1E2215AF3E286C3F804AFCE7A
              FC7875C50EAF27E859844348EF0731605164D5EEEDB7E823A31761E2065F5188
              0E873D4F900D103631E8B57162103C2D16F41B39BA3288F06B1E7BFC842F3CF6
              A7AA76D7AE9B5F2E29A9717196501251E4A7F20B718D99CBDFF2BE7007358BB4
              935C82670401FBFFE05EFFE80A3650D3A62C5CD2E8223C2E71597171DDB1F21D
              5256C4C3F3BCBCA04AB87FE9AFC9ED01363D8260B27F243F184989BDEE1FA9B1
              A11ACB058C98FCCC2E598DD787323ED772A96D20FCEBA50FD755EDDE4D2EDFA2
              3ADCDB88AB8B1218DE2E4AE8DABBCF30FF9451E05A08C1EF2C8DEEC96C0AD82A
              320D880C5DB342E69EC6CC0803C262054527AB76EE24F31C2DBC21A204E6B693
              124889B7A4C581ABABFC1591DD2C56939D5C300520041598E0DBFE311E88F5AB
              9B1BCF659D0DA791E96D1508BFF6C919750A8A28638B15CF5FA284B5C573622A
              A1B1AEF63D19144ED938D51474C277FCE30AFF185100A0FC94174E10A9F074C1
              5AFEBCF1D4BC8CB4C67A8B29222035B66EFECC93BEF096C38B15CF47947074F7
              B63695E08DA8F9A5247081EB163EE134FB1F54BBACE20288AEE84400DC561440
              835F12E3812570FAE913B583AAF7EE3B3CA8E88EBAB34D4DBDB2B2322FD49FAC
              3BB8BE646646CD9E8A1CFD06E15D9319C426BF15BFF6E1899A82CABFBC737CF0
              F809EFA775EFDEB339146A3A5357BBB76CCEC3E7EB0E1DA28D3C0F437C85F22F
              0353E41591B63C23BE25B60AFC00AC2B638B224417B0458D1FC13DE1F4CCCC70
              7A468677EE933D00362383022787B97AF159A150F473B121F8022E9821720F71
              4F5C5F833D427E4C05A6EBD633BFFB8968850C6C552138734E8E61C260A55920
              E2FDF14C88B1FE9118739F3F0A145258D5D8235C8807860BB5B7DC40056650E0
              69A5AC48310A3CF38A1D6807309D900577DD19CC2F8C0F375281D959F1A4880C
              D895C0C1134E11376360D845E96CB84B647944066F233411B09FCE0388D62C82
              EA0C18235A991F152409037BC0BE210FC29074062520BCAD646B44572FB14D60
              7C283CB6914005664705C3DE7A1EE3E71AD7C4054AA0F098076313A8C0EC68C0
              E0D99CA7E75326BC81A144E1312F802C91AE7E427B8275DE963AC89C4F7AD8C7
              02E124538197E159058DC7530584C4C33327071F3F616B1F142441A3FF7B8B02
              09EAF0AE16882BCC59833839A9DA3370063D40BD9DF500A45193C494CF3F013B
              748F48AD9FBD8F11887BDBAE433E1EF0C9293F65085AC350CA6291519188FB6A
              C0AD263C5E2ADAD206F1ECBE2F26BD9B954ACD5905264588D17B0C548FFD5DA4
              2C852C6EF4BFCE5AAC8F20901D1B525CDC4F9A9E92DDE8608AFB49DC10CF5F91
              27E848A008112FD28AA593215125AB0F0E4ECA7135E60EBD4A4F52564FEFB291
              C235323A569B40991BB97A2A55499B9107A0BE9891C3B576425ADAFF016DA80D
              A2B57020CE0000000049454E44AE426082}
            FileName = 'C:\Users\mukad\Downloads\iconfinder_revisi_04_2191538.png'
          end>
        Name = 'Item 2'
      end>
    Destination = <
      item
        Layers = <
          item
            Name = 'Item 2'
            SourceRect.Right = 64.000000000000000000
            SourceRect.Bottom = 64.000000000000000000
          end>
      end
      item
        Layers = <
          item
            Name = 'Item 0'
            SourceRect.Right = 64.000000000000000000
            SourceRect.Bottom = 64.000000000000000000
          end>
      end
      item
        Layers = <
          item
            Name = 'Item 3'
            SourceRect.Right = 64.000000000000000000
            SourceRect.Bottom = 64.000000000000000000
          end>
      end
      item
        Layers = <
          item
            Name = 'Item 1'
            SourceRect.Right = 64.000000000000000000
            SourceRect.Bottom = 64.000000000000000000
          end>
      end>
    Left = 256
    Top = 54
  end
end
object frmHabilidadEmpleado: TfrmHabilidadEmpleado
  Left = 191
  Top = 491
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Habilidades'
  ClientHeight = 178
  ClientWidth = 364
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 47
    Height = 13
    Caption = 'Categor'#237'a'
  end
  object Label2: TLabel
    Left = 16
    Top = 48
    Width = 43
    Height = 13
    Caption = 'Habilidad'
  end
  object RadioGroup1: TRadioGroup
    Left = 16
    Top = 80
    Width = 345
    Height = 49
    Caption = 'Destreza'
    Columns = 4
    ItemIndex = 3
    Items.Strings = (
      'Excelente'
      'Muy Bueno'
      'Bueno'
      'Regular')
    TabOrder = 2
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 72
    Top = 48
    Width = 289
    Height = 21
    KeyField = 'hab_codigo'
    ListField = 'hab_nombre'
    ListSource = dsHabilidad
    TabOrder = 1
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 72
    Top = 16
    Width = 289
    Height = 21
    KeyField = 'cat_codigo'
    ListField = 'cat_nombre'
    ListSource = dsCategoria
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 184
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Grabar'
    TabOrder = 3
    OnClick = BitBtn1Click
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF00FF00FF00FF000000
      0000008080000080800000000000000000000000000000000000000000000000
      0000FF00FF00FF00FF00000000000080800000000000FF00FF00FF00FF000000
      0000008080000080800000000000000000000000000000000000000000000000
      0000FF00FF00FF00FF00000000000080800000000000FF00FF00FF00FF000000
      0000008080000080800000000000000000000000000000000000000000000000
      0000FF00FF00FF00FF00000000000080800000000000FF00FF00FF00FF000000
      0000008080000080800000000000000000000000000000000000000000000000
      00000000000000000000000000000080800000000000FF00FF00FF00FF000000
      0000008080000080800000808000008080000080800000808000008080000080
      80000080800000808000008080000080800000000000FF00FF00FF00FF000000
      0000008080000080800000000000000000000000000000000000000000000000
      00000000000000000000008080000080800000000000FF00FF00FF00FF000000
      00000080800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00000000000080800000000000FF00FF00FF00FF000000
      00000080800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00000000000080800000000000FF00FF00FF00FF000000
      00000080800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00000000000080800000000000FF00FF00FF00FF000000
      00000080800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00000000000080800000000000FF00FF00FF00FF000000
      00000080800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF000000
      00000080800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0000000000FF00FF0000000000FF00FF00FF00FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object BitBtn2: TBitBtn
    Left = 272
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = BitBtn2Click
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00F8F8F800D1D1D100A1A1A100898989008C8C8C00ADAD
      AD00DCDCDC00FCFCFC00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FEFEFE00D8D8D8006169AE000A1EB7000E24CC000E24CC00091DB2000719
      A2005D6184008F8F8F00EAEAEA00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00C4C5CE001129E000142EF500142EF500142EF500142EF500142EF500142E
      F5000E25D1001627A7006D6D6D00E7E7E700FF00FF00FF00FF00FF00FF00E9E9
      E900142EF500142EF500142EF500142EF500142EF500142EF500142EF500142E
      F500142EF500132DF0001627A70084848400F9F9F900FF00FF00FCFCFC00223B
      F500142EF500142EF5004E62F700FF00FF00FF00FF00FF00FF00F0F0F000142E
      F500142EF500142EF500122AE500545DA200D0D0D000FF00FF00C4CAFC00142E
      F500142EF5008894F400FF00FF00FF00FF00FF00FF00FF00FF003D51E700142E
      F500142EF500142EF500142EF5000719A20097979700FF00FF00223BF500142E
      F500142EF500FF00FF00FF00FF00FF00FF00FF00FF001E34DB00142EF500142E
      F500223BF500142EF500142EF5000F26D60074747400FF00FF00142EF500142E
      F5000E24CC00FF00FF00FF00FF00FF00FF001E34DB00142EF500142EF500223B
      F500ECECEC003E53F500142EF500142EF50070707000FF00FF00142EF500142E
      F5000B20BC00FF00FF00FF00FF001E34DB00142EF500142EF500223BF500FF00
      FF00FF00FF004C60F400142EF500142EF50086868600FF00FF00142EF500142E
      F5001027DB00DFE2F3002038EB00142EF500142EF500223BF500FF00FF00FF00
      FF00FEFEFE00142EF500142EF500132DF000BCBCBC00FF00FF005D6FF800142E
      F500142EF500122AE500142EF500142EF500223BF500FF00FF00FF00FF00FF00
      FF00BBBCC900142EF500142EF5003546CC00EFEFEF00FF00FF00FF00FF00142E
      F500142EF500142EF500142EF500223BF500FF00FF00FF00FF00FF00FF00A1A8
      DB00142EF500142EF500142EF500C8C8C800FF00FF00FF00FF00FF00FF008996
      F900142EF500142EF500142EF5000E25D100091CAC00091DB2000F26D600142E
      F500142EF500142EF500949ACC00FCFCFC00FF00FF00FF00FF00FF00FF00FF00
      FF007B89F900142EF500142EF500142EF500142EF500142EF500142EF500142E
      F500142EF5008E97E200FBFBFB00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00F0F1FE003148F600142EF500142EF500142EF500142EF5004E62
      F700F1F1F100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object QCategoria: TADOQuery
    Connection = DM.ADOSigma
    DataSource = DM.dsEmpresas
    Parameters = <
      item
        Name = 'emp_codigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'cat_codigo, cat_nombre, emp_codigo'
      'from'
      'categoria_empleados'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      'cat_nombre')
    Left = 248
    object QCategoriacat_codigo: TIntegerField
      FieldName = 'cat_codigo'
    end
    object QCategoriacat_nombre: TStringField
      FieldName = 'cat_nombre'
      Size = 60
    end
    object QCategoriaemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
  end
  object dsCategoria: TDataSource
    DataSet = QCategoria
    Left = 280
  end
  object QHabilidad: TADOQuery
    Connection = DM.ADOSigma
    DataSource = dsCategoria
    Parameters = <
      item
        Name = 'cat_codigo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'hab_codigo, hab_nombre'
      'from'
      'habilidades'
      'where'
      'cat_codigo = :cat_codigo'
      'order by'
      'hab_nombre')
    Left = 248
    Top = 32
    object QHabilidadhab_codigo: TIntegerField
      FieldName = 'hab_codigo'
    end
    object QHabilidadhab_nombre: TStringField
      FieldName = 'hab_nombre'
      Size = 60
    end
  end
  object dsHabilidad: TDataSource
    DataSet = QHabilidad
    Left = 280
    Top = 32
  end
end

object frmActNumeroRNC: TfrmActNumeroRNC
  Left = 416
  Top = 406
  ActiveControl = DBEdit1
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Actualizar N'#250'mero de RNC'
  ClientHeight = 259
  ClientWidth = 545
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 66
    Height = 13
    Caption = 'RNC o C'#233'dula'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 16
    Top = 48
    Width = 59
    Height = 13
    Caption = 'Raz'#243'n social'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 16
    Top = 72
    Width = 84
    Height = 13
    Caption = 'Nombre comercial'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 16
    Top = 96
    Width = 97
    Height = 13
    Caption = 'Actividad econ'#243'mica'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 16
    Top = 120
    Width = 43
    Height = 13
    Caption = 'Direcci'#243'n'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 16
    Top = 144
    Width = 37
    Height = 13
    Caption = 'N'#250'mero'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 16
    Top = 168
    Width = 61
    Height = 13
    Caption = 'Urbanizaci'#243'n'
    FocusControl = DBEdit7
  end
  object Label8: TLabel
    Left = 16
    Top = 192
    Width = 42
    Height = 13
    Caption = 'Tel'#233'fono'
    FocusControl = DBEdit8
  end
  object BitBtn1: TBitBtn
    Left = 376
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Grabar'
    TabOrder = 0
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
    Left = 456
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 1
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
  object DBEdit1: TDBEdit
    Left = 120
    Top = 24
    Width = 129
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'rnc_cedula'
    DataSource = dsRNC
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 120
    Top = 48
    Width = 409
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'razon_social'
    DataSource = dsRNC
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 120
    Top = 72
    Width = 409
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'nombre_comercial'
    DataSource = dsRNC
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 120
    Top = 96
    Width = 409
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'actividad_economica'
    DataSource = dsRNC
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 120
    Top = 120
    Width = 409
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'direccion'
    DataSource = dsRNC
    TabOrder = 6
  end
  object DBEdit6: TDBEdit
    Left = 120
    Top = 144
    Width = 409
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'numero'
    DataSource = dsRNC
    TabOrder = 7
  end
  object DBEdit7: TDBEdit
    Left = 120
    Top = 168
    Width = 409
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'urbanizacion'
    DataSource = dsRNC
    TabOrder = 8
  end
  object DBEdit8: TDBEdit
    Left = 120
    Top = 192
    Width = 409
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    DataField = 'telefono'
    DataSource = dsRNC
    TabOrder = 9
  end
  object QRNC: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    OnNewRecord = QRNCNewRecord
    Parameters = <
      item
        Name = 'rnc'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'select'
      'rnc_cedula, razon_social, nombre_comercial,'
      'actividad_economica, direccion, numero, urbanizacion,'
      'telefono, estatus'
      'from'
      'rnc'
      'where rnc_cedula = :rnc')
    Left = 224
    Top = 192
    object QRNCrnc_cedula: TStringField
      FieldName = 'rnc_cedula'
      Size = 30
    end
    object QRNCrazon_social: TStringField
      FieldName = 'razon_social'
      Size = 200
    end
    object QRNCnombre_comercial: TStringField
      FieldName = 'nombre_comercial'
      Size = 200
    end
    object QRNCactividad_economica: TStringField
      FieldName = 'actividad_economica'
      Size = 2000
    end
    object QRNCdireccion: TStringField
      FieldName = 'direccion'
      Size = 200
    end
    object QRNCnumero: TStringField
      FieldName = 'numero'
      Size = 200
    end
    object QRNCurbanizacion: TStringField
      FieldName = 'urbanizacion'
      Size = 200
    end
    object QRNCtelefono: TStringField
      FieldName = 'telefono'
      Size = 200
    end
    object QRNCestatus: TStringField
      FieldName = 'estatus'
      Size = 2000
    end
  end
  object dsRNC: TDataSource
    DataSet = QRNC
    OnStateChange = dsRNCStateChange
    Left = 256
    Top = 192
  end
end
object frmAnulaLiq: TfrmAnulaLiq
  Left = 250
  Top = 303
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Anular Liquidaci'#243'n'
  ClientHeight = 133
  ClientWidth = 430
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 16
    Top = 24
    Width = 37
    Height = 13
    Caption = 'N'#250'mero'
  end
  object Label4: TLabel
    Left = 16
    Top = 48
    Width = 32
    Height = 13
    Caption = 'Motivo'
  end
  object edNumero: TEdit
    Left = 64
    Top = 24
    Width = 73
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object btClose: TBitBtn
    Left = 328
    Top = 96
    Width = 75
    Height = 25
    Caption = '&Salir'
    TabOrder = 3
    OnClick = btCloseClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
      0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
      0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
      0333337F777FFFFF7F3333000000000003333377777777777333}
    NumGlyphs = 2
  end
  object btAnular: TBitBtn
    Left = 248
    Top = 96
    Width = 75
    Height = 25
    Caption = '&Anular'
    TabOrder = 2
    OnClick = btAnularClick
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
      FF002900DD002900DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF0008002C002100B60000000000FF00FF00FF00FF00FF00
      FF002900DE002900DF001200640000000000FF00FF00FF00FF00FF00FF00FF00
      FF00000000001D009D002900DF0019008600FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF002900DE002900DF000000000000000000FF00FF00FF00FF000000
      00002500C8002900DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF002900DF002900DF000000000000000000000000002500
      C8002900DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF002900DF002700D600000000002500C7002900
      DF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF002900DE002900DF002900DF000000
      0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00000000002800D8002900DF002900DF000000
      000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00000000002500C8002900DF00000000002900DF002900
      DF000400140000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00000000002500C8002900DF0000000000FF00FF00FF00FF002900
      DF002900DF0011005A000000000000000000FF00FF00FF00FF00FF00FF00FF00
      FF00000000002400C7002900DF0009002F00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF002900DF002200BB0000000000FF00FF00FF00FF00FF00FF00FF00
      FF002800D8002900DF0019008700FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF002900DC00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF002900DF002300BE0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 64
    Top = 48
    Width = 337
    Height = 21
    DropDownRows = 20
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    KeyField = 'manu_codigo'
    ListField = 'manu_nombre'
    ListSource = dsMotivo
    ParentFont = False
    TabOrder = 1
  end
  object Query1: TADOQuery
    Connection = DM.ADOSigma
    Parameters = <>
    Left = 120
    Top = 96
  end
  object QMotivo: TADOQuery
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
      'manu_codigo, manu_nombre'
      'from'
      'motivo_anulacion'
      'where'
      'emp_codigo = :emp_codigo'
      'order by'
      '2')
    Left = 304
    Top = 48
    object QMotivomanu_codigo: TIntegerField
      FieldName = 'manu_codigo'
    end
    object QMotivomanu_nombre: TStringField
      FieldName = 'manu_nombre'
      Size = 100
    end
  end
  object dsMotivo: TDataSource
    DataSet = QMotivo
    Left = 336
    Top = 48
  end
end

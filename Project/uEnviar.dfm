object frmEnviar: TfrmEnviar
  Left = 280
  Top = 202
  BorderStyle = bsSingle
  Caption = 'Datos del Envios'
  ClientHeight = 241
  ClientWidth = 664
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 280
    Top = 96
    Width = 32
    Height = 13
    Caption = 'Label4'
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 16
    Width = 321
    Height = 105
    Caption = '[ Datos Origen ]'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 33
      Height = 13
      Caption = 'Ciudad'
    end
    object Label3: TLabel
      Left = 16
      Top = 57
      Width = 37
      Height = 13
      Caption = 'Nombre'
    end
    object Label5: TLabel
      Left = 16
      Top = 79
      Width = 42
      Height = 13
      Caption = 'Telefono'
    end
    object edoCiudad: TEdit
      Left = 64
      Top = 32
      Width = 249
      Height = 21
      TabOrder = 0
    end
    object edoNombre: TEdit
      Left = 64
      Top = 53
      Width = 209
      Height = 21
      TabOrder = 1
    end
    object edoTelefono: TEdit
      Left = 64
      Top = 75
      Width = 121
      Height = 21
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 336
    Top = 16
    Width = 321
    Height = 105
    Caption = '[ Datos Destino ]'
    TabOrder = 1
    object Label2: TLabel
      Left = 16
      Top = 32
      Width = 33
      Height = 13
      Caption = 'Ciudad'
    end
    object Label6: TLabel
      Left = 16
      Top = 57
      Width = 37
      Height = 13
      Caption = 'Nombre'
    end
    object Label7: TLabel
      Left = 16
      Top = 79
      Width = 42
      Height = 13
      Caption = 'Telefono'
    end
    object eddCiudad: TEdit
      Left = 64
      Top = 32
      Width = 249
      Height = 21
      TabOrder = 0
    end
    object eddNombre: TEdit
      Left = 64
      Top = 53
      Width = 209
      Height = 21
      TabOrder = 1
    end
    object eddTelefono: TEdit
      Left = 64
      Top = 75
      Width = 121
      Height = 21
      TabOrder = 2
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 128
    Width = 649
    Height = 49
    Caption = '[ Descripci'#243'n ]'
    TabOrder = 2
    object edDescripcion: TEdit
      Left = 8
      Top = 20
      Width = 625
      Height = 21
      MaxLength = 200
      TabOrder = 0
    end
  end
  object btClose: TBitBtn
    Left = 583
    Top = 185
    Width = 75
    Height = 48
    Caption = '&Salir'
    TabOrder = 3
    TabStop = False
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
end
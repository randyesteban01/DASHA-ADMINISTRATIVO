object FrmPopupDGII: TFrmPopupDGII
  Left = 534
  Top = 347
  Width = 382
  Height = 302
  BorderIcons = [biSystemMenu]
  Caption = 'Informaci'#243'n DGII'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 7
    Top = 16
    Width = 37
    Height = 13
    Caption = 'Numero'
  end
  object Label1: TLabel
    Left = 7
    Top = 40
    Width = 27
    Height = 13
    Caption = 'eNCF'
  end
  object Label3: TLabel
    Left = 7
    Top = 64
    Width = 33
    Height = 13
    Caption = 'Estado'
  end
  object Label4: TLabel
    Left = 7
    Top = 88
    Width = 74
    Height = 13
    Caption = 'Fecha de envio'
  end
  object Label5: TLabel
    Left = 7
    Top = 136
    Width = 40
    Height = 13
    Caption = 'Mensaje'
  end
  object Label6: TLabel
    Left = 7
    Top = 112
    Width = 53
    Height = 13
    Caption = 'TrackingID'
  end
  object DBEdit2: TDBEdit
    Left = 96
    Top = 8
    Width = 257
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'fac_numero'
    DataSource = dsDGII
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 96
    Top = 32
    Width = 257
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'eNCF'
    DataSource = dsDGII
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 96
    Top = 56
    Width = 257
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'Estado'
    DataSource = dsDGII
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 96
    Top = 80
    Width = 257
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'Fecha_Envio'
    DataSource = dsDGII
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DBMemo1: TDBMemo
    Left = 96
    Top = 136
    Width = 257
    Height = 89
    DataField = 'MensajeError'
    DataSource = dsDGII
    Enabled = False
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 96
    Top = 104
    Width = 257
    Height = 21
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'trackingID'
    DataSource = dsDGII
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object QDGII: TADOQuery
    Connection = DM.ADOSigma
    LockType = ltBatchOptimistic
    Parameters = <
      item
        Name = 'tipo'
        Size = -1
        Value = Null
      end
      item
        Name = 'emp_codigo'
        Size = -1
        Value = Null
      end
      item
        Name = 'fac_numero'
        Size = -1
        Value = Null
      end
      item
        Name = 'usu_codigo'
        Size = -1
        Value = Null
      end
      item
        Name = 'caja'
        Size = -1
        Value = Null
      end
      item
        Name = 'sup_codigo'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'exec dbo.sp_ConsultaPopupDGII :tipo, :emp_codigo,:fac_numero,:us' +
        'u_codigo,:caja,:sup_codigo')
    Left = 24
    Top = 208
    object QDGIIemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QDGIIEstado: TStringField
      FieldName = 'Estado'
      Size = 100
    end
    object QDGIItrackingID: TStringField
      FieldName = 'trackingID'
      Size = 300
    end
    object QDGIIFecha_Envio: TDateField
      FieldName = 'Fecha_Envio'
    end
    object QDGIIeNCF: TStringField
      FieldName = 'eNCF'
      Size = 50
    end
    object QDGIIMensajeError: TMemoField
      FieldName = 'MensajeError'
      BlobType = ftMemo
    end
    object QDGIIfac_numero: TIntegerField
      FieldName = 'fac_numero'
    end
  end
  object dsDGII: TDataSource
    AutoEdit = False
    DataSet = QDGII
    Left = 56
    Top = 208
  end
end

object FrmProdConduce: TFrmProdConduce
  Left = 216
  Top = 219
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Productos Conduce'
  ClientHeight = 617
  ClientWidth = 883
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Grid: TDBGrid
    Left = 0
    Top = 0
    Width = 883
    Height = 617
    Align = alClient
    Ctl3D = False
    DataSource = frmConduce.dsDetalle
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'PRO_RORIGINAL'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 79
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'PRO_NOMBRE'
        ReadOnly = True
        Title.Caption = 'Descripci'#243'n del Producto'
        Width = 303
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DET_CANTIDAD'
        Title.Alignment = taCenter
        Title.Caption = 'Cant'
        Width = 45
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'ENTREGA_CANT'
        ReadOnly = True
        Title.Caption = 'CANT ENTR'
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'COT_CANTIDAD'
        ReadOnly = True
        Title.Caption = 'CANT PREP'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DET_MEDIDA'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Medida'
        Width = 84
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'DET_PRECIO'
        Title.Alignment = taCenter
        Title.Caption = 'Precio'
        Width = 68
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'CalcItbis'
        Title.Alignment = taCenter
        Title.Caption = 'Itbis'
        Width = 60
        Visible = True
      end
      item
        Color = clInfoBk
        Expanded = False
        FieldName = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ReadOnly = True
        Title.Alignment = taCenter
        Width = 68
        Visible = True
      end>
  end
end

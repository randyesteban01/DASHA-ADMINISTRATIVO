object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 741
  Top = 398
  Height = 356
  Width = 619
  object dsEmpresas: TDataSource
    DataSet = QEmpresas
    Left = 96
    Top = 8
  end
  object dsParametros: TDataSource
    DataSet = QParametros
    Left = 96
    Top = 56
  end
  object Archivo: TOpenDialog
    DefaultExt = '*.gdb'
    Filter = 'Interbase|*.gdb'
    Left = 336
    Top = 248
  end
  object IdHTTP1: TIdHTTP
    MaxLineAction = maException
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 288
    Top = 248
  end
  object ADOSigma: TADOConnection
    ConnectionTimeout = 0
    ConnectOptions = coAsyncConnect
    KeepConnection = False
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'SQLOLEDB.1'
    Left = 440
    Top = 248
  end
  object Query1: TADOQuery
    Connection = ADOSigma
    LockType = ltReadOnly
    CommandTimeout = 0
    Parameters = <>
    Left = 384
    Top = 248
  end
  object QEmpresas: TADOQuery
    Connection = ADOSigma
    CursorType = ctStatic
    OnCalcFields = QEmpresasCalcFields
    Parameters = <>
    SQL.Strings = (
      'select'
      
        'EMP_CODIGO, EMP_DIRECCION, EMP_EMAIL, EMP_FAX, EMP_LOCALIDAD, EM' +
        'P_LOGO,'
      'EMP_NOMBRE, EMP_RNC, EMP_STATUS, EMP_TELEFONO, EMP_WEB,'
      'EMP_CONSOLIDAR, EMP_PUEDECONSOLIDAR'
      'from'
      'EMPRESAS'
      'WHERE'
      'EMP_STATUS = '#39'ACT'#39
      'ORDER BY'
      'EMP_CODIGO')
    Left = 24
    Top = 8
    object QEmpresasEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QEmpresasEMP_DIRECCION: TStringField
      FieldName = 'EMP_DIRECCION'
      Size = 60
    end
    object QEmpresasEMP_EMAIL: TStringField
      FieldName = 'EMP_EMAIL'
      Size = 60
    end
    object QEmpresasEMP_FAX: TStringField
      FieldName = 'EMP_FAX'
      Size = 30
    end
    object QEmpresasEMP_LOCALIDAD: TStringField
      FieldName = 'EMP_LOCALIDAD'
      Size = 60
    end
    object QEmpresasEMP_NOMBRE: TStringField
      FieldName = 'EMP_NOMBRE'
      Size = 60
    end
    object QEmpresasEMP_RNC: TStringField
      FieldName = 'EMP_RNC'
      Size = 30
    end
    object QEmpresasEMP_STATUS: TStringField
      FieldName = 'EMP_STATUS'
      Size = 3
    end
    object QEmpresasEMP_TELEFONO: TStringField
      FieldName = 'EMP_TELEFONO'
      Size = 30
    end
    object QEmpresasEMP_WEB: TStringField
      FieldName = 'EMP_WEB'
      Size = 60
    end
    object QEmpresasEMP_CONSOLIDAR: TStringField
      FieldName = 'EMP_CONSOLIDAR'
      Size = 5
    end
    object QEmpresasEMP_PUEDECONSOLIDAR: TStringField
      FieldName = 'EMP_PUEDECONSOLIDAR'
      Size = 5
    end
    object QEmpresasDireccion: TStringField
      FieldKind = fkCalculated
      FieldName = 'Direccion'
      Size = 160
      Calculated = True
    end
    object QEmpresasEMP_LOGO: TBlobField
      FieldName = 'EMP_LOGO'
    end
  end
  object QParametros: TADOQuery
    Connection = ADOSigma
    CursorType = ctStatic
    DataSource = dsEmpresas
    Parameters = <
      item
        Name = 'EMP_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select  *'
      'from '
      'PARAMETROS'
      'WHERE'
      'EMP_CODIGO = :EMP_CODIGO')
    Left = 24
    Top = 56
    object QParametrosEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QParametrosPAR_ALMACENVENTA: TIntegerField
      FieldName = 'PAR_ALMACENVENTA'
    end
    object QParametrosPAR_CODIGOCLIENTE: TStringField
      FieldName = 'PAR_CODIGOCLIENTE'
      Size = 1
    end
    object QParametrosPAR_CODIGOPRODUCTO: TStringField
      FieldName = 'PAR_CODIGOPRODUCTO'
      Size = 1
    end
    object QParametrosPAR_FACFORMA: TStringField
      FieldName = 'PAR_FACFORMA'
      Size = 1
    end
    object QParametrosPAR_FORMATODES: TIntegerField
      FieldName = 'PAR_FORMATODES'
    end
    object QParametrosPAR_FORMATODEV: TIntegerField
      FieldName = 'PAR_FORMATODEV'
    end
    object QParametrosPAR_FORMATONC: TIntegerField
      FieldName = 'PAR_FORMATONC'
    end
    object QParametrosPAR_FORMATOND: TIntegerField
      FieldName = 'PAR_FORMATOND'
    end
    object QParametrosPAR_FORMATORC: TIntegerField
      FieldName = 'PAR_FORMATORC'
    end
    object QParametrosPAR_FORMATORI: TIntegerField
      FieldName = 'PAR_FORMATORI'
    end
    object QParametrosPAR_ITBIS: TBCDField
      FieldName = 'PAR_ITBIS'
      Precision = 15
      Size = 2
    end
    object QParametrosPAR_MOVNDE: TIntegerField
      FieldName = 'PAR_MOVNDE'
    end
    object QParametrosPAR_TFACODIGO: TIntegerField
      FieldName = 'PAR_TFACODIGO'
    end
    object QParametrosPAR_TIPOPRECIO: TStringField
      FieldName = 'PAR_TIPOPRECIO'
      Size = 7
    end
    object QParametrosPAR_CONTROLAMAXIMO: TStringField
      FieldName = 'PAR_CONTROLAMAXIMO'
      Size = 5
    end
    object QParametrosPAR_CONTROLAMINIMO: TStringField
      FieldName = 'PAR_CONTROLAMINIMO'
      Size = 5
    end
    object QParametrosPAR_DEBAJOCOSTO: TStringField
      FieldName = 'PAR_DEBAJOCOSTO'
      Size = 5
    end
    object QParametrosPAR_COMBOCOTIZACION: TStringField
      FieldName = 'PAR_COMBOCOTIZACION'
      Size = 5
    end
    object QParametrosPAR_COMBOIMPDETALLE: TStringField
      FieldName = 'PAR_COMBOIMPDETALLE'
      Size = 5
    end
    object QParametrosPAR_COMBOREBAJA: TStringField
      FieldName = 'PAR_COMBOREBAJA'
      Size = 5
    end
    object QParametrosPAR_VENDIGITOSLOTE: TIntegerField
      FieldName = 'PAR_VENDIGITOSLOTE'
    end
    object QParametrosPAR_VENPERMITIR: TStringField
      FieldName = 'PAR_VENPERMITIR'
      Size = 5
    end
    object QParametrosPAR_VENVERIFICA: TStringField
      FieldName = 'PAR_VENVERIFICA'
      Size = 1
    end
    object QParametrosPAR_CONTEOLIMPIA: TStringField
      FieldName = 'PAR_CONTEOLIMPIA'
      Size = 1
    end
    object QParametrosPAR_PREDESCGLOBAL: TStringField
      FieldName = 'PAR_PREDESCGLOBAL'
      Size = 5
    end
    object QParametrosPAR_PREDESCRIP1: TStringField
      FieldName = 'PAR_PREDESCRIP1'
      Size = 10
    end
    object QParametrosPAR_PREDESCRIP2: TStringField
      FieldName = 'PAR_PREDESCRIP2'
      Size = 18
    end
    object QParametrosPAR_PREDESCRIP3: TStringField
      FieldName = 'PAR_PREDESCRIP3'
      Size = 10
    end
    object QParametrosPAR_PREDESCRIP4: TStringField
      FieldName = 'PAR_PREDESCRIP4'
      Size = 10
    end
    object QParametrosPAR_FACANULA: TStringField
      FieldName = 'PAR_FACANULA'
      Size = 5
    end
    object QParametrosPAR_FACDIASANULA: TIntegerField
      FieldName = 'PAR_FACDIASANULA'
    end
    object QParametrosPAR_FACDIASMODIFICA: TIntegerField
      FieldName = 'PAR_FACDIASMODIFICA'
    end
    object QParametrosPAR_FACDISPONIBLE: TStringField
      FieldName = 'PAR_FACDISPONIBLE'
      Size = 5
    end
    object QParametrosPAR_FACMODIFICA: TStringField
      FieldName = 'PAR_FACMODIFICA'
      Size = 5
    end
    object QParametrosPAR_FACSELPRECIO: TStringField
      FieldName = 'PAR_FACSELPRECIO'
      Size = 5
    end
    object QParametrosPAR_FACTEMPORAL: TStringField
      FieldName = 'PAR_FACTEMPORAL'
      Size = 5
    end
    object QParametrosPAR_DEVDIAS: TIntegerField
      FieldName = 'PAR_DEVDIAS'
    end
    object QParametrosPAR_DEVEFECTIVO: TStringField
      FieldName = 'PAR_DEVEFECTIVO'
      Size = 5
    end
    object QParametrosPAR_FORMATOCUADRE: TIntegerField
      FieldName = 'PAR_FORMATOCUADRE'
    end
    object QParametrosPAR_AHORA1: TDateTimeField
      FieldName = 'PAR_AHORA1'
    end
    object QParametrosPAR_AHORA2: TDateTimeField
      FieldName = 'PAR_AHORA2'
    end
    object QParametrosPAR_BHORA1: TDateTimeField
      FieldName = 'PAR_BHORA1'
    end
    object QParametrosPAR_BHORA2: TDateTimeField
      FieldName = 'PAR_BHORA2'
    end
    object QParametrosPAR_FACMODPRECIO: TStringField
      FieldName = 'PAR_FACMODPRECIO'
      Size = 5
    end
    object QParametrosPAR_FORMATOCON: TIntegerField
      FieldName = 'PAR_FORMATOCON'
    end
    object QParametrosPAR_CAJA: TStringField
      FieldName = 'PAR_CAJA'
      Size = 1
    end
    object QParametrosPAR_IMPCODIGOBARRA: TStringField
      FieldName = 'PAR_IMPCODIGOBARRA'
      Size = 5
    end
    object QParametrosCPA_CODIGOCLIENTE: TIntegerField
      FieldName = 'CPA_CODIGOCLIENTE'
    end
    object QParametrosPAR_LIMITEINICIAL: TBCDField
      FieldName = 'PAR_LIMITEINICIAL'
      Precision = 15
      Size = 2
    end
    object QParametrosPAR_MOVCK: TIntegerField
      FieldName = 'PAR_MOVCK'
    end
    object QParametrosPAR_MOVCARGO: TIntegerField
      FieldName = 'PAR_MOVCARGO'
    end
    object QParametrosPAR_PRECIOLETRA_0: TStringField
      FieldName = 'PAR_PRECIOLETRA_0'
      Size = 1
    end
    object QParametrosPAR_PRECIOLETRA_1: TStringField
      FieldName = 'PAR_PRECIOLETRA_1'
      Size = 1
    end
    object QParametrosPAR_PRECIOLETRA_2: TStringField
      FieldName = 'PAR_PRECIOLETRA_2'
      Size = 1
    end
    object QParametrosPAR_PRECIOLETRA_3: TStringField
      FieldName = 'PAR_PRECIOLETRA_3'
      Size = 1
    end
    object QParametrosPAR_PRECIOLETRA_4: TStringField
      FieldName = 'PAR_PRECIOLETRA_4'
      Size = 1
    end
    object QParametrosPAR_PRECIOLETRA_5: TStringField
      FieldName = 'PAR_PRECIOLETRA_5'
      Size = 1
    end
    object QParametrosPAR_PRECIOLETRA_6: TStringField
      FieldName = 'PAR_PRECIOLETRA_6'
      Size = 1
    end
    object QParametrosPAR_PRECIOLETRA_7: TStringField
      FieldName = 'PAR_PRECIOLETRA_7'
      Size = 1
    end
    object QParametrosPAR_PRECIOLETRA_8: TStringField
      FieldName = 'PAR_PRECIOLETRA_8'
      Size = 1
    end
    object QParametrosPAR_PRECIOLETRA_9: TStringField
      FieldName = 'PAR_PRECIOLETRA_9'
      Size = 1
    end
    object QParametrosPAR_NUEVOUSADO: TStringField
      FieldName = 'PAR_NUEVOUSADO'
      Size = 5
    end
    object QParametrosPAR_TEXTOBARRA1: TStringField
      FieldName = 'PAR_TEXTOBARRA1'
      Size = 60
    end
    object QParametrosPAR_TEXTOBARRA2: TStringField
      FieldName = 'PAR_TEXTOBARRA2'
      Size = 60
    end
    object QParametrosPAR_TEXTOBARRA3: TStringField
      FieldName = 'PAR_TEXTOBARRA3'
      Size = 60
    end
    object QParametrosPAR_TEXTOBARRA4: TStringField
      FieldName = 'PAR_TEXTOBARRA4'
      Size = 60
    end
    object QParametrosPAR_TEXTOBARRA5: TStringField
      FieldName = 'PAR_TEXTOBARRA5'
      Size = 60
    end
    object QParametrosPAR_OPC5TALINEA: TStringField
      FieldName = 'PAR_OPC5TALINEA'
    end
    object QParametrosPAR_TEXTOBARRA6: TStringField
      FieldName = 'PAR_TEXTOBARRA6'
      Size = 60
    end
    object QParametrosPAR_OPC1RALINEA: TStringField
      FieldName = 'PAR_OPC1RALINEA'
    end
    object QParametrosPAR_PREGUNTAPEQ: TStringField
      FieldName = 'PAR_PREGUNTAPEQ'
      Size = 5
    end
    object QParametrosPAR_IGUALAREF: TStringField
      FieldName = 'PAR_IGUALAREF'
      Size = 1
    end
    object QParametrosPAR_ITBISDEFECTO: TStringField
      FieldName = 'PAR_ITBISDEFECTO'
      Size = 1
    end
    object QParametrosPAR_FPADESEM: TIntegerField
      FieldName = 'PAR_FPADESEM'
    end
    object QParametrosPAR_FACBAJARLINEA: TStringField
      FieldName = 'PAR_FACBAJARLINEA'
      Size = 5
    end
    object QParametrosPAR_FACTOTALIZAPIE: TStringField
      FieldName = 'PAR_FACTOTALIZAPIE'
      Size = 5
    end
    object QParametrosPAR_FACREPITEPROD: TStringField
      FieldName = 'PAR_FACREPITEPROD'
      Size = 5
    end
    object QParametrosPAR_DEBAJOPRECIO: TStringField
      FieldName = 'PAR_DEBAJOPRECIO'
      Size = 5
    end
    object QParametrosPAR_FACCONITBIS: TStringField
      FieldName = 'PAR_FACCONITBIS'
      Size = 5
    end
    object QParametrosPAR_FACESCALA: TStringField
      FieldName = 'PAR_FACESCALA'
      Size = 5
    end
    object QParametrosPAR_FACMEDIDA: TStringField
      FieldName = 'PAR_FACMEDIDA'
      Size = 5
    end
    object QParametrosPAR_PRECIOEMP: TStringField
      FieldName = 'PAR_PRECIOEMP'
      Size = 7
    end
    object QParametrosPAR_PRECIOUND: TStringField
      FieldName = 'PAR_PRECIOUND'
      Size = 7
    end
    object QParametrosPAR_FISICOSOLOLLENO: TStringField
      FieldName = 'PAR_FISICOSOLOLLENO'
      Size = 5
    end
    object QParametrosPAR_DEVFORMA: TStringField
      FieldName = 'PAR_DEVFORMA'
      Size = 1
    end
    object QParametrosPAR_FORMATOCOT: TIntegerField
      FieldName = 'PAR_FORMATOCOT'
    end
    object QParametrosPAR_INVMOSTRARVENCE: TStringField
      FieldName = 'PAR_INVMOSTRARVENCE'
      Size = 5
    end
    object QParametrosPAR_VERIMAGEN: TStringField
      FieldName = 'PAR_VERIMAGEN'
      Size = 5
    end
    object QParametrosPAR_TKMENSAJE1: TStringField
      FieldName = 'PAR_TKMENSAJE1'
      Size = 40
    end
    object QParametrosPAR_TKMENSAJE2: TStringField
      FieldName = 'PAR_TKMENSAJE2'
      Size = 40
    end
    object QParametrosPAR_TKMENSAJE3: TStringField
      FieldName = 'PAR_TKMENSAJE3'
      Size = 40
    end
    object QParametrosPAR_TKMENSAJE4: TStringField
      FieldName = 'PAR_TKMENSAJE4'
      Size = 40
    end
    object QParametrosPAR_TKCLAVEDELETE: TStringField
      FieldName = 'PAR_TKCLAVEDELETE'
      Size = 30
    end
    object QParametrosPAR_TKCLAVEMODIFICA: TStringField
      FieldName = 'PAR_TKCLAVEMODIFICA'
      Size = 30
    end
    object QParametrosPAR_COMBINAORIGINAL: TStringField
      FieldName = 'PAR_COMBINAORIGINAL'
      Size = 30
    end
    object QParametrosPAR_COMBINAFABRIC: TStringField
      FieldName = 'PAR_COMBINAFABRIC'
      Size = 30
    end
    object QParametrosPAR_TKCLAVECREDITO: TStringField
      FieldName = 'PAR_TKCLAVECREDITO'
      Size = 30
    end
    object QParametrosPAR_TKCLAVECANCELA: TStringField
      FieldName = 'PAR_TKCLAVECANCELA'
      Size = 30
    end
    object QParametrosPAR_INVEMPRESA: TIntegerField
      FieldName = 'PAR_INVEMPRESA'
    end
    object QParametrosPAR_INVALMACEN: TIntegerField
      FieldName = 'PAR_INVALMACEN'
    end
    object QParametrosMON_CODIGO: TIntegerField
      FieldName = 'MON_CODIGO'
    end
    object QParametrosPAR_SOLGENERACHEQUE: TStringField
      FieldName = 'PAR_SOLGENERACHEQUE'
      Size = 5
    end
    object QParametrospar_invprecioconduce: TStringField
      FieldName = 'par_invprecioconduce'
      Size = 5
    end
    object QParametrospar_mailservidor: TStringField
      FieldName = 'par_mailservidor'
      Size = 60
    end
    object QParametrospar_mailcorreo: TStringField
      FieldName = 'par_mailcorreo'
      Size = 60
    end
    object QParametrospar_mailusuario: TStringField
      FieldName = 'par_mailusuario'
      Size = 60
    end
    object QParametrospar_mailclave: TStringField
      FieldName = 'par_mailclave'
      Size = 60
    end
    object QParametrospar_mailpuerto: TStringField
      FieldName = 'par_mailpuerto'
      Size = 60
    end
    object QParametrospar_itbisincluido: TStringField
      FieldName = 'par_itbisincluido'
      Size = 5
    end
    object QParametroscaj_codigo: TIntegerField
      FieldName = 'caj_codigo'
    end
    object QParametrospar_domicilio: TStringField
      FieldName = 'par_domicilio'
      Size = 5
    end
    object QParametrospar_monto_domicilio: TBCDField
      FieldName = 'par_monto_domicilio'
      Precision = 15
      Size = 2
    end
    object QParametrospar_copias_domicilio: TIntegerField
      FieldName = 'par_copias_domicilio'
    end
    object QParametrospar_beneficio: TBCDField
      FieldName = 'par_beneficio'
      Precision = 15
      Size = 2
    end
    object QParametrospar_tkclavereimprime: TStringField
      FieldName = 'par_tkclavereimprime'
      Size = 30
    end
    object QParametrospar_igualartelefonocliente: TStringField
      FieldName = 'par_igualartelefonocliente'
      Size = 5
    end
    object QParametrospar_valor_punto: TBCDField
      FieldName = 'par_valor_punto'
      Precision = 15
      Size = 2
    end
    object QParametrospar_punto_principal: TBCDField
      FieldName = 'par_punto_principal'
      Precision = 15
      Size = 2
    end
    object QParametrospar_punto_depen: TBCDField
      FieldName = 'par_punto_depen'
      Precision = 15
      Size = 2
    end
    object QParametrospar_redondeo: TStringField
      FieldName = 'par_redondeo'
      Size = 5
    end
    object QParametrospar_barra_header: TMemoField
      FieldName = 'par_barra_header'
      BlobType = ftMemo
    end
    object QParametrospar_fac_preimpresa: TStringField
      FieldName = 'par_fac_preimpresa'
      Size = 5
    end
    object QParametrospar_preciound_m: TStringField
      FieldName = 'par_preciound_m'
      Size = 7
    end
    object QParametrospar_precioemp_m: TStringField
      FieldName = 'par_precioemp_m'
      Size = 7
    end
    object QParametrospar_fac_oferta: TStringField
      FieldName = 'par_fac_oferta'
      Size = 5
    end
    object QParametrospar_nombre_familia: TStringField
      FieldName = 'par_nombre_familia'
      Size = 15
    end
    object QParametrospar_nombre_depto: TStringField
      FieldName = 'par_nombre_depto'
      Size = 15
    end
    object QParametrospar_nombre_color: TStringField
      FieldName = 'par_nombre_color'
      Size = 15
    end
    object QParametrospar_nombre_marca: TStringField
      FieldName = 'par_nombre_marca'
      Size = 15
    end
    object QParametrospar_inv_compra_centro_costo: TStringField
      FieldName = 'par_inv_compra_centro_costo'
      Size = 5
    end
    object QParametrospar_imprime_logo: TStringField
      FieldName = 'par_imprime_logo'
      Size = 5
    end
    object QParametrospar_arch_copiar_colector: TStringField
      FieldName = 'par_arch_copiar_colector'
      Size = 50
    end
    object QParametrospar_arch_recibe_colector: TStringField
      FieldName = 'par_arch_recibe_colector'
      Size = 50
    end
    object QParametrospar_delimitador_envia: TStringField
      FieldName = 'par_delimitador_envia'
      Size = 1
    end
    object QParametrospar_delimitador_recibe: TStringField
      FieldName = 'par_delimitador_recibe'
      Size = 1
    end
    object QParametrospar_modifica_fecha_factura: TStringField
      FieldName = 'par_modifica_fecha_factura'
      Size = 5
    end
    object QParametrospar_pago_mayor_balance: TStringField
      FieldName = 'par_pago_mayor_balance'
      Size = 5
    end
    object QParametrospar_nota_orden_servicio: TMemoField
      FieldName = 'par_nota_orden_servicio'
      BlobType = ftMemo
    end
    object QParametrospar_controlar: TStringField
      FieldName = 'par_controlar'
      Size = 5
    end
    object QParametrospar_formato_preimpreso: TStringField
      FieldName = 'par_formato_preimpreso'
    end
    object QParametrospar_usuario_cuadra: TStringField
      FieldName = 'par_usuario_cuadra'
      Size = 5
    end
    object QParametrospar_inv_entrada_modifica_precio: TStringField
      FieldName = 'par_inv_entrada_modifica_precio'
      Size = 5
    end
    object QParametrospar_movtk: TStringField
      FieldName = 'par_movtk'
      Size = 3
    end
    object QParametrospar_visualizadesc: TStringField
      FieldName = 'par_visualizadesc'
      Size = 5
    end
    object QParametrospar_visualiza_selectivo: TStringField
      FieldName = 'par_visualiza_selectivo'
      Size = 5
    end
    object QParametrospar_cantidad_primero: TStringField
      FieldName = 'par_cantidad_primero'
      Size = 50
    end
    object QParametrospar_busqueda_porciento: TStringField
      FieldName = 'par_busqueda_porciento'
      Size = 5
    end
    object QParametrospar_busqueda_cxp: TStringField
      FieldName = 'par_busqueda_cxp'
      Size = 10
    end
    object QParametrospar_moneda_local: TIntegerField
      FieldName = 'par_moneda_local'
    end
    object QParametrospar_envio: TMemoField
      FieldName = 'par_envio'
      BlobType = ftMemo
    end
    object QParametrospar_nota_cotizacion: TMemoField
      FieldName = 'par_nota_cotizacion'
      BlobType = ftMemo
    end
    object QParametrospar_almacendevolucion: TIntegerField
      FieldName = 'par_almacendevolucion'
    end
    object QParametrospar_boletos_monto: TBCDField
      FieldName = 'par_boletos_monto'
      Precision = 15
      Size = 2
    end
    object QParametrospar_boletos_cantidad: TIntegerField
      FieldName = 'par_boletos_cantidad'
    end
    object QParametrospar_ticket_itbis: TStringField
      FieldName = 'par_ticket_itbis'
      Size = 5
    end
    object QParametrospar_ftp_site: TStringField
      FieldName = 'par_ftp_site'
      Size = 50
    end
    object QParametrospar_ftp_usuario: TStringField
      FieldName = 'par_ftp_usuario'
      Size = 50
    end
    object QParametrospar_ftp_password: TStringField
      FieldName = 'par_ftp_password'
      Size = 50
    end
    object QParametrospar_ftp_ruta: TStringField
      FieldName = 'par_ftp_ruta'
      Size = 50
    end
    object QParametrospar_empresa_1: TIntegerField
      FieldName = 'par_empresa_1'
    end
    object QParametrospar_empresa_2: TIntegerField
      FieldName = 'par_empresa_2'
    end
    object QParametrospar_porciento_empresa_1: TBCDField
      FieldName = 'par_porciento_empresa_1'
      Precision = 19
    end
    object QParametrospar_porciento_empresa_2: TBCDField
      FieldName = 'par_porciento_empresa_2'
      Precision = 19
    end
    object QParametrospar_empresa_porciento_comprobante: TIntegerField
      FieldName = 'par_empresa_porciento_comprobante'
    end
    object QParametrospar_dividir_facturacion: TStringField
      FieldName = 'par_dividir_facturacion'
      Size = 5
    end
    object QParametrospar_modifica_precio_automatico: TStringField
      FieldName = 'par_modifica_precio_automatico'
      Size = 5
    end
    object QParametrospar_inv_forma_inventario: TStringField
      FieldName = 'par_inv_forma_inventario'
      Size = 1
    end
    object QParametrospar_visualizar_cant_empaque: TStringField
      FieldName = 'par_visualizar_cant_empaque'
      Size = 5
    end
    object QParametrospar_imprimir_calculo_empaque: TStringField
      FieldName = 'par_imprimir_calculo_empaque'
      Size = 5
    end
    object QParametrospar_inv_transferencia_auto: TStringField
      FieldName = 'par_inv_transferencia_auto'
      Size = 5
    end
    object QParametrospar_boletos_monto_patrocinador: TBCDField
      FieldName = 'par_boletos_monto_patrocinador'
      Precision = 15
      Size = 2
    end
    object QParametrospar_boletos_cantidad_patrocinador: TIntegerField
      FieldName = 'par_boletos_cantidad_patrocinador'
    end
    object QParametrospar_busqueda_dejar_ultimo: TStringField
      FieldName = 'par_busqueda_dejar_ultimo'
      Size = 5
    end
    object QParametrospar_compras_visualiza_diferencia: TStringField
      FieldName = 'par_compras_visualiza_diferencia'
      Size = 5
    end
    object QParametrospar_genera_puntos_credito: TStringField
      FieldName = 'par_genera_puntos_credito'
      Size = 5
    end
    object QParametrospar_inv_unidad_medida: TStringField
      FieldName = 'par_inv_unidad_medida'
      Size = 5
    end
    object QParametrospar_numerofactura_tipo: TStringField
      FieldName = 'par_numerofactura_tipo'
      Size = 5
    end
    object QParametrospar_facturarcero: TStringField
      FieldName = 'par_facturarcero'
      Size = 5
    end
    object QParametrospar_textobarra7: TStringField
      FieldName = 'par_textobarra7'
      Size = 60
    end
    object QParametrospar_opc6talinea: TStringField
      FieldName = 'par_opc6talinea'
    end
    object QParametrospar_opc7malinea: TStringField
      FieldName = 'par_opc7malinea'
    end
    object QParametrosIdioma: TStringField
      FieldName = 'Idioma'
      Size = 1
    end
    object QParametrospar_compras_valores_aut: TStringField
      FieldName = 'par_compras_valores_aut'
      Size = 5
    end
    object QParametrospar_aplica_desc_por_rango_venta: TStringField
      FieldName = 'par_aplica_desc_por_rango_venta'
      Size = 5
    end
    object QParametrospar_inv_imprime_comentario: TStringField
      FieldName = 'par_inv_imprime_comentario'
      Size = 5
    end
    object QParametrospar_periodo_caducidad: TStringField
      FieldName = 'par_periodo_caducidad'
    end
    object QParametrospar_cantidad_caducidad: TIntegerField
      FieldName = 'par_cantidad_caducidad'
    end
    object QParametrospar_imprimir_sin_detalle_RI: TStringField
      FieldName = 'par_imprimir_sin_detalle_RI'
      Size = 5
    end
    object QParametroscot_dias_valides: TIntegerField
      FieldName = 'cot_dias_valides'
    end
    object QParametrospar_validar_serie_en_inventario: TStringField
      FieldName = 'par_validar_serie_en_inventario'
      Size = 5
    end
    object QParametrospar_impresora_boleto: TStringField
      FieldName = 'par_impresora_boleto'
    end
    object QParametrosPAR_SUC_NCF: TIntegerField
      FieldName = 'PAR_SUC_NCF'
    end
    object QParametrospar_busq_incrementada: TBooleanField
      FieldName = 'par_busq_incrementada'
    end
    object QParametrospar_busq_por_referencia: TBooleanField
      FieldName = 'par_busq_por_referencia'
    end
    object QParametrospar_envio_maxivo_fact: TBooleanField
      FieldName = 'par_envio_maxivo_fact'
    end
    object QParametrosPAR_MORA_DIAS_GRACIA: TIntegerField
      FieldName = 'PAR_MORA_DIAS_GRACIA'
    end
    object QParametrosPAR_MORA_PORC: TCurrencyField
      FieldName = 'PAR_MORA_PORC'
    end
    object QParametrosPAR_MORA_DIAS_APLICAR: TIntegerField
      FieldName = 'PAR_MORA_DIAS_APLICAR'
    end
    object QParametrosPAR_CODIGO_ABRE_CAJA: TStringField
      FieldName = 'PAR_CODIGO_ABRE_CAJA'
    end
    object QParametrospar_imprimir_con_detalle_prod: TBooleanField
      FieldName = 'par_imprimir_con_detalle_prod'
    end
    object QParametrospar_cotizacion_notif: TBooleanField
      FieldName = 'par_cotizacion_notif'
    end
    object QParametrosPar_Envio_Rec_Estadocta: TBooleanField
      FieldName = 'Par_Envio_Rec_Estadocta'
    end
    object QParametrosPar_Envio_Rec_Correo: TBooleanField
      FieldName = 'Par_Envio_Rec_Correo'
    end
    object QParametrosPar_Envio_Conduce_Correo: TBooleanField
      FieldName = 'Par_Envio_Conduce_Correo'
    end
    object QParametrosPar_Envio_Cotiz_Correo: TBooleanField
      FieldName = 'Par_Envio_Cotiz_Correo'
    end
    object QParametrospar_treporte_peso: TIntegerField
      FieldName = 'par_treporte_peso'
    end
    object QParametrosPAR_IMPCODBARRAFAM: TBooleanField
      FieldName = 'PAR_IMPCODBARRAFAM'
    end
    object QParametrospar_banca_apuestas: TBooleanField
      FieldName = 'par_banca_apuestas'
    end
    object QParametrospar_Marca_Printer: TStringField
      DisplayWidth = 50
      FieldName = 'par_Marca_Printer'
      Size = 50
    end
    object QParametrospar_puerto_Printer: TStringField
      FieldName = 'par_puerto_Printer'
      Size = 50
    end
    object QParametrospar_velocidad_Printer: TIntegerField
      FieldName = 'par_velocidad_Printer'
    end
    object QParametrospar_puerto_envios: TStringField
      FieldName = 'par_puerto_envios'
      Size = 255
    end
    object QParametrospar_digitos_banderita: TIntegerField
      FieldName = 'par_digitos_banderita'
    end
    object QParametrosRestBar_FactConItbis: TBooleanField
      FieldName = 'RestBar_FactConItbis'
    end
    object QParametrospar_mostrarfacturadolares: TBooleanField
      FieldName = 'par_mostrarfacturadolares'
    end
    object QParametrosPAR_UnidadMedida_Producto: TBooleanField
      FieldName = 'PAR_UnidadMedida_Producto'
    end
    object QParametrospar_totalizardolaresPOS: TBooleanField
      FieldName = 'par_totalizardolaresPOS'
    end
    object QParametrospar_codigobarrasdolares: TBooleanField
      FieldName = 'par_codigobarrasdolares'
    end
    object QParametrospar_vouchercardnet: TBooleanField
      FieldName = 'par_vouchercardnet'
    end
    object QParametrosPAR_MESERO: TBooleanField
      FieldName = 'PAR_MESERO'
    end
    object QParametrosPAR_cantidadRecibosImprimir: TIntegerField
      FieldName = 'PAR_cantidadRecibosImprimir'
    end
    object QParametrosUsa_FacturacionElectronica: TBooleanField
      FieldName = 'Usa_FacturacionElectronica'
    end
    object QParametrosImprimirCopia: TBooleanField
      FieldName = 'ImprimirCopia'
    end
    object QParametrosservicio_construccion: TBooleanField
      FieldName = 'servicio_construccion'
    end
    object QParametrosintegracion_luganis: TBooleanField
      FieldName = 'integracion_luganis'
    end
    object QParametrosmesas_abiertas: TBooleanField
      FieldName = 'mesas_abiertas'
    end
    object QParametrospar_luganis_baseurl: TStringField
      FieldName = 'par_luganis_baseurl'
      Size = 100
    end
    object QParametrospar_luganis_companycode: TStringField
      FieldName = 'par_luganis_companycode'
      Size = 100
    end
    object QParametrospar_luganis_username: TStringField
      FieldName = 'par_luganis_username'
      Size = 100
    end
    object QParametrospar_luganis_password: TStringField
      FieldName = 'par_luganis_password'
      Size = 100
    end
    object QParametrospar_luganis_appversion: TStringField
      FieldName = 'par_luganis_appversion'
      Size = 100
    end
    object QParametrospar_luganis_os: TStringField
      FieldName = 'par_luganis_os'
      Size = 100
    end
    object QParametrospar_luganis_deviceid: TStringField
      FieldName = 'par_luganis_deviceid'
      Size = 100
    end
    object QParametrospar_luganis_latitude: TStringField
      FieldName = 'par_luganis_latitude'
      Size = 100
    end
    object QParametrospar_luganis_longitude: TStringField
      FieldName = 'par_luganis_longitude'
      Size = 100
    end
    object QParametrospar_luganis_providerip: TStringField
      FieldName = 'par_luganis_providerip'
      Size = 100
    end
    object QParametrosPAR_FE_DetenerFacturacion: TBooleanField
      FieldName = 'PAR_FE_DetenerFacturacion'
    end
  end
  object QContab: TADOQuery
    Connection = ADOSigma
    DataSource = dsEmpresas
    Parameters = <
      item
        Name = 'EMP_CODIGO'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT'
      'EMP_CODIGO, PAR_CTARESULTADO, PAR_DOCCARGOS,PAR_DOCCHEQUE, '
      'PAR_DOCDEPOSITO, PAR_DOCCOMPRAS, PAR_DOCDESEM, PAR_DOCNCCLI,'
      
        'PAR_DOCNDCLI, PAR_DOCRC, PAR_DOCDEV, PAR_CTAINVEnT, PAR_CTACOSTO' +
        ','
      'PAR_CTADESC, PAR_CTAITBIS, PAR_CTADESCCOMP, '
      
        'PAR_CTACOSTOSINDIRECTOS, PAR_CTALABORDIRECTA, PAR_CTAMATERIAPRIM' +
        'A,'
      'PAR_CTAPRODPROCESO, PAR_CTAPRODTERMINADOS, PAR_REPANEXOS,'
      'PAR_REPRESULTCOL1, PAR_REPRESULTCOL2, PAR_REPRESULTCOL3,'
      'PAR_REPANEXOSCTA, par_cta_prima, par_cta_ingreso_cambio,'
      'par_cta_gasto_cambio, par_estado_resultado_inventario,'
      'par_docnomina, par_ctasueldopagar, par_provision_regalia,'
      'par_docnc_cxp, par_docnd_cxp, par_cta_mercancia_transito,'
      'par_docliq, par_cta_itbis_compra, par_codifica_venta_familia,'
      'par_cta_intereses, par_cta_retencion_itbis,'
      'par_cta_retencion_isr, par_doc_conduce, par_doc_dev_compra,'
      
        'par_doc_trans_banco, par_NCF_Sucursal, par_ctaproplegvent, par_c' +
        'taotrosimp, par_ctafletecomp, par_ctaproplegcomp, PAR_CTA_SELECT' +
        'IVO_CON,'
      'PAR_CONT_BALANU_COMPROB, par_ctadevventas'
      'FROM'
      'CONTPARAMETROS'
      'WHERE '
      'EMP_CODIGO = :EMP_CODIGO')
    Left = 24
    Top = 104
    object QContabEMP_CODIGO: TIntegerField
      FieldName = 'EMP_CODIGO'
    end
    object QContabPAR_CTARESULTADO: TStringField
      FieldName = 'PAR_CTARESULTADO'
      Size = 15
    end
    object QContabPAR_DOCCARGOS: TStringField
      FieldName = 'PAR_DOCCARGOS'
      Size = 3
    end
    object QContabPAR_DOCCHEQUE: TStringField
      FieldName = 'PAR_DOCCHEQUE'
      Size = 3
    end
    object QContabPAR_DOCDEPOSITO: TStringField
      FieldName = 'PAR_DOCDEPOSITO'
      Size = 3
    end
    object QContabPAR_DOCCOMPRAS: TStringField
      FieldName = 'PAR_DOCCOMPRAS'
      Size = 3
    end
    object QContabPAR_DOCDESEM: TStringField
      FieldName = 'PAR_DOCDESEM'
      Size = 3
    end
    object QContabPAR_DOCNCCLI: TStringField
      FieldName = 'PAR_DOCNCCLI'
      Size = 3
    end
    object QContabPAR_DOCNDCLI: TStringField
      FieldName = 'PAR_DOCNDCLI'
      Size = 3
    end
    object QContabPAR_DOCRC: TStringField
      FieldName = 'PAR_DOCRC'
      Size = 3
    end
    object QContabPAR_DOCDEV: TStringField
      FieldName = 'PAR_DOCDEV'
      Size = 3
    end
    object QContabPAR_CTAINVEnT: TStringField
      FieldName = 'PAR_CTAINVEnT'
      Size = 15
    end
    object QContabPAR_CTACOSTO: TStringField
      FieldName = 'PAR_CTACOSTO'
      Size = 15
    end
    object QContabPAR_CTADESC: TStringField
      FieldName = 'PAR_CTADESC'
      Size = 15
    end
    object QContabPAR_CTAITBIS: TStringField
      FieldName = 'PAR_CTAITBIS'
      Size = 15
    end
    object QContabPAR_CTADESCCOMP: TStringField
      FieldName = 'PAR_CTADESCCOMP'
      Size = 15
    end
    object QContabPAR_CTACOSTOSINDIRECTOS: TStringField
      FieldName = 'PAR_CTACOSTOSINDIRECTOS'
      Size = 15
    end
    object QContabPAR_CTALABORDIRECTA: TStringField
      FieldName = 'PAR_CTALABORDIRECTA'
      Size = 15
    end
    object QContabPAR_CTAMATERIAPRIMA: TStringField
      FieldName = 'PAR_CTAMATERIAPRIMA'
      Size = 15
    end
    object QContabPAR_CTAPRODPROCESO: TStringField
      FieldName = 'PAR_CTAPRODPROCESO'
      Size = 15
    end
    object QContabPAR_CTAPRODTERMINADOS: TStringField
      FieldName = 'PAR_CTAPRODTERMINADOS'
      Size = 15
    end
    object QContabPAR_REPANEXOS: TStringField
      FieldName = 'PAR_REPANEXOS'
      Size = 1
    end
    object QContabPAR_REPRESULTCOL1: TStringField
      FieldName = 'PAR_REPRESULTCOL1'
      Size = 5
    end
    object QContabPAR_REPRESULTCOL2: TStringField
      FieldName = 'PAR_REPRESULTCOL2'
      Size = 5
    end
    object QContabPAR_REPRESULTCOL3: TStringField
      FieldName = 'PAR_REPRESULTCOL3'
      Size = 5
    end
    object QContabPAR_REPANEXOSCTA: TStringField
      FieldName = 'PAR_REPANEXOSCTA'
      Size = 5
    end
    object QContabpar_cta_prima: TStringField
      FieldName = 'par_cta_prima'
      Size = 15
    end
    object QContabpar_cta_ingreso_cambio: TStringField
      FieldName = 'par_cta_ingreso_cambio'
      Size = 15
    end
    object QContabpar_cta_gasto_cambio: TStringField
      FieldName = 'par_cta_gasto_cambio'
      Size = 15
    end
    object QContabpar_estado_resultado_inventario: TStringField
      FieldName = 'par_estado_resultado_inventario'
      Size = 5
    end
    object QContabpar_docnomina: TStringField
      FieldName = 'par_docnomina'
      Size = 3
    end
    object QContabpar_ctasueldopagar: TStringField
      FieldName = 'par_ctasueldopagar'
      Size = 15
    end
    object QContabpar_provision_regalia: TStringField
      FieldName = 'par_provision_regalia'
      Size = 15
    end
    object QContabpar_docnc_cxp: TStringField
      FieldName = 'par_docnc_cxp'
      Size = 15
    end
    object QContabpar_docnd_cxp: TStringField
      FieldName = 'par_docnd_cxp'
      Size = 15
    end
    object QContabpar_cta_mercancia_transito: TStringField
      FieldName = 'par_cta_mercancia_transito'
      Size = 15
    end
    object QContabpar_docliq: TStringField
      FieldName = 'par_docliq'
      Size = 3
    end
    object QContabpar_cta_itbis_compra: TStringField
      FieldName = 'par_cta_itbis_compra'
      Size = 15
    end
    object QContabpar_codifica_venta_familia: TStringField
      FieldName = 'par_codifica_venta_familia'
      Size = 5
    end
    object QContabpar_cta_intereses: TStringField
      FieldName = 'par_cta_intereses'
      Size = 15
    end
    object QContabpar_cta_retencion_itbis: TStringField
      FieldName = 'par_cta_retencion_itbis'
      Size = 15
    end
    object QContabpar_cta_retencion_isr: TStringField
      FieldName = 'par_cta_retencion_isr'
      Size = 15
    end
    object QContabpar_doc_conduce: TStringField
      FieldName = 'par_doc_conduce'
      Size = 3
    end
    object QContabpar_doc_dev_compra: TStringField
      FieldName = 'par_doc_dev_compra'
      Size = 3
    end
    object QContabpar_doc_trans_banco: TStringField
      FieldName = 'par_doc_trans_banco'
      Size = 3
    end
    object QContabpar_NCF_Sucursal: TBooleanField
      FieldName = 'par_NCF_Sucursal'
    end
    object QContabpar_ctaproplegvent: TStringField
      FieldName = 'par_ctaproplegvent'
      Size = 15
    end
    object QContabpar_ctaotrosimp: TStringField
      FieldName = 'par_ctaotrosimp'
    end
    object QContabpar_ctafletecomp: TStringField
      FieldName = 'par_ctafletecomp'
    end
    object QContabpar_ctaproplegcomp: TStringField
      FieldName = 'par_ctaproplegcomp'
    end
    object QContabPAR_CTA_SELECTIVO_CON: TStringField
      FieldName = 'PAR_CTA_SELECTIVO_CON'
    end
    object QContabPAR_CONT_BALANU_COMPROB: TIntegerField
      FieldName = 'PAR_CONT_BALANU_COMPROB'
    end
    object QContabpar_ctadevventas: TStringField
      FieldName = 'par_ctadevventas'
      Size = 15
    end
  end
  object ImgMant: TImageList
    Left = 232
    Top = 248
    Bitmap = {
      494C01010B000E00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00000000000000FF000000FF00
      000000000000FFFFFF00FFFFFF00FFFFFF00FF000000FF000000FF000000FF00
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00000000000000FF000000FF00
      000000000000FFFFFF00FFFFFF00FFFFFF00FF000000FF000000FF000000FF00
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00000000000000FF000000FF00
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C6C6C600FF000000FF000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000FF0000008400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF00000000000000FF000000FF00
      000000000000C6C6C600C6C6C600C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00000084000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF0000000000FFFF
      FF000000000000000000FFFFFF000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF0000000000000000000000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000FFFF0000FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFFFF000000
      000000000000FFFFFF00FFFFFF00000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000840000008400000000000000000000000000
      000000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000FFFF00FFFFFF00000000000000000000000000000000000000000000FF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFF000000000000FFFFFF0000FF
      FF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFFFF000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000840000008400000000000000000000000000
      000000000000000000000000000000000000FFFF00000000000000FFFF00FFFF
      FF0000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      FF00FFFFFF0000FFFF00000000000000000000FFFF0000000000FFFFFF00FFFF
      FF000000000000000000FFFFFF0000000000000000000000000000000000FFFF
      FF000000000000000000000000000000000000000000FFFFFF00000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008400000084000000840000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000FFFF0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C6C6C6000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000FFFF0000000000FFFFFF00FFFFFF000000000000000000FFFF
      FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000FFFFFF000000000000000000000000000000000000000000FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF000000000000000000000000000000000000000000FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FFFF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FF00FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6CEEF000829B5001031B5001839
      BD001839BD001839BD001839BD001031BD001031BD000831C6000831BD000029
      BD000029C6000021B50000189400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00D6D6D600A5A5A5008C8C8C008C8C8C00ADADAD00DEDEDE00FFFF
      FF00000000000000000000000000000000000029CE001839D600214ADE00294A
      DE002952DE002952DE002952DE002152DE00214ADE00184AE7001042E7000842
      E7000039E7000031DE000021B5000000000000000000000000002900DE002900
      DE00000000000000000000000000000000000000000000000000000000000000
      0000080029002100B50000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000000000000000000000000000000000FFFFFF00DEDE
      DE00636BAD000818B5000821CE000821CE000818B5000018A5005A6384008C8C
      8C00EFEFEF000000000000000000000000000831DE00214AE7003152E700395A
      E700395AE7004263E700C6CEF70000000000E7EFFF007394F7001852EF00104A
      EF000842EF000039E7000029C6000000000000000000000000002900DE002900
      DE00100063000000000000000000000000000000000000000000000000001800
      9C002900DE001800840000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000000000000000000000000000000000C6C6CE001029
      E7001029F7001029F7001029F7001029F7001029F7001029F7000821D6001021
      A5006B6B6B00E7E7E70000000000000000001039DE002952E700395AE7004263
      E700BDC6F7000000000094ADF7003963E7005A7BEF00E7EFFF00000000001052
      EF00084AEF000039E7000029C600000000000000000000000000000000002900
      DE002900DE0000000000000000000000000000000000000000002100CE002900
      DE00000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      00000000000000848400000000000000000000000000EFEFEF001029F7001029
      F7001029F7001029F7001029F7001029F7001029F7001029F7001029F7001029
      F7001021A50084848400FFFFFF00000000001039DE00395AE7004263E70094A5
      EF00000000004A6BE700426BE7003963E7003163EF00295AEF007394F7000000
      0000104AEF000842E7000831C600000000000000000000000000000000000000
      00002900DE002900DE000000000000000000000000002100CE002900DE000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      000000000000008484000000000000000000FFFFFF002139F7001029F7001029
      F7004A63F700000000000000000000000000F7F7F7001029F7001029F7001029
      F7001029E700525AA500D6D6D600000000001842DE004263E7004A6BE7000000
      0000526BE7004A6BE700426BE700000000003163E700295AEF002152EF00E7EF
      FF006B8CF7001042E7001031C600000000000000000000000000000000000000
      0000000000002900DE002100D600000000002100C6002900DE00000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400008484000084840000848400008484000084840000848400008484000084
      840000848400008484000000000000000000C6CEFF001029F7001029F7008C94
      F700000000000000000000000000000000003952E7001029F7001029F7001029
      F7001029F7000018A5009494940000000000214ADE004A6BE7005273E7000000
      0000526BE7004A6BE700426BE70000000000315AE700295AE7002152E700426B
      EF00F7F7FF00184AE7001039C600000000000000000000000000000000000000
      000000000000000000002900DE002900DE002900DE0000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000084
      8400000000000000000000000000000000000000000000000000000000000000
      0000008484000084840000000000000000002139F7001029F7001029F7000000
      00000000000000000000000000001831DE001029F7001029F7002139F7001029
      F7001029F7000821D6007373730000000000294AE700526BE7005A73EF000000
      0000526BE7004A6BE7004263E70000000000315AE7002952E7002152E700184A
      E70000000000214ADE001839C600000000000000000000000000000000000000
      000000000000000000002900DE002900DE002900DE0000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000000000000000001029F7001029F7000821CE000000
      000000000000000000001831DE001029F7001029F7002139F700EFEFEF003952
      F7001029F7001029F70073737300000000002952E7005A73EF00637BEF000000
      0000526BE7004A6BE7004263E70000000000315AE7002952E700214AE700738C
      EF00CED6FF002952DE001842BD00000000000000000000000000000000000000
      0000000000002100CE002900DE00000000002900DE002900DE00000010000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000000000000000001029F7001029F7000821BD000000
      0000000000001831DE001029F7001029F7002139F70000000000000000004A63
      F7001029F7001029F70084848400000000003152E7006384EF006B84EF00F7F7
      FF00A5ADF700526BE7004263E70000000000315AE7002952E7002952E7000000
      0000315AE7002952DE002142BD00000000000000000000000000000000000000
      00002100CE002900DE000000000000000000000000002900DE002900DE001000
      5A00000000000000000000000000000000000000000000000000008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000000000000000001029F7001029F7001021DE00DEE7
      F7002139EF001029F7001029F7002139F7000000000000000000FFFFFF001029
      F7001029F7001029F700BDBDBD0000000000315AE700738CEF00738CEF006384
      EF00000000009CADF7004A63E7004263E700395AE7003152E70000000000B5BD
      F7002952E7002952DE002142BD00000000000000000000000000000000002100
      C6002900DE000800290000000000000000000000000000000000000000002900
      DE002100BD000000000000000000000000000000000000000000008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000084840000000000000000005A6BFF001029F7001029F7001029
      E7001029F7001029F7002139F700000000000000000000000000BDBDCE001029
      F7001029F7003142CE00EFEFEF0000000000395AE7007B94EF00849CEF00738C
      EF00637BEF00F7F7FF000000000000000000000000000000000094A5F700395A
      E7003152E7003152DE002142BD000000000000000000000000002900DE002900
      DE00180084000000000000000000000000000000000000000000000000000000
      00002900DE000000000000000000000000000000000000000000008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001029F7001029F7001029
      F7001029F7002139F700000000000000000000000000A5ADDE001029F7001029
      F7001029F700CECECE0000000000000000004A63E70094A5F70094ADF7008494
      EF00738CEF006B84EF00637BEF00637BEF005A7BEF005A73EF005273E7004A6B
      E7004263E7003152DE001839BD000000000000000000000000002900DE002100
      BD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C94FF001029F7001029
      F7001029F7000821D6000818AD000818B5000821D6001029F7001029F7001029
      F700949CCE00FFFFFF0000000000000000005A7BEF008CA5EF0094A5F7007B94
      EF00738CEF006384EF00637BEF00637BEF005A7BEF005A73E7005273E7004A6B
      E700395AE7002952DE001031BD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B8CFF001029
      F7001029F7001029F7001029F7001029F7001029F7001029F7001029F7008C94
      E700FFFFFF0000000000000000000000000000000000637BEF004263E700395A
      E7003152E7003152E7003152E7003152E700294AE700294AE700214ADE00214A
      E7001842DE001039D600B5BDE700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7F7
      FF00314AF7001029F7001029F7001029F7001029F7004A63F700F7F7F7000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFF0000FFFFFFFFFFFF0000
      FFFFFFFFFFFF0000FFFFFFFFF0000000FF7FFDFFF0000000FE7FFCFF40000000
      FC7FFC7FF0000000F87FFC3F40000000F07FFC1FF0000000F87FFC3F40000000
      FC7FFC7FF0000000FE7FFCFF40000000FF7FFDFFF0000000FFFFFFFFFFFF0000
      FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFFFC00FFFFFFFFFFFFFC00
      07C1C007FFFF200007C1BFEBC00F000007C10005DFEF000001017E31DFEF0000
      00017E35D86F000002010006DFEF000002017FEAD86F000080038014DFEF0000
      C107C00AD88FE000C107E001DF8FF800E38FE007DF9FF000E38FF007C03FE001
      E38FF003FFFFC403FFFFF803FFFFEC07FFFEFFFFFFFFFFFF0001E7FBC001F00F
      0001C7F18031C0070101C3C38031C0030421E187803180010811F00F80010701
      1101F81F80010F011101FC3F80011E011109F81F8FF11C011101F00F8FF11861
      0111E1838FF100C10821C3E38FF101C103C1C7F78FF183830001C7FF8FF58003
      0001FFFF8001C0078001FFFFFFFFE01F00000000000000000000000000000000
      000000000000}
  end
  object QUsuarios: TADOQuery
    Connection = ADOSigma
    Parameters = <
      item
        Name = 'usu'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select '
      'USU_CODIGO, USU_NOMBRE, USU_CLAVE, '
      'USU_STATUS, USU_EMPDEFAULT,'
      'USU_CREA_NCF, usu_modifica_precio,'
      'usu_debajo_minimo, usu_debajo_costo,'
      'usu_excede_limite, usu_factura_negativo,'
      'usu_descuento, usu_excede_descuento,'
      'usu_modifica_factura, usu_aumenta_precio,'
      'usu_disminuye_precio, usu_ver_costo,'
      'usu_anula_ticket, usu_factura_cuentas,'
      'usu_modifica_otras_cotizaciones,'
      
        'par_mailservidor, par_mailcorreo, par_mailusuario, par_mailpuert' +
        'o, par_mailclave, par_mailOK, usu_vendedor, usu_solo_conduce'
      ',usu_modifica_nombreprod, usu_suc_default, usu_reenvia_dgii'
      'from'
      'USUARIOS'
      'where'
      'usu_codigo = :usu')
    Left = 24
    Top = 160
    object QUsuariosUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
    end
    object QUsuariosUSU_NOMBRE: TStringField
      FieldName = 'USU_NOMBRE'
      Size = 60
    end
    object QUsuariosUSU_CLAVE: TStringField
      FieldName = 'USU_CLAVE'
    end
    object QUsuariosUSU_STATUS: TStringField
      FieldName = 'USU_STATUS'
      FixedChar = True
      Size = 3
    end
    object QUsuariosUSU_EMPDEFAULT: TIntegerField
      FieldName = 'USU_EMPDEFAULT'
    end
    object QUsuariosUSU_CREA_NCF: TStringField
      FieldName = 'USU_CREA_NCF'
      Size = 5
    end
    object QUsuariosusu_modifica_precio: TStringField
      FieldName = 'usu_modifica_precio'
      Size = 5
    end
    object QUsuariosusu_debajo_minimo: TStringField
      FieldName = 'usu_debajo_minimo'
      Size = 5
    end
    object QUsuariosusu_debajo_costo: TStringField
      FieldName = 'usu_debajo_costo'
      Size = 5
    end
    object QUsuariosusu_excede_limite: TStringField
      FieldName = 'usu_excede_limite'
      Size = 5
    end
    object QUsuariosusu_factura_negativo: TStringField
      FieldName = 'usu_factura_negativo'
      Size = 5
    end
    object QUsuariosusu_descuento: TStringField
      FieldName = 'usu_descuento'
      Size = 5
    end
    object QUsuariosusu_excede_descuento: TStringField
      FieldName = 'usu_excede_descuento'
      Size = 5
    end
    object QUsuariosusu_modifica_factura: TStringField
      FieldName = 'usu_modifica_factura'
      Size = 5
    end
    object QUsuariosusu_aumenta_precio: TStringField
      FieldName = 'usu_aumenta_precio'
      Size = 5
    end
    object QUsuariosusu_disminuye_precio: TStringField
      FieldName = 'usu_disminuye_precio'
      Size = 5
    end
    object QUsuariosusu_ver_costo: TStringField
      FieldName = 'usu_ver_costo'
      Size = 5
    end
    object QUsuariosusu_anula_ticket: TStringField
      FieldName = 'usu_anula_ticket'
      Size = 5
    end
    object QUsuariosusu_factura_cuentas: TStringField
      FieldName = 'usu_factura_cuentas'
      Size = 5
    end
    object QUsuariosusu_modifica_otras_cotizaciones: TStringField
      FieldName = 'usu_modifica_otras_cotizaciones'
      Size = 5
    end
    object QUsuariospar_mailservidor: TStringField
      FieldName = 'par_mailservidor'
      Size = 100
    end
    object QUsuariospar_mailcorreo: TStringField
      FieldName = 'par_mailcorreo'
      Size = 100
    end
    object QUsuariospar_mailusuario: TStringField
      FieldName = 'par_mailusuario'
      Size = 100
    end
    object QUsuariospar_mailpuerto: TStringField
      FieldName = 'par_mailpuerto'
      Size = 100
    end
    object QUsuariospar_mailclave: TStringField
      FieldName = 'par_mailclave'
      Size = 100
    end
    object QUsuariospar_mailOK: TBooleanField
      FieldName = 'par_mailOK'
    end
    object QUsuariosusu_vendedor: TBooleanField
      FieldName = 'usu_vendedor'
    end
    object QUsuariosusu_solo_conduce: TBooleanField
      FieldName = 'usu_solo_conduce'
    end
    object QUsuariosusu_modifica_nombreprod: TBooleanField
      FieldName = 'usu_modifica_nombreprod'
    end
    object QUsuariosusu_suc_default: TIntegerField
      FieldName = 'usu_suc_default'
    end
    object QUsuariosusu_reenvia_dgii: TBooleanField
      FieldName = 'usu_reenvia_dgii'
    end
  end
  object QParamRH: TADOQuery
    Connection = ADOSigma
    CursorType = ctStatic
    DataSource = dsEmpresas
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
      'select * from'
      'Param_RHumanos'
      'where'
      'emp_codigo = :emp_codigo')
    Left = 24
    Top = 208
    object QParamRHemp_codigo: TIntegerField
      FieldName = 'emp_codigo'
    end
    object QParamRHpar_salario_minimo: TBCDField
      FieldName = 'par_salario_minimo'
      Precision = 18
      Size = 0
    end
    object QParamRHpar_idss_numero: TStringField
      FieldName = 'par_idss_numero'
      FixedChar = True
      Size = 10
    end
    object QParamRHpar_periodo_probatorio: TStringField
      FieldName = 'par_periodo_probatorio'
      FixedChar = True
      Size = 10
    end
    object QParamRHpar_zona_inspeccion: TStringField
      FieldName = 'par_zona_inspeccion'
      FixedChar = True
      Size = 10
    end
    object QParamRHpar_categoria: TStringField
      FieldName = 'par_categoria'
      FixedChar = True
      Size = 10
    end
    object QParamRHpar_poliza_numero: TStringField
      FieldName = 'par_poliza_numero'
      FixedChar = True
      Size = 10
    end
    object QParamRHpar_delegacion: TStringField
      FieldName = 'par_delegacion'
      FixedChar = True
      Size = 10
    end
    object QParamRHpar_de: TStringField
      FieldName = 'par_de'
      FixedChar = True
      Size = 10
    end
    object QParamRHpar_cuenta_bancaria: TStringField
      FieldName = 'par_cuenta_bancaria'
      FixedChar = True
      Size = 10
    end
    object QParamRHpar_salario_contribucion: TStringField
      FieldName = 'par_salario_contribucion'
      FixedChar = True
      Size = 10
    end
    object QParamRHpar_porcentaje_idss: TStringField
      FieldName = 'par_porcentaje_idss'
      FixedChar = True
      Size = 10
    end
    object QParamRHpar_tipo_descuento_salud: TIntegerField
      FieldName = 'par_tipo_descuento_salud'
    end
    object QParamRHpar_tipo_descuento_ss: TIntegerField
      FieldName = 'par_tipo_descuento_ss'
    end
    object QParamRHpar_aporte_empleado_ss: TIntegerField
      FieldName = 'par_aporte_empleado_ss'
    end
    object QParamRHpar_aporte_empresa_ss: TIntegerField
      FieldName = 'par_aporte_empresa_ss'
    end
    object QParamRHpar_tipo_ingrerso_salario: TIntegerField
      FieldName = 'par_tipo_ingrerso_salario'
    end
    object QParamRHpar_tipo_descuento_isr: TIntegerField
      FieldName = 'par_tipo_descuento_isr'
    end
    object QParamRHpar_tipo_descuento_afp: TIntegerField
      FieldName = 'par_tipo_descuento_afp'
    end
    object QParamRHpar_tipo_descuento_sfs: TIntegerField
      FieldName = 'par_tipo_descuento_sfs'
    end
    object QParamRHpar_tipo_descuento_cxc: TIntegerField
      FieldName = 'par_tipo_descuento_cxc'
    end
    object QParamRHpar_tipo_cliente_empleado: TIntegerField
      FieldName = 'par_tipo_cliente_empleado'
    end
    object QParamRHpar_cajero: TIntegerField
      FieldName = 'par_cajero'
    end
    object QParamRHpar_caja: TIntegerField
      FieldName = 'par_caja'
    end
    object QParamRHpar_acumulado: TStringField
      FieldName = 'par_acumulado'
      Size = 5
    end
    object QParamRHpar_banco: TIntegerField
      FieldName = 'par_banco'
    end
    object QParamRHpar_rrhh_numero_asignado: TIntegerField
      FieldName = 'par_rrhh_numero_asignado'
    end
    object QParamRHpar_rrhh_secuencia_H: TIntegerField
      FieldName = 'par_rrhh_secuencia_H'
    end
    object QParamRHpar_rrhh_email: TStringField
      FieldName = 'par_rrhh_email'
      Size = 40
    end
    object QParamRHpar_rrhh_numeroafiliacion: TIntegerField
      FieldName = 'par_rrhh_numeroafiliacion'
    end
    object QParamRHpar_rrhh_codigo_banco_popular: TIntegerField
      FieldName = 'par_rrhh_codigo_banco_popular'
    end
    object QParamRHpar_rrhh_suc_codigo_banco_popular: TIntegerField
      FieldName = 'par_rrhh_suc_codigo_banco_popular'
    end
  end
  object QNotificaComprobantes: TADOQuery
    Connection = ADOSigma
    Parameters = <>
    Left = 192
    Top = 8
  end
  object adoMultiUso: TADOQuery
    Connection = ADOSigma
    Parameters = <>
    Left = 344
    Top = 160
  end
  object QQuery1: TADOQuery
    Connection = ADOSigma
    Parameters = <>
    Left = 432
    Top = 192
  end
  object qBuscar: TADOQuery
    Connection = ADOSigma
    Parameters = <>
    Left = 296
    Top = 8
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = True
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 360
    Top = 8
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    OpenExcelAfterExport = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 360
    Top = 64
  end
  object DB_CIA: TfrxDBDataset
    UserName = 'DB_CIA'
    CloseDataSource = False
    FieldAliases.Strings = (
      'EMP_CODIGO=EMP_CODIGO'
      'EMP_DIRECCION=EMP_DIRECCION'
      'EMP_EMAIL=EMP_EMAIL'
      'EMP_FAX=EMP_FAX'
      'EMP_LOCALIDAD=EMP_LOCALIDAD'
      'EMP_NOMBRE=EMP_NOMBRE'
      'EMP_RNC=EMP_RNC'
      'EMP_STATUS=EMP_STATUS'
      'EMP_TELEFONO=EMP_TELEFONO'
      'EMP_WEB=EMP_WEB'
      'EMP_CONSOLIDAR=EMP_CONSOLIDAR'
      'EMP_PUEDECONSOLIDAR=EMP_PUEDECONSOLIDAR'
      'Direccion=Direccion'
      'EMP_LOGO=EMP_LOGO')
    DataSet = QEmpresas
    BCDToCurrency = False
    Left = 432
    Top = 8
  end
  object QRExcelFilter1: TQRExcelFilter
    UseXLColumns = False
    Left = 184
    Top = 64
  end
  object QRPDFFilter1: TQRPDFFilter
    CompressionOn = False
    FontHandling = fhSubstitute
    Left = 264
    Top = 64
  end
  object QRRTFFilter1: TQRRTFFilter
    Left = 184
    Top = 128
  end
  object ADOSigmaRest: TADOConnection
    ConnectionTimeout = 30
    ConnectOptions = coAsyncConnect
    KeepConnection = False
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    AfterConnect = ADOSigmaRestAfterConnect
    Left = 512
    Top = 248
  end
  object qRestBar: TADOQuery
    Connection = ADOSigmaRest
    Parameters = <>
    Left = 512
    Top = 192
  end
  object qProductosRest: TADOQuery
    Connection = ADOSigmaRest
    Parameters = <>
    SQL.Strings = (
      
        'SELECT ProductoID PRO_CODIGO, Nombre PRO_NOMBRE, PRECIO PRO_PREC' +
        'IO, '
      
        'CASE WHEN Itbis = 0 THEN '#39'N'#39' ELSE '#39'S'#39' END PRO_ITBIS, ISNULL(Bene' +
        'ficio,0) PRO_BENEFICIO, 0 Existencia,'#39'ACT'#39' PRO_STATUS, '
      #39'UND'#39' Unidad, '
      
        'CASE WHEN ActualizarExistencia = 1 THEN '#39'True'#39' else '#39'False'#39' end ' +
        'PRO_SERVICIO, MONTOITBIS'
      'FROM Productos'
      'ORDER BY ProductoID')
    Left = 520
    Top = 144
    object qProductosRestPRO_CODIGO: TAutoIncField
      FieldName = 'PRO_CODIGO'
      ReadOnly = True
    end
    object qProductosRestPRO_NOMBRE: TWideStringField
      FieldName = 'PRO_NOMBRE'
      Size = 255
    end
    object qProductosRestPRO_PRECIO: TFloatField
      FieldName = 'PRO_PRECIO'
    end
    object qProductosRestPRO_ITBIS: TStringField
      FieldName = 'PRO_ITBIS'
      ReadOnly = True
      Size = 1
    end
    object qProductosRestPRO_BENEFICIO: TBCDField
      FieldName = 'PRO_BENEFICIO'
      ReadOnly = True
      Precision = 19
    end
    object qProductosRestExistencia: TIntegerField
      FieldName = 'Existencia'
      ReadOnly = True
    end
    object qProductosRestPRO_STATUS: TStringField
      FieldName = 'PRO_STATUS'
      ReadOnly = True
      Size = 3
    end
    object qProductosRestUnidad: TStringField
      FieldName = 'Unidad'
      ReadOnly = True
      Size = 3
    end
    object qProductosRestPRO_SERVICIO: TStringField
      FieldName = 'PRO_SERVICIO'
      ReadOnly = True
      Size = 5
    end
    object qProductosRestMONTOITBIS: TBCDField
      FieldName = 'MONTOITBIS'
      Precision = 19
    end
  end
  object qAudit: TADOQuery
    Connection = ADOSigma
    Parameters = <>
    SQL.Strings = (
      
        'IF NOT EXISTS(SELECT * FROM sysobjects WHERE type = '#39'U'#39' AND name' +
        ' = '#39'ad_log_register'#39')  BEGIN'
      'CREATE TABLE [dbo].[ad_log_register]('
      #9'[emp_codigo] [int] NOT NULL,'
      #9'[suc_codigo] [int] NOT NULL,'
      #9'[rowid_audit] [int] IDENTITY(1,1) NOT NULL,'
      #9'[usu_codigo] [int] NOT NULL,'
      #9'[fecha] [datetime] NOT NULL,'
      #9'[tipo] [char](3) NOT NULL,'
      #9'[registro] [varchar](50) NOT NULL,'
      #9'[comentario] [varchar](2500) NOT NULL'
      ') ON [PRIMARY]'
      'end'
      ''
      '')
    Left = 440
    Top = 64
  end
  object qFechas: TADOQuery
    Connection = ADOSigma
    CursorType = ctStatic
    OnCalcFields = QEmpresasCalcFields
    Parameters = <>
    SQL.Strings = (
      
        'if not exists(select * from sys.objects where name = '#39'param_actu' +
        'aliza'#39') begin '
      'CREATE TABLE [dbo].[param_actualiza]('
      #9'[param_ejecutable] [varchar](15) NOT NULL DEFAULT '#39'DASHA.EXE'#39','
      #9'[fec_coment_1] [datetime] NULL )'
      #9'END'
      'GO'
      '')
    Left = 88
    Top = 104
  end
  object qActEnvDatCred: TADOQuery
    Connection = ADOSigma
    Parameters = <>
    SQL.Strings = (
      
        'UPDATE Movimientos SET MOV_ENV_DATACRED = 1 WHERE mov_status = '#39 +
        'PAG'#39)
    Left = 96
    Top = 160
  end
  object qUptimeDB: TADOQuery
    Connection = ADOSigma
    Parameters = <>
    SQL.Strings = (
      
        'IF NOT EXISTS (SELECT * FROM SYS.objects WHERE NAME = '#39'UpTimeDB'#39 +
        ') begin '
      'CREATE TABLE [dbo].[UpTimeDB]('
      #9'[rowid_reg] [int] NOT NULL,'
      #9'[nombre] [varchar](100) NOT NULL,'
      #9'[Fecha] datetime NOT NULL DEFAULT GETDATE())'
      'end')
    Left = 80
    Top = 248
  end
  object DBCia: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = QEmpresas
    BCDToCurrency = False
    Left = 240
    Top = 192
  end
  object qRevisarAlmDupliExist: TADOQuery
    Connection = ADOSigma
    Parameters = <>
    SQL.Strings = (
      'IF OBJECT_ID('#39'tempdb..#EXISTENCIAS'#39') IS NULL'
      'BEGIN'
      '--CREA BACKUP TABLA EXISTENCIAS TEMPORAL'
      'SELECT * INTO #EXISTENCIAS FROM EXISTENCIAS;'
      '--LIMPIA TABLA EXISTENCIAS REAL'
      'DELETE FROM EXISTENCIAS; '
      '--INSERTA TABLA EXISTENCIAS REAL SIN DUPLICIDA'
      'INSERT INTO EXISTENCIAS'
      'SELECT DISTINCT * FROM #EXISTENCIAS;'
      'END'
      'ELSE'
      'BEGIN'
      '--INSERTA EN TABLA EXISTENCIAS TEMPORAL'
      'INSERT INTO #EXISTENCIAS'
      'SELECT * FROM EXISTENCIAS;'
      '--LIMPIA TABLA EXISTENCIAS REAL'
      'DELETE FROM EXISTENCIAS ;'
      '--INSERTA TABLA EXISTENCIAS REAL SIN DUPLICIDA'
      'INSERT INTO EXISTENCIAS'
      'SELECT DISTINCT * FROM #EXISTENCIAS;'
      'END')
    Left = 536
    Top = 48
  end
  object ADOQuery1: TADOQuery
    Connection = ADOSigma
    Parameters = <>
    SQL.Strings = (
      
        'IF NOT EXISTS (SELECT * FROM SYS.objects WHERE NAME = '#39'UpTimeDB'#39 +
        ') begin '
      'CREATE TABLE [dbo].[UpTimeDB]('
      #9'[rowid_reg] [int] NOT NULL,'
      #9'[nombre] [varchar](100) NOT NULL,'
      #9'[Fecha] datetime NOT NULL DEFAULT GETDATE())'
      'end')
    Left = 80
    Top = 248
  end
  object qEjecutar: TADOQuery
    Connection = ADOSigma
    Parameters = <>
    Left = 280
    Top = 128
  end
end

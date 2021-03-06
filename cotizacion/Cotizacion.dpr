program Cotizacion;

{$R *.dres}

uses
  OneInstance,
  Forms,
  Controls,
  Windows,
  unCustomDataModule in '..\Comunes\unCustomDataModule.pas' {dmCustomDataModule: TDataModule},
  unDmPrincipal in '..\Comunes\ORACLE\unDmPrincipal.pas' {dmPrincipal: TDataModule},
  unArtFrame in '..\Comunes\REPOSIT\unArtFrame.pas' {ArtFrame: TFrame},
  unFraCodigoDescripcion in '..\Comunes\FRAMES\unFraCodigoDescripcion.pas' {fraCodigoDescripcion: TFrame},
  unFraCtbTablas in '..\Comunes\FRAMES\unFraCtbTablas.pas' {fraCtbTablas: TFrame},
  unArtDBAwareFrame in '..\Comunes\REPOSIT\unArtDBAwareFrame.pas' {ArtDBAwareFrame: TFrame},
  unArtDbFrame in '..\Comunes\REPOSIT\unArtDbFrame.pas' {ArtDbFrame: TFrame},
  unFraTrabajador in '..\Comunes\FRAMES\NEW\unFraTrabajador.pas' {fraTrabajador: TFrame},
  unArtMessages in '..\..\Comunes\unArtMessages.pas',
  unFraStaticCodigoDescripcion in '..\Comunes\FRAMES\unFraStaticCodigoDescripcion.pas' {fraStaticCodigoDescripcion: TFrame},
  unFraStaticCTB_TABLAS in '..\Comunes\FRAMES\unFraStaticCTB_TABLAS.pas' {fraStaticCTB_TABLAS: TFrame},
  unCustomPanelABM in '..\Comunes\REPOSIT\unCustomPanelABM.pas' {frmCustomPanelABM},
  unCustomConsulta in '..\Comunes\REPOSIT\unCustomConsulta.pas' {frmCustomConsulta},
  unAdminCotizacion in 'unAdminCotizacion.pas' {frmAdminCotizacion},
  unfraStaticActividad in '..\Comunes\FRAMES\unfraStaticActividad.pas' {fraStaticActividad: TFrame},
  unFraUsuario in '..\Comunes\FRAMES\NEW\unFraUsuario.pas' {fraUsuarios: TFrame},
  unConsultaCotizacion in 'unConsultaCotizacion.pas' {frmConsultaCotizacion},
  unQRAnalisisFidelitas in 'Reports\unQRAnalisisFidelitas.pas' {qrAnalisisFidelitas: TQuickRep},
  unDatosPrevencion in 'unDatosPrevencion.pas' {frmDatosPrevencion},
  unConsultaPonderado in 'unConsultaPonderado.pas' {frmConsultaPonderado},
  unAdminPonderado in 'unAdminPonderado.pas' {frmAdminPonderado},
  unCustomGridABM in '..\Comunes\REPOSIT\unCustomGridABM.pas' {frmCustomGridABM},
  unfraCuentaBancaria in '..\Comunes\FRAMES\NEW\unfraCuentaBancaria.pas' {fraCuentaBancaria: TFrame},
  unCargaSRTCoti in 'unCargaSRTCoti.pas' {frmCargaSRTCoti},
  unQRCartaSolicitud in 'Reports\unQRCartaSolicitud.pas' {QrCartaSolicitud: TQuickRep},
  unQRAnalisis in 'Reports\unQRAnalisis.pas' {QRAnalisis: TQuickRep},
  unManCtbTablas in '..\Comunes\Forms\unManCtbTablas.pas' {frmManCtbTablas},
  unGeneraPDF in 'unGeneraPDF.pas',
  unQRAnalisisChart in 'Reports\unQRAnalisisChart.pas' {qrAnalisisChart: TQuickRep},
  ArtMail in '..\..\Comunes\ArtMail.pas',
  unManCostoSiniestral in 'unManCostoSiniestral.pas' {frmManCostoSiniestral},
  unManTarifario in '..\Comunes\Forms\unManTarifario.pas' {frmManTarifario},
  unFraEntidades in '..\Comunes\FRAMES\unFraEntidades.pas' {fraEntidades: TFrame},
  unfraVendedores in '..\Comunes\FRAMES\unfraVendedores.pas' {fraVendedores: TFrame},
  unManACA_CANAL in '..\Comunes\Forms\unManACA_CANAL.pas' {frmManACA_CANAL},
  unManASU_SUCURSAL in '..\Comunes\Forms\unManASU_SUCURSAL.pas' {frmManASU_SUCURSAL},
  unManACR_CENTROREGIONAL in '..\Comunes\Forms\unManACR_CENTROREGIONAL.pas' {frmManACR_CENTROREGIONAL},
  unFraCanal in '..\Comunes\FRAMES\NEW\unFraCanal.pas' {fraCanal: TFrame},
  unfraSucursal in '..\Comunes\FRAMES\NEW\unfraSucursal.pas' {fraSucursal: TFrame},
  unFraCentroRegional in '..\Comunes\FRAMES\NEW\unFraCentroRegional.pas' {fraCentroRegional: TFrame},
  unManAGE_GRUPOECONOMICO in '..\Comunes\Forms\unManAGE_GRUPOECONOMICO.pas' {frmManAGE_GRUPOECONOMICO},
  unCotizacion in 'unCotizacion.pas',
  ParamFuncs,
  unSesion in '..\..\Comunes\unSesion.pas',
  unManTarComercial in '..\Comunes\Forms\unManTarComercial.pas' {frmManTarComercial},
  UnRptMoldeCarta in '..\Comunes\REPORTS\UnRptMoldeCarta.pas' {qrMoldeCarta: TQuickRep},
  unQREventos in 'Reports\unQREventos.pas' {qrEventos: TQuickRep},
  unVisualizador in '..\Comunes\unVisualizador.pas' {frmVisualizador},
  Cuit in '..\..\Comunes\Cuit.pas',
  unDebug in '..\Comunes\unDebug.pas' {frmDebug},
  unExterno in 'Externo\unExterno.pas',
  unCustomForm in '..\Comunes\unCustomForm.pas' {frmCustomForm},
  unFraToolbarRTF in '..\Comunes\FRAMES\unFraToolbarRTF.pas' {fraToolbarRTF: TFrame},
  unEnvioMail in '..\..\Comunes\unEnvioMail.pas' {frmEnvioMail},
  unCentroComercializacion in 'unCentroComercializacion.pas' {frmCentroComercializacion},
  unMoldeEnvioMail in '..\Comunes\Envio de Mails\unMoldeEnvioMail.pas' {frmMoldeEnvioMail},
  unManCIIUNoAutoCotizables in 'unManCIIUNoAutoCotizables.pas' {frmManCIIUNoAutoCotizables},
  unLibretaDeDirecciones in '..\Comunes\Forms\unLibretaDeDirecciones.pas' {frmLibretaDeDirecciones},
  unElementosEnviados in '..\Comunes\Forms\unElementosEnviados.pas',
  unfraUsuarios in '..\Comunes\FRAMES\unfraUsuarios.pas' {fraUsuario: TFrame},
  unContratoContacto in '..\comunes\forms\unContratoContacto.pas' {frmContratoContacto},
  unfraContacto in '..\Comunes\FRAMES\unfraContacto.pas' {fraContacto: TFrame},
  unEspera in '..\Comunes\Forms\unEspera.pas' {frmEspera},
  unManVendedoresPorCanal in 'unManVendedoresPorCanal.pas' {frmManVendedoresPorCanal},
  unFiltros in '..\..\Comunes\unFiltros.pas',
  unFraEmpresa in '..\Comunes\FRAMES\NEW\unFraEmpresa.pas' {fraEmpresa: TFrame},
  unFraTelefono in '..\comunes\frames\new\unFraTelefono.pas' {fraTelefono: TFrame},
  unABMTelefonos in '..\comunes\forms\unABMTelefonos.pas',
  unFraCodDesc in '..\Comunes\FRAMES\NUEVOS\unFraCodDesc.pas' {fraCodDesc: TFrame},
  unTelefonosCargaRapida in '..\comunes\forms\unTelefonosCargaRapida.pas' {frmTelefonosCargaRapida},
  unExportPDF in '..\..\comunes\unExportPDF.pas',
  AnsiSQL in '..\..\Comunes\AnsiSQL.pas',
  ArchFuncs in '..\..\Comunes\ArchFuncs.pas',
  ArtFuncs in '..\..\Comunes\ArtFuncs.pas',
  BinUtils in '..\..\Comunes\BinUtils.pas',
  ConditionParser in '..\..\Comunes\ConditionParser.pas',
  CRC32 in '..\..\Comunes\CRC32.pas',
  Creditc in '..\..\Comunes\Creditc.pas',
  CustomClasses in '..\..\Comunes\CustomClasses.pas',
  CustomDlgs in '..\..\Comunes\CustomDlgs.pas',
  DateTimeFuncs in '..\..\Comunes\DateTimeFuncs.pas',
  DbFuncs in '..\..\Comunes\DbFuncs.pas',
  DBSql in '..\..\Comunes\DBSql.pas',
  DTPFuncs in '..\..\Comunes\DTPFuncs.pas',
  Encriptacion in '..\..\Comunes\Encriptacion.pas',
  General in '..\..\Comunes\General.pas',
  Hashes in '..\..\Comunes\Hashes.pas',
  Internet in '..\..\Comunes\Internet.pas',
  LogFile in '..\..\Comunes\LogFile.pas',
  md5 in '..\..\Comunes\md5.pas',
  numeros in '..\..\Comunes\numeros.pas',
  ODBC in '..\..\Comunes\ODBC.pas',
  unManTarComercial2006 in '..\comunes\forms\unManTarComercial2006.pas' {frmManTarComercial2006},
  unManCIIUExcluidos in 'unManCIIUExcluidos.pas' {frmManCIIUExcluidos},
  unManMotivosCancelacion in 'unManMotivosCancelacion.pas' {frmManMotivosCancelacion},
  unManMotivosRevision in 'unManMotivosRevision.pas' {frmManMotivosRevision},
  unManCIIUSinDescripcion in 'unManCIIUSinDescripcion.pas' {frmCIIUSinDescripcion},
  unManMotivosExcepcion in 'unManMotivosExcepcion.pas' {frmManMotivosExcepcion},
  unManEmailsComercial in 'unManEmailsComercial.pas' {frmManEmailsComercial},
  unReservasCuit in 'unReservasCuit.pas' {frmReservasCuit},
  unUsuariosWeb in 'unUsuariosWeb.pas' {frmUsuariosWeb},
  VCLExtra in '..\..\comunes\VCLExtra.pas',
  unFraVistaTIFF in '..\comunes\frames\new\unFraVistaTIFF.pas' {fraVistaTIFF: TFrame},
  unFraRTD_TIPODOCUMENTO in '..\comunes\frames\new\unFraRTD_TIPODOCUMENTO.pas' {fraRTD_TIPODOCUMENTO: TFrame},
  unFraDigitalizacion in '..\comunes\frames\new\unFraDigitalizacion.pas' {fraDigitalizacion: TFrame},
  unVisualizadorDigitalizacion in '..\comunes\forms\unVisualizadorDigitalizacion.pas' {frmVisualizadorDigitalizacion},
  unQRCotizador in 'Reports\unQRCotizador.pas' {qrCotizador: TQuickRep},
  unCotizador in 'unCotizador.pas' {frmCotizador},
  ungrids in '..\..\comunes\ungrids.pas',
  unManEstCuentaWeb in 'unManEstCuentaWeb.pas' {frmManEstCuentaWeb},
  unReAfiliacion in 'unReAfiliacion.pas' {frmReAfiliacion},
  unQRRevisionPrecio in 'Reports\unQRRevisionPrecio.pas' {qrRevisionPrecio: TQuickRep},
  unManARS_RESPUESTASOLICREAFILIACION in 'unManARS_RESPUESTASOLICREAFILIACION.pas' {frmManARS_RESPUESTASOLICREAFILIACION},
  unConsFax in '..\Comunes\Forms\unConsFax.pas',
  unEstrategiaTIFF in '..\fax\faxclient_new\unEstrategiaTIFF.pas',
  unfraFFO_FAXFORMULARIO in '..\fax\faxclient_new\frames\unfraFFO_FAXFORMULARIO.pas' {fraFFO_FAXFORMULARIO: TFrame},
  unManRDO_DOCUMENTO in '..\archivo_new\abm\unManRDO_DOCUMENTO.pas' {frmManRDO_DOCUMENTO: TFSForm},
  unFraEstablecimiento in '..\comunes\frames\new\unFraEstablecimiento.pas' {fraEstablecimiento: TFrame},
  unManMotivosCierre in 'unManMotivosCierre.pas' {frmManMotivosCierre: TFSForm},
  unSeleccionDestinatarios in '..\comunes\unSeleccionDestinatarios.pas' {frmSeleccionDestinatarios: TFSForm},
  unfraEntidadCUIT in '..\comunes\frames\new\unfraEntidadCUIT.pas' {fraEntidadCUIT: TFrame},
  unfraVendedoresCUIT in '..\comunes\frames\new\unfraVendedoresCUIT.pas' {fraVendedoresCUIT: TFrame},
  unfraCPR_PRESTADOR in '..\comunes\frames\new\unfraCPR_PRESTADOR.pas' {fraCPR_PRESTADOR: TFrame},
  unRecotizaciones in 'unRecotizaciones.pas' {frmRecotizaciones},
  unFraColumnaRecotizacion in 'frames\unFraColumnaRecotizacion.pas' {fraColumnaRecotizacion: TFrame},
  unSiniestros in '..\siniestros\unSiniestros.pas',
  unRptMinutaComite in '..\afiliaciones\reports\unRptMinutaComite.pas' {qrMinutaComite: TQuickRep},
  unUsuariosMinutaComiteNegocios in 'unUsuariosMinutaComiteNegocios.pas' {frmUsuariosMinutaComiteNegocios: TFSForm},
  unUsuariosAutorizacion in 'unUsuariosAutorizacion.pas' {frmUsuariosAutorizacion: TFSForm},
  unNovedades in '..\..\comunes\unNovedades.pas',
  unMotivosCancelacionRevisionPrecios in 'unMotivosCancelacionRevisionPrecios.pas' {frmMotivosCancelacionRevisionPrecios: TFSForm},
  unFormularioValidacionYRectificacionDatosEstablecimientos in '..\comunes\forms\unFormularioValidacionYRectificacionDatosEstablecimientos.pas' {frmFormularioValidacionYRectificacionDatosEstablecimientos},
  unRptFormularioValidacionYRectificacionDatosEstablecimientos in '..\comunes\reports\unRptFormularioValidacionYRectificacionDatosEstablecimientos.pas' {qrFormularioValidacionYRectificacionDatosEstablecimientos: TQuickRep},
  unUsuariosExcepcionRevision in 'unUsuariosExcepcionRevision.pas' {frmUsuariosExcepcionRevision: TFSForm},
  unZonasGeograficas in 'unZonasGeograficas.pas' {frmZonasGeograficas: TFSForm},
  unPonderadoresTipoSiniestro in 'unPonderadoresTipoSiniestro.pas' {frmPonderadoresTipoSiniestro: TFSForm},
  unPonderadoresPorAno in 'unPonderadoresPorAno.pas' {frmPonderadoresPorAno: TFSForm},
  unQRNotificacionClienteRevisionPrecios in 'Reports\unQRNotificacionClienteRevisionPrecios.pas' {QRNotificacionClienteRevisionPrecios: TQuickRep},
  unCustomPrincipal in '..\comunes\reposit\unCustomPrincipal.pas' {frmCustomPrincipal},
  unPrincipal in 'unPrincipal.pas' {frmPrincipal},
  unRptGestionDeReclamos in '..\comunes\reports\unRptGestionDeReclamos.pas' {frmRptGestionDeReclamos},
  unRptCartaDocHeader in '..\comunes\reports\unRptCartaDocHeader.pas' {rptCartaDocHeader: TQuickRep},
  unGastosEstructura in 'unGastosEstructura.pas' {frmGastosEstructura: TFSForm},
  unCobranzas in '..\..\comunes\unCobranzas.pas',
  unQrEstadoCuentaResumen in '..\cobranzas\reports\unQrEstadoCuentaResumen.pas' {frmEstadoCuentaResumen},
  unEstadoCuenta in '..\cobranzas\unEstadoCuenta.pas',
  unImpresionEstadoDeCuenta in '..\cobranzas\unImpresionEstadoDeCuenta.pas' {frmImpresionEstadodeCuenta},
  unQRF801C in '..\cobranzas\reports\unQRF801C.pas' {QRF801C: TQuickRep},
  unQRF817 in '..\cobranzas\reports\unQRF817.pas' {QRF817: TQuickRep},
  unQRCartaDocIntimacion in '..\cobranzas\reports\unQRCartaDocIntimacion.pas' {QRCartaDocIntimacion: TQuickRep},
  unRptCartaDocumento in '..\comunes\reports\unRptCartaDocumento.pas' {rptCartaDocumento: TQuickRep},
  unRptCartaDocCompensacion in '..\cobranzas\compensacion\reports\unRptCartaDocCompensacion.pas' {rptCartaDocCompensacion: TQuickRep},
  unQrLibreDeuda in '..\cobranzas\reports\unQrLibreDeuda.pas' {qrLibreDeuda: TQuickRep},
  unQrEstadoCuentaDetalle in '..\cobranzas\reports\unQrEstadoCuentaDetalle.pas' {frmEstadoCuentaDetalle},
  unQRCartaDocIntimacionNuevaGrilla in '..\cobranzas\reports\unQRCartaDocIntimacionNuevaGrilla.pas' {QRCartaDocIntimacionNuevaGrilla: TQuickRep},
  unManValorReferenciaCartera in 'unManValorReferenciaCartera.pas' {frmManValorReferenciaCartera: TFSForm},
  unFaxEnviados in '..\comunes\forms\unFaxEnviados.pas' {frmFaxEnviados: TFSForm},
  unFraTrabajadorSiniestro in '..\comunes\frames\new\unFraTrabajadorSiniestro.pas' {fraTrabajadorSiniestro: TFrame},
  unVentanillaElectronica in '..\comunes\forms\unVentanillaElectronica.pas' {frmVentanillaElectronica: TFSForm},
  unAgendaTelefonica in '..\comunes\forms\unAgendaTelefonica.pas' {frmAgendaTelefonica: TFSForm},
  unDigitalizacion in '..\..\comunes\unDigitalizacion.pas',
  unUsuariosSolicitudPermisoRevisionLegales in 'unUsuariosSolicitudPermisoRevisionLegales.pas' {frmUsuariosSolicitudPermisoRevisionLegales: TFSForm},
  unImportFromBCRA in '..\comunes\unImportFromBCRA.pas' {frmImportFromBCRA},
  unBusquedaDomicilio in '..\comunes\forms\unBusquedaDomicilio.pas' {frmBusquedaDomicilio: TFSForm},
  unManCGI_GIS in '..\comunes\forms\unManCGI_GIS.pas' {frmManCGI_GIS: TFSForm},
  unVisorPDF in '..\comunes\forms\unVisorPDF.pas' {frmVisorPDF},
  unFraNavegadorWEB in '..\comunes\frames\new\unFraNavegadorWEB.pas' {fraNavegadorWEB: TFrame},
  unFraDomicilio in '..\comunes\frames\new\unFraDomicilio.pas' {fraDomicilio: TFrame},
  unFraDomicilioGIS in '..\comunes\frames\new\unFraDomicilioGIS.pas' {fraDomicilioGIS: TFrame},
  unGoogleMaps in '..\comunes\forms\unGoogleMaps.pas' {frmGoogleMaps},
  unRptAnexoRes365 in '..\comunes\reports\unRptAnexoRes365.pas' {qrAnexoRes365: TQuickRep},
  OneSession in '..\..\comunes\OneSession.pas',
  unHistorialVigenciasContrato in 'unHistorialVigenciasContrato.pas' {frmHistorialVigenciasContrato: TFSForm},
  unRptEstadisticasRGRL in '..\comunes\reports\unRptEstadisticasRGRL.pas' {qrEstadisticasRGRL: TQuickRep},
  unRptRGRL in '..\comunes\reports\unRptRGRL.pas' {qrRGRL: TQuickRep},
  unRGRL in '..\comunes\forms\unRGRL.pas' {frmRGRL},
  unManCPG_PLAZOGUARDA in '..\comunes\forms\unManCPG_PLAZOGUARDA.pas' {frmManCPG_PLAZOGUARDA: TFSForm},
  unManCTA_TIPOACTIVOS in '..\comunes\forms\unManCTA_TIPOACTIVOS.pas' {frmManCTA_TIPOACTIVOS: TFSForm},
  unClasificacionActivos in '..\comunes\forms\unClasificacionActivos.pas' {frmClasificacionActivos: TFSForm},
  unAnexoRes365 in '..\comunes\forms\unAnexoRes365.pas' {frmAnexoRes365},
  unFraEmpresaAfi in '..\comunes\frames\new\unFraEmpresaAfi.pas' {fraEmpresaAfi: TFrame},
  unQRSolicitudAfiliacion in '..\afiliaciones\reports\unQRSolicitudAfiliacion.pas' {qrSolicitudAfiliacion: TQuickRep},
  unfraCodigoDescripcionExt in '..\comunes\frames\unfraCodigoDescripcionExt.pas' {fraCodigoDescripcionExt: TFrame},
  unSeleccionMultiple in '..\comunes\forms\unSeleccionMultiple.pas' {frmSeleccionUsuarios: TFrame},
  unRemitoSolicitudesCargadas in 'unRemitoSolicitudesCargadas.pas' {frmRemitoSolicitudesCargadas: TFSForm},
  unAdministracionArchivosRevisionPrecio in 'unAdministracionArchivosRevisionPrecio.pas' {frmAdministracionArchivosRevisionPrecio: TFSForm},
  unManCIIUTipoRiesgo in 'unManCIIUTipoRiesgo.pas' {frmManCIIUTipoRiesgo: TFSForm},
  unContratoVendedor in '..\afiliaciones\unContratoVendedor.pas' {frmContratoVendedor},
  unImpoExpoWizard in '..\impoexpo\unImpoExpoWizard.pas' {frmImpoExpoWizard},
  unArt in '..\..\comunes\unArt.pas',
  unFraTitulo in '..\comunes\frames\nuevos\unFraTitulo.pas' {fraTitulo: TFrame},
  unFraUsuarioConSectorIntranet in '..\comunes\frames\new\unFraUsuarioConSectorIntranet.pas' {fraUsuarioConSectorIntranet: TFrame},
  unFraUsuarioConJerarquias in '..\comunes\frames\new\unFraUsuarioConJerarquias.pas' {fraUsuarioConJerarquias: TFrame},
  unFraValidacionDatosEmpresa in '..\comunes\frames\new\unFraValidacionDatosEmpresa.pas' {fraValidacionDatosEmpresa: TFrame},
  unArbolSectores in '..\usuarios\unArbolSectores.pas' {frmArbolSectores},
  unAyuda in '..\comunes\unAyuda.pas' {frmAyuda},
  unSeleccionResponsableHYS in '..\hys\unSeleccionResponsableHYS.pas' {frmSeleccionResponsableHYS: TFSForm},
  unInterfaces in '..\..\comunes\interfaces\unInterfaces.pas',
  unContratoTrabajador in '..\afiliaciones\unContratoTrabajador.pas',
  unFraActividad in '..\comunes\frames\unFraActividad.pas' {fraActividad: TFrame},
  unDlgBusSiniestro in '..\siniestros\unDlgBusSiniestro.pas' {frmDlgBusSiniestro: TFSForm},
  unFraDomicilioTrab in '..\Comunes\FRAMES\NEW\unFraDomicilioTrab.pas' {fraDomicilioTrab: TFrame},
  unEstablecimientosTrabajador in '..\afiliaciones\unEstablecimientosTrabajador.pas' {frmEstablecimientosTrabajador},
  unOpcionesDeImpresion in '..\Cobranzas\unOpcionesDeImpresion.pas' {frmOpcionesDeImpresion},
  unFraDomicilioEmpresa in '..\comunes\frames\new\unFraDomicilioEmpresa.pas' {fraDomicilioEmpresa: TFrame},
  unAfiliaciones in '..\afiliaciones\unAfiliaciones.pas',
  unVisor in '..\comunes\forms\unVisor.pas' {frmVisor},
  unArchivoVisor in '..\comunes\unArchivoVisor.pas',
  unVisorExcel in '..\comunes\forms\unVisorExcel.pas' {frmVisorExcel},
  unUtilsArchivo in '..\archivo_new\unUtilsArchivo.pas',
  unUsuariosPermisoDescuento in 'unUsuariosPermisoDescuento.pas' {frmUsuariosPermisoDescuento: TFSForm},
  unQrEtiquetasDocCarpetas in '..\archivo_new\unQrEtiquetasDocCarpetas.pas' {qrEtiquetasDocCarpetas: TQuickRep},
  unArchivo in '..\archivo_new\unArchivo.pas',
  uncomunes in '..\..\Comunes\uncomunes.pas',
  unRptPlantillaRGRL in '..\comunes\reports\unRptPlantillaRGRL.pas' {qrPlantillaRGRL: TQuickRep},
  unfraDelegacion in '..\comunes\frames\unfraDelegacion.pas' {fraDelegacion: TFrame},
  unfraSectores in '..\comunes\frames\unfraSectores.pas' {fraSectores: TFrame},
  unFrmConsultaCarpetas in '..\archivo_new\unFrmConsultaCarpetas.pas' {FrmConsultaCarpetas: TFSForm},
  unFrmSolicitudCarpeta in '..\archivo_new\unFrmSolicitudCarpeta.pas' {FrmSolicitudCarpeta: TFSForm},
  unQrEtiquetasCarpetas in '..\archivo_new\unQrEtiquetasCarpetas.pas' {qrEtiquetasCarpetas: TQuickRep},
  unFraDetalleArchivo in '..\archivo_new\frames\unFraDetalleArchivo.pas' {fraDetalleArchivo: TFrame},
  unFrmDetalleArchivo in '..\archivo_new\unFrmDetalleArchivo.pas' {FrmDetalleArchivo},
  unMovimientoCarpetas in '..\archivo_new\unMovimientoCarpetas.pas' {frmMovimientoCarpetas},
  unFrmCargaDocumentacion in '..\archivo_new\unFrmCargaDocumentacion.pas' {frmCargaDocumentacion},
  unQrDetalleLoteEstudio in '..\archivo_new\unQrDetalleLoteEstudio.pas' {QrDetalleLoteEstudio},
  unReemplazoCarpetas in '..\archivo_new\unReemplazoCarpetas.pas' {frmReemplazoCarpetas},
  unfrmUbicacionActual in '..\archivo_new\unfrmUbicacionActual.pas' {FrmUbicacionActual},
  unFraFiltroArchivo in '..\archivo_new\frames\unFraFiltroArchivo.pas' {fraFiltroArchivo: TFrame},
  unfraArchJuicio in '..\archivo_new\frames\unfraArchJuicio.pas' {fraArchJuicio: TFrame},
  unfraProveedor in '..\comunes\frames\new\unfraProveedor.pas' {fraProveedor: TFrame},
  unCapturarCodigoBarras in '..\comunes\unCapturarCodigoBarras.pas' {frmCapturarCodigoBarras},
  unManCIIUDescuentoPrimeraCuota in 'unManCIIUDescuentoPrimeraCuota.pas' {frmCIIUDescuentoPrimeraCuota: TFSForm},
  unManRangoCapitas in 'unManRangoCapitas.pas' {frmManRangoCapitas: TFSForm},
  unManSiniestralidad in 'unManSiniestralidad.pas' {frmManSiniestralidad: TFSForm},
  unManSumaAsegurada in 'unManSumaAsegurada.pas' {frmManSumaAsegurada: TFSForm},
  unDmFinancials in '..\comunes\oracle\unDmFinancials.pas' {dmFinancials: TDataModule},
  unConstantArchivo in '..\archivo_new\unConstantArchivo.pas',
  unfraPrestador in '..\comunes\frames\unfraPrestador.pas' {fraPrestador: TFrame},
  unImportFromSRTReclamos in '..\comunes\unImportFromSRTReclamos.pas' {frmImportFromSRTReclamos},
  unCustomSplash in '..\comunes\reposit\unCustomSplash.pas' {frmCustomSplash},
  unWelcomeSplash in '..\comunes\forms\unWelcomeSplash.pas' {frmWelcomeSplash},
  unComisiones in '..\afiliaciones\comisiones\unComisiones.pas',
  unFactoresCotizador in 'unFactoresCotizador.pas' {frmFactoresCotizador: TFSForm},
  unManAPC_PERMITECLONACION in '..\comunes\forms\unManAPC_PERMITECLONACION.pas' {frmManAPC_PERMITECLONACION: TFSForm},
  unManARE_RELACIONESTADO in '..\comunes\forms\unManARE_RELACIONESTADO.pas' {frmManARE_RELACIONESTADO: TFSForm},
  unManPermisoCotizacion in 'unManPermisoCotizacion.pas' {frmManPermisoCotizacion: TFSForm},
  unTesoreria in '..\afiliaciones\tesoreria\unTesoreria.pas',
  unManPermisoRevisionPrecio in 'unManPermisoRevisionPrecio.pas' {frmManPermisoRevisionPrecio: TFSForm},
  unPrimaMinimaCapita in 'unPrimaMinimaCapita.pas' {frmPrimaMinimaCapita: TFSForm},
  unCuitsNoAutomaticos in 'unCuitsNoAutomaticos.pas' {frmCuitsNoAutomaticos: TFSForm},
  unfraImportUART in '..\comunes\frames\unfraImportUART.pas' {fraImportUART: TFrame},
  unCampanaF931 in 'unCampanaF931.pas' {frmCampanaF931: TFSForm},
  unManIncidenciaInItinere in '..\comunes\forms\unManIncidenciaInItinere.pas' {frmManIncidenciaInItinere: TFSForm},
  unManCoeficientes in 'unManCoeficientes.pas',
  unControlCampanaF931 in 'unControlCampanaF931.pas' {frmControlCampanaF931: TFSForm},
  unQrDetalleRemitoDevolucion in '..\archivo_new\unQrDetalleRemitoDevolucion.pas' {QrDetalleRemitoDevolucion},
  unManSECLOS in 'unManSECLOS.pas' {frmManSECLOS: TFSForm},
  unUsuariosPermisoTarifaMinima in 'unUsuariosPermisoTarifaMinima.pas' {frmUsuariosPermisoTarifaMinima: TFSForm},
  unManCVS_VENTANILLA_SUBTEMAS in '..\comunes\forms\unManCVS_VENTANILLA_SUBTEMAS.pas' {frmManCVS_VENTANILLA_SUBTEMAS: TFSForm},
  unImpoExpoUtils in '..\impoexpo\unImpoExpoUtils.pas',
  unCuadroTarifarioContrato in '..\afiliaciones\unCuadroTarifarioContrato.pas' {frmContratoTarifa},
  unImportCryptoSrt in '..\..\comunes\unImportCryptoSrt.pas',
  unImportFromSRT in '..\comunes\unImportFromSRT.pas' {frmImportFromSRT},
  unCargaDocumentosDigitaliz in '..\comunes\forms\unCargaDocumentosDigitaliz.pas' {frmCargaDocumentosDigitaliz},
  unManCCP_CUENTAPAGO in '..\comunes\forms\unManCCP_CUENTAPAGO.pas' {frmManCCP_CUENTAPAGO: TFSForm},
  unAltaModifCCP_CUENTAPAGO in '..\comunes\forms\unAltaModifCCP_CUENTAPAGO.pas' {frmAltaModifCCP_CUENTAPAGO},
  unConsultasAdicionales in '..\comunes\forms\unConsultasAdicionales.pas' {frmConsultasAdicionales},
  unUsuariosVisualizacionPrestacionesEspeciales in 'unUsuariosVisualizacionPrestacionesEspeciales.pas' {frmUsuariosVisualizacionPrestacionesEspeciales: TFSForm},
  unRecepcionSolicitud in '..\afiliaciones\unRecepcionSolicitud.pas' {frmRecepcionSolicitud: TFSForm},
  unCargaSRT in '..\afiliaciones\unCargaSRT.pas' {frmCargaSRT},
  unCargaEstablecimiento in '..\afiliaciones\unCargaEstablecimiento.pas' {frmCargaEstablecimiento},
  unCargaTrabajador in '..\afiliaciones\unCargaTrabajador.pas' {frmCargaTrabajador},
  unCargaSolicitud in '..\afiliaciones\unCargaSolicitud.pas' {frmCargaSolicitudes},
  unfraCuadroTarifario in '..\comunes\frames\unfraCuadroTarifario.pas' {fraCuadroTarifario: TFrame},
  unFraEmpresaSolicitud in '..\comunes\frames\new\unFraEmpresaSolicitud.pas' {fraEmpresaSolicitud: TFrame},
  unAdministracionArchivosRecepcion in '..\afiliaciones\unAdministracionArchivosRecepcion.pas' {frmAdministracionArchivosRecepcion: TFSForm},
  unRptSolicitud in '..\afiliaciones\reports\unRptSolicitud.pas' {RptSolicitud: TQuickRep},
  unDatosLegajosDigitalizacion in '..\afiliaciones\unDatosLegajosDigitalizacion.pas' {frmDatosLegajosDigitalizacion},
  unRptNomina in '..\afiliaciones\reports\unRptNomina.pas' {rptNomina: TQuickRep},
  unRptEstablecimiento in '..\afiliaciones\reports\unRptEstablecimiento.pas' {rptEstablecimiento: TQuickRep},
  unRptSRT in '..\afiliaciones\reports\unRptSRT.pas' {rptSRT: TQuickRep},
  unUsuariosPermisoRecepcionExpress in 'unUsuariosPermisoRecepcionExpress.pas' {frmUsuariosPermisoRecepcionExpress: TFSForm},
  unFrmArmadoLote in '..\archivo_new\unFrmArmadoLote.pas' {FrmArmadoLote: TFSForm},
  unQrDetalleLote in '..\archivo_new\unQrDetalleLote.pas' {QrDetalleLote},
  unRptResumenLotes in '..\archivo_new\unRptResumenLotes.pas' {qrResumenLotes: TQuickRep},
  unVerImagenes in '..\archivo_new\unVerImagenes.pas' {frmVerImagenes},
  unMensajeAlertaAGA in '..\archivo_new\unMensajeAlertaAGA.pas',
  unCiiusSuspendidosAutomaticamente in 'unCiiusSuspendidosAutomaticamente.pas' {frmCiiusSuspendidosAutomaticamente: TFSForm},
  unComunesArchivo in '..\archivo_new\unComunesArchivo.pas',
  unFraWebBrowser in '..\comunes\frames\new\unFraWebBrowser.pas' {fraWebBrowser: TFrame},
  unFraGIS_APIv3 in '..\comunes\frames\new\unFraGIS_APIv3.pas' {fraGIS_APIv3: TFrame},
  unGIS in '..\..\comunes\unGIS.pas',
  unEsperaSimple in '..\comunes\forms\unEsperaSimple.pas' {frmEsperaSimple},
  unUsuariosPermisoRecargo in 'unUsuariosPermisoRecargo.pas' {frmUsuariosPermisoRecargo: T},
  unImportarInformeDirectorios in '..\sistemas\unImportarInformeDirectorios.pas' {frmImportarInformeDirectorios},
  unImportarInformes in '..\sistemas\unImportarInformes.pas' {frmImportarInformes: TFSForm},
  unManLimiteSSN in 'unManLimiteSSN.pas' {frmManLimiteSSN: TFSForm},
  unEnvioSMS in '..\comunes\forms\unEnvioSMS.pas' {frmEnvioSMS},
  unPedidoEndoso in 'unPedidoEndoso.pas' {frmPedidoEndoso: TFSForm},
  unManObservacionesCuit in 'unManObservacionesCuit.pas' {frmManObservacionesCuit: TFSForm},
  unPCP in '..\afiliaciones\unPCP.pas' {frmPCP: TFSForm},
  unConsultaSolicitud in 'unConsultaSolicitud.pas' {frmConsultaSolicitud: TFSForm},
  unCargaLugarDeTrabajo in '..\afiliaciones\unCargaLugarDeTrabajo.pas' {frmCargaLugarDeTrabajo},
  unManLimiteMicroPyme in 'unManLimiteMicroPyme.pas' {frmManLimiteMicroPyme: TFSForm},
  unFraTipoRegimen in '..\comunes\frames\new\unFraTipoRegimen.pas' {fraTipoRegimen: TFrame},
  unDocumentacion in '..\comunes\forms\unDocumentacion.pas' {frmDocumentacion: TFSForm},
  unRemitoDocumentacion in '..\comunes\forms\unRemitoDocumentacion.pas' {frmRemitoDocumentacion},
  unHistoricoDocumentacion in '..\comunes\forms\unHistoricoDocumentacion.pas' {frmHistoricoDocumentacion: TFSForm},
  unLstRemitosnoRecepcionados in '..\comunes\reports\unLstRemitosnoRecepcionados.pas' {frmLstRemitosnoRecepcionados},
  unAdministracionArchivosEndosos in '..\afiliaciones\unAdministracionArchivosEndosos.pas' {frmAdministracionArchivosEndosos: TFSForm},
  unChat in '..\comunes\unChat.pas' {frmChat};

{$R *.RES}

begin
  OnlyOneInstance;
  Application.Initialize;
  Application.Title := 'Suscripciones';

  with TfrmWelcomeSplash.Create(Application) do
  try
    ShowOnTop;
    Application.CreateForm(TdmPrincipal, dmPrincipal);
    if dmPrincipal.sdbPrincipal.Connected then
      Application.CreateForm(TfrmPrincipal, frmPrincipal);

    OnlyOneSession;
  finally
    Free;
  end;

  MostrarNovedades;
  Application.Run;
end.

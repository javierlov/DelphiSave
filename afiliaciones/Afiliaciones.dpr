program Afiliaciones;

{$IFNDEF VER150}
  {$R *.dres}
{$ENDIF}

uses
  OneInstance,
  Forms,
  Controls,
  Windows,
  unArtFrame in '..\Comunes\REPOSIT\unArtFrame.pas' {ArtFrame: TFrame},
  unFraCodigoDescripcion in '..\Comunes\FRAMES\unFraCodigoDescripcion.pas' {fraCodigoDescripcion: TFrame},
  unFraCtbTablas in '..\Comunes\FRAMES\unFraCtbTablas.pas' {fraCtbTablas: TFrame},
  unRptBolInredeposito in 'REPORTS\unRptBolInredeposito.pas' {rptBolInredeposito},
  unCargaSolicitud in 'unCargaSolicitud.pas' {frmCargaSolicitudes},
  unfraCuadroTarifario in '..\Comunes\FRAMES\unfraCuadroTarifario.pas' {fraCuadroTarifario: TFrame},
  unfraContacto in '..\Comunes\FRAMES\unfraContacto.pas' {fraContacto: TFrame},
  unFraActividad in '..\Comunes\FRAMES\unFraActividad.pas' {fraActividad: TFrame},
  unCargaSRT in 'unCargaSRT.pas' {frmCargaSRT},
  unCargaEstablecimiento in 'unCargaEstablecimiento.pas' {frmCargaEstablecimiento},
  unArtDBAwareFrame in '..\Comunes\REPOSIT\unArtDBAwareFrame.pas' {ArtDBAwareFrame: TFrame},
  unArtDbFrame in '..\Comunes\REPOSIT\unArtDbFrame.pas' {ArtDbFrame: TFrame},
  unFraEmpresa in '..\Comunes\FRAMES\NEW\unFraEmpresa.pas' {fraEmpresa: TFrame},
  unFraEmpresaAfi in '..\Comunes\FRAMES\NEW\unFraEmpresaAfi.pas' {fraEmpresaAfi: TFrame},
  unFraEmpresaSolicitud in '..\Comunes\FRAMES\NEW\unFraEmpresaSolicitud.pas' {fraEmpresaSolicitud: TFrame},
  unCargaTrabajador in 'unCargaTrabajador.pas' {frmCargaTrabajador},
  unRptSolicitud in 'REPORTS\unRptSolicitud.pas' {RptSolicitud},
  unRptSRT in 'REPORTS\unRptSRT.pas' {rptSRT},
  unRptEstablecimiento in 'REPORTS\unRptEstablecimiento.pas' {rptEstablecimiento},
  unFraDomicilio in '..\Comunes\FRAMES\NEW\unFraDomicilio.pas' {fraDomicilio: TFrame},
  unCustomConsulta in '..\Comunes\REPOSIT\unCustomConsulta.pas' {frmCustomConsulta},
  unConsultaSolicitud in 'unConsultaSolicitud.pas' {frmConsultaSolicitud},
  unCuadroTarifario in 'unCuadroTarifario.pas' {frmCuadroTarifario},
  unCambioEstado in 'unCambioEstado.pas' {frmCambioEstado},
  unCustomPanelABM in '..\Comunes\REPOSIT\unCustomPanelABM.pas' {frmCustomPanelABM},
  unCustomGridABM in '..\Comunes\REPOSIT\unCustomGridABM.pas' {frmCustomGridABM},
  unManCFI_FIRMA in '..\Comunes\Forms\unManCFI_FIRMA.pas' {frmManCFI_FIRMA},
  unManCTC_TEXTOCARTA in '..\Comunes\Forms\unManCTC_TEXTOCARTA.pas' {frmManCTC_TEXTOCARTA},
  unFraToolbarRTF in '..\Comunes\FRAMES\unFraToolbarRTF.pas' {fraToolbarRTF: TFrame},
  unManCtbTablas in '..\Comunes\Forms\unManCtbTablas.pas' {frmManCtbTablas},
  unManCAT_AREATEXTO in '..\Comunes\Forms\unManCAT_AREATEXTO.pas' {frmManCAT_AREATEXTO},
  unManCTB_CODRE in '..\Comunes\Forms\unManCTB_CODRE.pas' {frmManCTB_CODRE},
  unTraspasos in 'unTraspasos.pas' {frmTraspasos},
  unManART in 'ABM\unManART.pas' {frmManAAR_ART},
  unMAN_ABM_ART in 'ABM\unMAN_ABM_ART.pas' {frmMAN_ABM_ART},
  unFrmConsultaCarta in 'unFrmConsultaCarta.pas' {frmConsultaCarta},
  unRespuestaCliente in 'unRespuestaCliente.pas' {frmRespuestaCliente},
  unFraRespuestaCarta in '..\Comunes\FRAMES\unFraRespuestaCarta.pas' {fraRespuestaCarta: TFrame},
  unModificaContrato in 'unModificaContrato.pas' {frmModificacionContrato},
  unContratoTrabajador in 'unContratoTrabajador.pas' {frmContratoTrabajador},
  unContratoEstablecimiento in 'unContratoEstablecimiento.pas' {frmContratoEstablecimiento},
  unModificaTraspasoIngresos in 'unModificaTraspasoIngresos.pas' {frmModificaTraspasoIngresos},
  unAprobacionSolicitud in 'unAprobacionSolicitud.pas' {frmAprobacionSolicitud},
  unManAGC_GESTORCUENTA in 'ABM\unManAGC_GESTORCUENTA.pas' {frmManAGC_GESTORCUENTA},
  unManAEC_EJECUTIVOCUENTA in 'ABM\unManAEC_EJECUTIVOCUENTA.pas' {frmManAEC_EJECUTIVOCUENTA},
  unfraVendedores in '..\Comunes\FRAMES\unfraVendedores.pas' {fraVendedores: TFrame},
  unContratoSRT in 'unContratoSRT.pas' {frmContratoSRT},
  unContratoContacto in '..\comunes\forms\unContratoContacto.pas' {frmContratoContacto},
  unContratoConsultaEndoso in 'unContratoConsultaEndoso.pas' {frmContratoConsultaEndoso},
  unContratoVendedor in 'unContratoVendedor.pas' {frmContratoVendedor},
  unFraEntidades in '..\Comunes\FRAMES\unFraEntidades.pas' {fraEntidades: TFrame},
  unCuadroTarifarioContrato in 'unCuadroTarifarioContrato.pas' {frmContratoTarifa},
  unNotaSRT in 'unNotaSRT.pas' {frmNotaSRT},
  unQRNotasSRT in 'REPORTS\unQRNotasSRT.pas' {qrNotasSRT},
  unConfirmaTarifa in 'unConfirmaTarifa.pas' {frmConfirmaTarifa},
  unAfiGeneracionCartas in 'unAfiGeneracionCartas.pas' {frmAfiGeneracionCartas},
  unAfiAdministracionCartas in 'unAfiAdministracionCartas.pas' {frmAfiAdministracionCartas},
  unAfiliaciones in 'unAfiliaciones.pas',
  unConsultaContrato in 'unConsultaContrato.pas' {frmConsultaContrato},
  unRptCartaDocHeader in '..\Comunes\REPORTS\unRptCartaDocHeader.pas' {rptCartaDocHeader},
  unRptCartaDocumento in '..\Comunes\REPORTS\unRptCartaDocumento.pas' {rptCartaDocumento},
  unTraspasosEgresos in 'unTraspasosEgresos.pas' {frmTraspasosEgresos},
  unModificaTraspasoEgresos in 'unModificaTraspasoEgresos.pas' {frmModificaTraspasoEgresos},
  unEndososMultiples in 'unEndososMultiples.pas' {frmEndososMultiples},
  unCambioTarifaArchivoExterno in 'unCambioTarifaArchivoExterno.pas' {frmCambioTarifaArchivoExterno},
  unFraStaticCodigoDescripcion in '..\Comunes\FRAMES\unFraStaticCodigoDescripcion.pas' {fraStaticCodigoDescripcion: TFrame},
  unFraStaticCTB_TABLAS in '..\Comunes\FRAMES\unFraStaticCTB_TABLAS.pas' {fraStaticCTB_TABLAS: TFrame},
  unCertificadosDeCobertura in 'unCertificadosDeCobertura.pas' {frmCertificadosDeCobertura},
  unEmisionCertificados in 'unEmisionCertificados.pas' {frmEmisionCertificados},
  unRptNomina in 'REPORTS\unRptNomina.pas' {rptNomina},
  unCompatibilidad in 'unCompatibilidad.pas',
  unRptAprobacionSolicitud in 'REPORTS\unRptAprobacionSolicitud.pas' {rptAprobacionSolicitud},
  unfraStaticActividad in '..\Comunes\FRAMES\unfraStaticActividad.pas' {fraStaticActividad: TFrame},
  unFraTrabajador in '..\Comunes\FRAMES\NEW\unFraTrabajador.pas' {fraTrabajador: TFrame},
  unfraLocalidad in '..\Comunes\FRAMES\unfraLocalidad.pas' {fraLocalidad: TFrame},
  unFraEstablecimiento in '..\Comunes\FRAMES\NEW\unFraEstablecimiento.pas' {fraEstablecimiento: TFrame},
  unManCCP_CUENTAPAGO in '..\Comunes\Forms\unManCCP_CUENTAPAGO.pas' {frmManCCP_CUENTAPAGO},
  unQRAnexoA in 'REPORTS\unQRAnexoA.pas' {QRAnexoA},
  unQRContrato2 in 'REPORTS\unQRContrato2.pas' {QRContrato2},
  unAltaNotaSRT in 'unAltaNotaSRT.pas' {frmAltaNotaSRT},
  unRptCartDocTraspasoIngreso in 'REPORTS\unRptCartDocTraspasoIngreso.pas' {rptCartDocTraspasoIngreso},
  unEventosTraspasoIngreso in 'unEventosTraspasoIngreso.pas' {frmEventosTraspasoIngreso},
  unManCTB_EVTIN in 'unManCTB_EVTIN.pas' {frmManCTB_EVTIN},
  unManCTB_EVTEG in 'unManCTB_EVTEG.pas' {frmManCTB_EVTEG},
  unImprimeContrato in 'unImprimeContrato.pas' {frmImprimeContrato},
  unQRContratoNomina in 'REPORTS\unQRContratoNomina.pas' {qrContratoNomina},
  unRptCartDocTraspasoEgreso in 'REPORTS\unRptCartDocTraspasoEgreso.pas' {rptCartDocTraspasoEgreso},
  unEventosTraspasoEgreso in 'unEventosTraspasoEgreso.pas' {frmEventosTraspasoEgreso},
  unAltaModifCCP_CUENTAPAGO in '..\Comunes\Forms\unAltaModifCCP_CUENTAPAGO.pas' {frmAltaModifCCP_CUENTAPAGO},
  unfraVendedoresCUIT in '..\Comunes\FRAMES\NEW\unfraVendedoresCUIT.pas' {fraVendedoresCUIT: TFrame},
  unfraPrestador in '..\comunes\frames\unfraPrestador.pas' {fraPrestador: TFrame},
  unEstablecimientosTrabajador in 'unEstablecimientosTrabajador.pas' {frmEstablecimientosTrabajador},
  unArt in '..\..\Comunes\unArt.pas',
  unManCTB_FEEND in 'unManCTB_FEEND.pas' {frmManCTB_FEEND},
  unManCTB_MOTEN in 'unManCTB_MOTEN.pas' {frmManCTB_MOTEN},
  unfraCuentaBancaria in '..\Comunes\FRAMES\NEW\unfraCuentaBancaria.pas' {fraCuentaBancaria: TFrame},
  unfraMotivoEndoso in '..\Comunes\FRAMES\NEW\unfraMotivoEndoso.pas' {fraMotivoEndoso: TFrame},
  unCargaNominaDsk in 'unCargaNominaDsk.pas' {frmCargaNominaDsk},
  unCargaNominaManual in 'unCargaNominaManual.pas' {frmCargaNominaManual},
  unImpoExpoWizard in '..\ImpoExpo\unImpoExpoWizard.pas' {frmImpoExpoWizard},
  unRecepcionSRT in 'unRecepcionSRT.pas' {frmRecepcionSRT},
  unAjusteComisiones in 'unAjusteComisiones.pas' {frmAjusteComisiones},
  unrptCartaDocTarifa in 'REPORTS\unrptCartaDocTarifa.pas' {rptCartaDocTarifa},
  uncomunes in '..\..\Comunes\uncomunes.pas',
  unFraDomicilioTrab in '..\Comunes\FRAMES\NEW\unFraDomicilioTrab.pas' {fraDomicilioTrab: TFrame},
  unImpresionContratos in 'unImpresionContratos.pas' {frmImpresionContratos},
  unQREndoso0 in 'REPORTS\unQREndoso0.pas' {qrEndoso0},
  unQREndosoBase in 'REPORTS\unQREndosoBase.pas' {qrEndosoBase},
  unQREndoso1 in 'REPORTS\unQREndoso1.pas' {qrEndoso1},
  unTarifasMasivas in 'unTarifasMasivas.pas' {frmTarifasMasivas},
  unCargaNominaDskSolicitud in 'unCargaNominaDskSolicitud.pas' {frmCargaNominaDskSolicitud},
  unManTarifario in '..\Comunes\Forms\unManTarifario.pas' {frmManTarifario},
  unManTarComercial in '..\Comunes\Forms\unManTarComercial.pas' {frmManTarComercial},
  unfraCPR_PRESTADOR in '..\Comunes\FRAMES\NEW\unfraCPR_PRESTADOR.pas' {fraCPR_PRESTADOR: TFrame},
  unCambioCuil in 'unCambioCuil.pas' {frmCambioCuil},
  unEjecutivoCuenta in '..\Comunes\Forms\unEjecutivoCuenta.pas' {frmEjecutivoCuenta},
  unGestorCuenta in '..\Comunes\Forms\unGestorCuenta.pas' {frmGestorCuenta},
  unUpdateTarifasCarta in 'unUpdateTarifasCarta.pas' {frmUpdateTarifaCarta},
  unUpdateVigenciaContrato in 'unUpdateVigenciaContrato.pas' {frmUpdateVigenciaContrato},
  unConsultaTraspasoIngreso in 'unConsultaTraspasoIngreso.pas' {frmConsultaTraspasoIngreso},
  unRptCartDocTraspasoEgreso2 in 'REPORTS\unRptCartDocTraspasoEgreso2.pas' {rptCartDocTraspasoEgreso2},
  unAfiCartasDoc in 'unAfiCartasDoc.pas',
  unComisionGestor in 'unComisionGestor.pas' {frmComisionGestor},
  unCITRIX in '..\..\Comunes\unCITRIX.pas',
  unManAGA_GESTORAUMENTO in 'ABM\unManAGA_GESTORAUMENTO.pas' {frmManAGA_GESTORAUMENTO},
  unGestorAumento in '..\Comunes\Forms\unGestorAumento.pas' {frmGestorAumento},
  unEstudioContable in '..\Comunes\Forms\unEstudioContable.pas' {frmEstudioContable},
  unManAEC_ESTUDIOCONTABLE in 'ABM\unManAEC_ESTUDIOCONTABLE.pas' {frmManAEC_ESTUDIOCONTABLE},
  unVisualizador in '..\Comunes\unVisualizador.pas' {frmVisualizador},
  unSesion in '..\..\Comunes\unSesion.pas',
  unFraCanal in '..\Comunes\FRAMES\NEW\unFraCanal.pas' {fraCanal: TFrame},
  unCustomForm in '..\Comunes\unCustomForm.pas' {frmCustomForm},
  unHojaCalculo in '..\..\Comunes\unHojaCalculo.pas',
  unRptBajasPotenciales in 'REPORTS\unRptBajasPotenciales.pas' {qrBajasPotenciales},
  unEnvioMail in '..\..\Comunes\unEnvioMail.pas',
  unMoldeEnvioMail in '..\Comunes\Envio de Mails\unMoldeEnvioMail.pas' {frmMoldeEnvioMail},
  unfraUsuarios in '..\Comunes\FRAMES\unfraUsuarios.pas' {fraUsuario: TFrame},
  unElementosEnviados in '..\Comunes\Forms\unElementosEnviados.pas' {frmElementosEnviados},
  unFraUsuario in '..\Comunes\FRAMES\NEW\unFraUsuario.pas' {fraUsuarios: TFrame},
  unLibretaDeDirecciones in '..\Comunes\Forms\unLibretaDeDirecciones.pas' {frmLibretaDeDirecciones},
  unContratoDelegacion in 'unContratoDelegacion.pas' {frmContratoDelegacion},
  unFraCodDesc in '..\Comunes\FRAMES\NUEVOS\unFraCodDesc.pas' {fraCodDesc: TFrame},
  unContratoPreventor in 'unContratoPreventor.pas' {frmContratoPreventor},
  unFraTelefono in '..\Comunes\FRAMES\NEW\unFraTelefono.pas' {fraTelefono: TFrame},
  unABMTelefonos in '..\Comunes\Forms\unABMTelefonos.pas' {frmTelefonos},
  CustomDlgs in '..\..\Comunes\CustomDlgs.pas',
  unTelefonosCargaRapida in '..\Comunes\Forms\unTelefonosCargaRapida.pas' {frmTelefonosCargaRapida},
  unDmPrincipal in '..\comunes\oracle\unDmPrincipal.pas' {dmPrincipal: TDataModule},
  unCustomDataModule in '..\comunes\unCustomDataModule.pas' {dmCustomDataModule: TDataModule},
  General in '..\..\comunes\General.pas',
  ArchFuncs in '..\..\comunes\ArchFuncs.pas',
  unSeleccionDestinatarios in '..\comunes\unSeleccionDestinatarios.pas' {frmSeleccionDestinatarios},
  unDebug in '..\comunes\unDebug.pas' {frmDebug},
  numeros in '..\..\comunes\numeros.pas',
  unAlarmas in '..\..\Comunes\unAlarmas.pas',
  unFiltros in '..\..\Comunes\unFiltros.pas',
  unImpoExpo in '..\..\comunes\unImpoExpo.pas',
  unHistoricoCargaNomina in 'unHistoricoCargaNomina.pas' {frmHistoricoCargaNomina},
  unFirmanteReporte in 'unFirmanteReporte.pas' {frmFirmanteReporte},
  unFraVistaTIFF in '..\comunes\frames\new\unFraVistaTIFF.pas' {fraVistaTIFF: TFrame},
  unFraRTD_TIPODOCUMENTO in '..\comunes\frames\new\unFraRTD_TIPODOCUMENTO.pas' {fraRTD_TIPODOCUMENTO: TFrame},
  unFaxEnviados in '..\comunes\forms\unFaxEnviados.pas' {frmFaxEnviados},
  unManHolding in 'unManHolding.pas' {frmManHolding},
  strfuncs in '..\..\comunes\strfuncs.pas',
  unBusquedaDomicilio in '..\comunes\forms\unBusquedaDomicilio.pas' {frmBusquedaDomicilio},
  unRptCertificados in 'reports\unRptCertificados.pas' {rptCertificados: TQuickRep},
  unRptRepNom in 'reports\unRptRepNom.pas' {rptRepNom: TQuickRep},
  unAyuda in '..\comunes\unAyuda.pas' {frmAyuda},
  unImpoExpoUtils in '..\impoexpo\unImpoExpoUtils.pas',
  unConsFax in '..\comunes\forms\unConsFax.pas' {frmConsFax},
  unfraFFO_FAXFORMULARIO in '..\comunes\frames\unfraFFO_FAXFORMULARIO.pas' {fraFFO_FAXFORMULARIO: TFrame},
  unEstrategiaTIFF in '..\fax\faxclient_new\unEstrategiaTIFF.pas',
  unEspera in '..\comunes\forms\unEspera.pas' {frmEspera},
  unManRDO_DOCUMENTO in '..\archivo_new\abm\unManRDO_DOCUMENTO.pas' {frmManRDO_DOCUMENTO: TFSForm},
  unSiniestros in '..\siniestros\unSiniestros.pas',
  unNovedades in '..\..\comunes\unNovedades.pas',
  unfraEntidadCUIT in '..\comunes\frames\new\unfraEntidadCUIT.pas' {fraEntidadCUIT: TFrame},
  unHistoricoEstablecimiento in 'unHistoricoEstablecimiento.pas' {frmHistoricoEstablecimiento},
  unFormularioValidacionYRectificacionDatosEstablecimientos in '..\comunes\forms\unFormularioValidacionYRectificacionDatosEstablecimientos.pas' {frmFormularioValidacionYRectificacionDatosEstablecimientos},
  unRptFormularioValidacionYRectificacionDatosEstablecimientos in '..\comunes\reports\unRptFormularioValidacionYRectificacionDatosEstablecimientos.pas' {qrFormularioValidacionYRectificacionDatosEstablecimientos: TQuickRep},
  Internet in '..\..\comunes\Internet.pas',
  unAgendaTelefonica in '..\comunes\forms\unAgendaTelefonica.pas' {frmAgendaTelefonica: TFSForm},
  unCustomPrincipal in '..\comunes\reposit\unCustomPrincipal.pas' {frmCustomPrincipal},
  unPrincipal in 'unPrincipal.pas' {frmPrincipal},
  unRptGestionDeReclamos in '..\comunes\reports\unRptGestionDeReclamos.pas' {frmRptGestionDeReclamos},
  unVentanillaElectronica in '..\comunes\forms\unVentanillaElectronica.pas' {frmVentanillaElectronica: TFSForm},
  unFraTrabajadorSiniestro in '..\comunes\frames\new\unFraTrabajadorSiniestro.pas' {fraTrabajadorSiniestro: TFrame},
  unImportFromSRT in '..\comunes\unImportFromSRT.pas' {frmImportFromSRT},
  unFraNavegadorWEB in '..\comunes\frames\new\unFraNavegadorWEB.pas' {fraNavegadorWEB: TFrame},
  unGoogleMaps in '..\comunes\forms\unGoogleMaps.pas' {frmGoogleMaps},
  unFraDomicilioGIS in '..\comunes\frames\new\unFraDomicilioGIS.pas' {fraDomicilioGIS: TFrame},
  unVisorPDF in '..\comunes\forms\unVisorPDF.pas' {frmVisorPDF},
  unManCGI_GIS in '..\comunes\forms\unManCGI_GIS.pas' {frmManCGI_GIS: TFSForm},
  unQRAvisoRecibo in 'unQRAvisoRecibo.pas' {rptAvisoRecibo: TQuickRep},
  unDmFinancials in '..\comunes\oracle\unDmFinancials.pas' {dmFinancials: TDataModule},
  unAnexoRes365 in '..\comunes\forms\unAnexoRes365.pas' {frmAnexoRes365},
  unRptAnexoRes365 in '..\comunes\reports\unRptAnexoRes365.pas' {qrAnexoRes365: TQuickRep},
  OneSession in '..\..\comunes\OneSession.pas',
  unRecepcionVentanillaElectronica in 'unRecepcionVentanillaElectronica.pas' {frmRecepcionVentanillaElectronica},
  unRGRL in '..\comunes\forms\unRGRL.pas' {frmRGRL},
  unRptRGRL in '..\comunes\reports\unRptRGRL.pas' {qrRGRL: TQuickRep},
  unRptEstadisticasRGRL in '..\comunes\reports\unRptEstadisticasRGRL.pas' {qrEstadisticasRGRL: TQuickRep},
  VCLExtra in '..\..\comunes\VCLExtra.pas',
  ungrids in '..\..\comunes\ungrids.pas',
  unQRContrato3 in 'reports\unQRContrato3.pas' {QRContrato3: TQuickRep},
  unQRSolicitudAfiliacion in 'reports\unQRSolicitudAfiliacion.pas' {qrSolicitudAfiliacion: TQuickRep},
  unUtilsArchivo in '..\archivo_new\unUtilsArchivo.pas',
  unManCPG_PLAZOGUARDA in '..\comunes\forms\unManCPG_PLAZOGUARDA.pas' {frmManCPG_PLAZOGUARDA: TFSForm},
  unManCTA_TIPOACTIVOS in '..\comunes\forms\unManCTA_TIPOACTIVOS.pas' {frmManCTA_TIPOACTIVOS: TFSForm},
  unfraCodigoDescripcionExt in '..\comunes\frames\unfraCodigoDescripcionExt.pas' {fraCodigoDescripcionExt: TFrame},
  unSeleccionMultiple in '..\comunes\forms\unSeleccionMultiple.pas' {frmSeleccionUsuarios: TFrame},
  unClasificacionActivos in '..\comunes\forms\unClasificacionActivos.pas' {frmClasificacionActivos: TFSForm},
  unfraSucursal in '..\Comunes\FRAMES\NEW\unfraSucursal.pas' {fraSucursal: TFrame},
  unComisiones in 'comisiones\unComisiones.pas',
  unGenerarMultiplesCartas in 'unGenerarMultiplesCartas.pas' {frmGenerarMultiplesCartas},
  unfraDelegacion in '..\comunes\frames\unfraDelegacion.pas' {fraDelegacion: TFrame},
  unABMEstabTipoEventual in '..\hys\unABMEstabTipoEventual.pas' {frmABMEstabTipoEventual: TFSForm},
  unQrEstadoCuentaResumen in '..\Cobranzas\Reports\unQrEstadoCuentaResumen.pas' {frmEstadoCuentaResumen},
  unEstadoCuenta in '..\Cobranzas\unEstadoCuenta.pas',
  unImpresionEstadoDeCuenta in '..\Cobranzas\unImpresionEstadoDeCuenta.pas' {frmImpresionEstadodeCuenta},
  unfraInfoEmpresaExt in '..\comunes\frames\new\unfraInfoEmpresaExt.pas' {fraInfoEmpresaExt: TFrame},
  unFraDomicilioEmpresa in '..\comunes\frames\new\unFraDomicilioEmpresa.pas' {fraDomicilioEmpresa: TFrame},
  unDlgBusSiniestro in '..\siniestros\unDlgBusSiniestro.pas' {frmDlgBusSiniestro: TFSForm},
  unQRF817 in '..\Cobranzas\Reports\unQRF817.pas' {QRF817: TQuickRep},
  unQRCartaDocIntimacion in '..\Cobranzas\Reports\unQRCartaDocIntimacion.pas' {QRCartaDocIntimacion: TQuickRep},
  unRptCartaDocCompensacion in '..\Cobranzas\Compensacion\REPORTS\unRptCartaDocCompensacion.pas' {rptCartaDocCompensacion: TQuickRep},
  unQrLibreDeuda in '..\Cobranzas\reports\unQrLibreDeuda.pas' {qrLibreDeuda: TQuickRep},
  unQrEstadoCuentaDetalle in '..\Cobranzas\Reports\unQrEstadoCuentaDetalle.pas' {frmEstadoCuentaDetalle},
  unQRF801C in '..\Cobranzas\reports\unQRF801C.pas' {QRF801C: TQuickRep},
  unOpcionesDeImpresion in '..\Cobranzas\unOpcionesDeImpresion.pas' {frmOpcionesDeImpresion},
  unQRCartaDocIntimacionNuevaGrilla in '..\Cobranzas\reports\unQRCartaDocIntimacionNuevaGrilla.pas' {QRCartaDocIntimacionNuevaGrilla: TQuickRep},
  unfraInfoEmpresa in '..\Comunes\FRAMES\NEW\unfraInfoEmpresa.pas' {fraInfoEmpresa: TFrame},
  unConsultasAdicionales in '..\comunes\forms\unConsultasAdicionales.pas' {frmConsultasAdicionales},
  unVisor in '..\comunes\forms\unVisor.pas' {frmVisor},
  unArchivoVisor in '..\comunes\unArchivoVisor.pas',
  unVisorExcel in '..\comunes\forms\unVisorExcel.pas' {frmVisorExcel},
  unDatosSiniestro in '..\comunes\forms\unDatosSiniestro.pas' {frmDatosSiniestro},
  unContratosGuarda in 'unContratosGuarda.pas' {frmContratosGuarda: TFSForm},
  unConstantArchivo in '..\archivo_new\unConstantArchivo.pas',
  unfraVistaEventos in '..\comunes\frames\modulosAgenda\unfraVistaEventos.pas' {fraVistaEventos: TFrame},
  unABMAgendaBase in '..\comunes\forms\unABMAgendaBase.pas' {frmABMAgendaBase},
  unfraContactoAGENDA in '..\comunes\frames\modulosAgenda\unfraContactoAGENDA.pas' {fraContactoAGENDA: TFrame},
  unfraContactoLibreAGENDA in '..\comunes\frames\modulosAgenda\unfraContactoLibreAGENDA.pas' {fraContactoLibreAGENDA: TFrame},
  unfraDomicilioAGENDA in '..\comunes\frames\modulosAgenda\unfraDomicilioAGENDA.pas' {fraDomicilioGISAGENDA: TFrame},
  unfraDomicilioEmpresaAGENDA in '..\comunes\frames\modulosAgenda\unfraDomicilioEmpresaAGENDA.pas' {fraDomicilioEmpresaAGENDA: TFrame},
  unfraDomicilioEstablecimientoAGENDA in '..\comunes\frames\modulosAgenda\unfraDomicilioEstablecimientoAGENDA.pas' {fraDomicilioEstablecimientoAGENDA: TFrame},
  unfraEmpresaAGENDA in '..\comunes\frames\modulosAgenda\unfraEmpresaAGENDA.pas' {fraEmpresaAGENDA: TFrame},
  unfraEntidadAGENDA in '..\comunes\frames\modulosAgenda\unfraEntidadAGENDA.pas' {fraEntidadAGENDA: TFrame},
  unfraEntidadVendedorAGENDA in '..\comunes\frames\modulosAgenda\unfraEntidadVendedorAGENDA.pas' {fraEntidadVendedorAGENDA: TFrame},
  unfraEstablecimientoAGENDA in '..\comunes\frames\modulosAgenda\unfraEstablecimientoAGENDA.pas' {fraEstablecimientoAGENDA: TFrame},
  unfraNumAutoAGENDA in '..\comunes\frames\modulosAgenda\unfraNumAutoAGENDA.pas' {fraNumAutoAGENDA: TFrame},
  unfraPrestadorAGENDA in '..\comunes\frames\modulosAgenda\unfraPrestadorAGENDA.pas' {fraPrestadorAGENDA: TFrame},
  unfraProspectosAGENDA in '..\comunes\frames\modulosAgenda\unfraProspectosAGENDA.pas' {fraProspectosAGENDA: TFrame},
  unfraTrabajadorAGENDA in '..\comunes\frames\modulosAgenda\unfraTrabajadorAGENDA.pas' {fraTrabajadorAGENDA: TFrame},
  unfraTrabajadorSiniestroAGENDA in '..\comunes\frames\modulosAgenda\unfraTrabajadorSiniestroAGENDA.pas' {fraTrabajadorSiniestroAGENDA: TFrame},
  unfraVendedorAGENDA in '..\comunes\frames\modulosAgenda\unfraVendedorAGENDA.pas' {fraVendedorAGENDA: TFrame},
  unABMAgendaBaseTarea in '..\comunes\forms\unABMAgendaBaseTarea.pas' {frmABMAgendaBaseTarea},
  unABMAgendaBaseEvento in '..\comunes\forms\unABMAgendaBaseEvento.pas' {frmABMAgendaBaseEvento},
  unAgenda in '..\..\comunes\interfaces\unAgenda.pas',
  unFraValidacionDatosEmpresa in '..\comunes\frames\new\unFraValidacionDatosEmpresa.pas' {fraValidacionDatosEmpresa: TFrame},
  unSeleccionResponsableHYS in '..\hys\unSeleccionResponsableHYS.pas' {frmSeleccionResponsableHYS: TFSForm},
  unFraUsuarioConJerarquias in '..\comunes\frames\new\unFraUsuarioConJerarquias.pas' {fraUsuarioConJerarquias: TFrame},
  unFraUsuarioConSectorIntranet in '..\comunes\frames\new\unFraUsuarioConSectorIntranet.pas' {fraUsuarioConSectorIntranet: TFrame},
  unArbolSectores in '..\usuarios\unArbolSectores.pas' {frmArbolSectores},
  unFraTitulo in '..\comunes\frames\nuevos\unFraTitulo.pas' {fraTitulo: TFrame},
  unQrEtiquetasDocCarpetas in '..\archivo_new\unQrEtiquetasDocCarpetas.pas' {qrEtiquetasDocCarpetas: TQuickRep},
  unRptPlantillaRGRL in '..\comunes\reports\unRptPlantillaRGRL.pas' {qrPlantillaRGRL: TQuickRep},
  unComunesArchivo in '..\archivo_new\unComunesArchivo.pas',
  unDatosLegajosDigitalizacion in 'unDatosLegajosDigitalizacion.pas' {frmDatosLegajosDigitalizacion},
  unArchivo in '..\archivo_new\unArchivo.pas',
  unFrmConsultaCarpetas in '..\archivo_new\unFrmConsultaCarpetas.pas' {FrmConsultaCarpetas: TFSForm},
  unFrmSolicitudCarpeta in '..\archivo_new\unFrmSolicitudCarpeta.pas' {FrmSolicitudCarpeta: TFSForm},
  unQrEtiquetasCarpetas in '..\archivo_new\unQrEtiquetasCarpetas.pas' {qrEtiquetasCarpetas: TQuickRep},
  unFraDetalleArchivo in '..\archivo_new\frames\unFraDetalleArchivo.pas' {fraDetalleArchivo: TFrame},
  unFrmDetalleArchivo in '..\archivo_new\unFrmDetalleArchivo.pas' {FrmDetalleArchivo},
  unMovimientoCarpetas in '..\archivo_new\unMovimientoCarpetas.pas' {frmMovimientoCarpetas},
  unFrmCargaDocumentacion in '..\archivo_new\unFrmCargaDocumentacion.pas' {frmCargaDocumentacion},
  unReemplazoCarpetas in '..\archivo_new\unReemplazoCarpetas.pas' {frmReemplazoCarpetas},
  unfrmUbicacionActual in '..\archivo_new\unfrmUbicacionActual.pas' {FrmUbicacionActual},
  unFraFiltroArchivo in '..\archivo_new\frames\unFraFiltroArchivo.pas' {fraFiltroArchivo: TFrame},
  unfraArchJuicio in '..\archivo_new\frames\unfraArchJuicio.pas' {fraArchJuicio: TFrame},
  unfraSectores in '..\Comunes\Frames\unfraSectores.pas' {fraSectores: TFrame},
  unfraProveedor in '..\comunes\frames\new\unfraProveedor.pas' {fraProveedor: TFrame},
  unCapturarCodigoBarras in '..\comunes\unCapturarCodigoBarras.pas' {frmCapturarCodigoBarras},
  unManDocumentacionFaltante in 'abm\unManDocumentacionFaltante.pas' {frmManDocumentacionFaltante: TFSForm},
  unImportFromSRTReclamos in '..\comunes\unImportFromSRTReclamos.pas' {frmImportFromSRTReclamos},
  unQRContrato in 'reports\unQRContrato.pas' {QRContrato: TQuickRep},
  unManFirmanteAfi in 'unManFirmanteAfi.pas' {frmManFirmanteAfi: TFSForm},
  unContratoBuscarContacto in 'unContratoBuscarContacto.pas' {frmContratoBuscarContacto},
  unImportInformeComercial in '..\comunes\unImportInformeComercial.pas' {frmImportInformeComercial},
  unCustomSplash in '..\comunes\reposit\unCustomSplash.pas' {frmCustomSplash},
  unWelcomeSplash in '..\comunes\forms\unWelcomeSplash.pas' {frmWelcomeSplash},
  unManInformeComercial in 'unManInformeComercial.pas' {frmManInformeComercial: TFSForm},
  unManACA_CONTRATOAUTORIZADO in 'abm\unManACA_CONTRATOAUTORIZADO.pas' {frmManACA_CONTRATOAUTORIZADO: TFSForm},
  unManPEB_EXPOSICIONBAJA in 'abm\unManPEB_EXPOSICIONBAJA.pas' {frmManPEB_EXPOSICIONBAJA: TFSForm},
  unManPRP_RIESGOPOSTAL in 'abm\unManPRP_RIESGOPOSTAL.pas' {frmManPRP_RIESGOPOSTAL: TFSForm},
  unManPRP_RIESGOPRIMA in 'abm\unManPRP_RIESGOPRIMA.pas' {frmManPRP_RIESGOPRIMA: TFSForm},
  unManPRC_RIESGOCIIU in 'abm\unManPRC_RIESGOCIIU.pas' {frmManPRC_RIESGOCIIU: TFSForm},
  unManPTR_TABLARIESGO in 'abm\unManPTR_TABLARIESGO.pas' {frmManPTR_TABLARIESGO: TFSForm},
  unQrDetalleRemitoDevolucion in '..\archivo_new\unQrDetalleRemitoDevolucion.pas' {QrDetalleRemitoDevolucion},
  unComunesFet in '..\HYS_ANEXO1\unComunesFet.pas',
  unRptConstanciaVisitas in '..\hys_anexo1\unRptConstanciaVisitas.pas' {rptConstanciaVisitas: TQuickRep},
  unfraEmpresaSolicitudAGENDA in '..\comunes\frames\modulosagenda\unfraEmpresaSolicitudAGENDA.pas' {fraEmpresaSolicitudAGENDA: TFrame},
  unRptPal in '..\hys\unRptPal.pas' {rptPal},
  unManCVS_VENTANILLA_SUBTEMAS in '..\comunes\forms\unManCVS_VENTANILLA_SUBTEMAS.pas' {frmManCVS_VENTANILLA_SUBTEMAS: TFSForm},
  unTesoreria in 'tesoreria\unTesoreria.pas',
  unfraDatoFechaAGENDA in '..\comunes\frames\modulosagenda\unfraDatoFechaAGENDA.pas' {fraDatoFecha: TFrame},
  unCargaDocumentosDigitaliz in '..\comunes\forms\unCargaDocumentosDigitaliz.pas' {frmCargaDocumentosDigitaliz},
  unSeleccionTareas in '..\comunes\forms\unSeleccionTareas.pas' {frmSeleccionTareas},
  unAgendaVistaEmpresa in '..\comunes\forms\unAgendaVistaEmpresa.pas' {frmAgendaVistaEmpresa},
  unRecepcionSolicitud in 'unRecepcionSolicitud.pas' {frmRecepcionSolicitud: TFSForm},
  unAdministracionArchivosRecepcion in 'unAdministracionArchivosRecepcion.pas' {frmAdministracionArchivosRecepcion: TFSForm},
  unManPaisesGafi in 'abm\unManPaisesGafi.pas' {frmManPaisesGafi: TFSForm},
  unManRecepcionSolicitud in 'abm\unManRecepcionSolicitud.pas' {frmManRecepcionSolicitud: TFSForm},
  unImportCryptoSrt in '..\..\comunes\unImportCryptoSrt.pas',
  unMANDepositoStock in 'abm\unMANDepositoStock.pas' {frmManDepositoStock: TFSForm},
  unManAMA_MATERIAL in 'abm\unManAMA_MATERIAL.pas' {frmManAMA_MATERIAL: TFSForm},
  unManPermisosStockMateriales in 'abm\unManPermisosStockMateriales.pas' {frmManPermisosStockMateriales: TFSForm},
  unManAMS_MOVIMIENTOSTOCK in 'abm\unManAMS_MOVIMIENTOSTOCK.pas' {frmManAMS_MOVIMIENTOSTOCK: TFSForm},
  unQREntregaMaterial in 'reports\unQREntregaMaterial.pas' {QREntregaMaterial},
  unFrmArmadoLote in '..\archivo_new\unFrmArmadoLote.pas' {FrmArmadoLote: TFSForm},
  unQrDetalleLote in '..\archivo_new\unQrDetalleLote.pas' {QrDetalleLote},
  unQrDetalleLoteEstudio in '..\archivo_new\unQrDetalleLoteEstudio.pas' {QrDetalleLoteEstudio},
  unRptResumenLotes in '..\archivo_new\unRptResumenLotes.pas' {qrResumenLotes: TQuickRep},
  unVerImagenes in '..\archivo_new\unVerImagenes.pas' {frmVerImagenes},
  unFraWebBrowser in '..\comunes\frames\new\unFraWebBrowser.pas' {fraWebBrowser: TFrame},
  unFraGIS_APIv3 in '..\comunes\frames\new\unFraGIS_APIv3.pas' {fraGIS_APIv3: TFrame},
  unGIS in '..\..\comunes\unGIS.pas',
  unGenerarMultiplesCartasPorContrato in 'unGenerarMultiplesCartasPorContrato.pas' {frmGenerarMultiplesCartasPorContrato: TFSForm},
  unEsperaSimple in '..\comunes\forms\unEsperaSimple.pas' {frmEsperaSimple},
  unConstFet in '..\hys_anexo1\unConstFet.pas' {,
  unSeleccionarCarpetaSRT in 'unSeleccionarCarpetaSRT.pas' {frmSeleccionarCarpetaSRT},
  unSeleccionarCarpetaSRT in 'unSeleccionarCarpetaSRT.pas' {frmSeleccionarCarpetaSRT},
  unExportPDF in '..\..\comunes\unExportPDF.pas',
  unManContratosTrabNoConfirmados in 'abm\unManContratosTrabNoConfirmados.pas' {frmManContratosTrabNoConfirmados: TFSForm},
  unMensajeAlertaAGA in '..\archivo_new\unMensajeAlertaAGA.pas',
  unEnvioSMS in '..\comunes\forms\unEnvioSMS.pas' {frmEnvioSMS},
  unSMS in '..\..\comunes\unSMS.pas',
  IArtMail in '..\comunes\IArtMail.pas',
  SortDlg in '..\..\paquetes\sortdlg\SortDlg.pas',
  unManContratosNoSuss in 'abm\unManContratosNoSuss.pas' {frmManContratosNoSuss: TFSForm},
  unManWSEstablecimientos in 'abm\unManWSEstablecimientos.pas' {frmManWSEstablecimientos: TFSForm},
  unWSEstablecimientos in '..\comunes\unWSEstablecimientos.pas',
  unPCP in 'unPCP.pas' {frmPCP: TFSForm},
  unCargaLugarDeTrabajo in 'unCargaLugarDeTrabajo.pas' {frmCargaLugarDeTrabajo},
  unQRContratoPCP in 'reports\unQRContratoPCP.pas' {QRContratoPCP: TQuickRep},
  unQRAnexoPCP in 'reports\unQRAnexoPCP.pas' {QRAnexoPCP: TQuickRep},
  unManAEP_EJECUTIVOCPOSTAL in 'abm\unManAEP_EJECUTIVOCPOSTAL.pas' {frmManAEP_EJECUTIVOCPOSTAL: TFSForm},
  unManConversionRegimen in 'abm\unManConversionRegimen.pas' {frmManConversionRegimen: TFSForm},
  unFraTipoRegimen in '..\comunes\frames\new\unFraTipoRegimen.pas' {fraTipoRegimen: TFrame};

{$R *.RES}

begin
  Application.Title := 'Afiliaciones';
  OnlyOneInstance;
  Application.Initialize;

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

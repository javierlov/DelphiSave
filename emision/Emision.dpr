program Emision;

{$IFNDEF VER150}
  {$R *.dRES}
{$ENDIF}

uses
  OneInstance,
  Forms,
  Controls,
  Windows,
  unArtFrame in '..\Comunes\REPOSIT\unArtFrame.pas' {ArtFrame: TFrame},
  unArtDbFrame in '..\Comunes\REPOSIT\unArtDbFrame.pas' {ArtDbFrame: TFrame},
  unArtDBAwareFrame in '..\Comunes\REPOSIT\unArtDBAwareFrame.pas' {ArtDBAwareFrame: TFrame},
  unFraTrabajador in '..\Comunes\FRAMES\new\unFraTrabajador.pas' {fraTrabajador: TFrame},
  unFraEstablecimiento in '..\Comunes\FRAMES\NEW\unFraEstablecimiento.pas' {fraEstablecimiento: TFrame},
  unFraStaticCTB_TABLAS in '..\Comunes\FRAMES\unFraStaticCTB_TABLAS.pas' {fraStaticCTB_TABLAS: TFrame},
  unFraCodigoDescripcion in '..\Comunes\FRAMES\unFraCodigoDescripcion.pas' {fraCodigoDescripcion: TFrame},
  unfraCodigoDescripcionExt in '..\Comunes\FRAMES\unfraCodigoDescripcionExt.pas' {fraCodigoDescripcionExt: TFrame},
  unfraCtbTablas in '..\Comunes\FRAMES\unFraCtbTablas.pas' {fraCtbTablas: TFrame},
  unFraToolbarRTF in '..\Comunes\FRAMES\unFraToolbarRTF.pas' {fraToolbarRTF: TFrame},
  unfraAGC_GESTORCUENTA in '..\Comunes\FRAMES\unfraAGC_GESTORCUENTA.pas' {fraAGC_GESTORCUENTA: TFrame},
  unfraCuentaBancaria in '..\Comunes\FRAMES\NEW\unfraCuentaBancaria.pas' {fraCuentaBancaria: TFrame},
  unfraContactoEmpresa in '..\Comunes\FRAMES\unfraContactoEmpresa.pas' {fraContactoEmpresa: TFrame},
  unfraContacto in '..\Comunes\FRAMES\unfraContacto.pas' {fraContacto: TFrame},
  unfraDireccion in '..\Comunes\FRAMES\unfraDireccion.pas' {fraDireccion: TFrame},
  unfraLocalidad in '..\Comunes\FRAMES\unfraLocalidad.pas' {fraLocalidad: TFrame},
  unFraEntidades in '..\Comunes\FRAMES\unFraEntidades.pas' {fraEntidades: TFrame},
  unfraVendedores in '..\Comunes\FRAMES\unfraVendedores.pas' {fraVendedores: TFrame},
  unFraUsuario in '..\Comunes\FRAMES\NEW\unFraUsuario.pas' {fraUsuarios: TFrame},
  unFraDomicilio in '..\Comunes\FRAMES\NEW\unFraDomicilio.pas' {fraDomicilio: TFrame},
  unFraDomicilioTrab in '..\Comunes\FRAMES\NEW\unFraDomicilioTrab.pas' {fraDomicilioTrab: TFrame},
  unFraStaticCodigoDescripcion in '..\Comunes\FRAMES\unFraStaticCodigoDescripcion.pas' {fraStaticCodigoDescripcion: TFrame},
  unfraStaticActividad in '..\Comunes\FRAMES\unfraStaticActividad.pas' {fraStaticActividad: TFrame},
  unfraInfoEmpresa in '..\Comunes\FRAMES\NEW\unfraInfoEmpresa.pas' {fraInfoEmpresa: TFrame},
  unFraEmpresa in '..\Comunes\FRAMES\NEW\unFraEmpresa.pas' {fraEmpresa: TFrame},
  unCustomDataModule in '..\Comunes\unCustomDataModule.pas' {dmCustomDataModule: TDataModule},
  unCustomConsulta in '..\Comunes\REPOSIT\unCustomConsulta.pas' {frmCustomConsulta},
  unCustomPanelABM in '..\Comunes\REPOSIT\unCustomPanelABM.pas' {frmCustomPanelABM},
  unCustomGridABM in '..\Comunes\REPOSIT\unCustomGridABM.pas' {frmCustomGridABM},
  unPrincipal in 'cliente\unPrincipal.pas' {frmPrincipal},
  unDmPrincipal in '..\Comunes\ORACLE\unDmPrincipal.pas' {dmPrincipal: TDataModule},
  unConstEmision in 'comunes\unConstEmision.pas',
  unFrmAdministracionSeteo in 'cliente\unFrmAdministracionSeteo.pas' {FrmAdministracionSeteo},
  unFrmSeteos in 'cliente\unFrmSeteos.pas' {FrmSeteos},
  unParams in '..\..\Comunes\unParams.pas',
  unUtils in 'Comunes\unUtils.pas',
  unFrmAdministracionNominas in 'cliente\unFrmAdministracionNominas.pas' {frmAdministracionNominas},
  unDmEmision in 'comunes\unDmEmision.pas' {DmEmision: TDataModule},
  unFraProcesoArchivo in 'comunes\unFraProcesoArchivo.pas' {fraProcesoArchivo: TFrame},
  unFrmAdministracionTopes in 'cliente\unFrmAdministracionTopes.pas' {FrmAdministracionTopes: TFSForm},
  unManITN_TIPONOMINA in 'Cliente\unManITN_TIPONOMINA.pas' {frmManITN_TIPONOMINA: TFSForm},
  unMovimientosVistaPrevia in 'Cliente\unMovimientosVistaPrevia.pas' {frmMovimientosVistaPrevia},
  unRecalculoDevengado in 'Cliente\unRecalculoDevengado.pas' {frmRecalculoDevengado},
  unFrmMantenimientoNivelesAutorizacionRequerido in 'Cliente\unFrmMantenimientoNivelesAutorizacionRequerido.pas' {FrmAdministracionNivelesAutorizacionRequerido: TFSForm},
  unFrmTextosPredeterminados in 'Cliente\unFrmTextosPredeterminados.pas' {frmTextosPredeterminados},
  unfrmGruposContrato in 'Cliente\unfrmGruposContrato.pas' {FrmGruposContrato: TFSForm},
  unFrmTiposFormularios in 'Cliente\unFrmTiposFormularios.pas' {frmTiposFormularios: TFSForm},
  unFrmAdministracionParametros in 'Cliente\unFrmAdministracionParametros.pas' {frmAdministracionParametros: TFSForm},
  unFrmDetalleNomina in 'comunes\unFrmDetalleNomina.pas' {FormDetalleNomina},
  unFrmAdministracionObservaciones in 'Cliente\unFrmAdministracionObservaciones.pas' {frmAdministracionObservaciones: TFSForm},
  unfrmAdmistracionAccionesObservaciones in 'Cliente\unfrmAdmistracionAccionesObservaciones.pas' {frmAdministracionAccionesObservaciones: TFSForm},
  unFuncionesEmision in 'comunes\unFuncionesEmision.pas',
  unFrmAdministracionPerfilesUsuariosEmision in 'Cliente\unFrmAdministracionPerfilesUsuariosEmision.pas' {frmCustomGridABM1: TFSForm},
  unFrmSolicitudAutorizacion in 'Cliente\unFrmSolicitudAutorizacion.pas' {FrmSolicitudAutorizacion: TFSForm},
  unFrmDeclaracionesPresentadas in 'comunes\unFrmDeclaracionesPresentadas.pas' {frmDeclaracionesPresentadas},
  unFraDeclaracionesPresentadas in 'comunes\unFraDeclaracionesPresentadas.pas' {fraDeclaracionesPresentadas: TFrame},
  unEspera in '..\Comunes\Forms\unEspera.pas' {FrmEspera},
  unfraProgramacion in 'comunes\unfraProgramacion.pas' {fraOpcionProgramacion: TFrame},
  unJobs in 'comunes\unJobs.pas',
  unSesion in '..\..\Comunes\unSesion.pas',
  unPresentacion in 'comunes\unPresentacion.pas',
  unfrmConsultasEmision in 'Cliente\unfrmConsultasEmision.pas' {frmConsultas: TFSForm},
  unFormulaUtils in 'comunes\unFormulaUtils.pas',
  unDmFormulas in 'comunes\unDmFormulas.pas' {dmFormula: TDataModule},
  unFrmDetalleDevengadoGrupo in 'comunes\unFrmDetalleDevengadoGrupo.pas' {frmDetalleDevengadosGrupo},
  unFrmConsultaErroresProceso in 'Cliente\unFrmConsultaErroresProceso.pas' {FrmConsultaErroresProceso: TFSForm},
  unFrmAdministracionNivelAutorizacion in 'cliente\unFrmAdministracionNivelAutorizacion.pas' {FrmAdministracionNivelesAutorizacion: TFSForm},
  unFrmAdministracionAjustes in 'cliente\unFrmAdministracionAjustes.pas',
  unCustomGridABMDetalle in '..\comunes\reposit\unCustomGridABMDetalle.pas' {frmCustomGridABMDetalle: TFSForm},
  unFrmContratosAOmitir in 'cliente\unFrmContratosAOmitir.pas' {frmContratosAOmitir: TFSForm},
  unDmProcesoArchivo in 'server\unDmProcesoArchivo.pas' {DmProcesoArchivos: TDataModule},
  unFrmAprobacionSolicitudRecalculo in 'cliente\unFrmAprobacionSolicitudRecalculo.pas' {FrmAprobacionSolicitudRecalculo},
  unAdminEstadoDeCuenta in 'cliente\unAdminEstadoDeCuenta.pas' {frmAdminEstadoDeCuenta: TFSForm},
  unMoldeEnvioMail in '..\Comunes\envio de mails\unMoldeEnvioMail.pas',
  unCustomForm in '..\Comunes\unCustomForm.pas' {frmCustomForm},
  unEnvioMail in '..\..\Comunes\unEnvioMail.pas',
  unRptCartaDocHeader in '..\Comunes\REPORTS\unRptCartaDocHeader.pas',
  unRptCartaDocumento in '..\Comunes\REPORTS\unRptCartaDocumento.pas' {rptCartaDocumento: TQuickRep},
  unVisualizador in '..\Comunes\unVisualizador.pas' {frmVisualizador},
  unImpoExpoWizard in '..\impoexpo\unImpoExpoWizard.pas' {frmImpoExpoWizard},
  unFraTelefono in '..\Comunes\FRAMES\NEW\unFraTelefono.pas' {fraTelefono: TFrame},
  unFraCodDesc in '..\Comunes\FRAMES\nuevos\unFraCodDesc.pas' {fraCodDesc: TFrame},
  unPropiedadesFrame in '..\..\Paquetes\unPropiedadesFrame.pas',
  unContratoContacto in '..\Comunes\Forms\unContratoContacto.pas' {frmContratoContacto},
  unCargaManualMovimientos in '..\cobranzas\emision\unCargaManualMovimientos.pas' {frmCargaManualMovimientos: TFSForm},
  unfrmErroresImportacion in 'cliente\unfrmErroresImportacion.pas' {frmErroresImportacion},
  unFraParametroValor in '..\comunes\frames\unFraParametroValor.pas' {fraParametroValor: TFrame},
  unCobranzas in '..\..\comunes\unCobranzas.pas',
  unRptCartaDocCompensacion in '..\cobranzas\compensacion\reports\unRptCartaDocCompensacion.pas',
  unQrEstadoCuentaDetalle in '..\cobranzas\reports\unQrEstadoCuentaDetalle.pas' {frmEstadoCuentaDetalle},
  unQrEstadoCuentaResumen in '..\cobranzas\reports\unQrEstadoCuentaResumen.pas' {frmEstadoCuentaResumen},
  unQRF801C in '..\cobranzas\reports\unQRF801C.pas' {QRF801C: TQuickRep},
  unQRF817 in '..\cobranzas\reports\unQRF817.pas' {QRF817: TQuickRep},
  unQRCartaDocIntimacion in '..\cobranzas\reports\unQRCartaDocIntimacion.pas',
  unEstadoCuenta in '..\cobranzas\unEstadoCuenta.pas',
  unImpresionEstadoDeCuenta in '..\cobranzas\unImpresionEstadoDeCuenta.pas' {frmImpresionEstadodeCuenta},
  unOpcionesDeImpresion in '..\cobranzas\unOpcionesDeImpresion.pas' {frmOpcionesDeImpresion},
  unBusquedaDomicilio in '..\comunes\forms\unBusquedaDomicilio.pas' {frmBusquedaDomicilio: TFSForm},
  unSeleccionDestinatarios in '..\comunes\unSeleccionDestinatarios.pas' {frmSeleccionDestinatarios: TFSForm},
  unLibretaDeDirecciones in '..\comunes\forms\unLibretaDeDirecciones.pas' {frmLibretaDeDirecciones: TFSForm},
  unBaseAdministracionCartas in '..\comunes\forms\unBaseAdministracionCartas.pas' {frmBaseAdministracionCartas: TFSForm},
  unConsultasAdicionales in '..\comunes\forms\unConsultasAdicionales.pas' {frmConsultasAdicionales},
  unEjecutivoCuenta in '..\comunes\forms\unEjecutivoCuenta.pas' {frmEjecutivoCuenta},
  unGestorCuenta in '..\comunes\forms\unGestorCuenta.pas' {frmGestorCuenta},
  unTelefonosCargaRapida in '..\comunes\forms\unTelefonosCargaRapida.pas' {frmTelefonosCargaRapida},
  unAyuda in '..\comunes\unAyuda.pas' {frmAyuda},
  unFraValorParametro in '..\comunes\frames\new\unFraValorParametro.pas' {fraValorParametro: TFrame},
  unDebug in '..\comunes\unDebug.pas' {frmDebug},
  unAlarmas in '..\..\comunes\unAlarmas.pas',
  unABMTelefonos in '..\comunes\forms\unABMTelefonos.pas' {frmTelefonos},
  unElementosEnviados in '..\comunes\forms\unElementosEnviados.pas',
  unfraUsuarios in '..\comunes\frames\unfraUsuarios.pas' {fraUsuario: TFrame},
  General in '..\..\comunes\General.pas',
  unManSolicitantesNotas in 'cliente\unManSolicitantesNotas.pas' {frmManSolicitantesNota: TFSForm},
  Periodos in '..\..\comunes\Periodos.pas',
  unFraNominas in 'comunes\unFraNominas.pas' {fraNominas: TFrame},
  VCLExtra in '..\..\comunes\VCLExtra.pas',
  CUIT in '..\..\comunes\Cuit.pas',
  unFraForm931 in 'comunes\unFraForm931.pas' {fraForm931: TFrame},
  unFraForm165_170 in 'comunes\unFraForm165_170.pas' {fraForm165_170: TFrame},
  unFraForm900_926 in 'comunes\unFraForm900_926.pas' {fraForm900_926: TFrame},
  unFraForm905 in 'comunes\unFraForm905.pas' {fraForm905: TFrame},
  unFraForm929_569_593 in 'comunes\unFraForm929_569_593.pas' {fraForm929_569_593: TFrame},
  unFraFormNota in 'comunes\unFraFormNota.pas' {fraFormNota: TFrame},
  unFraForm924_902 in 'comunes\unFraForm924_902.pas' {fraForm924_902: TFrame},
  unFraForm921 in 'comunes\unFraForm921.pas' {fraForm921: TFrame},
  unFraFormMixta931_170 in 'comunes\unFraFormMixta931_170.pas' {fraFormMixta931_170: TFrame},
  unFraFormTicketPresentacion in 'comunes\unFraFormTicketPresentacion.pas' {FraFormTicketPresentacion: TFrame},
  unFraFormRCompl924_902 in 'comunes\unFraFormRCompl924_902.pas' {fraFormRCompl924_902: TFrame},
  unfrmABMNotas in 'cliente\unfrmABMNotas.pas' {frmABMNotas},
  unfrmFormularioEmi in 'cliente\unfrmFormularioEmi.pas' {frmFormularioEmi},
  unFrmConsultaNotas in 'cliente\unFrmConsultaNotas.pas' {frmConsultaNotas: TFSForm},
  unfrmObservacionNota in 'cliente\unfrmObservacionNota.pas' {frmObservacionNota},
  unFraFormMonoSol in 'comunes\unFraFormMonoSol.pas' {fraFormMonoSol: TFrame},
  unFraFormNoSuss_NoSussCopia in 'comunes\unFraFormNoSuss_NoSussCopia.pas' {fraFormNoSuss_NoSussCopia: TFrame},
  unFraFormConstMono in 'comunes\unFraFormConstMono.pas' {fraFormConstMono: TFrame},
  unFraFormPagos in 'comunes\unFraFormPagos.pas' {fraFormPagos: TFrame},
  unfrmObservacionesNota in 'cliente\unfrmObservacionesNota.pas' {frmObservacionesNota},
  DateTimeFuncs in '..\..\comunes\DateTimeFuncs.pas',
  unFraRTD_TIPODOCUMENTO in '..\comunes\frames\new\unFraRTD_TIPODOCUMENTO.pas' {fraRTD_TIPODOCUMENTO: TFrame},
  unFraDigitalizacion in '..\comunes\frames\new\unFraDigitalizacion.pas' {fraDigitalizacion: TFrame},
  unVisualizadorDigitalizacion in '..\comunes\forms\unVisualizadorDigitalizacion.pas' {frmVisualizadorDigitalizacion: TFSForm},
  unFraVistaTIFF in '..\comunes\frames\new\unFraVistaTIFF.pas' {fraVistaTIFF: TFrame},
  unFrmEmpresasSinFondoHip in 'cliente\unFrmEmpresasSinFondoHip.pas' {frmEmpresasSinFondoHip: TFSForm},
  unfrmEmpresasABonificar in 'cliente\unFrmEmpresasABonificar.pas' {frmEmpresasABonificar: TFSForm},
  unFrmEmpresasAOmitir in 'cliente\unFrmEmpresasAOmitir.pas' {frmEmpresasAOmitir: TFSForm},
  unfrmABMBlockNotas in 'cliente\unfrmABMBlockNotas.pas' {frmABMBlockNotas: TFSForm},
  unFrmEmpresasNoSdoAcre in 'cliente\unFrmEmpresasNoSdoAcre.pas' {frmEmpresasNoSdoAcre: TFSForm},
  unFrmEmpresasSinTopeo in 'cliente\unFrmEmpresasSinTopeo.pas' {frmEmpresasSinTopeo: TFSForm},
  unFrmMotivosAutorizacion in 'cliente\unFrmMotivosAutorizacion.pas' {frmMotivosAutorizacion: TFSForm},
  UnRptMoldeCarta in '..\comunes\reports\UnRptMoldeCarta.pas' {qrMoldeCarta: TQuickRep},
  unArt in '..\..\comunes\unArt.pas',
  unfrmRecalculoDevengado in 'cliente\unfrmRecalculoDevengado.pas' {frmPedidoRecalculoDev},
  unfrmObservacion in 'cliente\unfrmObservacion.pas' {frmObservacion},
  unfrmSolicitudRecalculo in 'cliente\unfrmSolicitudRecalculo.pas' {frmPedidosRecalculo: TFSForm},
  unManObservacionesRecalculo in 'cliente\unManObservacionesRecalculo.pas' {frmManObsRecalculo: TFSForm},
  unManMotivosRecalculo in 'cliente\unManMotivosRecalculo.pas' {frmManMotivoRecalculo: TFSForm},
  unFraFormConstInscrEmpl in 'comunes\unFraFormConstInscrEmpl.pas' {fraFormConstInscrEmpl: TFrame},
  unFraFormEscuelas in 'comunes\unFraFormEscuelas.pas' {fraFormEscuelas: TFrame},
  unEstrategiaTIFF in '..\fax\faxclient_new\unEstrategiaTIFF.pas',
  unfraFFO_FAXFORMULARIO in '..\fax\faxclient_new\frames\unfraFFO_FAXFORMULARIO.pas' {fraFFO_FAXFORMULARIO: TFrame},
  unConsFax in '..\comunes\forms\unConsFax.pas' {frmConsFax: TFSForm},
  unCustomPrincipal in '..\comunes\reposit\unCustomPrincipal.pas' {frmCustomPrincipal},
  unManRDO_DOCUMENTO in '..\archivo_new\abm\unManRDO_DOCUMENTO.pas' {frmManRDO_DOCUMENTO: TFSForm},
  unFaxEnviados in '..\comunes\forms\unFaxEnviados.pas' {frmFaxEnviados: TFSForm},
  unFrmMotivosAceptacionRechazo in 'cliente\unFrmMotivosAceptacionRechazo.pas' {frmMotivosAceptacionRechazo: TFSForm},
  unReversionMovimientos in '..\cobranzas\unReversionMovimientos.pas' {frmReversionMovimientos: TFSForm},
  unfrmCuadroComparativo in 'comunes\unfrmCuadroComparativo.pas' {frmCuadroComparativo},
  unFrmConsultaNotasGestion in 'cliente\unFrmConsultaNotasGestion.pas' {frmConsultaNotasGestion: TFSForm},
  unfrmConsultaEmpresaMinimos in 'cliente\unfrmConsultaEmpresaMinimos.pas' {frmConsultaEmpresasMinimos: TFSForm},
  unFrmMotivosRechazoSim in 'cliente\unFrmMotivosRechazoSim.pas' {frmMotivosRechazoSim: TFSForm},
  unFiltros in '..\..\comunes\unFiltros.pas',
  unfraEntidadCUIT in '..\comunes\frames\new\unfraEntidadCUIT.pas' {fraEntidadCUIT: TFrame},
  unfraCPR_PRESTADOR in '..\comunes\frames\new\unfraCPR_PRESTADOR.pas',
  unConsultaSiniestros in 'comunes\unConsultaSiniestros.pas' {frmSiniestros: TFSForm},
  unSiniestros in '..\siniestros\unSiniestros.pas',
  unfraVendedoresCUIT in '..\comunes\frames\new\unfraVendedoresCUIT.pas' {fraVendedoresCUIT: TFrame},
  unImpoExpoUtils in '..\impoexpo\unImpoExpoUtils.pas',
  DBCheckCombo in '..\..\paquetes\firesoft\DBCheckCombo.pas',
  unAnalisisDeEmision in 'comunes\unAnalisisDeEmision.pas' {frmAnalisisDeEmision},
  unFrmEmpresasActividades in 'cliente\unFrmEmpresasActividades.pas' {frmEmpresasActividades: TFSForm},
  unSeguimientoProcesos in '..\cobranzas\unSeguimientoProcesos.pas' {frmSeguimientoProcesos: TFSForm},
  unAnalisisEmision in '..\cobranzas\unAnalisisEmision.pas' {frmAnalisisEmision},
  unRptDDJJSinPresentar in '..\integrador\unRptDDJJSinPresentar.pas' {qrDDJJSinPresentar: TQuickRep},
  unQRCartaDocIntimacionNuevaGrilla in '..\cobranzas\reports\unQRCartaDocIntimacionNuevaGrilla.pas',
  unConsSaldoAcreedorTopes in '..\cobranzas\unConsSaldoAcreedorTopes.pas' {frmConsSaldoAcreedorTopes},
  unManIAS_ASESOREMISION in 'cliente\unManIAS_ASESOREMISION.pas' {frmManIAS_ASESOREMISION: TFSForm},
  unFrmEmpresasAAnularDev in 'cliente\unFrmEmpresasAAnularDev.pas' {frmEmpresasAAnularDev: TFSForm},
  unFormularioValidacionYRectificacionDatosEstablecimientos in '..\comunes\forms\unFormularioValidacionYRectificacionDatosEstablecimientos.pas' {frmFormularioValidacionYRectificacionDatosEstablecimientos},
  unRptFormularioValidacionYRectificacionDatosEstablecimientos in '..\comunes\reports\unRptFormularioValidacionYRectificacionDatosEstablecimientos.pas' {qrFormularioValidacionYRectificacionDatosEstablecimientos: TQuickRep},
  unAsesorEmision in 'cliente\unAsesorEmision.pas' {frmAsesorEmision},
  unComunes in '..\..\comunes\unComunes.pas',
  unQrLibreDeuda in '..\cobranzas\reports\unQrLibreDeuda.pas' {qrLibreDeuda: TQuickRep},
  unRptGestionDeReclamos in '..\comunes\reports\unRptGestionDeReclamos.pas' {frmRptGestionDeReclamos},
  unFraTrabajadorSiniestro in '..\comunes\frames\new\unFraTrabajadorSiniestro.pas' {fraTrabajadorSiniestro: TFrame},
  unAgendaTelefonica in '..\comunes\forms\unAgendaTelefonica.pas' {frmAgendaTelefonica: TFSForm},
  unVentanillaElectronica in '..\comunes\forms\unVentanillaElectronica.pas' {frmVentanillaElectronica: TFSForm},
  unFrmEmpresasCodSiniestrados in 'cliente\unFrmEmpresasCodSiniestrados.pas' {frmEmpresasCodSiniestrados: TFSForm},
  unFraFormAdicionarResumen in 'comunes\unFraFormAdicionarResumen.pas' {fraFormAdicionarResumen: TFrame},
  unFraFormAdicionarDetalle in 'comunes\unFraFormAdicionarDetalle.pas' {fraFormAdicionarDetalle: TFrame},
  unWebBrowser in 'comunes\unWebBrowser.pas' {frmWebBrowser},
  unNovedades in '..\..\comunes\unNovedades.pas',
  unFraEmpresaAfi in '..\comunes\frames\new\unFraEmpresaAfi.pas' {fraEmpresaAfi: TFrame},
  unFraEmpresaSolicitud in '..\comunes\frames\new\unFraEmpresaSolicitud.pas' {fraEmpresaSolicitud: TFrame},
  unRptCartDocTraspasoIngreso in '..\afiliaciones\reports\unRptCartDocTraspasoIngreso.pas',
  unQREndoso1 in '..\afiliaciones\reports\unQREndoso1.pas',
  unQREndosoBase in '..\afiliaciones\reports\unQREndosoBase.pas',
  unQRReporte in '..\afiliaciones\reports\unQRReporte.pas' {QRReporte: TQuickRep},
  unRptCartDocTraspasoEgreso in '..\afiliaciones\reports\unRptCartDocTraspasoEgreso.pas',
  unrptCartaDocTarifa in '..\afiliaciones\reports\unrptCartaDocTarifa.pas',
  unRptCartDocTraspasoEgreso2 in '..\afiliaciones\reports\unRptCartDocTraspasoEgreso2.pas' {rptCartDocTraspasoEgreso2: TQuickRep},
  unQREndoso0 in '..\afiliaciones\reports\unQREndoso0.pas',
  unGeneracionLote in 'Gestion\unGeneracionLote.pas' {frmGeneracionLote},
  Strfuncs in '..\..\comunes\STRFUNCS.pas',
  unFrmEmpresasTipoPresentacion in 'cliente\unFrmEmpresasTipoPresentacion.pas' {frmEmpresasTipoPresentacion: TFSForm},
  unConsultaLotes in 'gestion\unConsultaLotes.pas' {frmConsultaLotes: TFSForm},
  unFraNavegadorWEB in '..\comunes\frames\new\unFraNavegadorWEB.pas' {fraNavegadorWEB: TFrame},
  unGoogleMaps in '..\comunes\forms\unGoogleMaps.pas' {frmGoogleMaps},
  unFraDomicilioGIS in '..\comunes\frames\new\unFraDomicilioGIS.pas' {fraDomicilioGIS: TFrame},
  unManCGI_GIS in '..\comunes\forms\unManCGI_GIS.pas' {frmManCGI_GIS: TFSForm},
  unVisorPDF in '..\comunes\forms\unVisorPDF.pas' {frmVisorPDF},
  unQRAvisoRecibo in '..\afiliaciones\unQRAvisoRecibo.pas' {rptAvisoRecibo: TQuickRep},
  unFrmEmpresasSAC in 'cliente\unFrmEmpresasSAC.pas' {frmEmpresasSAC: TFSForm},
  unGestionar in 'gestion\unGestionar.pas' {frmGestionar},
  unConsultaGestiones in 'gestion\unConsultaGestiones.pas' {frmConsultaGestiones: TFSForm},
  unGestionEnTramite in 'gestion\unGestionEnTramite.pas' {frmGestionEnTramite},
  unFraDetalleGestion in 'gestion\unFraDetalleGestion.pas' {fraDetalleGestion: TFrame},
  unAnexoRes365 in '..\comunes\forms\unAnexoRes365.pas' {frmAnexoRes365},
  unRptAnexoRes365 in '..\comunes\reports\unRptAnexoRes365.pas' {qrAnexoRes365: TQuickRep},
  unRGRL in '..\comunes\forms\unRGRL.pas' {frmRGRL},
  unRptEstadisticasRGRL in '..\comunes\reports\unRptEstadisticasRGRL.pas' {qrEstadisticasRGRL: TQuickRep},
  unRptRGRL in '..\comunes\reports\unRptRGRL.pas' {qrRGRL: TQuickRep},
  unAfiliaciones in '..\afiliaciones\unAfiliaciones.pas',
  unClasificacionActivos in '..\comunes\forms\unClasificacionActivos.pas' {frmClasificacionActivos: TFSForm},
  unManCPG_PLAZOGUARDA in '..\comunes\forms\unManCPG_PLAZOGUARDA.pas' {frmManCPG_PLAZOGUARDA: TFSForm},
  unSeleccionMultiple in '..\comunes\forms\unSeleccionMultiple.pas' {frmSeleccionUsuarios: TFrame},
  unManCTA_TIPOACTIVOS in '..\comunes\forms\unManCTA_TIPOACTIVOS.pas' {frmManCTA_TIPOACTIVOS: TFSForm},
  unManControlCargaAFI in 'cliente\unManControlCargaAFI.pas' {frmManControlCargaAFI: TFSForm},
  unComunesEmisionCliente in 'cliente\unComunesEmisionCliente.pas',
  unFrmGestionAnalisisEmision in 'cliente\unFrmGestionAnalisisEmision.pas' {frmGestionAnalisisEmision: TFSForm},
  AnsiSql in '..\..\comunes\AnsiSql.pas',
  SqlFuncs in '..\..\comunes\SqlFuncs.pas',
  DBSql in '..\..\comunes\DBSql.pas',
  unObjEmision in 'comunes\unObjEmision.pas',
  unfraDelegacion in '..\comunes\frames\unfraDelegacion.pas' {fraDelegacion: TFrame},
  unManUsuarioWebEmision in 'cliente\unManUsuarioWebEmision.pas' {frmManUsuarioWebEmision: TFSForm},
  unManCAT_AREATEXTO in '..\comunes\forms\unManCAT_AREATEXTO.pas' {frmManCAT_AREATEXTO: TFSForm},
  unManCFI_FIRMA in '..\comunes\forms\unManCFI_FIRMA.pas' {frmManCFI_FIRMA: TFSForm},
  unManCTC_TEXTOCARTA in '..\comunes\forms\unManCTC_TEXTOCARTA.pas' {frmManCTC_TEXTOCARTA: TFSForm},
  unEMIAdministracionCartas in 'gestion\unEMIAdministracionCartas.pas' {frmEMIAdministracionCartas: TFSForm},
  unBaseGeneracionCartas in '..\comunes\forms\unBaseGeneracionCartas.pas' {frmBaseGeneracionCartas},
  unEMIGeneracionCartas in 'gestion\unEMIGeneracionCartas.pas' {frmEMIGeneracionCartas},
  unManCTC_TEXTOCARTA_EMI in 'comunes\unManCTC_TEXTOCARTA_EMI.pas' {frmManCTC_TEXTOCARTA_EMI: TFSForm},
  unComunesGestion in 'gestion\unComunesGestion.pas',
  unManTextoEmailGestion in 'comunes\unManTextoEmailGestion.pas' {frmManTextoEmailGestion: TFSForm},
  unManParametrosManuales in 'comunes\unManParametrosManuales.pas' {frmManParametrosManuales: TFSForm},
  unManParametrosManualesCarta in 'comunes\unManParametrosManualesCarta.pas' {frmManParametrosManualesCarta: TFSForm},
  unManParametrosManualesMail in 'comunes\unManParametrosManualesMail.pas' {frmManParametrosManualesMail: TFSForm},
  unContratoContactoEmi in 'comunes\unContratoContactoEmi.pas' {frmContratoContactoEmi},
  unFraFormWebDetalleRNS in 'comunes\unFraFormWebDetalleRNS.pas' {fraFormWebDetalleRNS: TFrame},
  unRptRNS in 'comunes\unRptRNS.pas' {qrRNS: TQuickRep},
  unAgenda in '..\..\comunes\interfaces\unAgenda.pas',
  unfraContactoAgenda in '..\comunes\frames\modulosAgenda\unfraContactoAGENDA.pas' {fraContactoAGENDA: TFrame},
  unfraContactoLibreAGENDA in '..\comunes\frames\modulosAgenda\unfraContactoLibreAGENDA.pas' {fraContactoLibreAGENDA: TFrame},
  unfraDomicilioAGENDA in '..\comunes\frames\modulosAgenda\unfraDomicilioAGENDA.pas' {fraDomicilioGISAGENDA: TFrame},
  unfraDomicilioEmpresaAGENDA in '..\comunes\frames\modulosAgenda\unfraDomicilioEmpresaAGENDA.pas' {fraDomicilioEmpresaAGENDA: TFrame},
  unfraDomicilioEstablecimientoAGENDA in '..\comunes\frames\modulosAgenda\unfraDomicilioEstablecimientoAGENDA.pas' {fraDomicilioEstablecimientoAGENDA: TFrame},
  unfraEmpresaAGENDA in '..\comunes\frames\modulosAgenda\unfraEmpresaAGENDA.pas' {fraEmpresaAGENDA: TFrame},
  unfraEntidadAGENDA in '..\comunes\frames\modulosAgenda\unfraEntidadAGENDA.pas' {fraEntidadAGENDA: TFrame},
  unfraEntidadVendedorAGENDA in '..\comunes\frames\modulosAgenda\unfraEntidadVendedorAGENDA.pas' {fraEntidadVendedorAGENDA: TFrame},
  unfraVendedorAGENDA in '..\comunes\frames\modulosAgenda\unfraVendedorAGENDA.pas' {fraVendedorAGENDA: TFrame},
  unfraTrabajadorSiniestroAGENDA in '..\comunes\frames\modulosAgenda\unfraTrabajadorSiniestroAGENDA.pas' {fraTrabajadorSiniestroAGENDA: TFrame},
  unfraTrabajadorAGENDA in '..\comunes\frames\modulosAgenda\unfraTrabajadorAGENDA.pas' {fraTrabajadorAGENDA: TFrame},
  unfraPrestadorAGENDA in '..\comunes\frames\modulosAgenda\unfraPrestadorAGENDA.pas' {fraPrestadorAGENDA: TFrame},
  unfraNumAutoAGENDA in '..\comunes\frames\modulosAgenda\unfraNumAutoAGENDA.pas' {fraNumAutoAGENDA: TFrame},
  unfraEstablecimientoAGENDA in '..\comunes\frames\modulosAgenda\unfraEstablecimientoAGENDA.pas' {fraEstablecimientoAGENDA: TFrame},
  unFraTitulo in '..\comunes\frames\nuevos\unFraTitulo.pas' {fraTitulo: TFrame},
  unAgendaBase in '..\comunes\forms\unAgendaBase.pas' {frmAgendaBase},
  unFraUsuarioConSectorIntranet in '..\comunes\frames\new\unFraUsuarioConSectorIntranet.pas' {fraUsuarioConSectorIntranet: TFrame},
  unFraUsuarioConJerarquias in '..\comunes\frames\new\unFraUsuarioConJerarquias.pas' {fraUsuarioConJerarquias: TFrame},
  unFraValidacionDatosEmpresa in '..\comunes\frames\new\unFraValidacionDatosEmpresa.pas' {fraValidacionDatosEmpresa: TFrame},
  unArbolSectores in '..\usuarios\unArbolSectores.pas' {frmArbolSectores},
  unSeleccionTareas in '..\comunes\forms\unSeleccionTareas.pas' {frmSeleccionTareas},
  unAgendaCargaConsulta in '..\comunes\forms\unAgendaCargaConsulta.pas' {frmAgendaCargaConsulta},
  unABMAgendaBase in '..\comunes\forms\unABMAgendaBase.pas' {frmABMAgendaBase},
  unABMAgendaBaseEvento in '..\comunes\forms\unABMAgendaBaseEvento.pas' {frmABMAgendaBaseEvento},
  unABMAgendaBaseTarea in '..\comunes\forms\unABMAgendaBaseTarea.pas' {frmABMAgendaBaseTarea},
  unSeleccionResponsableHYS in '..\hys\unSeleccionResponsableHYS.pas' {frmSeleccionResponsableHYS: TFSForm},
  unInterfaces in '..\..\comunes\interfaces\unInterfaces.pas',
  unContratoTrabajador in '..\afiliaciones\unContratoTrabajador.pas' {frmContratoTrabajador},
  unFraActividad in '..\comunes\frames\unFraActividad.pas' {fraActividad: TFrame},
  unManCCP_CUENTAPAGO in '..\comunes\forms\unManCCP_CUENTAPAGO.pas' {frmManCCP_CUENTAPAGO: TFSForm},
  unEstablecimientosTrabajador in '..\afiliaciones\unEstablecimientosTrabajador.pas' {frmEstablecimientosTrabajador},
  unAltaModifCCP_CUENTAPAGO in '..\comunes\forms\unAltaModifCCP_CUENTAPAGO.pas',
  unfraPrestador in '..\comunes\frames\unfraPrestador.pas' {fraPrestador: TFrame},
  unfraInfoEmpresaExt in '..\comunes\frames\new\unfraInfoEmpresaExt.pas' {fraInfoEmpresaExt: TFrame},
  unFraDomicilioEmpresa in '..\comunes\frames\new\unFraDomicilioEmpresa.pas' {fraDomicilioEmpresa: TFrame},
  unDlgBusSiniestro in '..\siniestros\unDlgBusSiniestro.pas' {frmDlgBusSiniestro: TFSForm},
  unVisor in '..\comunes\forms\unVisor.pas' {frmVisor},
  unArchivoVisor in '..\comunes\unArchivoVisor.pas',
  unVisorExcel in '..\comunes\forms\unVisorExcel.pas' {frmVisorExcel},
  unRptSituacionFacturacion in 'gestion\unRptSituacionFacturacion.pas' {rptCartaSituacionFacturacion: TQuickRep},
  unFraCanal in '..\comunes\frames\new\unFraCanal.pas' {fraCanal: TFrame},
  unDatosSiniestro in '..\comunes\forms\unDatosSiniestro.pas' {frmDatosSiniestro},
  unRptRNSMultiPeriodo in 'comunes\unRptRNSMultiPeriodo.pas' {qrRNSMultiPeriodo: TQuickRep},
  unFraFormSitFacturacion in 'comunes\unFraFormSitFacturacion.pas' {FraFormSitFacturacion: TFrame},
  unOpcionesImpresion in 'comunes\unOpcionesImpresion.pas' {frmOpcionesImpresion},
  unUtilsArchivo in '..\archivo_new\unUtilsArchivo.pas',
  unManGestionables in 'gestion\unManGestionables.pas' {frmManGestionables: TFSForm},
  unfraProspectosAGENDA in '..\comunes\frames\modulosagenda\unfraProspectosAGENDA.pas' {fraProspectosAGENDA: TFrame},
  unfraSectores in '..\comunes\frames\unfraSectores.pas' {fraSectores: TFrame},
  unQrEtiquetasDocCarpetas in '..\archivo_new\unQrEtiquetasDocCarpetas.pas' {qrEtiquetasDocCarpetas: TQuickRep},
  unABMDelegacionTareas in '..\sic\unABMDelegacionTareas.pas' {frmABMDelegacionTareas},
  unControlVersion in '..\..\comunes\unControlVersion.pas',
  unSIC in '..\..\comunes\unSIC.pas',
  unfraVistaEventos in '..\comunes\frames\modulosAgenda\unfraVistaEventos.pas' {fraVistaEventos: TFrame},
  unAgendaVistaEmpresa in '..\comunes\forms\unAgendaVistaEmpresa.pas' {frmAgendaVistaEmpresa},
  unRptPlantillaRGRL in '..\comunes\reports\unRptPlantillaRGRL.pas' {qrPlantillaRGRL: TQuickRep},
  unArchivo in '..\archivo_new\unArchivo.pas',
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
  unCargaDocumentosDigitaliz in '..\comunes\forms\unCargaDocumentosDigitaliz.pas' {frmCargaDocumentosDigitaliz},
  unCapturarCodigoBarras in '..\comunes\unCapturarCodigoBarras.pas' {frmCapturarCodigoBarras},
  unCustomSplash in '..\comunes\reposit\unCustomSplash.pas' {frmCustomSplash},
  unWelcomeSplash in '..\comunes\forms\unWelcomeSplash.pas' {frmWelcomeSplash},
  unRTTI in '..\..\comunes\unRTTI.pas',
  unConstantArchivo in '..\archivo_new\unConstantArchivo.pas',
  unABMMinutaReunion in 'comunes\unABMMinutaReunion.pas' {frmMinutaReunion},
  unRptMinutaReunion in 'comunes\unRptMinutaReunion.pas' {frmRptMinutaReunion},
  unManSolicitantesSitFac in 'cliente\unManSolicitantesSitFac.pas' {frmSolicitantesSitFac: TFSForm},
  unfraEmpresaSolicitudAGENDA in '..\comunes\frames\modulosagenda\unfraEmpresaSolicitudAGENDA.pas' {fraEmpresaSolicitudAGENDA: TFrame},
  unQrDetalleRemitoDevolucion in '..\archivo_new\unQrDetalleRemitoDevolucion.pas' {QrDetalleRemitoDevolucion},
  unFrmEmpresasRegla in 'cliente\unFrmEmpresasRegla.pas' {frmEmpresasRegla: TFSForm},
  unFrmEmpresasLiquidacionIndemnizaciones in 'cliente\unFrmEmpresasLiquidacionIndemnizaciones.pas' {frmEmpresasLiquidacionIndemnizaciones: TFSForm},
  unfraFirmante in '..\comunes\frames\unfraFirmante.pas' {fraFirmante: TFrame},
  unTesoreria in '..\afiliaciones\tesoreria\unTesoreria.pas',
  unManCVS_VENTANILLA_SUBTEMAS in '..\comunes\forms\unManCVS_VENTANILLA_SUBTEMAS.pas' {frmManCVS_VENTANILLA_SUBTEMAS: TFSForm},
  unFrmArmadoLote in '..\archivo_new\unFrmArmadoLote.pas' {FrmArmadoLote: TFSForm},
  unVerImagenes in '..\archivo_new\unVerImagenes.pas' {frmVerImagenes},
  unfraDatoFechaAGENDA in '..\comunes\frames\modulosagenda\unfraDatoFechaAGENDA.pas' {fraDatoFecha: TFrame},
  unFraWebBrowser in '..\comunes\frames\new\unFraWebBrowser.pas' {fraWebBrowser: TFrame},
  unFraGIS_APIv3 in '..\comunes\frames\new\unFraGIS_APIv3.pas' {fraGIS_APIv3: TFrame},
  unGIS in '..\..\comunes\unGIS.pas',
  unQrDetalleLote in '..\archivo_new\unQrDetalleLote.pas' {QrDetalleLote},
  unRptResumenLotes in '..\archivo_new\unRptResumenLotes.pas' {qrResumenLotes: TQuickRep},
  unComisiones in '..\afiliaciones\comisiones\unComisiones.pas',
  unFraSDA_DETALLEARCHIVO in '..\comunes\frames\unFraSDA_DETALLEARCHIVO.pas' {fraSDA_DETALLEARCHIVO: TFrame},
  unEsperaSimple in '..\comunes\forms\unEsperaSimple.pas' {frmEsperaSimple},
  unImportCryptoSrt in '..\..\comunes\unImportCryptoSrt.pas',
  unSeleccionarCarpetaSRT in '..\afiliaciones\unSeleccionarCarpetaSRT.pas' {frmSeleccionarCarpetaSRT};

{$R *.RES}

begin
  Application.Title := 'Emisi�n';
  if not ProcesandoArchivo or (GetInstances > 2) then
    OnlyOneInstance;

  LiberarProcesando;
  Application.Initialize;

  with TfrmWelcomeSplash.Create(Application) do
  try
    ShowOnTop;
    Application.CreateForm(TdmPrincipal, dmPrincipal);
    Application.CreateForm(TdmEmision, dmEmision);
    Application.CreateForm(TDmProcesoArchivos, DmProcesoArchivos);
    Application.CreateForm(TdmFormula, dmFormula);
    if dmPrincipal.sdbPrincipal.Connected then
      Application.CreateForm(TfrmPrincipal, frmPrincipal);
  finally
    Free;
  end;

  MostrarNovedades;
  Application.Run;
end.

unit unRptParteMedicoEgreso;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, SDEngine;

type
  TrptParteMedicoEgreso = class(TQuickRep)
    sdqDatos: TSDQuery;
    qrbFormulario: TQRBand;
    QRShape201: TQRShape;
    QRShape202: TQRShape;
    QRLabel3: TQRLabel;
    QRShape1: TQRShape;
    qrdbA1: TQRDBText;
    QRLabel1: TQRLabel;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    qrdbA2: TQRDBText;
    QRShape194: TQRShape;
    QRShape193: TQRShape;
    QRLabel108: TQRLabel;
    qrdbCA_CALLE: TQRDBText;
    QRShape20: TQRShape;
    QRLabel10: TQRLabel;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape19: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape188: TQRShape;
    QRShape189: TQRShape;
    QRShape190: TQRShape;
    QRShape191: TQRShape;
    QRShape192: TQRShape;
    qrdbCA_LOCALIDAD: TQRDBText;
    QRLabel11: TQRLabel;
    qrdbCA_CODPOSTAL: TQRDBText;
    QRLabel12: TQRLabel;
    qrdbCA_DEPARTAMENTO: TQRDBText;
    QRLabel13: TQRLabel;
    qrdbCA_PISOCALLE: TQRDBText;
    QRLabel106: TQRLabel;
    qrdbCA_NUMERO: TQRDBText;
    QRLabel107: TQRLabel;
    QRLabel109: TQRLabel;
    QRShape195: TQRShape;
    qrdbPROVINCIAPREST: TQRDBText;
    QRShape196: TQRShape;
    QRLabel110: TQRLabel;
    QRShape197: TQRShape;
    qrdbCA_TELEFONO: TQRDBText;
    QRShape58: TQRShape;
    QRShape60: TQRShape;
    QRShape68: TQRShape;
    QRShape72: TQRShape;
    QRShape69: TQRShape;
    QRShape67: TQRShape;
    QRShape66: TQRShape;
    QRShape65: TQRShape;
    QRShape63: TQRShape;
    QRShape62: TQRShape;
    QRShape64: TQRShape;
    qrdbJW_LOCALIDAD: TQRDBText;
    QRLabel37: TQRLabel;
    qrdbJW_CODPOSTAL: TQRDBText;
    QRLabel36: TQRLabel;
    qrdbJW_DEPARTAMENTO: TQRDBText;
    QRLabel35: TQRLabel;
    qrdbJW_PISO: TQRDBText;
    QRLabel34: TQRLabel;
    QRShape30: TQRShape;
    QRLabel16: TQRLabel;
    QRShape37: TQRShape;
    QRLabel20: TQRLabel;
    QRShape38: TQRShape;
    qrdbTD_CUIL: TQRDBText;
    QRShape39: TQRShape;
    QRLabel21: TQRLabel;
    QRShape40: TQRShape;
    qrdbJW_NOMBRE: TQRDBText;
    QRShape31: TQRShape;
    QRLabel17: TQRLabel;
    QRShape32: TQRShape;
    qrdbTD_DNI: TQRDBText;
    QRShape33: TQRShape;
    QRLabel18: TQRLabel;
    QRShape34: TQRShape;
    qrdbTD_LC: TQRDBText;
    QRShape35: TQRShape;
    QRLabel19: TQRLabel;
    QRShape36: TQRShape;
    qrdbTD_LE: TQRDBText;
    QRShape41: TQRShape;
    QRLabel22: TQRLabel;
    QRShape42: TQRShape;
    qrdbTD_CI: TQRDBText;
    QRShape43: TQRShape;
    QRLabel23: TQRLabel;
    QRShape44: TQRShape;
    qrdbTD_PAS: TQRDBText;
    QRShape45: TQRShape;
    QRLabel24: TQRLabel;
    QRShape46: TQRShape;
    qrdbJW_DOCUMENTO: TQRDBText;
    QRShape47: TQRShape;
    QRLabel25: TQRLabel;
    QRShape49: TQRShape;
    QRLabel26: TQRLabel;
    QRShape50: TQRShape;
    qrdbCIVIL: TQRDBText;
    QRShape51: TQRShape;
    QRLabel27: TQRLabel;
    QRShape52: TQRShape;
    qrdbJW_FEC_NACIMIENTO: TQRDBText;
    QRShape53: TQRShape;
    QRLabel28: TQRLabel;
    QRShape54: TQRShape;
    qrdbJW_NACIONALIDAD: TQRDBText;
    QRShape57: TQRShape;
    QRLabel31: TQRLabel;
    QRLabel39: TQRLabel;
    QRShape73: TQRShape;
    qrdbPROVINCIATRAB: TQRDBText;
    QRShape59: TQRShape;
    qrdbJW_NUMERO: TQRDBText;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRShape61: TQRShape;
    qrdbJW_CALLE: TQRDBText;
    QRShape3: TQRShape;
    QRLabel4: TQRLabel;
    QRShape4: TQRShape;
    QRLabel14: TQRLabel;
    qrdbCA_CLAVE: TQRDBText;
    qrdbCA_DESCRIPCION: TQRDBText;
    QRLabel15: TQRLabel;
    qrdbJW_TELEFONO: TQRDBText;
    QRShape5: TQRShape;
    qrdbSEXO: TQRDBText;
    QRShape213: TQRShape;
    QRLabel118: TQRLabel;
    QRShape214: TQRShape;
    QRLabel119: TQRLabel;
    QRShape215: TQRShape;
    QRLabel121: TQRLabel;
    QRShape216: TQRShape;
    qrdbEW_CUIT: TQRDBText;
    QRShape217: TQRShape;
    qrdbMP_NOMBRE: TQRDBText;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    qrdbEW_FECHASIN: TQRDBText;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    qrdbEW_FECHAALTAMEDICA: TQRDBText;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    qrdbEW_FECHAREINICIO: TQRDBText;
    QRLabel8: TQRLabel;
    QRShape12: TQRShape;
    QRLabel9: TQRLabel;
    QRShape13: TQRShape;
    qrdbEW_DIAGNOSTICO: TQRDBText;
    QRShape105: TQRShape;
    QRLabel57: TQRLabel;
    QRShape106: TQRShape;
    qrdbEW_CIE10: TQRDBText;
    QRShape14: TQRShape;
    QRLabel29: TQRLabel;
    QRShape15: TQRShape;
    QRLabel30: TQRLabel;
    QRShape16: TQRShape;
    qrdbG1: TQRDBText;
    QRShape17: TQRShape;
    QRLabel38: TQRLabel;
    QRShape18: TQRShape;
    qrdbG2: TQRDBText;
    QRShape48: TQRShape;
    QRLabel40: TQRLabel;
    QRShape55: TQRShape;
    qrdbG3: TQRDBText;
    QRShape56: TQRShape;
    QRLabel41: TQRLabel;
    QRShape70: TQRShape;
    qrdbG4: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape71: TQRShape;
    QRLabel42: TQRLabel;
    QRShape74: TQRShape;
    qrdbG5: TQRDBText;
    QRShape75: TQRShape;
    QRLabel43: TQRLabel;
    QRShape76: TQRShape;
    qrdbG6: TQRDBText;
    QRShape77: TQRShape;
    QRLabel44: TQRLabel;
    QRShape78: TQRShape;
    qrdbG7: TQRDBText;
    QRShape79: TQRShape;
    QRLabel45: TQRLabel;
    QRShape80: TQRShape;
    qrdbEW_DIASBAJATOTAL: TQRDBText;
    QRShape200: TQRShape;
    QRLabel112: TQRLabel;
    QRLabel113: TQRLabel;
    QRLabel114: TQRLabel;
    QRShape203: TQRShape;
    qrdbH1: TQRDBText;
    QRShape204: TQRShape;
    qrdbH2: TQRDBText;
    QRLabel47: TQRLabel;
    QRShape82: TQRShape;
    qrdbI1: TQRDBText;
    QRShape83: TQRShape;
    QRLabel48: TQRLabel;
    QRShape84: TQRShape;
    qrdbI2: TQRDBText;
    QRShape85: TQRShape;
    QRShape186: TQRShape;
    QRLabel105: TQRLabel;
    QRShape187: TQRShape;
    qrdbEW_OBSERVACIONES: TQRDBText;
    QRShape81: TQRShape;
    QRLabel46: TQRLabel;
    QRShape185: TQRShape;
    QRLabel104: TQRLabel;
    QRShape205: TQRShape;
    QRLabel115: TQRLabel;
    QRShape206: TQRShape;
    qrdbEW_INTERNADODIAS: TQRDBText;
    QRShape207: TQRShape;
    QRLabel116: TQRLabel;
    QRShape208: TQRShape;
    qrdbEW_INTERNADOHASTA: TQRDBText;
    QRShape209: TQRShape;
    QRLabel117: TQRLabel;
    QRShape210: TQRShape;
    qrdbEW_INTERNADODESDE: TQRDBText;
    QRShape198: TQRShape;
    QRLabel111: TQRLabel;
    QRShape199: TQRShape;
    qrdbJ1: TQRDBText;
    QRShape211: TQRShape;
    QRLabel120: TQRLabel;
    QRShape212: TQRShape;
    qrdbJ2: TQRDBText;
    QRShape218: TQRShape;
    QRLabel122: TQRLabel;
    QRShape219: TQRShape;
    qrdbK1: TQRDBText;
    QRShape220: TQRShape;
    qrdbL1: TQRDBText;
    QRShape221: TQRShape;
    QRLabel123: TQRLabel;
    QRShape222: TQRShape;
    qrdbK2: TQRDBText;
    QRShape223: TQRShape;
    qrdbL2: TQRDBText;
    QRShape224: TQRShape;
    QRLabel124: TQRLabel;
    QRShape225: TQRShape;
    qrdbK3: TQRDBText;
    QRShape226: TQRShape;
    qrdbL3: TQRDBText;
    QRShape227: TQRShape;
    QRLabel125: TQRLabel;
    QRShape228: TQRShape;
    qrdbK4: TQRDBText;
    QRShape229: TQRShape;
    qrdbL4: TQRDBText;
    QRShape86: TQRShape;
    QRLabel49: TQRLabel;
    QRShape87: TQRShape;
    qrdbEW_MEDICO: TQRDBText;
    QRShape88: TQRShape;
    QRLabel50: TQRLabel;
    QRShape89: TQRShape;
    qrdbEW_MATRICULA: TQRDBText;
    QRShape90: TQRShape;
    QRLabel51: TQRLabel;
    QRShape91: TQRShape;
    qrdbM1: TQRDBText;
    QRShape92: TQRShape;
    QRLabel52: TQRLabel;
    QRShape93: TQRShape;
    qrdbM2: TQRDBText;
    QRShape94: TQRShape;
    QRLabel53: TQRLabel;
    QRShape95: TQRShape;
    QRLabel54: TQRLabel;
    QRShape96: TQRShape;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRShape97: TQRShape;
    QRLabel58: TQRLabel;
    QRShape98: TQRShape;
    qrdbEW_FECHARECEPCION: TQRDBText;
    QRShape99: TQRShape;
    QRShape100: TQRShape;
    QRLabel59: TQRLabel;
    QRShape101: TQRShape;
    QRLabel60: TQRLabel;
    QRShape102: TQRShape;
    QRShape103: TQRShape;
    QRLabel61: TQRLabel;
    QRShape104: TQRShape;
    QRShape107: TQRShape;
    QRShape108: TQRShape;
    QRLabel62: TQRLabel;
    QRShape109: TQRShape;
    QRLabel63: TQRLabel;
    QRShape110: TQRShape;
    QRLabel64: TQRLabel;
    QRShape111: TQRShape;
    QRLabel65: TQRLabel;
    QRShape112: TQRShape;
    QRShape113: TQRShape;
    QRLabel66: TQRLabel;
    QRShape114: TQRShape;
    QRLabel67: TQRLabel;
  private

  public

  end;

  { Crea e imprime el reporte TRptParteMedicoEgreso }
  procedure ImprimirParteMedicoEgreso(IdTransaccion: Integer);

implementation

uses unDmPrincipal;

{$R *.DFM}

{----------------------------------------------------------------------------------------------------------------------}
procedure ImprimirParteMedicoEgreso(IdTransaccion: Integer);
begin
  with TrptParteMedicoEgreso.Create(Application) do
    try
      sdqDatos.ParamByName('pTransaccion').AsInteger := IdTransaccion;
      OpenQuery(sdqDatos);
      Print;
    finally
      Free;
    end;
end;
{----------------------------------------------------------------------------------------------------------------------}
end.

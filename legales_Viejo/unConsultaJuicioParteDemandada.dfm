inherited frmConsultaJuicioParteDemandada: TfrmConsultaJuicioParteDemandada
  Left = 240
  Top = 268
  Caption = 'Busqueda...(Administraci'#243'n de Juicios Parte Demandada)'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFiltros: TPanel
    inherited pcFiltrosBusqueda: TPageControl
      ActivePage = tsGeneral
      inherited tsGeneral: TTabSheet
        inherited gbJuicio: TGroupBox
          inherited edNroCarpeta: TIntEdit
            TabStop = True
          end
          inherited edCARATULA: TEdit
            TabOrder = 12
          end
          inherited fraEstado: TfraCodigoDescripcion
            TabOrder = 13
          end
          inherited chkJuicios: TCheckBox
            Left = 636
            Top = 24
            Width = 91
            TabOrder = 8
            ExplicitLeft = 636
            ExplicitTop = 24
            ExplicitWidth = 91
          end
          inherited chkMediaciones: TCheckBox
            Left = 636
            Width = 91
            TabOrder = 4
            ExplicitLeft = 636
            ExplicitWidth = 91
          end
          inherited fraTipoMediacion: TfraCodigoDescripcion
            TabOrder = 14
          end
          inherited edDemandante: TEdit
            TabOrder = 10
          end
          inherited edDemandado: TEdit
            TabOrder = 11
          end
          inherited chkBloqueado: TCheckBox
            Left = 284
            Width = 120
            TabOrder = 2
            ExplicitLeft = 284
            ExplicitWidth = 120
          end
          inherited fraTipoJuicio: TfraCodigoDescripcion
            Left = 90
            Top = 40
            Width = 648
            TabOrder = 9
            ExplicitLeft = 90
            ExplicitTop = 40
            ExplicitWidth = 648
          end
          inherited fraEmpresaFiltro: TfraEmpresa
            Left = 91
            TabOrder = 15
            ExplicitLeft = 91
          end
          object chkNoSiniestro: TCheckBox
            Left = 192
            Top = 24
            Width = 86
            Height = 17
            Alignment = taLeftJustify
            Caption = 'No Siniestro'
            TabOrder = 5
          end
          object chkFederal: TCheckBox
            Left = 284
            Top = 24
            Width = 120
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Federales sist'#233'micos'
            TabOrder = 6
          end
          object chkGPBA: TCheckBox
            Left = 416
            Top = 8
            Width = 85
            Height = 17
            Alignment = taLeftJustify
            Caption = 'GPBA'
            TabOrder = 3
          end
          object chkARecuperar: TCheckBox
            Left = 192
            Top = 8
            Width = 86
            Height = 17
            Alignment = taLeftJustify
            Caption = 'A Recuperar'
            TabOrder = 1
          end
          object chkRebeldia: TCheckBox
            Left = 416
            Top = 24
            Width = 85
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Rebeld'#237'a'
            TabOrder = 7
          end
          object chkGPBAMalaPraxis: TCheckBox
            Left = 506
            Top = 8
            Width = 106
            Height = 17
            Alignment = taLeftJustify
            Caption = 'GPBA Mala Praxis'
            TabOrder = 16
          end
        end
      end
      inherited tsLetrados: TTabSheet
        inherited gbLetrados: TGroupBox
          object lblMediador: TLabel [2]
            Left = 8
            Top = 66
            Width = 47
            Height = 13
            Caption = 'Mediador:'
          end
          inline fraMediador: TfraAbogadosLegales
            Left = 113
            Top = 60
            Width = 619
            Height = 23
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 2
            ExplicitLeft = 113
            ExplicitTop = 60
            ExplicitWidth = 619
            DesignSize = (
              619
              23)
            inherited cmbDescripcion: TArtComboBox
              Left = 46
              Top = 1
              Width = 575
              ExplicitLeft = 46
              ExplicitTop = 1
              ExplicitWidth = 575
            end
            inherited edCodigo: TPatternEdit
              Top = 1
              Width = 42
              ExplicitTop = 1
              ExplicitWidth = 42
            end
          end
        end
      end
      inherited tsJuzgados: TTabSheet
        inherited gbJuzgado: TGroupBox
          Top = 53
          Height = 154
          ExplicitTop = 53
          ExplicitHeight = 154
          object lblNroOrdenRaj: TLabel [5]
            Left = 204
            Top = 64
            Width = 79
            Height = 13
            Caption = 'N'#186' Orden R.A.J.:'
          end
          object lblFechaIngresoRaj: TLabel [6]
            Left = 363
            Top = 65
            Width = 53
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'F.Ing.RAJ:'
          end
          inherited fraJurisdiccion: TfraCodigoDescripcion
            Width = 284
            ExplicitWidth = 284
            inherited cmbDescripcion: TArtComboBox
              Width = 219
              ExplicitWidth = 219
            end
          end
          inherited fraJuzgado: TfraCodigoDescripcion
            Width = 284
            ExplicitWidth = 284
            inherited cmbDescripcion: TArtComboBox
              Width = 219
              ExplicitWidth = 219
            end
          end
          inherited edNroExpediente: TPatternEdit
            TabOrder = 7
          end
          inherited edExpedienteExport: TPatternEdit
            Width = 258
            MaxLength = 18
            TabOrder = 8
            Pattern = 
              'abcdefghijklmn'#241'opqrstuvwxyzABCDEFGHIJKLMN'#209'OPQRSTUVWXYZ0123456789' +
              '-/'
            ExplicitWidth = 258
          end
          object edNroOrdenRAJ: TPatternEdit
            Left = 287
            Top = 61
            Width = 75
            Height = 21
            TabOrder = 5
          end
          object edFechaIngresoRaj: TDateComboBox
            Left = 430
            Top = 61
            Width = 88
            Height = 21
            MaxDateCombo = CmbIniHta
            TabOrder = 6
          end
        end
        object gbMediacion: TGroupBox
          Left = 0
          Top = 0
          Width = 744
          Height = 53
          Align = alTop
          Caption = ' Mediaci'#243'n '
          TabOrder = 1
          Visible = False
          object lblNroExpedienteMediacion: TLabel
            Left = 391
            Top = 16
            Width = 91
            Height = 13
            Caption = 'N'#186' Exp. Mediaci'#243'n:'
          end
          object lblOriganoMediacion: TLabel
            Left = 14
            Top = 17
            Width = 50
            Height = 13
            Caption = 'Org. Med.:'
          end
          object edExpedienteMediacion: TPatternEdit
            Left = 490
            Top = 13
            Width = 75
            Height = 21
            TabOrder = 0
          end
          inline fraOrganismoMediacion: TfraCodigoDescripcion
            Left = 82
            Top = 12
            Width = 274
            Height = 23
            TabOrder = 1
            ExplicitLeft = 82
            ExplicitTop = 12
            ExplicitWidth = 274
            DesignSize = (
              274
              23)
            inherited cmbDescripcion: TArtComboBox
              Width = 209
              ExplicitWidth = 209
            end
          end
        end
      end
      inherited tsImportes: TTabSheet
        inherited gbImporte: TGroupBox
          object lblReservaCapital: TLabel [4]
            Left = 8
            Top = 66
            Width = 87
            Height = 13
            AutoSize = False
            Caption = 'Reserva Capital:'
          end
          object lblReservaHonorarios: TLabel [5]
            Left = 8
            Top = 89
            Width = 87
            Height = 13
            AutoSize = False
            Caption = 'Reserva Honor.:'
          end
          object lblReservaCapitalHasta: TLabel [6]
            Left = 189
            Top = 68
            Width = 26
            Height = 13
            Caption = 'hasta'
          end
          object lblReservaHonorariosHasta: TLabel [7]
            Left = 189
            Top = 91
            Width = 26
            Height = 13
            Caption = 'hasta'
          end
          inherited edImpDemaDesde: TCurrencyEdit
            TabOrder = 3
          end
          inherited edImpDemaHasta: TCurrencyEdit
            TabOrder = 4
          end
          inherited chkSinImporteSentencia: TCheckBox
            TabOrder = 2
          end
          object edReservaHonorariosDesde: TCurrencyEdit
            Left = 98
            Top = 85
            Width = 87
            Height = 21
            AutoSize = False
            TabOrder = 9
          end
          object edReservaCapitalDesde: TCurrencyEdit
            Left = 98
            Top = 62
            Width = 87
            Height = 21
            AutoSize = False
            TabOrder = 6
          end
          object edReservaCapitalHasta: TCurrencyEdit
            Left = 220
            Top = 62
            Width = 87
            Height = 21
            AutoSize = False
            TabOrder = 7
          end
          object edReservaHonorariosHasta: TCurrencyEdit
            Left = 220
            Top = 85
            Width = 87
            Height = 21
            AutoSize = False
            TabOrder = 10
          end
          object chkSinReservasHonorarios: TCheckBox
            Left = 320
            Top = 88
            Width = 201
            Height = 17
            Caption = 'Sin Reservas de Honorarios'
            TabOrder = 11
          end
          object chkSinReservaCapital: TCheckBox
            Left = 320
            Top = 64
            Width = 201
            Height = 17
            Caption = 'Sin Reserva de Capital'
            TabOrder = 8
          end
        end
      end
      inherited tsOrigenDemanda: TTabSheet
        object nbOrigenDemanda: TNotebook
          Left = 4
          Top = 94
          Width = 606
          Height = 112
          PageIndex = 2
          TabOrder = 1
          object TPage
            Left = 0
            Top = 0
            Caption = 'Trabajador'
            object pnTrabajador: TPanel
              Left = 0
              Top = 0
              Width = 606
              Height = 57
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object grpTrabajador: TGroupBox
                Left = 0
                Top = 0
                Width = 606
                Height = 53
                Align = alTop
                Caption = 'Trabajador'
                TabOrder = 0
                inline fraTrabajadorOrigenDemanda: TfraTrabajador
                  Left = 16
                  Top = 16
                  Width = 577
                  Height = 23
                  TabOrder = 0
                  ExplicitLeft = 16
                  ExplicitTop = 16
                  ExplicitWidth = 577
                  ExplicitHeight = 23
                  inherited cmbNombre: TArtComboBox
                    Width = 493
                    ExplicitWidth = 493
                  end
                end
              end
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'Empresa Afiliada'
            object pnEmpresaAfiliada: TPanel
              Left = 0
              Top = 0
              Width = 606
              Height = 55
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              DesignSize = (
                606
                55)
              object GroupBox2: TGroupBox
                Left = 4
                Top = -1
                Width = 599
                Height = 46
                Anchors = [akLeft, akTop, akRight]
                Caption = ' Contrato '
                TabOrder = 0
                object lblCuitEmpresa: TLabel
                  Left = 11
                  Top = 18
                  Width = 21
                  Height = 13
                  Caption = 'Cuit:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                end
                inline fraEmpresaDemandante: TfraEmpresa
                  Left = 50
                  Top = 15
                  Width = 538
                  Height = 25
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  TabOrder = 0
                  ExplicitLeft = 50
                  ExplicitTop = 15
                  ExplicitWidth = 538
                  ExplicitHeight = 25
                  inherited lbContrato: TLabel
                    Left = 436
                    ExplicitLeft = 436
                  end
                  inherited edContrato: TIntEdit
                    Left = 481
                    ExplicitLeft = 481
                  end
                  inherited cmbRSocial: TArtComboBox
                    Width = 299
                    ExplicitWidth = 299
                  end
                end
              end
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'Empresa'
            DesignSize = (
              606
              112)
            object gbOrigenEmpresa: TGroupBox
              Left = 3
              Top = 2
              Width = 597
              Height = 78
              Anchors = [akLeft, akTop, akRight]
              Caption = ' Datos de la Empresa'
              TabOrder = 0
              object lbCUIT: TLabel
                Left = 18
                Top = 26
                Width = 28
                Height = 13
                Caption = 'CUIT:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object lbRSocial: TLabel
                Left = 18
                Top = 49
                Width = 43
                Height = 13
                Caption = 'R.Social:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object edCuitEmpresa: TMaskEdit
                Left = 73
                Top = 22
                Width = 89
                Height = 21
                EditMask = '99-99999999-c;0;'
                MaxLength = 13
                TabOrder = 0
              end
              object edtRazonSocialEmpresa: TEdit
                Left = 73
                Top = 46
                Width = 500
                Height = 21
                CharCase = ecUpperCase
                MaxLength = 250
                TabOrder = 1
              end
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'Persona'
            object gbPersona: TGroupBox
              Left = 4
              Top = 2
              Width = 591
              Height = 52
              Caption = ' Datos de la Persona '
              TabOrder = 0
              object lblCuil: TLabel
                Left = 431
                Top = 26
                Width = 27
                Height = 13
                Caption = 'CUIL:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object lblTipoDocumento: TLabel
                Left = 170
                Top = 26
                Width = 21
                Height = 13
                Caption = 'Tipo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object lblDNI: TLabel
                Left = 7
                Top = 24
                Width = 58
                Height = 13
                Caption = 'Documento:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
              end
              object edCuilPersona: TMaskEdit
                Left = 476
                Top = 21
                Width = 103
                Height = 21
                EditMask = '99-99999999-c;0;'
                MaxLength = 13
                TabOrder = 2
              end
              object edNroDocumentoPersona: TPatternEdit
                Left = 66
                Top = 21
                Width = 97
                Height = 21
                MaxLength = 8
                TabOrder = 0
              end
              inline fraTipoDocumento: TfraCtbTablas
                Left = 197
                Top = 21
                Width = 227
                Height = 23
                TabOrder = 1
                ExplicitLeft = 197
                ExplicitTop = 21
                ExplicitWidth = 227
                inherited cmbDescripcion: TArtComboBox
                  Width = 174
                  ExplicitWidth = 174
                end
              end
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'Prestador'
            object GroupBox6: TGroupBox
              Left = 0
              Top = 0
              Width = 606
              Height = 107
              Align = alTop
              Caption = ' Prestador '
              TabOrder = 0
              DesignSize = (
                606
                107)
              object gbContratoOrigenDemandaPrestador: TGroupBox
                Left = 5
                Top = 17
                Width = 597
                Height = 84
                Anchors = [akLeft, akTop, akRight]
                Caption = ' Contrato '
                TabOrder = 0
                inline fraEmpresaPrestador: TfraCPR_PRESTADOR
                  Left = 8
                  Top = 16
                  Width = 585
                  Height = 63
                  VertScrollBar.Range = 49
                  TabOrder = 0
                  ExplicitLeft = 8
                  ExplicitTop = 16
                  ExplicitWidth = 585
                  ExplicitHeight = 63
                  inherited lbCUIT: TLabel
                    Width = 25
                    ExplicitWidth = 25
                  end
                  inherited lbSec: TLabel
                    Width = 22
                    ExplicitWidth = 22
                  end
                  inherited lbIdentif: TLabel
                    Width = 35
                    ExplicitWidth = 35
                  end
                  inherited lbRSocial: TLabel
                    Width = 40
                    ExplicitWidth = 40
                  end
                  inherited lbDomicilio: TLabel
                    Width = 42
                    ExplicitWidth = 42
                  end
                  inherited lbLocalidad: TLabel
                    Width = 46
                    ExplicitWidth = 46
                  end
                  inherited lbCPostal: TLabel
                    Left = 506
                    Width = 20
                    ExplicitLeft = 506
                    ExplicitWidth = 20
                  end
                  inherited cmbCA_DESCRIPCION: TArtComboBox
                    Width = 255
                    ExplicitWidth = 255
                  end
                  inherited edCA_LOCALIDAD: TEdit
                    Width = 131
                    ExplicitWidth = 131
                  end
                  inherited edCA_CODPOSTAL: TEdit
                    Left = 530
                    ExplicitLeft = 530
                  end
                  inherited sdqDatos: TSDQuery
                    Left = 288
                    Top = 27
                  end
                  inherited dsDatos: TDataSource
                    Left = 316
                    Top = 27
                  end
                end
              end
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'Proveedor'
            object GroupBox8: TGroupBox
              Left = 0
              Top = 0
              Width = 606
              Height = 107
              Align = alTop
              Caption = ' Proveedor '
              TabOrder = 0
              DesignSize = (
                606
                107)
              object gbContratoOrigenDemandaProveedor: TGroupBox
                Left = 6
                Top = 16
                Width = 592
                Height = 85
                Anchors = [akLeft, akTop, akRight]
                Caption = ' Contrato '
                TabOrder = 0
                inline fraEmpresaProveedor: TfraCPR_PRESTADOR
                  Left = 7
                  Top = 16
                  Width = 576
                  Height = 63
                  VertScrollBar.Range = 49
                  TabOrder = 0
                  ExplicitLeft = 7
                  ExplicitTop = 16
                  ExplicitWidth = 576
                  ExplicitHeight = 63
                  inherited lbCUIT: TLabel
                    Width = 25
                    ExplicitWidth = 25
                  end
                  inherited lbSec: TLabel
                    Width = 22
                    ExplicitWidth = 22
                  end
                  inherited lbIdentif: TLabel
                    Width = 35
                    ExplicitWidth = 35
                  end
                  inherited lbRSocial: TLabel
                    Width = 40
                    ExplicitWidth = 40
                  end
                  inherited lbDomicilio: TLabel
                    Width = 42
                    ExplicitWidth = 42
                  end
                  inherited lbLocalidad: TLabel
                    Width = 46
                    ExplicitWidth = 46
                  end
                  inherited lbCPostal: TLabel
                    Left = 497
                    Width = 20
                    ExplicitLeft = 497
                    ExplicitWidth = 20
                  end
                  inherited cmbCA_DESCRIPCION: TArtComboBox
                    Width = 246
                    ExplicitWidth = 246
                  end
                  inherited edCA_LOCALIDAD: TEdit
                    Width = 122
                    ExplicitWidth = 122
                  end
                  inherited edCA_CODPOSTAL: TEdit
                    Left = 521
                    ExplicitLeft = 521
                  end
                  inherited sdqDatos: TSDQuery
                    Left = 288
                    Top = 8
                  end
                  inherited dsDatos: TDataSource
                    Left = 316
                    Top = 8
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  inherited CoolBar: TCoolBar
    inherited ToolBar: TToolBar
      Left = 9
      Width = 739
      ExplicitWidth = 739
      inherited tbNuevaMediacion: TToolButton
        Visible = False
      end
      object tbCierredeReserva: TToolButton
        Left = 470
        Top = 0
        Hint = 'Cierre de Reserva'
        Caption = 'Cierre de Reserva'
        ImageIndex = 25
        OnClick = tbCierredeReservaClick
      end
      object tbPedidosDePaquetes: TToolButton
        Left = 493
        Top = 0
        Hint = 'Envio de reporte web de estudios'
        Caption = 'tbPedidosDePaquetes'
        ImageIndex = 15
        OnClick = tbPedidosDePaquetesClick
      end
    end
  end
  inherited Grid: TArtDBGrid
    Height = 210
    Columns = <
      item
        Expanded = False
        FieldName = 'JT_NUMEROCARPETA'
        Title.Caption = 'Nro.Carpeta'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jt_demandante'
        Title.Caption = 'Demandante'
        Width = 148
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jt_demandado'
        Title.Caption = 'Demandado'
        Width = 138
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JT_CARATULA'
        Title.Caption = 'Car'#225'tula'
        Width = 174
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JU_DESCRIPCION'
        Title.Caption = 'Jurisdicci'#243'n'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FU_DESCRIPCION'
        Title.Caption = 'Fuero'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JZ_DESCRIPCION'
        Title.Caption = 'Juzgado'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IN_DESCRIPCION'
        Title.Caption = 'Instancia'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SC_DESCRIPCION'
        Title.Caption = 'Secretar'#237'a'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EJ_DESCRIPCION'
        Title.Caption = 'Estado'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JT_DESCRIPCION'
        Title.Caption = 'Observaciones'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JT_IMPORTEDEMANDADO'
        Title.Caption = 'Importe Demandado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JT_IMPORTESENTENCIA'
        Title.Caption = 'Importe Sentencia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JT_FECHAASIGN'
        Title.Caption = 'Fecha Asig.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JT_EXPEDIENTE'
        Title.Caption = 'Expediente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JT_RESULTADO'
        Title.Caption = 'Resultado Probable'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jt_fechanotificacionjuicio'
        Title.Caption = 'F.Notificaci'#243'n'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JT_FECHAFINJUICIO'
        Title.Caption = 'F.Fin'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JT_REGISTRACION'
        Title.Caption = 'Registracion'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BO_NOMBRE'
        Title.Caption = 'Abogado'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MEDIACIONJUICIO'
        Title.Caption = 'Mediaci'#243'n/Juicio'
        Width = 94
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jt_importereserva'
        Title.Caption = 'Reserva Capital'
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jt_importereservahonorarios'
        Title.Caption = 'Reserva Honorarios'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JT_RESERVAGESTION'
        Title.Caption = 'Reserva de Gesti'#243'n'
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Evento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FechaEvento'
        Title.Caption = 'Fecha Evento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FechaVencEvento'
        Title.Caption = 'Fecha Venc. Evento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FechaCargaEvento'
        Title.Caption = 'Fecha Carga Evento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jt_fecharecepsentencia'
        Title.Caption = 'Recep.Sentencia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'totalpagado'
        Title.Caption = 'Total Pagado'
        Width = 75
        Visible = True
      end>
  end
  object fpPaqueteResumenWeb: TFormPanel [3]
    Left = 276
    Top = 268
    Width = 294
    Height = 76
    FormWidth = 0
    FormHeigth = 0
    FormLeft = 0
    FormTop = 0
    BorderIcons = []
    BorderStyle = bsSingle
    Position = poOwnerFormCenter
    Constraints.MinHeight = 73
    Constraints.MinWidth = 163
    DesignSize = (
      294
      76)
    object Bevel1: TBevel
      Left = 4
      Top = 40
      Width = 286
      Height = 2
      Anchors = [akLeft, akRight, akBottom]
      Shape = bsTopLine
    end
    object lbFechaDesde: TLabel
      Left = 5
      Top = 11
      Width = 67
      Height = 13
      Caption = 'Fecha Desde:'
    end
    object lbFechaHasta: TLabel
      Left = 166
      Top = 11
      Width = 26
      Height = 13
      Caption = 'hasta'
    end
    object btnCopRecepAceptar: TButton
      Left = 136
      Top = 46
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = '&Aceptar'
      TabOrder = 0
      OnClick = btnCopRecepAceptarClick
    end
    object btnCopRecepCancelar: TButton
      Left = 214
      Top = 46
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 1
    end
    object edFechaPaqueteDesde: TDateComboBox
      Left = 74
      Top = 8
      Width = 88
      Height = 21
      MaxDateCombo = edFechaPaqueteHasta
      TabOrder = 2
    end
    object edFechaPaqueteHasta: TDateComboBox
      Left = 196
      Top = 8
      Width = 88
      Height = 21
      MinDateCombo = edFechaPaqueteDesde
      TabOrder = 3
    end
  end
  object Panel1: TPanel [4]
    Left = 0
    Top = 474
    Width = 752
    Height = 29
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 4
    DesignSize = (
      752
      29)
    object pnlBottom: TPanel
      Left = 2
      Top = 4
      Width = 748
      Height = 24
      Alignment = taLeftJustify
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvLowered
      TabOrder = 0
      object lbCantidad: TLabel
        Left = 7
        Top = 6
        Width = 5
        Height = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  inherited sdqModificacionRegistro: TSDQuery
    SQL.Strings = (
      'SELECT *'
      'FROM ljg_juiciogestion, legales.ljt_juicioentramite'
      'WHERE jt_id = :jt_id'
      '  AND jt_id = jg_idjuicioentramite(+)')
  end
  object ShortCutControl1: TShortCutControl
    ShortCuts = <
      item
        Key = 116
        LinkControl = tbRefrescar
      end
      item
        Key = 16462
        LinkControl = tbNuevo
      end
      item
        Key = 16461
        LinkControl = tbModificar
      end
      item
        Key = 16430
        LinkControl = tbEliminar
      end
      item
        Key = 16460
        LinkControl = tbLimpiar
      end
      item
        Key = 16463
        LinkControl = tbOrdenar
      end
      item
        Key = 16457
        LinkControl = tbImprimir
      end
      item
        Key = 16453
        LinkControl = tbExportar
      end
      item
        Key = 16467
        LinkControl = tbSalir
      end>
    Left = 156
    Top = 328
  end
end

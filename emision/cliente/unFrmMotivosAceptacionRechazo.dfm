inherited frmMotivosAceptacionRechazo: TfrmMotivosAceptacionRechazo
  Left = 258
  Top = 141
  Width = 581
  Height = 476
  Caption = 'Motivos de Aceptaci'#243'n de DDJJ'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlFiltros: TPanel
    Width = 573
    Height = 1
  end
  inherited CoolBar: TCoolBar
    Top = 1
    Width = 573
    Bands = <
      item
        Control = ToolBar
        ImageIndex = -1
        MinHeight = 27
        Width = 569
      end>
    inherited ToolBar: TToolBar
      Width = 556
      inherited tbModificar: TToolButton
        Enabled = True
      end
    end
  end
  inherited Grid: TArtDBGrid
    Top = 30
    Width = 573
    Height = 419
    Columns = <
      item
        Expanded = False
        FieldName = 'MA_ID'
        Title.Caption = 'N'#250'mero'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MA_DESCRIPCION'
        Title.Caption = 'Descripci'#243'n'
        Width = 310
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tipodesc'
        Title.Caption = 'Tipo'
        Width = 180
        Visible = True
      end>
  end
  inherited fpAbm: TFormPanel
    Left = 104
    Top = 96
    Width = 417
    Height = 121
    Caption = 'Agregar empresas a omitir'
    inherited BevelAbm: TBevel
      Left = 0
      Top = 85
      Width = 409
    end
    object lblDesc: TLabel [1]
      Left = 8
      Top = 36
      Width = 56
      Height = 13
      Caption = 'Descripci'#243'n'
    end
    object lblNumber: TLabel [2]
      Left = 8
      Top = 12
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
    end
    object Label1: TLabel [3]
      Left = 8
      Top = 61
      Width = 21
      Height = 13
      Caption = 'Tipo'
    end
    inherited btnAceptar: TButton
      Left = 259
      Top = 91
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    inherited btnCancelar: TButton
      Left = 337
      Top = 91
      TabOrder = 4
    end
    object edDescripcion: TEdit
      Left = 72
      Top = 32
      Width = 335
      Height = 21
      TabOrder = 1
    end
    object edIdMotivo: TEdit
      Left = 72
      Top = 8
      Width = 42
      Height = 21
      TabStop = False
      Color = clBtnFace
      Enabled = False
      ReadOnly = True
      TabOrder = 0
    end
    object cbTipo: TExComboBox
      Left = 72
      Top = 56
      Width = 337
      Height = 22
      Style = csOwnerDrawFixed
      ItemHeight = 16
      TabOrder = 2
      Items.Strings = (
        'A=Aceptaci'#243'n'
        'R=Rechazo')
      ItemIndex = -1
      Options = []
      ValueWidth = 64
    end
  end
  inherited sdqConsulta: TSDQuery
    SQL.Strings = (
      
        'SELECT ma_id, ma_descripcion, ma_fechaalta, ma_usualta, ma_fecha' +
        'modif,'
      
        '               ma_usumodif, ma_fechabaja, ma_usubaja, ma_tipo, d' +
        'ecode(ma_tipo, '#39'A'#39', '#39'Autoriza/Procesa'#39', '#39'N'#39', '#39'No Autoriza/Rechaz' +
        'a'#39') tipodesc'
      'FROM EMI.IMA_MOTIVOAUTORIZACION'
      'WHERE 1= 2'
      '')
  end
end

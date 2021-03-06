object frmCambioCuitSin: TfrmCambioCuitSin
  Left = 211
  Top = 112
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cambio de CUIT de un Siniestro'
  ClientHeight = 205
  ClientWidth = 608
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  DesignSize = (
    608
    205)
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 3
    Top = 94
    Width = 601
    Height = 2
    Anchors = [akLeft, akTop, akRight]
  end
  object Bevel2: TBevel
    Left = 3
    Top = 163
    Width = 601
    Height = 2
    Anchors = [akLeft, akTop, akRight]
  end
  object gbSiniestro: TGroupBox
    Left = 3
    Top = 5
    Width = 108
    Height = 45
    Caption = ' Siniestro '
    TabOrder = 0
    object Siniestro: TSinEdit
      Left = 7
      Top = 18
      Width = 93
      Height = 21
      TabOrder = 0
      ViewStyle = [etSiniestro, etOrden]
      OnSelect = SiniestroSelect
    end
  end
  object gbEmpresaTrabajador: TGroupBox
    Left = 116
    Top = 5
    Width = 486
    Height = 81
    Anchors = [akLeft, akTop, akRight]
    Caption = ' Empresa / Trabajador '
    TabOrder = 1
    DesignSize = (
      486
      81)
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 25
      Height = 13
      Caption = 'CUIT'
    end
    object Label2: TLabel
      Left = 8
      Top = 54
      Width = 24
      Height = 13
      Caption = 'CUIL'
    end
    inline fraEmpresaAnterior: TfraEmpresa
      Left = 36
      Top = 20
      Width = 445
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      inherited lbContrato: TLabel
        Left = 341
      end
      inherited mskCUIT: TMaskEdit
        ReadOnly = True
      end
      inherited edContrato: TIntEdit
        Left = 386
        ReadOnly = True
      end
      inherited cmbRSocial: TArtComboBox
        Width = 205
        ReadOnly = True
      end
    end
    inline fraTrabajador: TfraTrabajador
      Left = 34
      Top = 50
      Width = 447
      Height = 23
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      inherited mskCUIL: TMaskEdit
        Left = 2
        ReadOnly = True
      end
      inherited cmbNombre: TArtComboBox
        Left = 88
        Width = 359
        ReadOnly = True
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 23
    Top = 103
    Width = 555
    Height = 52
    Anchors = [akLeft, akTop, akRight]
    Caption = ' Nuevos datos del siniestro '
    TabOrder = 2
    DesignSize = (
      555
      52)
    inline fraEmpresaNueva: TfraEmpresa
      Left = 7
      Top = 20
      Width = 541
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      inherited lbContrato: TLabel
        Left = 437
      end
      inherited edContrato: TIntEdit
        Left = 482
      end
      inherited cmbRSocial: TArtComboBox
        Width = 301
      end
    end
  end
  object btnLimpiar: TBitBtn
    Left = 425
    Top = 174
    Width = 77
    Height = 27
    Anchors = [akRight, akBottom]
    Caption = '&Limpiar'
    TabOrder = 4
    OnClick = btnLimpiarClick
    Glyph.Data = {
      36060000424D3606000000000000360000002800000020000000100000000100
      18000000000000060000C40E0000C40E0000000000000000000000FF0000FF00
      00FF0000FF0000FF0000FF0000FF0010101020202000FF0000FF0000FF0000FF
      0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0010
      101020202000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
      00FF0000FF0000FF0000FF001F20201F606040606020202000FF0000FF0000FF
      0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF001F202066
      666666666620202000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
      00FF0000FF0000FF002F303000808010D0D04FA0A0305F5F20202000FF0000FF
      0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF002F3030666666E3
      E3E3A4A0A066666620202000FF0000FF0000FF0000FF0000FF0000FF0000FF00
      00FF0000FF00404040104F4F00D0D000E0E000CFCF00BFBF3050502F2F2F00FF
      0000FF0000FF0000FF0000FF0000FF0000FF0000FF00404040666666E3E3E3A4
      A0A0E3E3E3A4A0A06666662F2F2F00FF0000FF0000FF0000FF0000FF0000FF00
      00FF0000FF002F2F2F00909000E0E000C0C000E0E010C0C05FB0B03050502020
      2000FF0000FF0000FF0000FF0000FF0000FF0000FF002F2F2F008080A4A0A0E3
      E3E3CCCCCCD7D7D7B2B2B266666620202000FF0000FF0000FF0000FF0000FF00
      00FF001F1F1F10505000E0E000CFCF00E0E000D0D000DFDF10DFDF2FB0B04060
      6020202000FF0000FF0000FF0000FF0000FF001F1F1F666666B2B2B2E3E3E3CC
      CCCCD7D7D7E3E3E3A4A0A0E3E3E366666620202000FF0000FF0000FF0000FF00
      00FF001010100F80800FD0D000E0E000CFCF00DFDF00D0D03FD0D030DFDF4FB0
      B030606020202000FF0000FF0000FF0000FF00808080666666E3E3E3CCCCCCD7
      D7D7E3E3E3A4A0A0E3E3E3A4A0A0C0C0C066666620202000FF0000FF0000FF00
      302F2F803030204F4F5FC0C000C0C000E0E000D0D030D0D010EFEF00C0C020EF
      EF208F8F10101000FF0000FF0000FF00302F2F808080666666CCCCCCD7D7D7E3
      E3E3A4A0A0E3E3E3A4A0A0C0C0C0C0C0C0B2B2B266666600FF0000FF0000FF00
      80605FD0A0008F502F204F4F5FCFCF00D0D030D0D01FE0E000C0C000E0E0409F
      9F0F20200F0F0F00FF0000FF0000FF0080605F808080808080666666B2B2B2A4
      A0A0E3E3E3A4A0A0C0C0C0C0C0C0B2B2B200666622222200FF0000FF0000FF00
      A05F4FFFF01FDFD06F7F4030204F4F30C0C020DFDF20BFBF40AFAF0F50502F40
      400F0F0F00FF0000FF0000FF0000FF00A4A0A0A4A0A0A4A0A0808080666666E3
      E3E3B2B2B2C0C0C0C0C0C0A4A0A066666639393900FF0000FF0000FF00302F2F
      AF6040E0E06FAFAF7FBF60306F2000204F4F0F8F8F204F4F1F2F2F2F2F2F00FF
      0000FF0000FF0000FF0000FF00302F2FA4A0A0A4A0A0B2B2B2B2B2B280808066
      6666B2B2B233999966666666666600FF0000FF0000FF0000FF0000FF00B07F60
      EFD060C0C0A09F5F3F8030008000003010101010101F1F1F00FF0000FF0000FF
      0000FF0000FF0000FF0000FF00A4A0A0969696C0C0C0B2B2B2B2B2B280808080
      808066666666666600FF0000FF0000FF0000FF0000FF0000FF00805030E0D060
      C0C09F8F502F5F4F4F605F5F605F5F00FF0000FF0000FF0000FF0000FF0000FF
      0000FF0000FF0000FF00666666969696B2B2B2868686969696605F5F605F5F00
      FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00B06F1FC0C060
      905F302F201F00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
      0000FF0000FF0000FF00969696A4A0A086868696969600FF0000FF0000FF0000
      FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF008F4F30605F30
      2F1F1F00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
      0000FF0000FF0000FF0086868686868696969600FF0000FF0000FF0000FF0000
      FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
      00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
      0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
      FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00}
    Layout = blGlyphRight
    NumGlyphs = 2
  end
  object btnGuardar: TBitBtn
    Left = 339
    Top = 174
    Width = 77
    Height = 27
    Anchors = [akRight, akBottom]
    Caption = '&Guardar'
    TabOrder = 3
    OnClick = btnGuardarClick
    Glyph.Data = {
      B6010000424DB601000000000000760000002800000022000000100000000100
      0400000000004001000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00AA0000000000
      0000AAA88888888888888A000000A8888800000088880A777778888887777800
      0000A8F7778888807F780A7FFFF7777787FF78000400A8F7778078807F780A7F
      FFF7877787FF78006F01A8F7778078807F780A7FFFF7877787FF78028181A8F7
      7778888887780A7FFFFF777777FF78011D01A8F77777777777780A7FFFFFFFFF
      FFFF78001D01A8F77888888887780A7FFF77777777FF78001C02A8F78FFFFFFF
      FF780A7FF7FFFFFFFFFF78000400A8F78FFFFFFFFF780A7FF7FFFFFFFFFF7801
      9E01A8F78FFFFFFFFF780A7FF7FFFFFFFFFF78000600A8F78FFFFFFFFF780A7F
      F7FFFFFFFFFF78000400A8F78FFFFFFFFF780A7FF7FFFFFFFFFF7801A601A8F7
      8FFFFFFFFF080A7FF7FFFFFFFFF078005E02A8F78FFFFFFFFF780A7FF7FFFFFF
      FFF778016E02AA88888888888888AAA77777777777777A006701}
    Layout = blGlyphRight
    NumGlyphs = 2
  end
  object btnSalir: TBitBtn
    Left = 525
    Top = 174
    Width = 77
    Height = 27
    Anchors = [akRight, akBottom]
    Caption = '&Salir '
    TabOrder = 5
    OnClick = btnSalirClick
    Glyph.Data = {
      36080000424D360800000000000036000000280000002A000000100000000100
      18000000000000080000C40E0000C40E0000000000000000000000FF0000FF00
      00FF0000FF0000FF0000FF0000FF0010101010101000FF0000FF0000FF001010
      1010101000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
      FF0000FF0000FF0000FF0000FF0016161616161600FF0000FF0000FF00161616
      16161600FF0000FF0000FF0000FF0000FF0000FF0000FF00000000FF0000FF00
      00FF0000FF0000FF0000FF0000FF00101010007F7F10101000FF0000FF001010
      10007F7F10101000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
      FF0000FF0000FF0000FF0000FF0016161696969616161600FF0000FF00161616
      96969616161600FF0000FF0000FF0000FF0000FF0000FF00000000FF0000FF00
      00FF0000FF0000FF0000FF0000FF00101010009090007F7F10101000FF001010
      10009090007F7F10101000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
      FF0000FF0000FF0000FF0000FF00161616A1A1A196969616161600FF00161616
      A1A1A196969616161600FF0000FF0000FF0000FF0000FF00000000FF0000FF00
      00FF0000FF0000FF0000FF0000FF0010101000CFCF009090007F7F1010101010
      1000CFCF009090007F7F10101000FF0000FF0000FF0000FF0000FF0000FF0000
      FF0000FF0000FF0000FF0000FF00161616AAAAAAA1A1A1969696161616161616
      AAAAAAA1A1A196969616161600FF0000FF0000FF0000FF00000000FF0000FF00
      00FF0000FF0000FF0000FF0000FF0010101000FFFF00CFCF009090007F7F1010
      1000FFFF00CFCF009090007F7F10101000FF0000FF0000FF0000FF0000FF0000
      FF0000FF0000FF0000FF0000FF00161616B8B8B8AAAAAAA1A1A1969696161616
      B8B8B8AAAAAAA1A1A196969616161600FF0000FF0000FF000000002F2F101010
      10101010101010101010101010101010101000FFFF00FFFF00CFCF009090007F
      7F10101000FFFF00CFCF009090007F7F10101000FF0000FF0016161616161616
      1616161616161616161616161616161616B8B8B8B8B8B8AAAAAAA1A1A1969696
      161616B8B8B8AAAAAAA1A1A196969616161600FF0000FF000000002F2F007F7F
      007F7F007F7F007F7F007F7F007F7F007F7F2FFFFF00FFFF00FFFF00CFCF0090
      90007F7F10101000FFFF00CFCF009090007F7F10101000FF0000333396969696
      9696969696969696969696969696969696C1C1C1B8B8B8B8B8B8AAAAAAA1A1A1
      969696161616B8B8B8AAAAAAA1A1A196969616161600FF000000002F2F60FFFF
      60FFFF60FFFF60FFFF60FFFF60FFFF60FFFF60FFFF2FFFFF00FFFF00FFFF00CF
      CF009090007F7F10101000FFFF00CFCF009090007F7F101010003333CACACACA
      CACACACACACACACACACACACACACACACACACACACAC1C1C1B8B8B8B8B8B8AAAAAA
      A1A1A1969696161616B8B8B8AAAAAAA1A1A19696961616160000002F2F90FFFF
      EFF0FFEFF0FFEFF0FFEFF0FFEFF0FFEFF0FFEFF0FFEFF0FFEFF0FFEFF0FF00FF
      FF00CFCF007F7F002F2FEFF0FF00FFFF00CFCF007F7F002F2F003333B8B8B8B8
      B8B8E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3B8B8B8
      AAAAAA969696003333E3E3E3B8B8B8AAAAAA9696960033330000002F2FCFFFFF
      CFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFFFFEFF0FF2FFFFF00FF
      FF007F7F002F2FEFF0FF2FFFFF00FFFF007F7F002F2F00FF00003333DADADADA
      DADADADADADADADADADADADADADADADADADADADADADADAE3E3E3C1C1C1B8B8B8
      969696003333E3E3E3C1C1C1B8B8B896969600333300FF000000002F2F002F2F
      002F2F002F2F002F2F002F2F002F2F002F2FCFFFFFEFF0FFCFFFFF2FFFFF007F
      7F002F2FEFF0FFCFFFFF2FFFFF007F7F002F2F00FF0000FF0000333300333300
      3333003333003333003333003333003333DADADAF1F1F1DADADAC1C1C1969696
      003333F1F1F1DADADAC1C1C196969600333300FF0000FF00000000FF0000FF00
      00FF0000FF0000FF0000FF0000FF00002F2FCFFFFFCFFFFFCFFFFF007F7F002F
      2FCFFFFFCFFFFFCFFFFF007F7F002F2F00FF0000FF0000FF0000FF0000FF0000
      FF0000FF0000FF0000FF0000FF00003333DADADADADADADADADA969696003333
      DADADADADADADADADA96969600333300FF0000FF0000FF00000000FF0000FF00
      00FF0000FF0000FF0000FF0000FF00002F2FCFFFFFCFFFFF007F7F002F2F002F
      2FCFFFFFCFFFFF007F7F002F2F00FF0000FF0000FF0000FF0000FF0000FF0000
      FF0000FF0000FF0000FF0000FF00003333DADADADADADA969696003333003333
      DADADADADADA96969600333300FF0000FF0000FF0000FF00000000FF0000FF00
      00FF0000FF0000FF0000FF0000FF00002F2FCFFFFF007F7F002F2F00FF00002F
      2FCFFFFF007F7F002F2F00FF0000FF0000FF0000FF0000FF0000FF0000FF0000
      FF0000FF0000FF0000FF0000FF00003333DADADA96969600333300FF00003333
      DADADA96969600333300FF0000FF0000FF0000FF0000FF00000000FF0000FF00
      00FF0000FF0000FF0000FF0000FF00002F2F007F7F002F2F00FF0000FF00002F
      2F007F7F002F2F00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
      FF0000FF0000FF0000FF0000FF0000333396969600333300FF0000FF00003333
      96969600333300FF0000FF0000FF0000FF0000FF0000FF00000000FF0000FF00
      00FF0000FF0000FF0000FF0000FF00002F2F002F2F00FF0000FF0000FF00002F
      2F002F2F00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
      FF0000FF0000FF0000FF0000FF0000333300333300FF0000FF0000FF00003333
      00333300FF0000FF0000FF0000FF0000FF0000FF0000FF000000}
    Layout = blGlyphRight
    NumGlyphs = 2
  end
end

object FrmRecalificacionSRT: TFrmRecalificacionSRT
  Left = 331
  Top = 216
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Recalificaci'#243'n a SRT'
  ClientHeight = 93
  ClientWidth = 282
  Color = clBtnFace
  Constraints.MinHeight = 120
  Constraints.MinWidth = 290
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefaultPosOnly
  Scaled = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object gbNroSiniestro: TGroupBox
    Left = 7
    Top = 3
    Width = 170
    Height = 84
    Caption = ' Nro. de Siniestro '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object SinNro: TSinEdit
      Left = 37
      Top = 38
      Width = 100
      Height = 21
      TabOrder = 0
      ViewStyle = [etSiniestro, etOrden]
    end
  end
  object btnImprimir: TBitBtn
    Left = 192
    Top = 21
    Width = 85
    Height = 28
    Caption = '&Imprimir'
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    OnClick = btnImprimirClick
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E0000000000000000000000FF0000FF00
      00FF0000FF0000FF0000FF0000000000000000000000FF0000FF0000FF0000FF
      0000FF0000FF0000FF0000FF0000FF0000FF0000FF00000000000000BFBFBF2F
      2F2F30303000000000000000FF0000FF0000FF0000FF0000FF0000FF0000FF00
      000000000000CFCFCFBFBFBF7F7F7F0000000000004F4F4F5050500000000000
      0000FF0000FF0000FF0000FF00000000DFDFDFD0D0D07F7F7F7F7F7FBFBFBF2F
      2F2F3030300000000000005F5F5F60606000000000000000FF0000FF007F7F7F
      7F7F7FA09F9FCFCFCFBFBFBFBFBFBF2F2F2F3030304F4F4F5050500000000000
      0070707000000000FF007F7F7FA09F9FDFDFDFD0D0D0CFCFCFBFBFBFBFBFBF2F
      2F2F3030304F4F4F5050505F5F5F60606000000000000000FF007F7F7FFFFFFF
      DFDFDFD0D0D0CFCFCFBFBFBFFFFFFF2F2F2F3030304F4F4F5050505F5F5F6060
      607070707F7F7F0000007F7F7FFFFFFFDFDFDFD0D0D0FFFFFFFFFFFFBFBFBFBF
      BFBFBFBFBF4F4F4F5050505F5F5F6060607070707F7F7F0000007F7F7FFFFFFF
      FFFFFFFFFFFFD0D0D0CFCFCF2F2FFFFF00FFBFBFBFBFBFBFBFBFBF5F5F5F6060
      607070707F7F7F0000007F7F7FFFFFFFDFDFDFD0D0D090FF9000FF00D0D0D0CF
      CFCFCFCFCF7F7F7F7F7F7F000000BFBFBF7070707F7F7F00000000FF007F7F7F
      7F7F7FFFFFFFDFDFDFBFBFBFD0D0D07F7F7F7F7F7F90FFFF90FFFF000000DFDF
      DF00000000000000FF0000FF0000FF0000FF007F7F7F7F7F7FFFFFFF7F7F7F90
      FFFF90FFFF90FFFFCFFFFFCFFFFF00000000FF0000FF0000FF0000FF0000FF00
      00FF0000FF0000FF007F7F7F7F7F7F90FFFFCFFFFFCFFFFFCFFFFFCFFFFFCFFF
      FF00000000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0090
      9090CFFFFFCFFFFFCFFFFFCFFFFFEFF0FFEFF0FF00000000000000FF0000FF00
      00FF0000FF0000FF0000FF0000FF0000FF00909090CFFFFFEFF0FFEFF0FF9090
      9090909000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
      FF0000FF00AFAFAFAFAFAFAFAFAF00FF0000FF0000FF0000FF00}
    Style = bsNew
  end
  object btnCerrar: TBitBtn
    Left = 192
    Top = 59
    Width = 85
    Height = 28
    Caption = '&Cerrar'
    TabOrder = 2
    OnClick = btnCerrarClick
    Kind = bkCancel
  end
  object FormPlacement: TFormPlacement
    UseRegistry = True
    Left = 151
    Top = 4
  end
end

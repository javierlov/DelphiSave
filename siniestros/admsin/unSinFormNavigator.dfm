inherited SinFormNavigator: TSinFormNavigator
  Left = 185
  Top = 164
  OldCreateOrder = True
  OnCreate = FSFormCreate
  OnDestroy = FSFormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object gbNavegador: TJvgGroupBox [0]
    Left = 0
    Top = 0
    Width = 712
    Height = 40
    Align = alTop
    Caption = ' Navegaci'#243'n de Partes '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Border.Inner = bvNone
    Border.Outer = bvNone
    Border.Bold = False
    CaptionAlignment = fcaWidth
    CaptionBorder.Inner = bvRaised
    CaptionBorder.Outer = bvNone
    CaptionBorder.Bold = False
    CaptionGradient.FromColor = 10461087
    CaptionGradient.ToColor = clSilver
    CaptionGradient.Active = True
    CaptionGradient.Orientation = fgdHorizontal
    CaptionShift.X = 8
    CaptionShift.Y = 0
    Colors.Text = clHighlightText
    Colors.TextActive = clHighlightText
    Colors.Caption = clBtnShadow
    Colors.CaptionActive = clBtnShadow
    Colors.Client = clBtnFace
    Colors.ClientActive = clBtnFace
    Gradient.FromColor = clBlack
    Gradient.ToColor = clGray
    Gradient.Active = False
    Gradient.Orientation = fgdHorizontal
    Options = [fgoCollapseOther, fgoHideChildrenWhenCollapsed, fgoSaveChildFocus]
    OnCollapsed = CambioTamanio
    OnExpanded = CambioTamanio
    FullHeight = 81
    object btnNavSiguiente: TSpeedButton
      Left = 99
      Top = 17
      Width = 16
      Height = 21
      Hint = 'Siguiente parte (Ctrl +)'
      Enabled = False
      Flat = True
      Glyph.Data = {
        F6030000424DF603000000000000360000002800000014000000100000000100
        180000000000C0030000C40E0000C40E0000000000000000000000FF00101010
        10101000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF001616161616
        1600FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00101010007F7F10
        101000FF0000FF0000FF0000FF0000FF0000FF0000FF00161616969696161616
        00FF0000FF0000FF0000FF0000FF0000FF0000FF00101010009090007F7F1010
        1000FF0000FF0000FF0000FF0000FF0000FF00161616A1A1A196969616161600
        FF0000FF0000FF0000FF0000FF0000FF0010101000CFCF009090007F7F101010
        00FF0000FF0000FF0000FF0000FF00161616AAAAAAA1A1A196969616161600FF
        0000FF0000FF0000FF0000FF0010101000FFFF00CFCF009090007F7F10101000
        FF0000FF0000FF0000FF00161616B8B8B8AAAAAAA1A1A196969616161600FF00
        00FF0000FF0000FF0010101000FFFF00FFFF00CFCF009090007F7F10101000FF
        0000FF0000FF00002F2FB8B8B8B8B8B8AAAAAAA1A1A196969616161600FF0000
        FF0000FF00002F2F2FFFFF00FFFF00FFFF00CFCF009090007F7F10101000FF00
        00FF00002F2FC1C1C1B8B8B8B8B8B8AAAAAAA1A1A196969616161600FF0000FF
        00002F2F60FFFF2FFFFF00FFFF00FFFF00CFCF009090007F7F10101000FF0000
        2F2FCACACAC1C1C1B8B8B8B8B8B8AAAAAAA1A1A196969616161600FF00002F2F
        EFF0FFEFF0FFEFF0FFEFF0FF00FFFF00CFCF007F7F002F2F00FF00002F2FE3E3
        E3E3E3E3E3E3E3E3E3E3B8B8B8AAAAAA96969600333300FF00002F2FCFFFFFCF
        FFFFEFF0FF2FFFFF00FFFF007F7F002F2F00FF0000FF00002F2FDADADADADADA
        E3E3E3C1C1C1B8B8B896969600333300FF0000FF00002F2FCFFFFFEFF0FFCFFF
        FF2FFFFF007F7F002F2F00FF0000FF0000FF00002F2FDADADAF1F1F1DADADAC1
        C1C196969600333300FF0000FF0000FF00002F2FCFFFFFCFFFFFCFFFFF007F7F
        002F2F00FF0000FF0000FF0000FF00003333DADADADADADADADADA9696960033
        3300FF0000FF0000FF0000FF00002F2FCFFFFFCFFFFF007F7F002F2F00FF0000
        FF0000FF0000FF0000FF00003333DADADADADADA96969600333300FF0000FF00
        00FF0000FF0000FF00002F2FCFFFFF007F7F002F2F00FF0000FF0000FF0000FF
        0000FF0000FF00003333DADADA96969600333300FF0000FF0000FF0000FF0000
        FF0000FF00002F2F007F7F002F2F00FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000333396969600333300FF0000FF0000FF0000FF0000FF0000FF0000FF
        00002F2F002F2F00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
        333300333300FF0000FF0000FF0000FF0000FF0000FF0000FF00}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = btnNavSiguienteClick
    end
    object btnNavUltimo: TSpeedButton
      Left = 115
      Top = 17
      Width = 16
      Height = 21
      Hint = #218'ltimo parte (Ctrl AvPag)'
      Enabled = False
      Flat = True
      Glyph.Data = {
        B6040000424DB604000000000000360000002800000018000000100000000100
        18000000000080040000C40E0000C40E0000000000000000000000FF00101010
        10101000FF0000FF0000FF0000FF0000FF0000FF0000FF0000000000FF0000FF
        0016161616161600FF0000FF0000FF0000FF0000FF0000FF0000FF0000000000
        FF0000FF00101010007F7F10101000FF0000FF0000FF0000FF0000FF00000000
        00CFCF00000000FF0016161696969616161600FF0000FF0000FF0000FF0000FF
        00000000A1A1A100000000FF00101010009090007F7F10101000FF0000FF0000
        FF0000FF0000000000CFCF00000000FF00161616A1A1A196969616161600FF00
        00FF0000FF0000FF00000000A1A1A100000000FF0010101000CFCF009090007F
        7F10101000FF0000FF0000FF0000000000CFCF00000000FF00161616AAAAAAA1
        A1A196969616161600FF0000FF0000FF00000000A1A1A100000000FF00101010
        00FFFF00CFCF009090007F7F10101000FF0000FF0000000000CFCF00000000FF
        00161616B8B8B8AAAAAAA1A1A196969616161600FF0000FF00000000A1A1A100
        000000FF0010101000FFFF00FFFF00CFCF009090007F7F10101000FF00000000
        00CFCF00000000FF00002F2FB8B8B8B8B8B8AAAAAAA1A1A196969616161600FF
        00000000A1A1A100000000FF00002F2F2FFFFF00FFFF00FFFF00CFCF00909000
        7F7F0000000000002FFFFF00000000FF00002F2FC1C1C1B8B8B8B8B8B8AAAAAA
        A1A1A1969696000000000000CACACA00000000FF00002F2F60FFFF2FFFFF00FF
        FF00FFFF00CFCF009090007F7F0000002FFFFF10101000FF00002F2FCACACAC1
        C1C1B8B8B8B8B8B8AAAAAAA1A1A1969696000000CACACA00000000FF00002F2F
        EFF0FFEFF0FFEFF0FFEFF0FF00FFFF00CFCF007F7F0000002FFFFF002F2F00FF
        00002F2FE3E3E3E3E3E3E3E3E3E3E3E3B8B8B8AAAAAA969696000000CACACA00
        000000FF00002F2FCFFFFFCFFFFFEFF0FF2FFFFF00FFFF007F7F002F2F000000
        2FFFFF00000000FF00002F2FDADADADADADAE3E3E3C1C1C1B8B8B8969696002F
        2F000000CACACA00000000FF00002F2FCFFFFFEFF0FFCFFFFF2FFFFF007F7F00
        2F2F00FF000000002FFFFF00000000FF00002F2FDADADAF1F1F1DADADAC1C1C1
        96969600333300FF00000000CACACA00000000FF00002F2FCFFFFFCFFFFFCFFF
        FF007F7F002F2F00FF0000FF000000002FFFFF00000000FF00003333DADADADA
        DADADADADA96969600333300FF0000FF00000000CACACA00000000FF00002F2F
        CFFFFFCFFFFF007F7F002F2F00FF0000FF0000FF00000000CFFFFF00000000FF
        00003333DADADADADADA96969600333300FF0000FF0000FF00000000F1F1F100
        000000FF00002F2FCFFFFF007F7F002F2F00FF0000FF0000FF0000FF00000000
        CFFFFF00000000FF00003333DADADA96969600333300FF0000FF0000FF0000FF
        00000000F1F1F100000000FF00002F2F007F7F002F2F00FF0000FF0000FF0000
        FF0000FF00000000CFFFFF00000000FF0000333396969600333300FF0000FF00
        00FF0000FF0000FF00000000F1F1F100000000FF00002F2F002F2F00FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000000000FF0000FF0000333300333300
        FF0000FF0000FF0000FF0000FF0000FF0000FF0000000000FF00}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = btnNavUltimoClick
    end
    object btnNavPrimero: TSpeedButton
      Left = 1
      Top = 17
      Width = 16
      Height = 21
      Hint = 'Primer parte (Ctrl RePag)'
      Enabled = False
      Flat = True
      Glyph.Data = {
        76040000424D7604000000000000360000002800000016000000100000000100
        18000000000040040000C40E0000C40E0000000000000000000000FF00000000
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0010101010101000FF000000
        0000FF0000FF0000FF0000FF0000FF0000FF0000FF0016161616161600000000
        0000CFCF00000000FF0000FF0000FF0000FF0000FF00101010007F7F10101000
        0000A1A1A100000000FF0000FF0000FF0000FF0000FF00161616969696161616
        000000000000CFCF00000000FF0000FF0000FF0000FF00101010007F7F009090
        101010000000A1A1A100000000FF0000FF0000FF0000FF00161616969696A1A1
        A1161616000000000000CFCF00000000FF0000FF0000FF00101010007F7F0090
        9000CFCF101010000000A1A1A100000000FF0000FF0000FF00161616969696A1
        A1A1AAAAAA161616000000000000CFCF00000000FF0000FF00101010007F7F00
        909000CFCF00FFFF101010000000A1A1A100000000FF0000FF00161616969696
        A1A1A1AAAAAAB8B8B8000000000000000000CFCF00000000FF00101010007F7F
        00909000CFCF00FFFF00FFFF000000000000A1A1A100000000FF001616169696
        96A1A1A1AAAAAAB8B8B8B8B8B800000000000000002FFFFF000000101010007F
        7F00909000CFCF00FFFF00FFFF2FFFFF000000000000CACACA00000016161696
        9696A1A1A1AAAAAAB8B8B8B8B8B8C1C1C100000000000000002FFFFF10101000
        7F7F00909000CFCF00FFFF00FFFF2FFFFF60FFFF000000000000CACACA000000
        969696A1A1A1AAAAAAB8B8B8B8B8B8C1C1C1CACACA00000000000000002FFFFF
        002F2F007F7F00CFCF00FFFFEFF0FFEFF0FFEFF0FFEFF0FF000000000000CACA
        CA000000969696AAAAAAB8B8B8E3E3E3E3E3E3E3E3E3E3E3E300000000000000
        002FFFFF000000002F2F007F7F00FFFF2FFFFFEFF0FFCFFFFFCFFFFF00000000
        0000CACACA000000003333969696B8B8B8C1C1C1E3E3E3DADADADADADA000000
        00000000002FFFFF00000000FF00002F2F007F7F2FFFFFCFFFFFEFF0FFCFFFFF
        000000000000CACACA00000000FF00003333969696C1C1C1DADADAF1F1F1DADA
        DA00000000000000002FFFFF00000000FF0000FF00002F2F007F7FCFFFFFCFFF
        FFCFFFFF000000000000CACACA00000000FF0000FF00003333969696DADADADA
        DADADADADA0000000000000000CFFFFF00000000FF0000FF0000FF00002F2F00
        7F7FCFFFFFCFFFFF002F2F000000F1F1F100000000FF0000FF0000FF00003333
        969696DADADADADADA0033330000000000CFFFFF00000000FF0000FF0000FF00
        00FF00002F2F007F7FCFFFFF002F2F000000F1F1F100000000FF0000FF0000FF
        0000FF00003333969696DADADA0033330000000000CFFFFF00000000FF0000FF
        0000FF0000FF0000FF00002F2F007F7F002F2F000000F1F1F100000000FF0000
        FF0000FF0000FF0000FF00003333969696003333000000FF0000000000FF0000
        FF0000FF0000FF0000FF0000FF0000FF00002F2F002F2F00FF0000000000FF00
        00FF0000FF0000FF0000FF0000FF0000FF000033330033330000}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = btnNavPrimeroClick
    end
    object btnNavAnterior: TSpeedButton
      Left = 17
      Top = 17
      Width = 16
      Height = 21
      Hint = 'Anterior parte (Ctrl -)'
      Enabled = False
      Flat = True
      Glyph.Data = {
        B6030000424DB603000000000000360000002800000012000000100000000100
        18000000000080030000C40E0000C40E0000000000000000000000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0010101010101000FF0000FF0000FF0000FF
        0000FF0000FF0000FF00161616161616000000FF0000FF0000FF0000FF0000FF
        0000FF00101010007F7F10101000FF0000FF0000FF0000FF0000FF0000FF0016
        1616969696161616000000FF0000FF0000FF0000FF0000FF00101010007F7F00
        909010101000FF0000FF0000FF0000FF0000FF00161616969696A1A1A1161616
        000000FF0000FF0000FF0000FF00101010007F7F00909000CFCF10101000FF00
        00FF0000FF0000FF00161616969696A1A1A1AAAAAA161616000000FF0000FF00
        00FF00101010007F7F00909000CFCF00FFFF10101000FF0000FF0000FF001616
        16969696A1A1A1AAAAAAB8B8B8000000000000FF0000FF00101010007F7F0090
        9000CFCF00FFFF00FFFF00000000FF0000FF00161616969696A1A1A1AAAAAAB8
        B8B8B8B8B8000000000000FF00101010007F7F00909000CFCF00FFFF00FFFF2F
        FFFF00000000FF00161616969696A1A1A1AAAAAAB8B8B8B8B8B8C1C1C1000000
        0000101010007F7F00909000CFCF00FFFF00FFFF2FFFFF60FFFF000000161616
        969696A1A1A1AAAAAAB8B8B8B8B8B8C1C1C1CACACA0000000000002F2F007F7F
        00CFCF00FFFFEFF0FFEFF0FFEFF0FFEFF0FF000000003333969696AAAAAAB8B8
        B8E3E3E3E3E3E3E3E3E3E3E3E3000000000000FF00002F2F007F7F00FFFF2FFF
        FFEFF0FFCFFFFFCFFFFF00000000FF00003333969696B8B8B8C1C1C1E3E3E3DA
        DADADADADA000000000000FF0000FF00002F2F007F7F2FFFFFCFFFFFEFF0FFCF
        FFFF00000000FF0000FF00003333969696C1C1C1DADADAF1F1F1DADADA000000
        000000FF0000FF0000FF00002F2F007F7FCFFFFFCFFFFFCFFFFF00000000FF00
        00FF0000FF00003333969696DADADADADADADADADA000000000000FF0000FF00
        00FF0000FF00002F2F007F7FCFFFFFCFFFFF002F2F00FF0000FF0000FF0000FF
        00003333969696DADADADADADA003333000000FF0000FF0000FF0000FF0000FF
        00002F2F007F7FCFFFFF002F2F00FF0000FF0000FF0000FF0000FF0000333396
        9696DADADA003333000000FF0000FF0000FF0000FF0000FF0000FF00002F2F00
        7F7F002F2F00FF0000FF0000FF0000FF0000FF0000FF00003333969696003333
        000000FF0000FF0000FF0000FF0000FF0000FF0000FF00002F2F002F2F00FF00
        00FF0000FF0000FF0000FF0000FF0000FF000033330033330000}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = btnNavAnteriorClick
    end
    object edNroOrden: TDBComboGrid
      Left = 33
      Top = 17
      Width = 65
      Height = 21
      TabOrder = 0
      DirectInput = False
      ListAlive = True
      ListSource = dsDatos
      ValidateOnExit = False
      Columns = <
        item
          Expanded = False
          Visible = True
        end>
    end
  end
  inherited sdqDatos: TSDQuery
    AfterClose = sdqDatosAfterClose
    AfterPost = CheckNavigatorEvent
    AfterScroll = CheckNavigatorEvent
    Left = 636
    Top = 396
  end
  inherited dsDatos: TDataSource
    OnDataChange = dsDatosDataChange
    Left = 580
    Top = 396
  end
  inherited sduDatos: TSDUpdateSQL
    Left = 608
    Top = 396
  end
  inherited XPMenu: TXPMenu
    Left = 496
    Top = 396
  end
  inherited Seguridad: TSeguridad
    Left = 524
    Top = 396
  end
  inherited FormStorage: TFormStorage
    Left = 552
    Top = 396
  end
end

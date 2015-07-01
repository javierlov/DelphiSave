inherited fraTrabajadorSiniestroAGENDA: TfraTrabajadorSiniestroAGENDA
  Height = 57
  ExplicitHeight = 57
  DesignSize = (
    498
    57)
  inherited lbSiniestro: TLabel
    Left = 257
    Top = 32
    ExplicitLeft = 257
    ExplicitTop = 32
  end
  object lbTrabajador: TLabel [1]
    Left = 8
    Top = 8
    Width = 63
    Height = 13
    Caption = 'Trabajador'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbCUIL: TLabel [2]
    Left = 36
    Top = 32
    Width = 39
    Height = 13
    Caption = 'C.U.I.L.'
  end
  object btnClear: TJvSpeedButton [3]
    Left = 472
    Top = 25
    Width = 22
    Height = 22
    Hint = 'Borrar el contenido de este control'
    Anchors = [akTop, akRight]
    Flat = True
    Glyph.Data = {
      36050000424D3605000000000000360400002800000010000000100000000100
      08000000000000010000EB0A0000EB0A0000000100008600000000000000FF00
      FF005563E200C4C5E2000000C200828CDE003C48C9000404A0002729C3006B75
      D700222FCC00FEFDF8001215A000ADBBF2002E4BE600ECECF400000ED200AFB4
      E100040483006D8FFB000A0D9E00303DD6006068D9001B21B5004759E4001B34
      EB000D1ED9001519C3004E4DCE00D7DAF700171B9D000F13BC002F39C8000203
      91003B5FF9007282E9000F12B3000305BD000A27D3003953E50004057C00131B
      BE00DFD8EB000000B5004645C800222AAD007096F900182FE40090A6EF002938
      DD000F15B300A7B1EE00405ADF003D4DDC002359F5001019C7005768E8000809
      8B001012A7004F6DF700B4BEF400C5D1F6000324E5001844EC00FAF8F7000709
      A4007781D30007088500050FC2004F68F1002B40EC008A94E5002424BA002228
      CA004965F5007EA7FD003C48D90007077F00092BE900797CD7002F42CE00A2BF
      FC0002027C00292FC800FFFFFF000000AC00B1B7EB001825DA00141EBE002D49
      EF005866DE004057F2007C88E5006470E400F1F3FD004C64E8002941D500080B
      B400243DEA004550D100011BDD002A34CC00DEEAFA0004069400163DF3001B2A
      D9002839D1003B55ED002F54DE000F40F400060795000D10AC00F7FAFC00718C
      FD003447ED0011129C001921C000B6B9DE003D4DCF002433D5001416A300B3BB
      F200F4F1F4000118D9001B1FC4002035E5002D3FE200AAB8F200485BE0000A13
      D1008B98EB002E33C2003341D7004D53D1000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000001010101014D
      4D4D525252010101010101010128391E2D2D1E3952524D010101010112732018
      383818650C28284D01010143784C4A6B275F5F6B7E174D524D010114155B7218
      6A4463307172175252016758462F0279475005701D455773524D417719104F40
      5E3D6670117669741228244C627B06035454540D836F0A4939523280594E6011
      0B54543C5355297C6752325A224E5C7A0B0F0B545C2B2B1F21283A85133F092A
      5642751D5D04256112120148822E6C340E2650351A8137071201016F2C7F4B36
      6D683E647D31321243010101241C3351133B4A4A277421430101010101240816
      5C233884326739010101010101010124291B1F416E0101010101}
    HotTrackFont.Charset = ANSI_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
    Layout = blGlyphLeft
    Spacing = 4
    OnClick = btnClearClick
  end
  inherited mskCUIL: TMaskEdit
    Left = 80
    Top = 28
    ParentShowHint = False
    ShowHint = True
    ExplicitLeft = 80
    ExplicitTop = 28
  end
  inherited cmbNombre: TArtComboBox
    Left = 164
    Top = 28
    Width = 87
    ParentShowHint = False
    ShowHint = True
    Columns = <
      item
        Expanded = False
        FieldName = 'CUIL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMBRE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'Apellido y Nombre'
        Width = 220
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EM_CUIT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'CUIT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTRATO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'Contrato'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ES_NROESTABLECI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'Estab.'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ES_NOMBRE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'Nombre'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'EM_NOMBRE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'Raz'#243'n Social'
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SINIESTRO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'Siniestro'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'EX_FECHAACCIDENTE'
        Title.Caption = 'Accidente'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'EX_FECHARECAIDA'
        Title.Caption = 'Reca'#237'da'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TA_DESCRIPCION'
        Title.Caption = 'Tipo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EX_ALTAMEDICA'
        Title.Caption = 'Alta M'#233'dica'
        Visible = True
      end>
    ExplicitLeft = 164
    ExplicitTop = 28
    ExplicitWidth = 87
  end
  inherited edSiniestro: TSinEdit
    Left = 301
    Top = 28
    Hint = 'Siniestro / Orden / Reca'#237'da'
    ShowHint = True
    ExplicitLeft = 301
    ExplicitTop = 28
  end
  inherited ToolBar: TToolBar
    Left = 303
    Top = -3
    Height = 24
    Flat = False
    Visible = False
    ExplicitLeft = 303
    ExplicitTop = -3
    ExplicitHeight = 24
  end
  object ToolBarTrabajador: TToolBar [9]
    Left = 402
    Top = 25
    Width = 69
    Height = 24
    Align = alNone
    Anchors = [akTop, akRight]
    Images = ImageList
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    object tbManTrab: TToolButton
      Left = 0
      Top = 0
      Hint = 'Mantenimiento de Trabajadores'
      Caption = 'Mantenimiento de Trabajadores'
      ImageIndex = 1
      ParentShowHint = False
      ShowHint = True
      OnClick = tbManTrabClick
    end
    object tbBuscarSiniestro: TToolButton
      Left = 23
      Top = 0
      Hint = 'Buscar siniestros'
      ImageIndex = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = tbBuscarSiniestroClick
    end
    object tbInfo: TToolButton
      Left = 46
      Top = 0
      Hint = 'Informaci'#243'n sobre el Siniestro'
      Caption = 'tbInfo'
      Enabled = False
      ImageIndex = 3
      ParentShowHint = False
      ShowHint = True
      OnClick = tbInfoClick
    end
  end
  inherited sdqDatos: TSDQuery
    Left = 168
  end
  inherited dsDatos: TDataSource
    Left = 196
  end
  inherited ImageList: TImageList
    Left = 184
    Top = 36
    Bitmap = {
      494C010105000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B9B9DB002D2B95000301800037369A00BCBCDD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B9B9
      DE0008088900141796001D22A5001C22A200131691000808850003018000ABAB
      D400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009493CE001215
      99003544DC005065EC005C73ED005B72EC004F62E9003541D900171B9B000504
      82006F6EB6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4F4FA0010129E003D4F
      E800546BEB00546BE7004F64E2005167E1005A72E6005A73E9004759E3001D24
      BA0005038100B0B0D70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003333A8002C3CE2003D51
      E5003245DD002937D3005561DA001A24C400616BD600BFCDF900475DDE004253
      DE001418AB000200800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000607A3003144E500273A
      E0001526D700DCE8FE00D6E3FF007D88E600D7E4FF00CEDBFF00BAC7F7004052
      D8002834DA0005058000B9B9DB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000D15BD002338E400253D
      E7003334AE00E5F0FF00D9E3FF00D5E0FF00CFDCFF00DCEAFF001A21B9002D39
      C6002E39D1000B0D950035349900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F19C4002C45E8002B47
      E9002E4CF0005D60C100E3EBFF00DCE6FF00D7E2FF006875E5000D15BF001B24
      BB00262FC9000C0EA90002007E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000050ABA00627AF1003253
      EE004E67E900FDFFFF00E9EFFF00E8F0FF00DBE5FF00D8E2FF004D59DA00131A
      BB00181FC1000809A40034339700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003737BF00B8C4FA003259
      F4000810AB00FFFFFF00F3F6FC002020A600EEF7FF00AFB9EF000E1BCE000F17
      BE000C12BF0004038E00B9B9DC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F0F0FA003442D9008DA3
      F9004370FE001326BF00325AF5003558F400111DBE001D32E4001726D200151E
      C600080EC5000200840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007979DA009AA8
      F500ACC0FD003865FA00385FF4003353EF002A45EA001E34E0002E40DB001520
      D00003029300B8B8DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007A7A
      DE004455E300E9EDFF009FB0F8006D84F2006D81F0007185F0001827DA000203
      99008F8FCE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F5F5FC003D3DC9000710C5001221CE000D18C5000102A9003636AD00EFEF
      F800000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000000000000E7D6
      CE00B5947B008C6B4A007B4A2900523110007B4A21008C633900A5846300C6AD
      9C00EFEFE7000000000000000000000000000000000000000000EFEFEF00CECE
      CE00CECECE00F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDCECE00FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CEAD8400944A10008C4A
      10008C521800844A1800844208008463420039210800844A10007B4A10007339
      08006B39080073421800000000000000000000000000FFFFFF0073635A007373
      73009C84A5007B7B7B00F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E7B58C00DEAD7B00E7B58C0000000000000000000000
      00000000000000000000000000000000000000000000B5C6C600427B84005273
      7B00E7EFEF000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B57B3900B57B3900BD8C
      5200C68C5A00BD7B42004A311800E7AD73009C735200B56B2100AD6B21009C5A
      1800844A100063310800000000000000000000000000FFFFFF006B5A5A0052BD
      FF003973CE00A58CA5007B737300F7F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D6945200D69C5A00DE9C6300DEA56B00DE9C6300D69C6300D69452000000
      000000000000000000000000000000000000000000000000000000000000CED6
      D6004A7B8400637B8400EFF7F700CED6D600B5C6C600C6CECE00000000000000
      00000000000000000000000000000000000000000000E7C6A500CE9C6300DEB5
      8C00D6AD7B00C6844200BD9C7300EFC68C00D69C63005A422100C6843100B573
      2900945218006B3108000000000000000000FFFFFF00E7E7E700BDBDBD005A5A
      630052C6FF003973CE00A58CA5007B737300F7F7F70000000000000000000000
      0000000000000000000000000000000000000000000000000000E7B58C00D68C
      4A00D6945A00DE9C6300DEA56B00DEA56B00DEA56B00DE9C6300D69C5A00D694
      5200E7B58C000000000000000000000000000000000000000000000000000000
      000000000000738C8C00316373009CB5B5009CADAD008CA5A500849C9400B5C6
      C600000000000000000000000000000000000000000000000000CE945200DEB5
      8400D6A56B0052422900EFC68C00EFBD8C00DEA57300BD946B00BD732100AD63
      21008C4A1000CEB5A5000000000000000000AD390800CE421800E7523100F763
      4A0084525A0052C6FF003973CE00AD8CAD009C9C9C00DEDEDE00B5B5B500BDB5
      B500DEDEDE00FFFFFF0000000000000000000000000000000000D68C4A00D694
      5200D69C5A00DE9C6B00DEA56B00F7DECE00E7B58400DEA56B00DE9C6300D694
      5200D68C4A000000000000000000000000000000000000000000000000000000
      0000EFEFEF0094A5A500B5CECE00316B7B00B5C6C600BDCECE00B5CEC600A5B5
      B5008CA5A5000000000000000000000000000000000000000000FFF7F700C68C
      4200C6843900185A7B0042A5CE004ABDEF0021A5DE000873A500394239009C52
      1000C69C7B00000000000000000000000000C6421000EF5A4200FF6B5A00FF7B
      6300DE6B4200847B7B0052C6FF006B84AD007B5A4A00A5736B00D6B59400E7CE
      B500A5847B00847B7B00F7F7F7000000000000000000CE843900D68C4A00D694
      5200D69C5A00DE9C6300DEA56B00FFFFFF00E7BD9400DE9C6300D69C5A00D694
      5200D68C4A00D684420000000000000000000000000000000000000000000000
      0000C6D6D6009CB5B500BDCECE00C6D6D600396B7B009CADAD00C6D6D600BDCE
      CE00A5B5B50094A5A50000000000000000000000000000000000000000005A5A
      5A00005A84007BD6F70084D6F70063CEF70031ADE7000894D600108CC6007B9C
      A500E7E7E700000000000000000000000000AD421000FF6B5200FF846300FF94
      7300E7A57300FFD6A500B55A4A009C7B7300EFB59400FFFFCE00FFFFD600FFFF
      DE00FFFFEF00E7CEC60073737300FFFFFF0000000000CE843900D68C4200D68C
      4A00D6945200D69C5A00DE9C6300FFFFFF00E7B58C00D69C5A00D6945A00D694
      5200D68C4200CE84390000000000000000000000000000000000000000000000
      0000BDCECE009CB5B500BDCECE00C6D6D600C6D6D600316B7B00A5B5B500C6D6
      D600BDCECE0094ADAD00F7F7F7000000000000000000000000008C8C8C000000
      000073CEF7008CDEF70094DEF7007BD6F70042B5EF002194D6002184C6002184
      B50000000000000000000000000000000000DEDEDE00CE4A2100FF8C7300BD4A
      1800FFC69400FFCE9400BD522900CE9C8C00FFFFCE00FFF7BD00FFFFDE00FFFF
      EF00FFFFFF00FFFFF700AD7B7300DEDEDE00DEAD7B00CE843100CE843900D68C
      4200D68C4A00D6945200D6945200FFFFFF00DEAD7B00D6945200D68C4A00D68C
      4200CE843900CE843100DEAD7B00000000000000000000000000000000000000
      0000D6DEDE009CADAD00BDCECE00BDCECE00C6D6D600D6E7E700316B7B00C6DE
      DE00D6EFEF00B5CECE00B5C6C600000000000000000000000000101010001010
      100073CEF70094DEF70094D6F70073CEF7004AB5EF00399CD6002984BD003994
      BD00000000009C9C9C000000000000000000FFFFFF00B5B5B5005A2100000008
      6B000821840000086B0084391800F7D6B500FFE7AD00FFEFBD00FFFFD600FFFF
      EF00FFFFEF00FFFFDE00EFD6B500ADADAD00D6945A00CE844200D68C4200D68C
      4A00D68C4A00D6945200D6945200FFFFFF00DEAD7B00D6945200D68C4A00D68C
      4A00D68C4200CE844200D6945A00000000000000000000000000000000000000
      00000000000094A5A500B5C6C600CEDEDE00BDCECE00C6DEDE00B5C6C600426B
      7300CEDEDE00BDCED600A5B5B500000000000000000000000000212121003131
      31006BCEF70084D6F70084D6F7005AC6EF004AB5EF00399CD600398CC600398C
      B500000000003131310000000000000000004242420008080800000000001039
      A5001042AD001042A50021215A00F7DEBD00FFDEAD00FFEFB500FFFFCE00FFFF
      D600FFFFDE00FFFFD600EFD6AD00A5A5A500DEAD7B00D68C4A00D6945200D694
      5200D6945200D6945200EFCEAD00FFFFFF00DEAD7B00D6945200D6945200D694
      5200D6945200D68C4A00DEAD7B00000000000000000000000000000000000000
      000000000000C6CECE009CADAD00BDCECE00CEDEDE00CEE7E700C6D6CE007394
      94009CADAD00C6D6D600ADBDBD00000000000000000000000000292929003939
      3900529CBD006BCEF7006BC6F70052BDEF004AB5EF004AADDE004AA5D6002952
      6B0000000000080808000000000000000000101010001818180010398C00185A
      BD00185AC600185AC600184AA500DEB59C00FFFFEF00FFEFCE00FFE7B500FFEF
      BD00FFF7BD00FFFFCE00C6948400D6D6D60000000000D6945A00D69C5A00D69C
      5A00D69C6300D69C6300FFF7EF00FFF7EF00DEAD8400D69C6300D69C6300D69C
      5A00D69C5A00D6945A0000000000000000000000000000000000000000000000
      000000000000000000008CA59C009CB5B500B5C6C600CEDEDE00DEF7F700D6DE
      DE0042738400BDCECE00ADBDC600000000000000000000000000181818004242
      4200313939004A94AD00213131001010100008080800081821004294B5000000
      000000000000424242000000000000000000212121002929290018529C002173
      DE00297BE7002973DE00216BD600634A4A00FFF7EF00FFFFFF00FFE7BD00FFDE
      A500FFF7C600FFD6AD005A525200FFFFFF0000000000CE7B2900DEA57300DEA5
      7300DEA57300DEA57300DEA57300F7DEC600DEA57300DEA57300DEA57300DEA5
      7300DEA57300CE7B290000000000000000000000000000000000000000000000
      00000000000000000000000000007B8C94009CADAD00B5BDBD00C6D6CE00D6DE
      DE00D6DEDE009CADAD00F7F7F700000000000000000000000000101010004242
      42005A5A5A006B6B6B006B6B6B004A4A4A002121210000000000000000000000
      000000000000BDBDBD000000000000000000292929003939390000101800319C
      FF00319CFF00319CFF00298CF7006B7B94007B635A00D6AD9C00F7E7B500FFDE
      B500EFBDA500635A5A00EFEFEF00000000000000000000000000D69C5A00E7B5
      8400E7B58400E7B58400E7B58400FFFFFF00EFD6BD00E7B58400E7B58400E7B5
      8400DE9C63000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000094A5A5008C9C9C0094A5A500DEDE
      DE00CED6D600427B7B00A5B5B500000000000000000000000000C6C6C6002929
      2900636363008C8C8C008C8C8C00636363003939390000000000000000000000
      000010101000000000000000000000000000080808004A4A4A00525252001818
      1800082163001852D6001852A500CECECE00F7F7F700D6D6D600B5B5B500B5B5
      B500DEDEDE00FFFFFF0000000000000000000000000000000000DEAD7B00DEA5
      6B00E7BD9C00E7BD9C00E7BD9C00E7BD9C00E7BD9C00E7BD9C00E7BD9C00DEA5
      7300DEAD7B000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7EFEF00849C9C00EFEF
      EF008C9C9C006384840094ADAD00000000000000000000000000000000007B7B
      7B00313131006B6B6B006B6B6B005A5A5A002929290000000000000000000000
      0000FFFFFF00000000000000000000000000C6C6C600424242006B6B6B008C8C
      8C00BDBDBD006B6B6B0008080800F7F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000CE7B3100EFC6A500EFCEAD00EFCEAD00EFCEAD00EFCEAD00CE8439000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00F7FFFF00E7E7E70000000000000000000000000000000000000000000000
      0000CECECE002121210021212100212121000808080000000000525252000000
      000000000000000000000000000000000000FFFFFF00BDBDBD00181818007B7B
      7B005A5A5A0008080800DEDEDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DEAD7300D6945200DEAD730000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000F83F000000000000
      E00F000000000000C00700000000000080030000000000008003000000000000
      8001000000000000800100000000000080010000000000008001000000000000
      80010000000000008003000000000000C003000000000000E007000000000000
      F00F000000000000FFFF000000000000FFFFE007C3FFFFFF9FFF800381FFFC7F
      87FF800380FFF01FE03F8003007FC007F80FC0030003C007F007C00700018003
      F003E00700008003F001C00700000001F001C00300000001F801C00300000001
      F801C00300008003FC01C00300008003FE01C0030001C007FF01C0070003C007
      FF81E00700FFF01FFFE3F01F01FFFC7F00000000000000000000000000000000
      000000000000}
  end
end
object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'SGE :: Sistema de Gesti'#243'n Empresarial :: DR2GSistemas.com'
  ClientHeight = 398
  ClientWidth = 750
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = mm1
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object spl1: TSplitter
    Left = 191
    Top = 30
    Height = 346
    ExplicitLeft = 205
    ExplicitTop = 115
    ExplicitHeight = 100
  end
  object status1: TJvStatusBar
    Left = 0
    Top = 376
    Width = 750
    Height = 22
    Panels = <
      item
        Alignment = taCenter
        Text = 'Terminal'
        Width = 80
      end
      item
        Width = 150
      end
      item
        Width = 50
      end>
  end
  object JvCoolBar1: TJvCoolBar
    Left = 0
    Top = 0
    Width = 750
    Height = 30
    AutoSize = True
    Bands = <
      item
        Control = acttbMain
        ImageIndex = -1
        MinHeight = 26
        Width = 746
      end>
    object acttbMain: TActionToolBar
      Left = 9
      Top = 0
      Width = 737
      Height = 26
      ActionManager = actmgr1
      Caption = 'acttbMain'
      Color = clMenuBar
      ColorMap.DisabledFontColor = 7171437
      ColorMap.HighlightColor = clWhite
      ColorMap.BtnSelectedFont = clBlack
      ColorMap.UnusedColor = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = True
      ParentFont = False
      Spacing = 0
    end
  end
  object outlook1: TJvOutlookBar
    Left = 0
    Top = 30
    Width = 191
    Height = 346
    Align = alLeft
    Pages = <
      item
        Buttons = <
          item
            Action = actFacturacionVentas
            Caption = 'Facturacion ventas...'
            ImageIndex = 0
            Tag = 0
            AutoToggle = False
            OnClick = actFacturacionVentasExecute
          end
          item
            Action = actGestionPrecioProductos
            Caption = 'Productos y precios'
            ImageIndex = 6
            Tag = 0
            AutoToggle = False
            OnClick = actGestionPrecioProductosExecute
          end
          item
            Action = actFacturasyTimbrados
            Caption = 'Facturas y timbrados'
            ImageIndex = 6
            Tag = 0
            AutoToggle = False
            OnClick = actFacturasyTimbradosExecute
          end>
        ButtonSize = olbsSmall
        Caption = 'M'#243'dulos'
        Color = clGray
        DownFont.Charset = DEFAULT_CHARSET
        DownFont.Color = clWindowText
        DownFont.Height = -11
        DownFont.Name = 'Tahoma'
        DownFont.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentColor = False
        TopButtonIndex = 0
      end>
    SmallImages = ilsmall
    ButtonSize = olbsSmall
    ThemedBackground = False
    BorderStyle = bsNone
    Color = clScrollBar
    TabOrder = 1
  end
  object mm1: TMainMenu
    Left = 290
    Top = 160
    object Sistema1: TMenuItem
      Caption = 'Sistema'
      object Salir1: TMenuItem
        Caption = 'Salir'
        OnClick = Salir1Click
      end
    end
    object Herramientas1: TMenuItem
      Caption = 'Herramientas'
    end
    object Modulos1: TMenuItem
      Caption = 'Modulos'
      object Ventas1: TMenuItem
        Caption = 'Ventas'
        object Facturacionventas1: TMenuItem
          Action = actFacturacionVentas
        end
        object N2: TMenuItem
          Caption = '-'
        end
        object RendiciondeVentas1: TMenuItem
          Action = actRendiciondeVentas
        end
        object Gestindedepositos2: TMenuItem
          Action = actGestionVentas
        end
        object N3: TMenuItem
          Caption = '-'
        end
        object Resumendeventas1: TMenuItem
          Action = actResumenVentas
        end
      end
      object Depositos1: TMenuItem
        Caption = 'Depositos'
        object Gestindedepositos1: TMenuItem
          Action = actGestionDepositos
        end
      end
      object Productos1: TMenuItem
        Caption = 'Productos'
        object Gestindeproductos1: TMenuItem
          Action = actProductos
        end
      end
    end
    object Listados1: TMenuItem
      Caption = 'Listados'
      object Imprimirlistadodeproductos1: TMenuItem
        Action = actImprimirListadoProductos
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Listadodeventas1: TMenuItem
        Action = actVentasLista
      end
    end
  end
  object background1: TJvBackground
    Image.TileWidth = 0
    Image.TileHeight = 0
    Clients.Clients = (
      'frmMain')
    Left = 290
    Top = 280
  end
  object actmgr1: TActionManager
    ActionBars = <
      item
        Items.CaptionOptions = coNone
        Items = <
          item
            Action = EditPaste1
            ImageIndex = 3
            ShortCut = 16470
          end
          item
            Action = EditCopy1
            ImageIndex = 2
            ShortCut = 16451
          end
          item
            Action = EditCut1
            ImageIndex = 1
            ShortCut = 16472
          end
          item
            Caption = '-'
          end
          item
            Action = EditDelete1
            ImageIndex = 5
            ShortCut = 46
          end
          item
            Action = EditUndo1
            ImageIndex = 4
            ShortCut = 16474
          end
          item
            Caption = '-'
          end
          item
            Action = actFacturacionVentas
            Caption = '&Facturacion ventas...'
            ImageIndex = 0
          end>
        ActionBar = acttbMain
      end>
    Images = ilsmall
    Left = 360
    Top = 280
    StyleName = 'Platform Default'
    object actFacturacionVentas: TAction
      Category = 'modulos'
      Caption = 'Facturacion ventas...'
      ImageIndex = 0
      OnExecute = actFacturacionVentasExecute
    end
    object actGestionDepositos: TAction
      Caption = 'Gesti'#243'n de depositos...'
      ImageIndex = 6
    end
    object actProductos: TAction
      Caption = 'Gesti'#243'n de productos...'
      ImageIndex = 6
      OnExecute = actProductosExecute
    end
    object actImprimirListadoProductos: TAction
      Caption = 'Imprimir listado de productos...'
      OnExecute = actImprimirListadoProductosExecute
    end
    object actVentasLista: TAction
      Caption = 'Listado de ventas...'
      OnExecute = actVentasListaExecute
    end
    object EditCut1: TEditCut
      Category = 'Edit'
      Caption = 'Cu&t'
      Hint = 'Cut|Cuts the selection and puts it on the Clipboard'
      ImageIndex = 1
      ShortCut = 16472
    end
    object EditCopy1: TEditCopy
      Category = 'Edit'
      Caption = '&Copy'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 2
      ShortCut = 16451
    end
    object EditPaste1: TEditPaste
      Category = 'Edit'
      Caption = '&Paste'
      Hint = 'Paste|Inserts Clipboard contents'
      ImageIndex = 3
      ShortCut = 16470
    end
    object EditSelectAll1: TEditSelectAll
      Category = 'Edit'
      Caption = 'Select &All'
      Hint = 'Select All|Selects the entire document'
      ShortCut = 16449
    end
    object EditUndo1: TEditUndo
      Category = 'Edit'
      Caption = '&Undo'
      Hint = 'Undo|Reverts the last action'
      ImageIndex = 4
      ShortCut = 16474
    end
    object EditDelete1: TEditDelete
      Category = 'Edit'
      Caption = '&Delete'
      Hint = 'Delete|Erases the selection'
      ImageIndex = 5
      ShortCut = 46
    end
    object actGestionVentas: TAction
      Caption = 'Gestion de Ventas'
      ImageIndex = 6
      OnExecute = actGestionVentasExecute
    end
    object actRendiciondeVentas: TAction
      Caption = 'Rendicion de Ventas'
      OnExecute = actRendiciondeVentasExecute
    end
    object actResumenVentas: TAction
      Caption = 'Resumen de ventas'
      OnExecute = actResumenVentasExecute
    end
    object actGestionPrecios: TAction
      Caption = 'Gestion de Precios...'
      ImageIndex = 6
    end
    object actGestionPrecioProductos: TAction
      Category = 'modulos'
      Caption = 'Productos y precios'
      ImageIndex = 6
      OnExecute = actGestionPrecioProductosExecute
    end
    object actFacturasyTimbrados: TAction
      Category = 'modulos'
      Caption = 'Facturas y timbrados'
      Hint = 'Permiteadministrar las facturas y timbrados del sistema'
      ImageIndex = 6
      OnExecute = actFacturasyTimbradosExecute
    end
  end
  object ilsmall: TImageList
    ColorDepth = cd32Bit
    Left = 290
    Top = 220
    Bitmap = {
      494C010107000900040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000517E98F0517E98F0517E98F0517E
      98F0517E98F0517E98F0517E98F0517E98F0517E98F0517E98F0517E98F0517E
      98F0517E98F0517E98F0698795CF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000417696FF5D9FBFFF85CEF5FF85CE
      F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
      F5FF85CEF5FF85CEF5FF417796FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000407795FF518EAEFF85CEF5FF85CE
      F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
      F5FF85CEF5FF85CEF5FF417796FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000417796FF4B87A5FF85CEF5FF85CE
      F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
      F5FF85CEF5FF85CEF5FF417796FF2E2F2F300000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000417696FF417796FF85CEF5FF85CE
      F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
      F5FF85CEF5FF85CEF5FF417796FF55585A600000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000663300006633
      0000663300006633000066330000000000000000000000000000000000000000
      0000000000006666000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000407795FF417796FF85CEF5FF85CE
      F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
      F5FF85CEF5FF85CEF5FF4E86A3FD686F72800000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000996600006666
      0000666600009966000000000000000000000000000000000000000000000000
      0000000000006666000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000417796FF417796FF85CEF5FF85CE
      F5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CEF5FF85CE
      F5FF85CEF5FF85CEF5FF518EAEFF6D777C900000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000996600006666
      000099660000CC99660000000000000000000000000000000000000000000000
      0000000000006666000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000417796FF4B8BACFF4B89A9FF4B89
      A9FF4B89A9FF4B89A9FF417796FF4884A1FF71B8DDFF71B8DDFF71B8DDFF71B8
      DDFF71B8DDFF71B8DDFF5899B9FF6D8999CC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000996600009966
      0000CC99660066660000CC996600000000000000000000000000000000000000
      0000CC9966006666000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000417796FF59A2CAFF62B0DBFF62B0
      DBFF62B0DBFF62B0DBFF5DA9D2FF4D8EAFFF417796FF417796FF417796FF4177
      96FF417796FF417796FF417796FF417796FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000996600000000
      000000000000CC9966006666000066660000CC9966000000000000000000CC99
      660066660000CC99660000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000417796FF59A2CAFF62B0DBFF62B0
      DBFF62B0DBFF62B0DBFF62B0DBFF62B0DBFF62B0DBFF62B0DBFF62B0DBFF62B0
      DBFF62B0DBFF62B0DBFF6F8693C0000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000CC9966006666000066660000666600006666
      0000CC9966000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000417796FF59A2CAFF62B0DBFF62B0
      DBFF62B0DBFF62B0DBFF5DA9D2FF59A2CAFF59A2CAFF59A2CAFF59A2CAFF59A2
      CAFF59A2CAFF59A2CAFF6F8693C0000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000417796FF59A2CAFF62B0DBFF62B0
      DBFF62B0DBFF5CA6CDFF467B9AFC417796FF417796FF417796FF417796FF4177
      96FF417796FF417796FF6F8693C0000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000417796FF59A2CAFF62B0DBFF62B0
      DBFF62B0DBFF467B9AFC688796D20F0F0F100000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006F8693C06F8692BF6F8692BF6F86
      92BF6F8692BF0F0F0F1000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000024000000330000
      0033000000330000003300000033000000330000003300000033000000330000
      0033000000330000003300000024000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000805A2CC1B98545FFB985
      45FFB88444FFB78444FFB78444FFB78444FFB78444FFB78444FFB78444FFB784
      44FFB78444FFB88445FF805A2CC1000000000000000000000000000000000000
      0000000000008000000080000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080000000800000008000000080000000800000008000
      00008000000080000000800000008000000000000000B88545FFEEB45CFFB582
      43FFEBB15BFFE8AC54FFE7AB54FFE7AB55FFE7AB55FFE7AB55FFE7AB55FFE7AB
      54FFE8AC54FFECB15BFFB88444FF000000000000000000000000000000000000
      0000800000000000000000000000800000000000000000000000800000008000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000800000008000000080000000800000008000
      0000800000008000000080000000800000000000000000000000000000000000
      0000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008000000000000000B78444FFEDB663FFB380
      41FFEAB463FFE4A852FFE4A853FFE4A853FFE4A853FFE4A853FFE4A853FFE4A8
      53FFE4A852FFEAB463FFB78344FF000000000000000000000000000000000000
      0000800000000000000000000000800000000000000080000000000000000000
      0000800000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00800000000000000086868600008080008686
      8600008080008686860080000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF008000000000000000B78343FFEEB96BFFB37E
      40FFEAB76BFFE3A851FFE3A853FFE3A853FFE3A853FFE3A853FFE3A853FFE3A8
      53FFE3A851FFEBB86BFFB68343FF000000000000000000000000000000000000
      0000800000000000000000000000800000000000000080000000000000000000
      0000800000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF00800000000000000000808000868686000080
      8000868686000080800080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008000000000000000B78343FFEFBE73FFB27D
      3FFFEDBC73FFE3A751FFE3A852FFE3A853FFE3A853FFE3A853FFE3A853FFE3A8
      52FFE3A751FFEDBC74FFB68242FF000000000000000000000000000000000000
      0000000000008000000080000000800000000000000080000000000000000000
      0000800000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00800000000000000086868600008080008686
      8600008080008686860080000000FFFFFF00000000000000000000000000FFFF
      FF008000000080000000800000008000000000000000B78242FFF1C27BFFB27D
      3DFFEEC07CFFE3A851FFE3A853FFE3A954FFE3A954FFE3A954FFE3A954FFE3A8
      53FFE3A851FFEEC17DFFB68241FF000000000000000000000000000000000000
      0000000000000000000000000000800000000000000080000000800000008000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF00800000000000000000808000868686000080
      8000868686000080800080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0080000000FFFFFF00800000000000000000000000B78241FFF3C989FFB27B
      3CFFEFC78AFFE4AA55FFE4AB56FFE4AB56FFE4AB56FFE4AB56FFE4AB56FFE4AB
      56FFE4AA55FFF0C88BFFB68141FF000000000000000000000000000000000000
      0000000000000000000000000000800000000000000080000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00800000000000000086868600008080008686
      8600008080008686860080000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF008000000080000000000000000000000000000000B78240FFF4D095FFB27A
      3AFFF1CD97FFE3AC56FFE2AA53FFE2A951FFE2A850FFE2A850FFE2A951FFE2AA
      53FFE3AC56FFF2CD97FFB68140FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF000000000000000000FFFF
      FF00800000008000000080000000800000000000000000808000868686000080
      8000868686000080800080000000800000008000000080000000800000008000
      00008000000000000000000000000000000000000000B6813FFFF7D6A0FFB279
      38FFF3D3A1FFE3AD58FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFE3AD58FFF4D4A3FFB6803EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0080000000FFFFFF0080000000000000000000000086868600008080008686
      8600008080008686860000808000868686000080800086868600008080008686
      86000080800000000000000000000000000000000000B6813EFFF8DCACFFB178
      36FFF4D9ADFFE3B15DFFE1AB53FFE0A84EFFE0A84CFFE0A84CFFE0A84EFFE1AB
      53FFE3B15DFFF5DAAEFFB6803EFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0080000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00800000008000000000000000000000000000000000808000868686000000
      0000000000000000000000000000000000000000000000000000000000008686
      86008686860000000000000000000000000000000000B6803EFFFAE2B7FFB178
      34FFF5DEB6FFE4B260FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFE4B260FFF6DFB8FFB67E3DFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF0000000000800000008000000080000000800000008000
      0000800000000000000000000000000000000000000086868600868686000000
      0000000000000000000000000000000000000000000000000000000000008686
      86000080800000000000000000000000000000000000B6803DFFFCE8C2FFB176
      33FFF8E3C0FFE5B564FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFE5B564FFF8E5C2FFB57E3CFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000808000868686000080
      80000000000000FFFF00000000000000000000FFFF0000000000868686000080
      80008686860000000000000000000000000000000000B6803DFFFDEDCDFFB176
      32FFF9EACBFFE6BB6EFFE4B96AFFE4B867FFE4B767FFE4B767FFE4B867FFE4B9
      6AFFE6BB6EFFFAECCDFFB57E3BFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000B8813EFFFFF6DCFFB37A
      36FFFEF1D7FFFCEED3FFFBEDD2FFFBEDD2FFFBEDD2FFFBEDD2FFFBEDD2FFFBED
      D2FFFCEED3FFFFF2D8FFB7813DFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F5B2CB2B88240FFB882
      40FFB6803DFFB57D3BFFB57D3AFFB57D3AFFB57D3AFFB57D3AFFB57D3AFFB57D
      3AFFB57D3BFFB7803DFF7F5B2CB2000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FFFFFFFF00010000
      FFFFEFFD00010000FFFFC7FF00010000FFFFC3FB00000000FFFFE3F700000000
      C1FBF1E700000000C3FBF8CF00000000C3FBFC1F00000000C1F3FE3F00000000
      D863FC1F00010000FE07F8CF00010000FFFFE1E700010000FFFFC3F300FF0000
      FFFFC7FD03FF0000FFFFFFFFFFFF00008001FFFFFFFFFFFF8001F9FFFFFFFC00
      8001F6CFFE0080008001F6B7FE0000008001F6B7FE0000008001F8B780000000
      8001FE8F800000018001FE3F800000038001FF7F800000038001FE3F80010003
      8001FEBF800300038001FC9F80070FC38001FDDF807F00038001FDDF80FF8007
      8001FDDF81FFF87F8001FFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object plugin1: TJvPluginManager
    PluginFolder = 'etc'
    Extension = 'bpl'
    PluginKind = plgPackage
    Left = 425
    Top = 280
  end
  object JvAppInstances1: TJvAppInstances
    Left = 485
    Top = 280
  end
end

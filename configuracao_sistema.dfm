object configu_dosistema: Tconfigu_dosistema
  Left = 242
  Top = 148
  Width = 553
  Height = 335
  AutoSize = True
  BorderIcons = [biSystemMenu]
  Caption = 'Configura'#231#227'o'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object foto: TImage
    Left = 0
    Top = 0
    Width = 129
    Height = 113
    Stretch = True
  end
  object Label1: TLabel
    Left = 144
    Top = 24
    Width = 172
    Height = 13
    Caption = 'Diretorio da Foto do Menu Principal.:'
  end
  object SpeedButton1: TSpeedButton
    Left = 440
    Top = 40
    Width = 49
    Height = 22
    Caption = '....'
    Flat = True
    OnClick = SpeedButton1Click
  end
  object Label2: TLabel
    Left = 144
    Top = 104
    Width = 173
    Height = 13
    Caption = 'Frase de Agradecimento no Recibo.:'
  end
  object Label3: TLabel
    Left = 136
    Top = 191
    Width = 97
    Height = 13
    Caption = 'Foto para o Recibo.:'
  end
  object foto2: TImage
    Left = 0
    Top = 120
    Width = 129
    Height = 177
    Stretch = True
  end
  object SpeedButton3: TSpeedButton
    Left = 432
    Top = 200
    Width = 41
    Height = 25
    Caption = '....'
    Flat = True
    OnClick = SpeedButton3Click
  end
  object SpeedButton4: TSpeedButton
    Left = 416
    Top = 248
    Width = 121
    Height = 41
    Caption = 'Backup'
    Flat = True
    OnClick = SpeedButton4Click
  end
  object DBNavigator1: TDBNavigator
    Left = 176
    Top = 240
    Width = 184
    Height = 41
    DataSource = sededeconeccao.ds_configuracao
    VisibleButtons = [nbEdit, nbPost, nbCancel, nbRefresh]
    Flat = True
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 144
    Top = 40
    Width = 289
    Height = 21
    DataField = 'fotodaempresa'
    DataSource = sededeconeccao.ds_configuracao
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 144
    Top = 120
    Width = 289
    Height = 21
    DataField = 'frasedeagradecimentopraorelatorio'
    DataSource = sededeconeccao.ds_configuracao
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 136
    Top = 207
    Width = 289
    Height = 21
    DataField = 'fotopraorelatorio'
    DataSource = sededeconeccao.ds_configuracao
    TabOrder = 3
  end
  object abrefoto: TOpenPictureDialog
    InitialDir = 'Bibliotecas\Imagens'
    Left = 552
    Top = 24
  end
  object abrefoto2: TOpenPictureDialog
    Left = 552
    Top = 64
  end
end

object frmCadResponsaveis: TfrmCadResponsaveis
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Respons'#225'veis'
  ClientHeight = 508
  ClientWidth = 897
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 272
    Top = 48
    Width = 310
    Height = 29
    Caption = 'Cadastro de Responsaveis'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 208
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label3: TLabel
    Left = 208
    Top = 208
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label4: TLabel
    Left = 40
    Top = 264
    Width = 14
    Height = 13
    Caption = 'RG'
  end
  object Label5: TLabel
    Left = 208
    Top = 264
    Width = 19
    Height = 13
    Caption = 'CPF'
  end
  object Label6: TLabel
    Left = 40
    Top = 320
    Width = 33
    Height = 13
    Caption = 'Celular'
  end
  object Label7: TLabel
    Left = 208
    Top = 320
    Width = 52
    Height = 13
    Caption = 'Operadora'
  end
  object Label8: TLabel
    Left = 576
    Top = 208
    Width = 105
    Height = 13
    Caption = 'Localizar Respons'#225'vel'
  end
  object DBEdit1: TDBEdit
    Left = 40
    Top = 227
    Width = 121
    Height = 21
    DataField = 'id'
    DataSource = dm.DSResponsaveis
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 208
    Top = 227
    Width = 241
    Height = 21
    DataField = 'nome'
    DataSource = dm.DSResponsaveis
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 40
    Top = 283
    Width = 145
    Height = 21
    DataField = 'rg'
    DataSource = dm.DSResponsaveis
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 208
    Top = 283
    Width = 145
    Height = 21
    DataField = 'cpf'
    DataSource = dm.DSResponsaveis
    MaxLength = 14
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 40
    Top = 339
    Width = 145
    Height = 21
    DataField = 'celular'
    DataSource = dm.DSResponsaveis
    MaxLength = 16
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 208
    Top = 339
    Width = 145
    Height = 21
    DataField = 'operadora'
    DataSource = dm.DSResponsaveis
    TabOrder = 5
  end
  object DBRadioGroup1: TDBRadioGroup
    Left = 40
    Top = 400
    Width = 329
    Height = 65
    Caption = 'Grau de Parentesco'
    Columns = 3
    DataField = 'parentesco'
    DataSource = dm.DSResponsaveis
    Items.Strings = (
      'Pai'
      'M'#227'e'
      'Respons'#225'vel')
    TabOrder = 6
    Values.Strings = (
      'Pai'
      'Mae'
      'Responsavel')
  end
  object DBNavigator1: TDBNavigator
    Left = 248
    Top = 136
    Width = 376
    Height = 41
    DataSource = dm.DSResponsaveis
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbPost, nbCancel]
    TabOrder = 7
    OnClick = DBNavigator1Click
  end
  object txtLocalizar: TEdit
    Left = 576
    Top = 227
    Width = 265
    Height = 21
    TabOrder = 8
    OnChange = txtLocalizarChange
  end
  object DBGrid1: TDBGrid
    Left = 576
    Top = 283
    Width = 281
    Height = 182
    DataSource = dm.DSResponsaveis
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = 'Responsavel'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
end

inherited Frm_usuario: TFrm_usuario
  Caption = 'CADASTRO DE USU'#193'RIO'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 64
    Top = 144
    Width = 63
    Height = 13
    Caption = 'ID_USUARIO'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 64
    Top = 184
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DB_nome
  end
  object Label3: TLabel [2]
    Left = 64
    Top = 224
    Width = 33
    Height = 13
    Caption = 'SENHA'
    FocusControl = DB_senha
  end
  object Label4: TLabel [3]
    Left = 282
    Top = 224
    Width = 24
    Height = 13
    Caption = 'TIPO'
  end
  object Label5: TLabel [4]
    Left = 451
    Top = 224
    Width = 55
    Height = 13
    Caption = 'CADASTRO'
    FocusControl = DB_cadastro
  end
  inherited Panel1: TPanel
    TabOrder = 5
    inherited bt_Pesquisar: TBitBtn
      OnClick = bt_PesquisarClick
    end
  end
  inherited Panel2: TPanel
    TabOrder = 6
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DBEdit1: TDBEdit [7]
    Left = 64
    Top = 160
    Width = 134
    Height = 21
    DataField = 'ID_USUARIO'
    DataSource = ds_padrao
    TabOrder = 0
  end
  object DB_nome: TDBEdit [8]
    Left = 64
    Top = 200
    Width = 521
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 1
  end
  object DB_senha: TDBEdit [9]
    Left = 64
    Top = 240
    Width = 200
    Height = 21
    DataField = 'SENHA'
    DataSource = ds_padrao
    PasswordChar = '*'
    TabOrder = 2
  end
  object DB_cadastro: TDBEdit [10]
    Left = 451
    Top = 240
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    Enabled = False
    TabOrder = 4
  end
  object DB_tipo: TDBComboBox [11]
    Left = 282
    Top = 240
    Width = 157
    Height = 21
    DataField = 'TIPO'
    DataSource = ds_padrao
    Items.Strings = (
      'ADMINISTRADOR'
      'APOIO')
    TabOrder = 3
  end
  inherited Q_padrao: TFDQuery
    Active = True
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_ID_USUARIO'
    UpdateOptions.AutoIncFields = 'ID_USUARIO'
    SQL.Strings = (
      
        'SELECT ID_USUARIO, NOME, SENHA, TIPO, CADASTRO FROM USUARIO ORDE' +
        'R BY ID_USUARIO'
      ' ')
    Top = 72
    object Q_padraoID_USUARIO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object Q_padraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object Q_padraoSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 30
    end
    object Q_padraoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited ds_padrao: TDataSource
    Top = 128
  end
end

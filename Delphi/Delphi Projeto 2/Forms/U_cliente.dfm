inherited Frm_cliente: TFrm_cliente
  Caption = 'Cadastro de Clientes'
  ClientHeight = 486
  ClientWidth = 1097
  ExplicitWidth = 1103
  ExplicitHeight = 515
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 24
    Top = 104
    Width = 64
    Height = 13
    Caption = 'ID_CLIENTE'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel [1]
    Left = 24
    Top = 144
    Width = 31
    Height = 13
    Caption = 'NOME'
    FocusControl = db_nome
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 24
    Top = 184
    Width = 56
    Height = 13
    Caption = 'ENDERECO'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel [3]
    Left = 24
    Top = 224
    Width = 47
    Height = 13
    Caption = 'NUMERO'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel [4]
    Left = 24
    Top = 264
    Width = 44
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = DBEdit5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel [5]
    Left = 24
    Top = 304
    Width = 42
    Height = 13
    Caption = 'CIDADE'
    FocusControl = DBEdit6
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel [6]
    Left = 496
    Top = 304
    Width = 13
    Height = 13
    Caption = 'UF'
    FocusControl = DBEdit7
  end
  object Label8: TLabel [7]
    Left = 384
    Top = 224
    Width = 20
    Height = 13
    Caption = 'CEP'
    FocusControl = DBEdit8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel [8]
    Left = 168
    Top = 224
    Width = 52
    Height = 13
    Caption = 'TELEFONE'
    FocusControl = DBEdit9
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel [9]
    Left = 335
    Top = 104
    Width = 20
    Height = 13
    Caption = 'CPF'
    FocusControl = DBEdit10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel [10]
    Left = 181
    Top = 104
    Width = 61
    Height = 13
    Caption = 'CADASTRO'
    FocusControl = db_cadastro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited Panel1: TPanel
    Width = 1097
    TabOrder = 9
    ExplicitWidth = 1097
    inherited bt_Pesquisar: TBitBtn
      OnClick = bt_PesquisarClick
    end
  end
  inherited Panel2: TPanel
    Top = 401
    Width = 1097
    TabOrder = 10
    ExplicitTop = 401
    ExplicitWidth = 1097
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DBEdit1: TDBEdit [13]
    Left = 24
    Top = 120
    Width = 134
    Height = 21
    DataField = 'ID_CLIENTE'
    DataSource = ds_padrao
    TabOrder = 11
  end
  object db_nome: TDBEdit [14]
    Left = 26
    Top = 157
    Width = 500
    Height = 21
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 1
  end
  object DBEdit3: TDBEdit [15]
    Left = 24
    Top = 200
    Width = 500
    Height = 21
    DataField = 'ENDERECO'
    DataSource = ds_padrao
    TabOrder = 2
  end
  object DBEdit4: TDBEdit [16]
    Left = 24
    Top = 240
    Width = 134
    Height = 21
    DataField = 'NUMERO'
    DataSource = ds_padrao
    TabOrder = 3
  end
  object DBEdit5: TDBEdit [17]
    Left = 24
    Top = 280
    Width = 500
    Height = 21
    DataField = 'BAIRRO'
    DataSource = ds_padrao
    TabOrder = 6
  end
  object DBEdit6: TDBEdit [18]
    Left = 24
    Top = 320
    Width = 449
    Height = 21
    DataField = 'CIDADE'
    DataSource = ds_padrao
    TabOrder = 7
  end
  object DBEdit7: TDBEdit [19]
    Left = 496
    Top = 320
    Width = 30
    Height = 21
    DataField = 'UF'
    DataSource = ds_padrao
    TabOrder = 8
  end
  object DBEdit8: TDBEdit [20]
    Left = 384
    Top = 240
    Width = 140
    Height = 21
    DataField = 'CEP'
    DataSource = ds_padrao
    TabOrder = 5
  end
  object DBEdit9: TDBEdit [21]
    Left = 168
    Top = 240
    Width = 201
    Height = 21
    DataField = 'TELEFONE'
    DataSource = ds_padrao
    TabOrder = 4
  end
  object DBEdit10: TDBEdit [22]
    Left = 335
    Top = 120
    Width = 189
    Height = 21
    DataField = 'CPF'
    DataSource = ds_padrao
    TabOrder = 0
  end
  object db_cadastro: TDBEdit [23]
    Left = 181
    Top = 123
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    TabOrder = 12
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_CLIENTE'
    UpdateOptions.AutoIncFields = 'ID_CLIENTE'
    SQL.Strings = (
      
        'select id_cliente, nome, endereco, numero, bairro, cidade, uf, c' +
        'ep, telefone, cpf,'
      'cadastro'
      'from cliente'
      'order by id_cliente')
    object Q_padraoID_CLIENTE: TFDAutoIncField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Q_padraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object Q_padraoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object Q_padraoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object Q_padraoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object Q_padraoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object Q_padraoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object Q_padraoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      EditMask = '00000\-999;0;_'
      Size = 16
    end
    object Q_padraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      EditMask = '!\(999\)0000-0000;0;_'
      Size = 16
    end
    object Q_padraoCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
      EditMask = '000\.000\.000\-00;0;_'
      Size = 16
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end

object DM: TDM
  OldCreateOrder = False
  Height = 499
  Width = 846
  object conexao: TFDConnection
    Params.Strings = (
      'Database=C:\ESTOQUE DELPHI\XE\BANCO\ESTOQUE.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=LocalHost'
      'Port=3050'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    Connected = True
    Left = 40
    Top = 24
  end
  object transacao: TFDTransaction
    Connection = conexao
    Left = 104
    Top = 24
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 184
    Top = 24
  end
  object Q_login: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'SELECT ID_USUARIO,'
      'NOME,'
      'SENHA,'
      'TIPO,'
      'CADASTRO'
      ' FROM USUARIO'
      'ORDER BY ID_USUARIO')
    Left = 40
    Top = 80
    object Q_loginID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_loginNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object Q_loginSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 30
    end
    object Q_loginTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object Q_loginCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  object ds_login: TDataSource
    DataSet = Q_login
    Left = 40
    Top = 136
  end
end

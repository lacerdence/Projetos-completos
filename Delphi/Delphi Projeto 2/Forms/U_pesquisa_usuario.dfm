﻿inherited frm_pesquisa_usuario: Tfrm_pesquisa_usuario
  Caption = 'Pesquisa Usu'#225'rios'
  ExplicitWidth = 1125
  ExplicitHeight = 778
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Label1: TLabel
      Caption = 'Op'#231#245'es de Consulta'
    end
    inherited mk_inicio: TMaskEdit
      Width = 118
      EditMask = '!99/99/0000;1;_'
      Text = '  /  /    '
      ExplicitWidth = 118
    end
    inherited mk_fim: TMaskEdit
      Width = 118
      EditMask = '!99/99/0000;1;_'
      Text = '  /  /    '
      ExplicitWidth = 118
    end
    inherited bt_pesquisa: TBitBtn
      OnClick = bt_pesquisaClick
    end
    inherited bt_transferir: TBitBtn
      OnClick = bt_transferirClick
    end
    inherited bt_imprimir: TBitBtn
      OnClick = bt_imprimirClick
    end
  end
  inherited DBGrid1: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_USUARIO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Visible = True
      end>
  end
  inherited Q_pesq_padrao: TFDQuery
    SQL.Strings = (
      
        'SELECT ID_USUARIO, NOME, TIPO, CADASTRO FROM USUARIO ORDER BY ID' +
        '_USUARIO')
    object Q_pesq_padraoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_pesq_padraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object Q_pesq_padraoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object Q_pesq_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited Rel_pesq_padrao: TfrxReport
    DataSet = Dataset_pesq_padrao
    DataSetName = 'frxDB_usuarios'
    ReportOptions.CreateDate = 44361.375195057900000000
    ReportOptions.LastChange = 44361.565839710600000000
    Datasets = <
      item
        DataSet = Dataset_pesq_padrao
        DataSetName = 'frxDB_usuarios'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 20.000000000000000000
      RightMargin = 20.000000000000000000
      TopMargin = 20.000000000000000000
      BottomMargin = 20.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      object Título: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 102.047310000000000000
        Top = 18.897650000000000000
        Width = 642.520100000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 71.811070000000000000
          Width = 642.520100000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE USUARIOS DO SISTEMA')
          ParentFont = False
        end
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 351.496290000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Time: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 453.543600000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 555.590910000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 181.417440000000000000
        Width = 642.520100000000000000
        DataSet = Dataset_pesq_padrao
        DataSetName = 'frxDB_usuarios'
        RowCount = 0
        object frxDB_usuariosID_USUARIO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ID_USUARIO'
          DataSet = Dataset_pesq_padrao
          DataSetName = 'frxDB_usuarios'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_usuarios."ID_USUARIO"]')
        end
        object frxDB_usuariosNOME: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 3.779530000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = Dataset_pesq_padrao
          DataSetName = 'frxDB_usuarios'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_usuarios."NOME"]')
        end
        object frxDB_usuariosTIPO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 253.228510000000000000
          Top = 3.779530000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          DataField = 'TIPO'
          DataSet = Dataset_pesq_padrao
          DataSetName = 'frxDB_usuarios'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_usuarios."TIPO"]')
        end
        object frxDB_usuariosCADASTRO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 419.527830000000000000
          Top = 3.779530000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          DataField = 'CADASTRO'
          DataSet = Dataset_pesq_padrao
          DataSetName = 'frxDB_usuarios'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_usuarios."CADASTRO"]')
        end
      end
    end
  end
  inherited Dataset_pesq_padrao: TfrxDBDataset
    UserName = 'frxDB_usuarios'
    DataSet = Q_pesq_padrao
  end
end

object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Sistema de Gest'#227'o Escolar - Escola Modelo'
  ClientHeight = 621
  ClientWidth = 945
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 72
    Top = 256
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Responsveis1: TMenuItem
        Caption = 'Respons'#225'veis'
        OnClick = Responsveis1Click
      end
      object Alunos1: TMenuItem
        Caption = 'Alunos'
        OnClick = Alunos1Click
      end
    end
  end
end

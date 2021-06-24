unit U_usuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrm_usuario = class(TFrm_padrao)
    Q_padraoID_USUARIO: TIntegerField;
    Q_padraoNOME: TStringField;
    Q_padraoSENHA: TStringField;
    Q_padraoTIPO: TStringField;
    Q_padraoCADASTRO: TDateField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DB_nome: TDBEdit;
    Label3: TLabel;
    DB_senha: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DB_cadastro: TDBEdit;
    DB_tipo: TDBComboBox;
    procedure bt_novoClick(Sender: TObject);
    procedure bt_PesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_usuario: TFrm_usuario;

implementation

{$R *.dfm}

uses U_pesquisa_usuario;

procedure TFrm_usuario.bt_novoClick(Sender: TObject);
begin
  inherited;
  db_cadastro.Text:=DateTostr(now);
  db_nome.SetFocus;
end;

procedure TFrm_usuario.bt_PesquisarClick(Sender: TObject);
begin

  Frm_pesquisa_usuario:=Tfrm_pesquisa_usuario.Create(Self);
  Frm_pesquisa_usuario.ShowModal;
  try
    if Frm_pesquisa_usuario.codigo > 0 then
        begin
          Q_padrao.Open;
          Q_padrao.Locate('ID_USUARIO', Frm_pesquisa_usuario.codigo,[]);
        end;
  finally
    Frm_pesquisa_usuario.Free;
    Frm_pesquisa_usuario:=nil;
  end;

end;

end.

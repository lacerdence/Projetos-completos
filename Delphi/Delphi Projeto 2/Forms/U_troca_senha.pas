unit U_troca_senha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrm_troca_senha = class(TForm)
    Bevel1: TBevel;
    Ed_senha: TEdit;
    Ed_nome: TEdit;
    Bevel2: TBevel;
    Label2: TLabel;
    Label1: TLabel;
    bt_troca_senha: TBitBtn;
    bt_cancelar: TBitBtn;
    ed_nova_senha: TEdit;
    Label3: TLabel;
    ed_confirmar_senha: TEdit;
    Label4: TLabel;
    Image1: TImage;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bt_cancelarClick(Sender: TObject);
    procedure bt_troca_senhaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_troca_senha: TFrm_troca_senha;

implementation

{$R *.dfm}

uses U_DM, U_login;

procedure TFrm_troca_senha.bt_cancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_troca_senha.bt_troca_senhaClick(Sender: TObject);
begin
  if ed_nome.Text = '' then
    begin
      MessageDlg('O campo nome est� vazio !',mtInformation,[mbOk],0);
      ed_nome.SetFocus;
      abort;
    end
  else
  if ed_senha.Text = '' then
    begin
      MessageDlg('O campo senha est� vazio !',mtInformation,[mbOk],0);
      ed_senha.SetFocus;
      abort;
    end
  else
  if ed_nova_senha.Text = '' then
    begin
      MessageDlg('O campo Nova Senha est� vazio !',mtInformation,[mbOk],0);
      ed_nova_senha.SetFocus;
      abort;
    end
  else
  if ed_confirmar_senha.Text = '' then
    begin
      MessageDlg('O campo Confirmar Senha est� vazio !',mtInformation,[mbOk],0);
      ed_confirmar_senha.SetFocus;
      abort;
    end
  else
  if ed_confirmar_senha.Text <> ed_nova_senha.Text then
    begin
      MessageDlg('As senhas s�o diferentes !',mtInformation,[mbOk],0);
      ed_confirmar_senha.SetFocus;
      abort;
    end
    else
  Dm.Q_login.Close;
  Dm.Q_login.SQL.Add('');
  Dm.Q_login.SQL.Clear;
  Dm.Q_login.Params.Clear;
  Dm.Q_login.SQL.Add('SELECT *FROM USUARIO');
  Dm.Q_login.SQL.Add('WHERE NOME =:PNOME AND SENHA =:PSENHA');
  Dm.Q_login.ParamByName('PNOME').AsString:=ed_nome.Text;
  Dm.Q_login.ParamByName('PSENHA').AsString:=ed_senha.Text;
  Dm.Q_login.Open;

  if dm.Q_login.RecordCount > 0 then
    Begin
      Dm.Q_login.Edit;
      Dm.Q_login.FieldByName('senha').AsString:=ed_confirmar_senha.Text;
      Dm.Q_login.Refresh;
      MessageDlg('A senha foi trocada com sucesso', mtInformation,[mbOk],0);
      Frm_troca_senha.Close;
      Frm_login.ed_nome.SetFocus;

    End
  else
    MessageDlg('Nome ou senha incorretos, verifique !',mtInformation,[mbOk],0);
    ed_nome.SetFocus;
end;

procedure TFrm_troca_senha.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      key:=#0;
      Perform(wm_nextdlgCtl,0,0);
    end;
end;

end.

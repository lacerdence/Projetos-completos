unit U_login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TFrm_login = class(TForm)
    Ed_nome: TEdit;
    Ed_senha: TEdit;
    cb_tipo: TComboBox;
    bt_ok: TBitBtn;
    bt_cancelar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    bt_troca_senha: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure bt_okClick(Sender: TObject);
    procedure bt_cancelarClick(Sender: TObject);
    procedure bt_troca_senhaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_login: TFrm_login;
  contagem:Integer;

implementation

{$R *.dfm}

uses U_DM, U_Principal, U_troca_senha;

procedure TFrm_login.bt_cancelarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrm_login.bt_okClick(Sender: TObject);
begin
  inc(contagem);
  Dm.Q_login.Close;
  Dm.Q_login.SQL.Add('');
  Dm.Q_login.SQL.Clear;
  Dm.Q_login.Params.Clear;
  Dm.Q_login.SQL.Add('SELECT *FROM USUARIO');
  Dm.Q_login.SQL.Add('WHERE NOME =:PNOME AND SENHA =:PSENHA AND TIPO =:PTIPO');
  Dm.Q_login.ParamByName('PNOME').AsString:=ed_nome.Text;
  Dm.Q_login.ParamByName('PSENHA').AsString:=ed_senha.Text;
  Dm.Q_login.ParamByName('PTIPO').AsString:=cb_tipo.Text;
  Dm.Q_login.Open;

  if dm.Q_login.RecordCount > 0 then
    Begin
      showMessage('Seja bem vindo ' + ed_nome.Text + '');
      dm.usuario:=ed_nome.Text;
      dm.tipo_usuario:=cb_tipo.Text;
      Frm_Principal:=TFrm_principal.Create(Self);
      Frm_principal.ShowModal;
      contagem:=0;

    End
  else
    MessageDlg('Nome ou senha incorretos, verifique !',mtInformation,[mbOk],0);
    ed_nome.SetFocus;

      if contagem >=3 then
      begin
        MessageDlg('Voc� ultrapassou o limite de tentativas ! Fechando a aplica��o', mtInformation, [mbOk],0);
        Application.Terminate;
      end;


end;

procedure TFrm_login.bt_troca_senhaClick(Sender: TObject);
begin
  Frm_troca_senha:=Tfrm_troca_senha.Create(Self);
  Frm_troca_senha.ShowModal;
  try

  finally
     Frm_troca_senha.Free;
     Frm_troca_senha:=nil;
  end;

end;

procedure TFrm_login.FormKeyPress(Sender: TObject; var Key: Char);
begin
   // Enter a fun��o da tecla tab
   if key=#13 then
    begin
      key:=#0;
      Perform(wm_nextdlgCtl,0,0);
    end;

end;

procedure TFrm_login.FormShow(Sender: TObject);
begin
  // Coloca o foco em no campo Ed_Nome
  ed_nome.SetFocus;

end;

end.

unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Menus;

type
  TFrm_Principal = class(TForm)
    Panel1: TPanel;
    bt_Usuario: TSpeedButton;
    bt_Empresa: TSpeedButton;
    bt_cliente: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    menu_Usuario: TMenuItem;
    menu_Empresa: TMenuItem;
    menu_Cliente: TMenuItem;
    menu_Fornecedores: TMenuItem;
    menu_Produtos: TMenuItem;
    menu_FormaPgto: TMenuItem;
    Movimentos1: TMenuItem;
    Compras1: TMenuItem;
    Vendas1: TMenuItem;
    Relatrios1: TMenuItem;
    ListaUsurios1: TMenuItem;
    ListaFornecedores1: TMenuItem;
    ListaClientes1: TMenuItem;
    ListaProdutos1: TMenuItem;
    ListaCompras1: TMenuItem;
    ListaVendas1: TMenuItem;
    Sobreosistema1: TMenuItem;
    procedure Timer1Timer(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure bt_UsuarioClick(Sender: TObject);
    procedure Abre_Tela_Usuario;
    procedure bt_EmpresaClick(Sender: TObject);
    procedure Abre_Tela_Empresa();
    procedure menu_EmpresaClick(Sender: TObject);
    procedure bt_clienteClick(Sender: TObject);
    procedure Abre_Tela_Cliente();
    procedure menu_ClienteClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Abre_Tela_Fornecedor();
    procedure menu_FornecedoresClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Abre_Tela_Produto();
    procedure menu_ProdutosClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Abre_Tela_Forma_Pgto();
    procedure menu_FormaPgtoClick(Sender: TObject);
    procedure Abre_Tela_Compra01();
    procedure SpeedButton7Click(Sender: TObject);
    procedure Compras1Click(Sender: TObject);
    procedure menu_UsuarioClick(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Principal: TFrm_Principal;

implementation

{$R *.dfm}

uses U_usuario, U_Empresa, U_cliente, U_Fornecedor, U_produto, U_Forma_pgto,
  U_compra01;

procedure TFrm_Principal.SpeedButton10Click(Sender: TObject);
begin
  if Messagedlg('Deseja sair do sistema ?',mtConfirmation,[mbOk,mbNo],0)=mrOk then
    begin
      application.Terminate;
    end;
    Abort;


Close;
end;


procedure TFrm_Principal.SpeedButton4Click(Sender: TObject);
begin
  Abre_Tela_Fornecedor;
end;

procedure TFrm_Principal.SpeedButton5Click(Sender: TObject);
begin
  Abre_Tela_Produto;
end;

procedure TFrm_Principal.SpeedButton6Click(Sender: TObject);
begin
  Abre_Tela_Forma_Pgto;
end;

procedure TFrm_Principal.SpeedButton7Click(Sender: TObject);
begin
  Abre_Tela_Compra01
end;

procedure TFrm_Principal.bt_clienteClick(Sender: TObject);
begin
  Abre_Tela_Cliente;
end;

procedure TFrm_Principal.bt_EmpresaClick(Sender: TObject);
begin
  Abre_Tela_Empresa;
end;

procedure TFrm_Principal.Abre_Tela_Cliente;
begin
  Frm_cliente:=Tfrm_cliente.Create(Self);
  Frm_cliente.ShowModal;
  try

  finally
    frm_cliente.Free;
    frm_cliente:=nil;
  end;
end;

procedure TFrm_Principal.Abre_Tela_Compra01;
begin
  frm_compra01:=Tfrm_compra01.Create(Self);
  frm_compra01.ShowModal;
    try

    finally
    Frm_compra01.Free;
    Frm_compra01:=nil;
    end;
end;

procedure TFrm_Principal.Abre_Tela_Empresa;
begin
  Frm_empresa:=Tfrm_empresa.Create(Self);
  Frm_empresa.ShowModal;
  try

  finally
    frm_empresa.Free;
    frm_empresa:=nil;
  end;
end;

procedure TFrm_Principal.Abre_Tela_Forma_Pgto;
begin
  frm_forma_pgto:=Tfrm_forma_pgto.Create(Self);
  Frm_forma_pgto.showmodal;
  try

  finally
     frm_forma_pgto.Free;
     frm_forma_pgto:=nil;
  end;

end;

procedure TFrm_Principal.Abre_Tela_Fornecedor;
begin
  frm_fornecedor:=Tfrm_fornecedor.Create(Self);
  Frm_fornecedor.showmodal;
  try

  finally
     frm_fornecedor.Free;
     frm_fornecedor:=nil;
  end;
end;

procedure TFrm_Principal.Abre_Tela_Produto;
begin
  frm_produto:=Tfrm_produto.Create(Self);
  Frm_produto.showmodal;
  try

  finally
     frm_produto.Free;
     frm_produto:=nil;
  end;
end;

procedure TFrm_Principal.Abre_Tela_Usuario;
begin
  frm_usuario:=Tfrm_usuario.Create(Self);
  Frm_Usuario.showmodal;
  try

  finally
     frm_usuario.Free;
     frm_usuario:=nil;
  end;
end;

procedure TFrm_Principal.bt_UsuarioClick(Sender: TObject);
begin
  Abre_Tela_Usuario;
end;

procedure TFrm_Principal.Compras1Click(Sender: TObject);
begin
  Abre_Tela_Compra01
end;

procedure TFrm_Principal.menu_ClienteClick(Sender: TObject);
begin
  Abre_Tela_Cliente;
end;

procedure TFrm_Principal.menu_EmpresaClick(Sender: TObject);
begin
  abre_tela_empresa;
end;

procedure TFrm_Principal.menu_FormaPgtoClick(Sender: TObject);
begin
  Abre_Tela_Forma_Pgto;
end;

procedure TFrm_Principal.menu_FornecedoresClick(Sender: TObject);
begin
  Abre_Tela_Fornecedor;
end;

procedure TFrm_Principal.menu_ProdutosClick(Sender: TObject);
begin
  Abre_Tela_Produto;
end;

procedure TFrm_Principal.menu_UsuarioClick(Sender: TObject);
begin
  Abre_Tela_Usuario;
end;

procedure TFrm_Principal.Timer1Timer(Sender: TObject);
begin
 //insere dados no statusbar
 Statusbar1.Panels[0].Text:=DateTostr(now);
 Statusbar1.Panels[1].Text:=TimeTostr(now);
 Statusbar1.Panels[2].Text:='SEJA BEM VINDO AO SISTEMA';
end;

end.


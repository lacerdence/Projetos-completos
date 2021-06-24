program Controle_estoque;

uses
  Vcl.Forms,
  U_Principal in '..\Forms\U_Principal.pas' {Frm_Principal},
  U_DM in '..\Forms\U_DM.pas' {DM: TDataModule},
  U_padrao in '..\Forms\U_padrao.pas' {Frm_padrao},
  U_usuario in '..\Forms\U_usuario.pas' {Frm_usuario},
  U_Empresa in '..\Forms\U_Empresa.pas' {Frm_empresa},
  U_cliente in '..\Forms\U_cliente.pas' {Frm_cliente},
  U_Fornecedor in '..\Forms\U_Fornecedor.pas' {Frm_fornecedor},
  U_produto in '..\Forms\U_produto.pas' {Frm_produto},
  U_Forma_pgto in '..\Forms\U_Forma_pgto.pas' {Frm_Forma_pgto},
  U_Pesquisa_Padrao in '..\Forms\U_Pesquisa_Padrao.pas' {frm_pesquisa_padrao},
  U_pesquisa_usuario in '..\Forms\U_pesquisa_usuario.pas' {frm_pesquisa_usuario},
  U_pesq_cliente in '..\Forms\U_pesq_cliente.pas' {Frm_pesq_cliente},
  U_Pesq_Fornecedor in '..\Forms\U_Pesq_Fornecedor.pas' {Frm_pesq_fornecedor},
  U_pesq_produto in '..\Forms\U_pesq_produto.pas' {Frm_pesq_produto},
  U_movimento_padrao in '..\Forms\U_movimento_padrao.pas' {Frm_padrao_movimento},
  U_compra01 in '..\Forms\U_compra01.pas' {Frm_compra01},
  U_pesq_compra in '..\Forms\U_pesq_compra.pas' {frm_pesq_compra};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrm_pesq_produto, Frm_pesq_produto);
  Application.CreateForm(TFrm_padrao_movimento, Frm_padrao_movimento);
  Application.CreateForm(TFrm_compra01, Frm_compra01);
  Application.CreateForm(Tfrm_pesq_compra, frm_pesq_compra);
  Application.Run;
end.

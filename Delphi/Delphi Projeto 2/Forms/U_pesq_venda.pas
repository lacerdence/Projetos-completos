unit U_pesq_venda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Pesquisa_Padrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, frxClass, frxDBSet, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, Vcl.ExtCtrls;

type
  TFrm_pesq_venda = class(Tfrm_pesquisa_padrao)
    Q_pesq_padraoID_VENDA: TIntegerField;
    Q_pesq_padraoID_CLIENTE: TIntegerField;
    Q_pesq_padraoNOME: TStringField;
    Q_pesq_padraoID_FORMA_PGTO: TIntegerField;
    Q_pesq_padraoDESCRICAO: TStringField;
    Q_pesq_padraoUSUARIO: TStringField;
    Q_pesq_padraoCADASTRO: TDateField;
    Q_pesq_padraoVALOR: TFMTBCDField;
    procedure cb_chave_pesquisaChange(Sender: TObject);
    procedure bt_pesquisaClick(Sender: TObject);
    procedure bt_transferirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_pesq_venda: TFrm_pesq_venda;

implementation

{$R *.dfm}

procedure TFrm_pesq_venda.bt_pesquisaClick(Sender: TObject);
begin
    Q_pesq_padrao.Close;
    Q_pesq_padrao.SQL.Add('');
    Q_pesq_padrao.Params.Clear;
    Q_pesq_padrao.SQL.Clear;
    Q_pesq_padrao.SQL.Add('SELECT ID_VENDA, '
                          +'A.ID_CLIENTE, '
                          +'B.NOME,'
                          +'A.ID_FORMA_PGTO, '
                          +'C.DESCRICAO,'
                          +'A.USUARIO, '
                          +'A.VALOR, '
                          +'A.CADASTRO'
                          +'from VENDA A '
                          +'inner join cliente B on B.ID_VENDA = A.ID_VENDA '
                          +'inner join forma_pgto C on C.ID_FORMA_PGTO = A.ID_FORMA_PGTO ');


  case cb_chave_pesquisa.ItemIndex of
    0:begin    // PESQUISA POR CÓDIGO DE USUÁRIO
      Q_pesq_padrao.SQL.Add('WHERE ID_VENDA =:PID_VENDA');
      Q_pesq_padrao.ParamByName('PID_VENDA').AsString:=Ed_nome.Text;
    end;

    1:begin   // PESQUISA POR NOME
      Q_pesq_padrao.SQL.Add('WHERE A.USUARIO LIKE :PUSUARIO');
      Q_pesq_padrao.ParamByName('PUSUARIO').AsString:= '%' + Ed_nome.Text + '%';
    end;

    2:begin  // FORNECEDOR
      Q_pesq_padrao.SQL.Add('WHERE ID_CLIENTE =:PID_CLIENTE');
      Q_pesq_padrao.ParamByName('PID_CLIENTE').AsString:=Ed_nome.Text;
    end;

     3:begin  // PESQUISA POR FORMA DE PAGAMENTO
      Q_pesq_padrao.SQL.Add('WHERE A.ID_FORMA_PGTO LIKE :PID_FORMA_PGTO');
      Q_pesq_padrao.ParamByName('PID_FORMA_PGTO').AsString:=(ed_nome.Text);
    end;


     4:begin  // PESQUISA POR FORMA DE PAGAMENTO
      Q_pesq_padrao.SQL.Add('WHERE A.CADASTRO =:PCADASTRO');
      Q_pesq_padrao.ParamByName('PCADASTRO').AsDate:=StrToDate(mk_inicio.Text);
    end;


    5:begin  // PESQUISA POR PERIODO
      Q_pesq_padrao.SQL.Add('WHERE A.CADASTRO BETWEEN :PINICIO AND :PFIM');
      Q_pesq_padrao.ParamByName('PINICIO').AsDate:=StrToDate(mk_inicio.Text);
      Q_pesq_padrao.ParamByName('PFIM').AsDate:=StrToDate(mk_fim.Text);
    end;

    6:begin  // ORDENAÇÃO
      Q_pesq_padrao.SQL.Add('ORDER BY A.ID_VENDA');
    end;



  end;

  Q_pesq_padrao.Open;

  if Q_pesq_padrao.IsEmpty then
    begin
    MessageDlg('Registro não encontrato !', MtInformation, [mbOk],0);
    end
  else
  abort;


end;

procedure TFrm_pesq_venda.bt_transferirClick(Sender: TObject);
begin
  inherited;
  if Q_pesq_padrao.RecordCount > 0 then
    begin
      codigo:=Q_pesq_padraoID_VENDA.AsInteger;
    end
    else
    abort
end;

procedure TFrm_pesq_venda.cb_chave_pesquisaChange(Sender: TObject);
begin
  // inherited;
    case cb_chave_pesquisa.ItemIndex of


  0:begin
    ed_nome.Visible:=true;
    ed_nome.SetFocus;
    mk_inicio.Visible:=false;
    mk_fim.Visible:=false;
    lb_nome.Visible:=true;
    Lb_inicio.Visible:=false;
    lb_fim.Visible:=false;
    lb_nome.Caption:='Digite o código da venda';
    ed_nome.Clear;
  end;


  1:begin
    ed_nome.Visible:=true;
    ed_nome.SetFocus;
    mk_inicio.Visible:=false;
    mk_fim.Visible:=false;
    lb_nome.Visible:=true;
    Lb_inicio.Visible:=false;
    lb_fim.Visible:=false;
    lb_nome.Caption:='Digite o nome do usuário';
    ed_nome.Clear;
  end;


  2:begin
      ed_nome.Visible:=true;
      ed_nome.SetFocus;
      mk_inicio.Visible:=false;
      mk_fim.Visible:=false;
      lb_nome.Visible:=true;
      Lb_inicio.Visible:=false;
      lb_fim.Visible:=false;
      lb_nome.Caption:='Digite o código da forma pgto';
      ed_nome.Clear;
    end;


  3:begin
      ed_nome.Visible:=true;
      ed_nome.SetFocus;
      mk_inicio.Visible:=false;
      mk_fim.Visible:=false;
      lb_nome.Visible:=true;
      Lb_inicio.Visible:=false;
      lb_fim.Visible:=false;
      lb_nome.Caption:='Digite o código do cliente';
      ed_nome.Clear;
    end;

  4:begin
      ed_nome.Visible:=false;
      //ed_nome.SetFocus;
      mk_inicio.Visible:=false;
      mk_fim.Visible:=true;
      mk_inicio.SetFocus;
      lb_nome.Visible:=true;
      Lb_inicio.Visible:=false;
      lb_fim.Visible:=false;
      lb_nome.Caption:='Digite a data';
      ed_nome.Clear;
    end;

  5:begin
      ed_nome.Visible:=true;
      ed_nome.SetFocus;
      mk_inicio.Visible:=true;
      mk_fim.Visible:=true;
      lb_nome.Visible:=true;
      Lb_inicio.Visible:=false;
      lb_fim.Visible:=false;
      lb_inicio.Caption:='Mostrando todos os registros';
      ed_nome.Clear;
    end;
  end;
end;
end.

end;

end.

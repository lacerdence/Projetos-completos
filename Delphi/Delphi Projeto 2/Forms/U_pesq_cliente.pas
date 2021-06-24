unit U_pesq_cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Pesquisa_Padrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls,
  frxClass, frxDBSet;

type
  TFrm_pesq_cliente = class(Tfrm_pesquisa_padrao)
    Q_pesq_padraoID_CLIENTE: TIntegerField;
    Q_pesq_padraoNOME: TStringField;
    Q_pesq_padraoENDERECO: TStringField;
    Q_pesq_padraoNUMERO: TIntegerField;
    Q_pesq_padraoBAIRRO: TStringField;
    Q_pesq_padraoCIDADE: TStringField;
    Q_pesq_padraoUF: TStringField;
    Q_pesq_padraoCEP: TStringField;
    Q_pesq_padraoTELEFONE: TStringField;
    Q_pesq_padraoCPF: TStringField;
    Q_pesq_padraoCADASTRO: TDateField;
    procedure bt_pesquisaClick(Sender: TObject);
    procedure bt_transferirClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure bt_imprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_pesq_cliente: TFrm_pesq_cliente;

implementation

{$R *.dfm}

procedure TFrm_pesq_cliente.bt_imprimirClick(Sender: TObject);
var caminho: String;
begin
  // Abre relatório
  caminho:=ExtractFilePath(Application.ExeName);
  if Frm_pesq_cliente.rel_pesq_padrao.LoadFromFile(caminho + 'Rel_cliente.fr3') then
    begin
       rel_pesq_padrao.Clear;
       rel_pesq_padrao.LoadFromFile(extractfilepath(application.ExeName) + 'rel_cliente.fr3');
       rel_pesq_padrao.PrepareReport(true);
       rel_pesq_padrao.ShowPreparedReport;
    end
    else
    MessageDlg('Relatório não encontrado', mtError, [mbOk],0);

end;

procedure TFrm_pesq_cliente.bt_pesquisaClick(Sender: TObject);
begin
    Q_pesq_padrao.Close;
    Q_pesq_padrao.SQL.Add('');
    Q_pesq_padrao.Params.Clear;
    Q_pesq_padrao.SQL.Clear;
    Q_pesq_padrao.SQL.Add('SELECT ID_CLIENTE, '
    + 'NOME ,'
    + 'ENDEREÇO,'
    + 'NUMERO,'
    + 'BAIRRO,'
    + 'CIDADE,'
    + 'ESTADO,'
    + 'CEP,'
    + 'TELEFONE,'
    + 'CPF,'
    + 'CADASTRO,'
    + 'FROM CLIENTE');


  case cb_chave_pesquisa.ItemIndex of
    0:begin    // PESQUISA POR CÓDIGO DE USUÁRIO
      Q_pesq_padrao.SQL.Add('WHERE ID_CLIENTE =:PID_CLIENTE');
      Q_pesq_padrao.ParamByName('PID_CLIENTE').AsString:=Ed_nome.Text;
    end;

    1:begin   // PESQUISA POR NOME
      Q_pesq_padrao.SQL.Add('WHERE NOME LIKE :PNOME');
      Q_pesq_padrao.ParamByName('PNOME').AsString:= '%' + Ed_nome.Text + '%';
    end;

     2:begin  // PESQUISA POR DATA
      Q_pesq_padrao.SQL.Add('WHERE CADASTRO LIKE :PCADASTRO');
      Q_pesq_padrao.ParamByName('PCADASTRO').AsDate:=StrToDate(mk_inicio.Text);
    end;


    3:begin  // PESQUISA POR PERIODO
      Q_pesq_padrao.SQL.Add('WHERE CADASTRO BETWEEN :PINICIO AND :PFIM');
      Q_pesq_padrao.ParamByName('PINICIO').AsDate:=StrToDate(mk_inicio.Text);
      Q_pesq_padrao.ParamByName('PFIM').AsDate:=StrToDate(mk_fim.Text);
    end;

    4:begin
      Q_pesq_padrao.SQL.Add('ORDER BY ID_CLIENTE');
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

procedure TFrm_pesq_cliente.bt_transferirClick(Sender: TObject);
begin
  if Q_pesq_padrao.RecordCount > 0 then
    begin
      codigo:=Q_pesq_padraoID_CLIENTE.AsInteger;
    end
    else
    abort

end;

procedure TFrm_pesq_cliente.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  bt_transferir.Click;
end;

end.

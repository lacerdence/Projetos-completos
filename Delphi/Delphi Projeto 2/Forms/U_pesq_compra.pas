unit U_pesq_compra;

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
  Tfrm_pesq_compra = class(Tfrm_pesquisa_padrao)
    Q_pesq_padraoID_COMPRA: TIntegerField;
    Q_pesq_padraoID_FORNECEDOR: TIntegerField;
    Q_pesq_padraoNOME: TStringField;
    Q_pesq_padraoID_FORMA_PGTO: TIntegerField;
    Q_pesq_padraoDESCRICAO: TStringField;
    Q_pesq_padraoUSUARIO: TStringField;
    Q_pesq_padraoCADASTRO: TDateField;
    Q_pesq_padraoVALOR: TFMTBCDField;
    procedure bt_pesquisaClick(Sender: TObject);
    procedure cb_chave_pesquisaChange(Sender: TObject);
    procedure bt_transferirClick(Sender: TObject);
    procedure bt_imprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_pesq_compra: Tfrm_pesq_compra;

implementation

{$R *.dfm}

procedure Tfrm_pesq_compra.bt_imprimirClick(Sender: TObject);
  var caminho: String;
begin
  // Abre relat�rio
  caminho:=ExtractFilePath(Application.ExeName);
  if Frm_pesq_compra.rel_pesq_padrao.LoadFromFile(caminho + 'rel_compra.fr3') then
    begin
       rel_pesq_padrao.Clear;
       rel_pesq_padrao.LoadFromFile(extractfilepath(application.ExeName) + 'rel_compra.fr3');
       rel_pesq_padrao.PrepareReport(true);
       rel_pesq_padrao.ShowPreparedReport;
    end
    else
    MessageDlg('Relat�rio n�o encontrado', mtError, [mbOk],0);

end;

procedure Tfrm_pesq_compra.bt_pesquisaClick(Sender: TObject);
begin
    Q_pesq_padrao.Close;
    Q_pesq_padrao.SQL.Add('');
    Q_pesq_padrao.Params.Clear;
    Q_pesq_padrao.SQL.Clear;
    Q_pesq_padrao.SQL.Add('SELECT ID_COMPRA, '
                          +'A.ID_FORNECEDOR, '
                          +'B.NOME,'
                          +'A.ID_FORMA_PGTO, '
                          +'C.DESCRICAO,'
                          +'A.USUARIO, '
                          +'A.VALOR, '
                          +'A.CADASTRO'
                          +'from COMPRA A '
                          +'inner join fornecedor B on B.ID_FORNECEDOR = A.ID_FORNECEDOR '
                          +'inner join forma_pgto C on C.ID_FORMA_PGTO = A.ID_FORMA_PGTO ');


  case cb_chave_pesquisa.ItemIndex of
    0:begin    // PESQUISA POR C�DIGO DE USU�RIO
      Q_pesq_padrao.SQL.Add('WHERE ID_COMPRA =:PID_COMPRA');
      Q_pesq_padrao.ParamByName('PID_COMPRA').AsString:=Ed_nome.Text;
    end;

    1:begin   // PESQUISA POR NOME
      Q_pesq_padrao.SQL.Add('WHERE A.USUARIO LIKE :PUSUARIO');
      Q_pesq_padrao.ParamByName('PUSUARIO').AsString:= '%' + Ed_nome.Text + '%';
    end;

    2:begin  // FORNECEDOR
      Q_pesq_padrao.SQL.Add('WHERE ID_FORNECEDOR =:PID_FORNECEDOR');
      Q_pesq_padrao.ParamByName('PID_FORNECEDOR').AsString:=Ed_nome.Text;
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

    6:begin  // ORDENA��O
      Q_pesq_padrao.SQL.Add('ORDER BY A.ID_COMPRA');
    end;



  end;

  Q_pesq_padrao.Open;

  if Q_pesq_padrao.IsEmpty then
    begin
    MessageDlg('Registro n�o encontrato !', MtInformation, [mbOk],0);
    end
  else
  abort;



end;

procedure Tfrm_pesq_compra.bt_transferirClick(Sender: TObject);
begin
  inherited;
  if Q_pesq_padrao.RecordCount > 0 then
    begin
      codigo:=Q_pesq_padraoID_COMPRA.AsInteger;
    end
    else
    abort
end;

procedure Tfrm_pesq_compra.cb_chave_pesquisaChange(Sender: TObject);
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
    lb_nome.Caption:='Digite o c�digo da compra';
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
    lb_nome.Caption:='Digite o nome do usu�rio';
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
      lb_nome.Caption:='Digite o c�digo da forma pgto';
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
      lb_nome.Caption:='Digite o c�digo do fornecedor';
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
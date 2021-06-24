unit U_produto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrm_produto = class(TFrm_padrao)
    Q_padraoDESCRICAO: TStringField;
    Q_padraoVL_CUSTO: TFMTBCDField;
    Q_padraoVL_VENDA: TFMTBCDField;
    Q_padraoESTOQUE: TFMTBCDField;
    Q_padraoESTOQUE_MIN: TFMTBCDField;
    Q_padraoUNIDADE: TStringField;
    Q_padraoCADASTRO: TDateField;
    Q_padraoID_FORNECEDOR: TIntegerField;
    Q_padraoNOME: TStringField;
    Label1: TLabel;
    db_id_produto: TDBEdit;
    Label2: TLabel;
    DB_descricao: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    db_vl_venda: TDBEdit;
    Label5: TLabel;
    DB_estoque: TDBEdit;
    Label6: TLabel;
    DB_estoque_min: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    db_cadastro: TDBEdit;
    Label9: TLabel;
    DB_id_fornecedor: TDBEdit;
    Label10: TLabel;
    DB_nome: TDBEdit;
    DBC_unidade: TDBComboBox;
    Q_padraoID_PRODUTO: TIntegerField;
    procedure bt_novoClick(Sender: TObject);
    procedure bt_PesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_produto: TFrm_produto;

implementation

{$R *.dfm}

uses U_pesq_produto;

procedure TFrm_produto.bt_novoClick(Sender: TObject);
begin
  inherited;
    db_cadastro.Text:=DateToStr(now);
    db_id_produto.SetFocus;
end;

procedure TFrm_produto.bt_PesquisarClick(Sender: TObject);
begin
  Frm_pesq_produto:=Tfrm_pesq_produto.Create(Self);
  Frm_pesq_produto.ShowModal;
  try
     if Frm_pesq_produto.codigo > 0 then
        begin
          Q_padrao.Open;
          Q_padrao.Locate('ID_PRODUTO', Frm_pesq_produto.codigo,[]);
        end;
  finally
  Frm_pesq_produto.Free;
  Frm_pesq_produto:=nil;

  end;

end;

end.

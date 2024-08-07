unit U_Pesquisa_Padrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Data.DB, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxDBSet;

type
  Tfrm_pesquisa_padrao = class(TForm)
    Panel1: TPanel;
    cb_chave_pesquisa: TComboBox;
    Label1: TLabel;
    Ed_nome: TEdit;
    mk_inicio: TMaskEdit;
    mk_fim: TMaskEdit;
    lb_nome: TLabel;
    lb_inicio: TLabel;
    lb_fim: TLabel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    bt_pesquisa: TBitBtn;
    bt_transferir: TBitBtn;
    bt_imprimir: TBitBtn;
    Q_pesq_padrao: TFDQuery;
    ds_pesq_padrao: TDataSource;
    Rel_pesq_padrao: TfrxReport;
    Dataset_pesq_padrao: TfrxDBDataset;
    procedure cb_chave_pesquisaChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    codigo:Integer;
  end;

var
  frm_pesquisa_padrao: Tfrm_pesquisa_padrao;

implementation

{$R *.dfm}

uses U_DM;

procedure Tfrm_pesquisa_padrao.cb_chave_pesquisaChange(Sender: TObject);
begin     //c�digo
  case cb_chave_pesquisa.ItemIndex of
    0:begin
      ed_nome.Visible:=true;
      ed_nome.SetFocus;
      mk_inicio.Visible:=False;
      mk_fim.Visible:=False;
      lb_nome.Visible:=true;
      lb_inicio.Visible:=False;
      lb_fim.Visible:=False;
      lb_nome.Caption:='DIGITE O C�DIGO';
      ed_nome.Clear;
    end;

    1:begin  //nome
      ed_nome.Visible:=true;
      ed_nome.SetFocus;
      mk_inicio.Visible:=False;
      mk_fim.Visible:=False;
      lb_nome.Visible:=true;
      lb_inicio.Visible:=False;
      lb_fim.Visible:=False;
      lb_nome.Caption:='DIGITE O NOME';
      ed_nome.Clear;
    end;

    2:begin //data
      ed_nome.Visible:=false;
      mk_inicio.Visible:=true;
      mk_inicio.SetFocus;
      mk_fim.Visible:=False;
      lb_nome.Visible:=false;
      lb_inicio.Visible:=true;
      lb_fim.Visible:=False;
      lb_inicio.Caption:='DIGITE A DATA';
      mk_inicio.Clear;
    end;

    3:begin  //per�odo
      ed_nome.Visible:=false;
      mk_inicio.Visible:=true;
      mk_inicio.SetFocus;
      mk_fim.Visible:=true;
      lb_nome.Visible:=False;
      lb_inicio.Visible:=True;
      lb_fim.Visible:=False;
      lb_inicio.Caption:='DIGITE O PER�ODO';
      mk_inicio.Clear;
      mk_fim.Clear;
    end;


    4:begin  //todos
      ed_nome.Visible:=false;
      mk_inicio.Visible:=false;
      mk_fim.Visible:=false;
      lb_nome.Visible:=False;
      lb_inicio.Visible:=false;
      lb_fim.Visible:=False;
      ed_nome.Visible:=False
    end;


    5:begin  // pesquisa pelo fornecedor
      ed_nome.Visible:=true;
      ed_nome.SetFocus;
      mk_inicio.Visible:=False;
      mk_fim.Visible:=False;
      lb_nome.Visible:=true;
      lb_inicio.Visible:=False;
      lb_fim.Visible:=False;
      lb_nome.Caption:='DIGITE O C�DIGO DO FORNECEDOR';
      ed_nome.Clear;
    end;


  end;

end;

procedure Tfrm_pesquisa_padrao.DBGrid1DblClick(Sender: TObject);
begin
  bt_transferir.Click;
end;

procedure Tfrm_pesquisa_padrao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Q_pesq_padrao.Close;
end;

procedure Tfrm_pesquisa_padrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  // FAZ FUN��O DO TAB
  if key =#13 then
    begin
      key:=#0;
      Perform(wm_nextDlgCtl,0,0);
    end;

end;

end.

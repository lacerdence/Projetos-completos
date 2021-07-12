unit U_DM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.FBDef, FireDAC.Phys.IBBase, FireDAC.Phys.FB, FireDAC.Comp.Client,
  Data.DB, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDM = class(TDataModule)
    conexao: TFDConnection;
    transacao: TFDTransaction;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    Q_login: TFDQuery;
    ds_login: TDataSource;
    Q_loginID_USUARIO: TIntegerField;
    Q_loginNOME: TStringField;
    Q_loginSENHA: TStringField;
    Q_loginTIPO: TStringField;
    Q_loginCADASTRO: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
    VAR usuario, tipo_usuario: String
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.

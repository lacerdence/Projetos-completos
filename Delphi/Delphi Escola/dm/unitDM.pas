unit unitDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  Tdm = class(TDataModule)
    Conexao: TFDConnection;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    tbResponsaveis: TFDTable;
    DSResponsaveis: TDataSource;
    tbResponsaveisid: TFDAutoIncField;
    tbResponsaveisnome: TStringField;
    tbResponsaveisrg: TStringField;
    tbResponsaveiscpf: TStringField;
    tbResponsaveiscelular: TStringField;
    tbResponsaveisoperadora: TStringField;
    tbResponsaveisemail: TStringField;
    tbResponsaveisparentesco: TStringField;
    tbAlunos: TFDTable;
    DSAlunos: TDataSource;
    tbAlunosid: TFDAutoIncField;
    tbAlunosnome: TStringField;
    tbAlunosendereco: TStringField;
    tbAlunosbairo: TStringField;
    tbAlunoscidade: TStringField;
    tbAlunosuf: TStringField;
    tbAlunoscep: TStringField;
    tbAlunoscelular: TStringField;
    tbAlunosoperadora: TStringField;
    tbAlunosemail: TStringField;
    tbAlunosautorizadoSairCom: TStringField;
    tbAlunosensinoReligioso: TShortintField;
    tbAlunosAlunoscol: TStringField;
    tbAlunosresponsavelCarne: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.

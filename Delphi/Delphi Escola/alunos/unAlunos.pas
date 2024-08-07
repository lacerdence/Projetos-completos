unit unAlunos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TfrmCadAlunos = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    txtLocalizar: TEdit;
    DBGrid1: TDBGrid;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    DBLookupComboBox1: TDBLookupComboBox;
    Label14: TLabel;
    procedure txtLocalizarChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadAlunos: TfrmCadAlunos;

implementation

{$R *.dfm}

uses unitDM;

procedure TfrmCadAlunos.txtLocalizarChange(Sender: TObject);
begin
  dm.tbAlunos.Locate('Nome',txtLocalizar.Text,[loPartialKey]);
end;

end.

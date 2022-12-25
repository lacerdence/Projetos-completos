unit unitCadResponsaveis;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmCadResponsaveis = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBNavigator1: TDBNavigator;
    Label8: TLabel;
    txtLocalizar: TEdit;
    DBGrid1: TDBGrid;
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure txtLocalizarChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadResponsaveis: TfrmCadResponsaveis;

implementation

{$R *.dfm}

uses unitDM;

procedure TfrmCadResponsaveis.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (Button = nbInsert) then begin
    dm.tbResponsaveisparentesco.Value := 'Pai';
    DbEdit2.SetFocus;
  end;
end;

procedure TfrmCadResponsaveis.txtLocalizarChange(Sender: TObject);
begin
  dm.tbResponsaveis.Locate('Nome',txtLocalizar.Text,[loPartialKey]);
end;

end.

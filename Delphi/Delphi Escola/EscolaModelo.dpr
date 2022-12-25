program EscolaModelo;

uses
  Vcl.Forms,
  unitPrincipal in 'principal\unitPrincipal.pas' {frmPrincipal},
  unitCadResponsaveis in 'responsaveis\unitCadResponsaveis.pas' {frmCadResponsaveis},
  unitDM in 'dm\unitDM.pas' {dm: TDataModule},
  unAlunos in 'alunos\unAlunos.pas' {frmCadAlunos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.

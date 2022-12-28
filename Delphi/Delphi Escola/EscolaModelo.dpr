program EscolaModelo;

uses
  Vcl.Forms,
  unitPrincipal in 'principal\unitPrincipal.pas' {frmPrincipal},
  unitCadResponsaveis in 'responsaveis\unitCadResponsaveis.pas' {frmCadResponsaveis},
  unitDM in 'dm\unitDM.pas' {dm: TDataModule},
  unAlunos in 'alunos\unAlunos.pas' {frmCadAlunos},
  frmLogin in 'login\frmLogin.pas' {form_login};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;

  Application.CreateForm(Tdm, dm);


  //Application.CreateForm(Tform_login, form_login);
  form_login := Tform_login.Create(nil);
  form_login.ShowModal;

  Application.CreateForm(TfrmPrincipal, frmPrincipal);

//  form_login.Hide;
//  form_login.Free;

  Application.Run;
end.

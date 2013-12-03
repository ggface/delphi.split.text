program task3;

uses
  Forms,
  main in 'main.pas' {MainForm},
  glIteratorGrid in 'glIteratorGrid.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.

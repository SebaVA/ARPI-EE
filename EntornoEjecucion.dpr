program EntornoEjecucion;

uses
  Forms,
  gnugettext in '..\Entorno\gnugettext.pas',
  uEntornoEjecucion in '..\Modelo\uEntornoEjecucion.pas',
  udmEntorno in '..\Entorno\udmEntorno.pas' {dmEntorno: TDataModule},
  ufmConfigEntorno in 'ufmConfigEntorno.pas' {fmConfigEntorno},
  ufmThreads in 'ufmThreads.pas' {fmThreads},
  ufmPrincipal in 'uFmPrincipal.pas' {fmPrincipal},
  ufmImagen in 'ufmimagen.pas' {fmImagen},
  ufmMatriz in 'ufmMatriz.pas' {fmMatriz},
  ufmConfigMatriz in 'ufmConfigMatriz.pas' {fmPropiedadesMatriz},
  ufmListaDePasos in 'ufmListaDePasos.pas' {fmListaDePasos},
  ufmMatricesImagen in 'ufmMatricesImagen.pas' {fmMatricesImagen},
  uComponentesARPI in '..\Entorno\uComponentesARPI.pas',
  ufmListaReferencias in 'ufmListaReferencias.pas' {fmListaReferencias},
  uCommon in '..\Entorno\uCommon.pas',
  ufmConfigListaReferencia in 'ufmConfigListaReferencia.pas' {fmConfigListaReferencia},
  ufmSeleccionListaPasos in 'ufmSeleccionListaPasos.pas' {fmSeleccionListaPaso},
  ufmListaResultados in 'ufmListaResultados.pas' {fmListaResultados},
  ufmImprimirImagen in 'ufmImprimirImagen.pas' {fmImprimirImagen},
  ufmzoomimg in 'ufmzoomimg.pas' {fmZoomImg},
  ufmAcerca in '..\Entorno\ufmAcerca.pas' {fmAcerca};

{$R *.res}
begin
  Application.Initialize;
  Application.Title := 'Entorno de Ejecución - ARPI';
  Application.CreateForm(TfmPrincipal, fmPrincipal);
  Application.CreateForm(TdmEntorno, dmEntorno);
  Application.CreateForm(TfmThreads, fmThreads);
  Application.CreateForm(TfmZoomImg, fmZoomImg);
  Application.Run;
end.



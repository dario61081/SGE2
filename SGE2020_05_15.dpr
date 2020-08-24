program SGE2020_05_15;

uses
  Vcl.Forms,
  ufrmMain in 'ufrmMain.pas' {frmMain},
  datos in 'datos.pas' {dm1: TDataModule},
  ufrmTemplateModal in 'templates\ufrmTemplateModal.pas' {frmMensaje},
  ufrmTemplateDatos in 'templates\ufrmTemplateDatos.pas' {frmDatos},
  ufrmVentas in 'ufrmVentas.pas' {frmVentas},
  ufrmBuscarEquivalencia in 'forms\busquedas\ufrmBuscarEquivalencia.pas' {frmBuscarEquivalencias},
  ufrmBuscarProductos in 'forms\busquedas\ufrmBuscarProductos.pas' {frmBuscarProductos},
  ufrmImprimirListadoProductos in 'ufrmImprimirListadoProductos.pas' {frmImprimirProductos},
  uEnlace in 'unidades\uEnlace.pas',
  Num2Let in 'Num2Let.pas',
  ufrmVentasLista in 'ufrmVentasLista.pas' {frmVentasLista},
  ufrmProductos in 'ufrmProductos.pas' {frmProductos},
  Controles in 'unidades\Controles.pas',
  ufrmabmventas in 'forms\ventas\ufrmabmventas.pas' {frmabmVentas},
  ufrmVistaRapidaFacturas in 'ufrmVistaRapidaFacturas.pas' {frmVistaFacturas},
  ufrmRendicionVentas in 'ufrmRendicionVentas.pas' {frmRendicionVentas},
  ufrmVentasDia in 'ufrmVentasDia.pas' {frmVentasDia},
  Unit1 in 'Unit1.pas' {frmGenerarRecibos},
  ufrmGenerarRecibo in 'forms\ufrmGenerarRecibo.pas' {frmGenerarRecibo},
  ufrmMantenerProductos in 'ufrmMantenerProductos.pas' {frmMantenerProductos},
  ufrmClientes in 'mejoras\ufrmClientes.pas' {frmClientes},
  ufrmFacturasTimbrados in 'mejoras\ufrmFacturasTimbrados.pas' {frmFacturasTimbrados},
  ufrmFacturasClientes in 'mejoras\ufrmFacturasClientes.pas' {frmResumenFacturasProveedores},
  ufrmlotes in 'forms\ufrmlotes.pas' {frmLotes},
  uFrmLoteProductos in 'forms\uFrmLoteProductos.pas' {frmLoteProductos},
  Utilidades in 'Utilidades.pas',
  ufrmLotesDisponibles in 'mejoras\ufrmLotesDisponibles.pas' {frmLotesDisponibles},
  uinterfaces in 'unidades\uinterfaces.pas',
  ufrmNotaCredito in 'mejoras\ufrmNotaCredito.pas' {frmNotaCredito},
  ufrmNotaCreditoManual in 'mejoras\ufrmNotaCreditoManual.pas' {frmNotaCreditoManual},
  ufrmSplash in 'ufrmSplash.pas' {frmSplash},
  ufrmListadoNotaCredito in 'mejoras\ufrmListadoNotaCredito.pas' {frmListadoNotaCredito},
  ufrmDialogTemplate in 'templates\ufrmDialogTemplate.pas' {frmDialogTemplate},
  ufrmdialogoimprimirt in 'ufrmdialogoimprimirt.pas' {frmDlgImprimirReporte},
  uinterfaceVentas in 'uinterfaceVentas.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm1, dm1);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;

end.

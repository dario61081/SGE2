program SGE2020_08_29;

uses
  Vcl.Forms,
  ufrmMain in 'forms\ufrmMain.pas' {frmMain},
  datos in 'datos.pas' {dm1: TDataModule},
  ufrmTemplateModal in 'templates\ufrmTemplateModal.pas' {frmMensaje},
  ufrmTemplateDatos in 'templates\ufrmTemplateDatos.pas' {frmDatos},
  ufrmVentas in 'forms\ufrmVentas.pas' {frmVentas},
  ufrmBuscarEquivalencia in 'forms\ufrmBuscarEquivalencia.pas' {frmBuscarEquivalencias},
  ufrmBuscarProductos in 'forms\ufrmBuscarProductos.pas' {frmBuscarProductos},
  ufrmImprimirListadoProductos in 'reports\ufrmImprimirListadoProductos.pas' {frmImprimirProductos},
  uEnlace in 'unidades\uEnlace.pas',
  Num2Let in 'utils\Num2Let.pas',
  ufrmVentasLista in 'forms\ufrmVentasLista.pas' {frmVentasLista},
  ufrmProductos in 'form_verificar\ufrmProductos.pas' {frmProductos},
  Controles in 'unidades\Controles.pas',
  ufrmabmventas in 'reports\ufrmabmventas.pas' {frmabmVentas},
  ufrmVistaRapidaFacturas in 'form_verificar\ufrmVistaRapidaFacturas.pas' {frmVistaFacturas},
  ufrmRendicionVentas in 'forms\ufrmRendicionVentas.pas' {frmRendicionVentas},
  ufrmVentasDia in 'forms\ufrmVentasDia.pas' {frmVentasDia},
  Unit1 in 'form_verificar\Unit1.pas' {frmGenerarRecibos},
  ufrmGenerarRecibo in 'forms\ufrmGenerarRecibo.pas' {frmGenerarRecibo},
  ufrmMantenerProductos in 'forms\ufrmMantenerProductos.pas' {frmMantenerProductos},
  ufrmClientes in 'forms\ufrmClientes.pas' {frmClientes},
  ufrmFacturasTimbrados in 'mejoras\ufrmFacturasTimbrados.pas' {frmFacturasTimbrados},
  ufrmFacturasClientes in 'mejoras\ufrmFacturasClientes.pas' {frmResumenFacturasProveedores},
  ufrmlotes in 'forms\ufrmlotes.pas' {frmLotes},
  uFrmLoteProductos in 'forms\uFrmLoteProductos.pas' {frmLoteProductos},
  Utilidades in 'utils\Utilidades.pas',
  ufrmLotesDisponibles in 'mejoras\ufrmLotesDisponibles.pas' {frmLotesDisponibles},
  uinterfaces in 'interfaces\uinterfaces.pas',
  ufrmNotaCredito in 'mejoras\ufrmNotaCredito.pas' {frmNotaCredito},
  ufrmNotaCreditoManual in 'mejoras\ufrmNotaCreditoManual.pas' {frmNotaCreditoManual},
  ufrmSplash in 'forms_removed\ufrmSplash.pas' {frmSplash},
  ufrmListadoNotaCredito in 'mejoras\ufrmListadoNotaCredito.pas' {frmListadoNotaCredito},
  ufrmDialogTemplate in 'templates\ufrmDialogTemplate.pas' {frmDialogTemplate},
  ufrmdialogoimprimirt in 'forms_removed\ufrmdialogoimprimirt.pas' {frmDlgImprimirReporte},
  uinterfaceVentas in 'interfaces\uinterfaceVentas.pas',
  udatosinterface in 'interfaces\udatosinterface.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm1, dm1);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;

end.

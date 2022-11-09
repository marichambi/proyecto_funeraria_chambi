<?php
/* Smarty version 3.1.36, created on 2022-08-05 23:56:08
  from 'C:\wamp64\www\sis_balneario_2\privada\reportes\templates\rpt_productos_tipos.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_62edae185b4cf7_88341765',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '41826b98a72b72d1ddf16466b4e9240d014d89a2' => 
    array (
      0 => 'C:\\wamp64\\www\\sis_balneario_2\\privada\\reportes\\templates\\rpt_productos_tipos.tpl',
      1 => 1628563518,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62edae185b4cf7_88341765 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html lang="esp">
	<head>
		<link rel="stylesheet" href="../<?php echo $_smarty_tpl->tpl_vars['direc_css']->value;?>
" type="text/css">
		<meta charset="utf-8">
		
			<?php echo '<script'; ?>
 type="text/javascript">
				function validar() {
					nombre   = document.formu.nombre .value;
					if (document.formu.nombre .value == "") {
						alert("Por favor seleccione el nombre ");
						document.formu.nombre .focus();
						return;
					}
					ventanaCalendario = window.open ("rpt_productos_tipos1.php?descripcion=" + nombre , "calendario", "width-600, height=550,left=100, top=100, scrollbars=yes, menubars=no, statusbar=NO, status =NO, resizable=YES, location=NO")
					}		
			<?php echo '</script'; ?>
>
			
	</head>
	<body>
		<div class="formu_ingreso_datos">
			<h2>rpt_productos_tipos</h2>
			<form method="post" name="formu">
				<p>
					<b>*Seleccione nombre</b>
					<select name="nombre">
						<option value="">--Seleccione--</option>
						<option value="T">Todos</option>
						<option value="gaseosa">GASEOSA</option>
						<option value="bebida alcoholica ">BEBIDA ALCOHOLICA</option>
					</select>
				</p>
				<center><p>
					<input type="hidden" name="accion" value="">
					<input type="button" value="Aceptar" onclick="validar();" class="boton2">
				</p></center>
			</form>
		</div>
</body>
</html><?php }
}

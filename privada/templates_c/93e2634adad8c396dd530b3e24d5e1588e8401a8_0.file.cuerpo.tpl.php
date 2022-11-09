<?php
/* Smarty version 3.1.36, created on 2021-08-10 17:44:19
  from 'C:\wamp64\www\sis_balneario_2\privada\templates\cuerpo.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_6112baf38bfea7_97301703',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '93e2634adad8c396dd530b3e24d5e1588e8401a8' => 
    array (
      0 => 'C:\\wamp64\\www\\sis_balneario_2\\privada\\templates\\cuerpo.tpl',
      1 => 1617244114,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_6112baf38bfea7_97301703 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['direc_css']->value;?>
" type="text/css">
</head>
<body>
	<form action="claves/" method="post" target="cuerpo">
		<?php if ($_smarty_tpl->tpl_vars['nick']->value == '') {?>
		<div class="formu_ingreso">
			<p><h2>Ingresar al Sistema</h2></p>
			<p><h2>Login:</h2><input type="text" name="nick" size="11" value="" class="limpiar"></p>
			<p><h2>Clave:</h2><input type="password" name="password" size="11" value=""></p>
			<input type="submit" name="accion" value="Ingresar" size="5" class="boton">
		</div>
		<?php }?>
	</form>

</body>
</html><?php }
}

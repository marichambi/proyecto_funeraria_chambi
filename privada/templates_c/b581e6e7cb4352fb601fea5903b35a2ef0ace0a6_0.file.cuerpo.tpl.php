<?php
/* Smarty version 3.1.36, created on 2021-08-06 23:50:50
  from 'C:\wamp64\www\sis_balneario_chambi\privada\templates\cuerpo.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_610dcada1fa506_70027183',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'b581e6e7cb4352fb601fea5903b35a2ef0ace0a6' => 
    array (
      0 => 'C:\\wamp64\\www\\sis_balneario_chambi\\privada\\templates\\cuerpo.tpl',
      1 => 1617244114,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_610dcada1fa506_70027183 (Smarty_Internal_Template $_smarty_tpl) {
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

<?php
/* Smarty version 3.1.36, created on 2021-08-10 17:44:19
  from 'C:\wamp64\www\sis_balneario_2\privada\templates\menu_sup.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.36',
  'unifunc' => 'content_6112baf3889137_81843627',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '5bf52e19596a29d17304bd8eef8c1c85d25e15cc' => 
    array (
      0 => 'C:\\wamp64\\www\\sis_balneario_2\\privada\\templates\\menu_sup.tpl',
      1 => 1620419249,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_6112baf3889137_81843627 (Smarty_Internal_Template $_smarty_tpl) {
?>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['direc_css']->value;?>
" type="text/css">
</head>
<body>
	


	<div class="cabecera">
		<img src="balneario/img/<?php echo $_smarty_tpl->tpl_vars['logo_balneario']->value;?>
" width="8%">
		<div class="titulo">
			BALNEARIO "<?php echo $_smarty_tpl->tpl_vars['nombre']->value;?>
"
		</div>
		<div class="usuario">
			Usuario:<b><?php echo $_smarty_tpl->tpl_vars['sesion']->value['usuario'];?>
</b>
			Rol: <b><?php echo $_smarty_tpl->tpl_vars['sesion']->value['rol'];?>
</b>
		</div>
	</div>

</body>
</html>
<?php }
}

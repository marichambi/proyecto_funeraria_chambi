<?php
session_start(); /*inicio de sesion*/
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");
require_once("../paginacion.inc.php");

$smarty = new Smarty;

//$db-> debug = true;

contarRegistros($db, "servicio_cliente");

paginacion("servicio_cliente.php?", $smarty);

$sql3 = $db->Prepare("SELECT *
					  FROM 	servicio_cliente
					  WHERE estado <> '0'
					  AND id_servicio_cliente > 1
					  ORDER BY id_servicio_cliente DESC
					  LIMIT ? OFFSET ?
					");
$smarty->assign("servicio_cliente", $db->GetAll($sql3, array($nElem, $regIni)));


$smarty->assign("direc_css", $direc_css);
$smarty->display("servicio_cliente.tpl");
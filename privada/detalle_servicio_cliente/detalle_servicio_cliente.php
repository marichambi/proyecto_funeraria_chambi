<?php
session_start(); /*inicio de sesion*/
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");
require_once("../paginacion.inc.php");

$smarty = new Smarty;

//$db-> debug = true;

contarRegistros($db, "detalle_servicio_cliente");

paginacion("detalle_servicio_cliente.php?", $smarty);

$sql3 = $db->Prepare("SELECT *
					  FROM 	detalle_servicio_cliente
					  WHERE estado <> '0'
					  AND id_detalle_servicio_cliente > 1
					  ORDER BY id_detalle_servicio_cliente DESC
					  LIMIT ? OFFSET ?
					");
$smarty->assign("detalle_servicio_cliente", $db->GetAll($sql3, array($nElem, $regIni)));


$smarty->assign("direc_css", $direc_css);
$smarty->display("detalle_servicio_cliente.tpl");
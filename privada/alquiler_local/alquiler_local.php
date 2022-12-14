<?php
session_start(); /*inicio de sesion*/
require_once("../../smarty/libs/Smarty.class.php");
require_once("../../conexion.php");
require_once("../libreria_menu.php");
require_once("../paginacion.inc.php");

$smarty = new Smarty;

//$db-> debug = true;

contarRegistros($db, "alquiler_local");

paginacion("alquiler_local.php?", $smarty);

$sql3 = $db->Prepare("SELECT *
					  FROM 	alquiler_local
					  WHERE estado <> '0'
					  AND id_alquiler_local > 1
					  ORDER BY id_alquiler_local DESC
					  LIMIT ? OFFSET ?
					");
$smarty->assign("alquiler_local", $db->GetAll($sql3, array($nElem, $regIni)));


$smarty->assign("direc_css", $direc_css);
$smarty->display("alquiler_local.tpl");
<?php
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once ("../../conexion.php");

$nombre = $_REQUEST["nombre"];

$smarty = new Smarty;
//$db->debug=true;
if ($nombre=="T"){
	$sql = $db->Prepare ("SELECT *
					  FROM tipo_producto
					  WHERE estado <> '0'
					");
    $rs = $db->GetAll($sql);

} else {
	$sql = $db->Prepare ("SELECT *
					   FROM tipo_producto
					   WHERE nombre = ?
					   AND estado <> '0'

					 ");
	$rs = $db->GetAll($sql, array($nombre));
}

$sql1 = $db->Prepare ("SELECT *
					   FROM balneario
					   WHERE id_balneario = 1
					   AND estado <> '0'
					 ");
$rs1 = $db->GetAll($sql1);
$nombre = $rs1[0]["nombre"];
$logo_balneario = $rs1[0]["logo_balneario"];
$smarty->assign("logo_balneario", $logo_balneario);

$fecha = date("Y-m-d H:i:s");
$smarty->assign("rpt_productos_tipos1", $rs);
$smarty->assign("fecha", $fecha);
$smarty->assign("direc_css", $direc_css);
$smarty->display("rpt_productos_tipos1.tpl");
?>
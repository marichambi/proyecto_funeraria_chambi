<?php
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once ("../../conexion.php");

$nacionalidad = $_REQUEST["nacionalidad"];

$smarty = new Smarty;
//$db->debug=true;
if ($nacionalidad=="T"){
	$sql = $db->Prepare ("SELECT *
					  FROM empleado
					  WHERE estado <> '0'
					");
    $rs = $db->GetAll($sql);

} else {
	$sql = $db->Prepare ("SELECT *
					   FROM empleado
					   WHERE nacionalidad = ?
					   AND estado <> '0'

					 ");
	$rs = $db->GetAll($sql, array($nacionalidad));
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
$smarty->assign("rpt_empleado_nacionalidad1", $rs);
$smarty->assign("fecha", $fecha);
$smarty->assign("direc_css", $direc_css);
$smarty->display("rpt_empleado_nacionalidad1.tpl");
?>
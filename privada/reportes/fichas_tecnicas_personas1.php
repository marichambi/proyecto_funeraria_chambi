<?php
session_start();
require_once("../../smarty/libs/Smarty.class.php");
require_once ("../../conexion.php");

$id_persona = $_REQUEST["id_persona"];

$smarty = new Smarty;
//$db->debug=true;
	$sql1 = $db->Prepare ("SELECT *
					   FROM _personas
					   WHERE id_persona = ?
					   AND estado <> '0'

					 ");
	$rs = $db->GetAll($sql, array($id_persona));

$sql1 = $db->Prepare ("SELECT *
					   FROM balneario
					   WHERE id_balneario = 1
					   AND estado <> '0'
					 ");
$rs1 = $db->GetAll($sql1);
$nombre = $rs1[0]["nombre"];
$logo_balneario = $rs1[0]["logo_balneario"];
$smarty->assign("logo_balneario", $logo_balneario);

$smarty->assign("personas", $rs);
$smarty->assign("direc_css", $direc_css);
$smarty->display("fichas_tecnicas_personas1.tpl");
?>
<!DOCTYPE html>
<html>
	<head>
	<script type="text/javascript">
	var ventanaCalendario=false
			function imprimir() {
			if (confirm('Desea Imprimir ?')){
				window.print();
			}
		}
	</script>
	</head>
	<body style='cursor:pointer;cursor:hand' onClick='imprimir();'>
	<table width="100%" border="0">
<tr>
<td><img src="../balneario/img/{$logo_balneario}" width="70%" ></td>
<td align="center" width="80%"><h1> EMPLEADO-NACIONALIDAD</h1></td>
</tr>
</table>
<br>
	<center>
	<table border="1" cellspacing="0">
<tr>
<th>NRO</th><th>NOMBRE</th><th>APELLIDO</th><th>DIRECCION</th><th>NACIONALIDAD</th>
</tr>
	{assign var="b" value="1"}
	{foreach item=r from=$rpt_empleado_nacionalidad1}
<tr>
	<td align="center">{$b}</td>
	<td>{$r.nombre}</td>
	<td>{$r.apellido}</td>
	<td>{$r.direccion}</td>
	<td>{if $r.nacionalidad=='boliviana'}Boliviana{else}Extranjera{/if}</td>
	{assign var="b" value="`$b+1`"}
	{/foreach}
</tr>
	</table>
<br><br>
<b>Fecha:</b> {$fecha}
</center>
</body>
</html>
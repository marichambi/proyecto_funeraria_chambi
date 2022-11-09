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
<td align="center" width="80%"><h1> TIPOS DE PRODUCTO</h1></td>
</tr>
</table>
<br>
	<center>
	<table border="1" cellspacing="0">
<tr>
<th>NRO</th><th>id_tipo_producto</th><th>descripcion</th><th>nombre</th>
</tr>
	{assign var="b" value="1"}
	{foreach item=r from=$productos_tipos1}
<tr>
	<td align="center">{$b}</td>
	<td>{$r.id_tipo_producto}</td>
	<td>{$r.descripcion}</td>
	<td>{if $r.nombre=='gaseosa'}gaseosa{else}bebida alcoholica{/if}</td>
	{assign var="b" value="`$b+1`"}
	{/foreach}
</tr>
	</table>
<br><br>
<b>Fecha:</b> {$fecha}
</center>
</body>
</html>
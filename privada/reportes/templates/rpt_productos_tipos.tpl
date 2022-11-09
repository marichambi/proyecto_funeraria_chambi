<!DOCTYPE html>
<html lang="esp">
	<head>
		<link rel="stylesheet" href="../{$direc_css}" type="text/css">
		<meta charset="utf-8">
		{literal}
			<script type="text/javascript">
				function validar() {
					nombre   = document.formu.nombre .value;
					if (document.formu.nombre .value == "") {
						alert("Por favor seleccione el nombre ");
						document.formu.nombre .focus();
						return;
					}
					ventanaCalendario = window.open ("rpt_productos_tipos1.php?descripcion=" + nombre , "calendario", "width-600, height=550,left=100, top=100, scrollbars=yes, menubars=no, statusbar=NO, status =NO, resizable=YES, location=NO")
					}		
			</script>
			{/literal}
	</head>
	<body>
		<div class="formu_ingreso_datos">
			<h2>rpt_productos_tipos</h2>
			<form method="post" name="formu">
				<p>
					<b>*Seleccione nombre</b>
					<select name="nombre">
						<option value="">--Seleccione--</option>
						<option value="T">Todos</option>
						<option value="gaseosa">GASEOSA</option>
						<option value="bebida alcoholica ">BEBIDA ALCOHOLICA</option>
					</select>
				</p>
				<center><p>
					<input type="hidden" name="accion" value="">
					<input type="button" value="Aceptar" onclick="validar();" class="boton2">
				</p></center>
			</form>
		</div>
</body>
</html>
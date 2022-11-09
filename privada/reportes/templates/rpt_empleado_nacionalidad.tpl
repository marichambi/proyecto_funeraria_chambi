<!DOCTYPE html>
<html lang="esp">
	<head>
		<link rel="stylesheet" href="../{$direc_css}" type="text/css">
		<meta charset="utf-8">
		{literal}
			<script type="text/javascript">
				function validar() {
					nacionalidad  = document.formu.nacionalidad.value;
					if (document.formu.nacionalidad.value == "") {
						alert("Por favor seleccione el nacionalidad");
						document.formu.nacionalidad.focus();
						return;
					}
					ventanaCalendario = window.open ("rpt_empleado_nacionalidad1.php?nacionalidad=" + nacionalidad, "calendario", "width-600, height=550,left=100, top=100, scrollbars=yes, menubars=no, statusbar=NO, status =NO, resizable=YES, location=NO")
					}		
			</script>
			{/literal}
	</head>
	<body>
		<div class="formu_ingreso_datos">
			<h2> RPT EMPLEADO NACIONALIDAD</h2>
			<form method="post" name="formu">
				<p>
					<b>*Seleccione Nacionalidad</b>
					<select name="nacionalidad">
						<option value="">--Seleccione--</option>
						<option value="T">Todos</option>
						<option value="boliviana">Boliviana</option>
						<option value="extranjera">Extranjera</option>
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
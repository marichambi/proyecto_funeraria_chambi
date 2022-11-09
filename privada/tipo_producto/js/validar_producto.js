"use strict"

function validar(){
	var nombre 	= document.formu.nombre.value;
	var apellido		= document.formu.apellido.value;
  var ci      = document.formu.ci.value;
	var telefono	= document.formu.telefono.value;
  var direccion = document.formu.direccion.value;


        if ((!v1.test(nombre)) || (nombre == "")) {
            alert("Los nombre son incorrectos o el campo esta vacio");
            document.formu.nombre.focus();
            return;
        }
         if ((!v1.test(apellido)) || (apellido == "")) {
            alert("El apellido son incorrectos o el campo esta vacio");
            document.formu.apellido.focus();
            return;
        }

           if (ci == ""){
          alert("Por favor ingrese el numero de ci");
          document.formu.ci.focus();
          return;
         }
          if (telefono == ""){
          alert("Por favor ingrese el telefono");
          document.formu.telefono.focus();
          return;
         }

          if (direccion == ""){
          alert("Por favor ingrese la direccion");
          document.formu.direccion.focus();
          return;
         }

        

         document.formu.submit();
}

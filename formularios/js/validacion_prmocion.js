"use strict"
function validar(){
var nombre = document.formu.nombre.value;
var descripcion = document.formu.descripcion.value;
/*console.log("Nombres:"+nombres);
console.log("Ap:"+ap);
console.log("Am:"+am);
console.log("Ci:"+ci);
console.log("Direccion:"+direccion);
console.log("Profesion:"+profesion);
console.log("Correo:"+correo);
}*/

/*Cuando se quiere validar como dato correcto(letras con espacios en blaco) y que sea dato obligatoria*/
if ((!v1.test(nombre)) || (nombre == "")){
alert("El nombre es incorrecto o el campo esta vacio");
document.formu.nombre.focus();
return;
}

/*Cuando se quiere validar como dato obligatoria*/
if (descripcion == ""){
alert("La descripcion es incorrecta o el campo esta vacio");
document.formu.descripcion.focus();
return;
}


alert ("DATOS SON CORRECTO");
}

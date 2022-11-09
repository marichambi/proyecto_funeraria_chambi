"use strict"
function validar(){
var funcion = document.formu.funcion.value;
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
if ((!v1.test(funcion)) || (funcion == "")){
alert("La funcion es incorrecto o el campo esta vacio");
document.formu.funcion.focus();
return;
}
if ((!v1.test(descripcion)) || (descripcion == "")){
alert("La descripcion es incorrecto o el campo esta vacio");
document.formu.descripcion.focus();
return;
}


alert ("DATOS SON CORRECTO");
}

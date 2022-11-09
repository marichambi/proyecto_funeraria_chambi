"use strict"
function validar(){
var servicio = document.formu.servicio.value;
var cantidad = document.formu.cantidad.value;
var monto = document.formu.monto.value;
/*console.log("Nombres:"+nombres);
console.log("Ap:"+ap);
console.log("Am:"+am);
console.log("Ci:"+ci);
console.log("Direccion:"+direccion);
console.log("Profesion:"+profesion);
console.log("Correo:"+correo);
}*/

/*Cuando se quiere validar como dato correcto(letras con espacios en blaco) y que sea dato obligatoria*/
if ((!v1.test(servicio)) || (servicio == "")){
alert("El servicio es incorrecto o el campo esta vacio");
document.formu.servicio.focus();
return;
}

/*Cuando se quiere validar como dato correcto(numeros enteros positivos) y que sea dato obligatoria*/
if ((!v3.test(cantidad)) || (cantidad == "")){
alert("La cantidad es incorrecto o el campo esta vacio");
document.formu.cantidad.focus();
return;
}

/*Cuando se quiere validar como dato correcto(numeros enteros positivos) y que sea dato obligatoria*/
if ((!v3.test(monto)) || (monto == "")){
alert("El monto es incorrecto o el campo esta vacio");
document.formu.monto.focus();
return;
}


alert ("DATOS SON CORRECTO");
}

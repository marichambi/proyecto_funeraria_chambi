"use strict"
function validar(){
var balniario = document.formu.balniario.value;
var nombre = document.formu.nombre.value;
var telefono = document.formu.telefono.value;
var direccion = document.formu.direccion.value;
/*console.log("Nombres:"+nombres);
console.log("Ap:"+ap);
console.log("Am:"+am);
console.log("Ci:"+ci);
console.log("Direccion:"+direccion);
console.log("Profesion:"+profesion);
console.log("Correo:"+correo);
}*/
if ((!v1.test(balniario)) || (balniario == "")){
alert("Los nombres de la balniario son incorrecos o el campo esta vacio");
document.formu.balniario.focus();
return;
}
/*Cuando se quiere validar como dato correcto(letras con espacios en blaco) y que sea dato obligatoria*/
if ((!v1.test(nombre)) || (nombre == "")){
alert("El nombre es incorrecto o el campo esta vacio");
document.formu.nombre.focus();
return;
}

/*Cuando se quiere validar como dato correcto(numeros enteros positivos) y que sea dato obligatoria*/
if ((!v2.test(telefono)) || (telefono == "")){
alert("El telefono es incorrecto o el campo esta vacio");
document.formu.telefono.focus();
return;
}

/*Cuando se quiere validar como dato obligatoria*/
if (direccion == ""){
alert("La direccion es incorrecta o el campo esta vacio");
document.formu.direccion.focus();
return;
}


alert ("DATOS SON CORRECTO");
}

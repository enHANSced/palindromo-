/*
Crearás una función en Dart que verificará si una cadena dada es un palíndromo o no. Un palíndromo es una palabra, 
frase o secuencia que se lee igual de izquierda a derecha que de derecha a izquierda.

Notas adicionales:
Asegúrate de considerar casos especiales, como mayúsculas y minúsculas, así como espacios y puntuación, al determinar 
si una cadena es un palíndromo.
Puedes ajustar la función esPalindromo() para manejar otros casos especiales si lo deseas.

*/

import 'dart:io';

void main() {
 String palabra = '';

 //pedir una palabra al usuario
 print('Ingresa una palabra: ');
 palabra = stdin.readLineSync()!;

 //verificar si la palabra es palindromo
 if (esPalindromo(palabra)) {
   print('$palabra es un palindromo');
 } else {
   print('$palabra no es un palindromo');
 }
}

bool esPalindromo(String palabra) {
 // Convertir la cadena a minúsculas para manejar mayúsculas y minúsculas
 palabra = palabra.toLowerCase();

 // Apuntar a los caracteres que no sean letras o números y reemplazarlos por una cadena vacía
 palabra = palabra.replaceAll(RegExp(r'\W'), '');

 // dividir la cadena en una lista de caracteres individuales. 
 // invertir el orden de los elementos en la lista. 
 // unir los caracteres de la lista en una cadena.
 String palabraInvertida = palabra.split('').reversed.join('');

 // Verificar si la cadena original es igual a la invertida
 return palabra == palabraInvertida;
}

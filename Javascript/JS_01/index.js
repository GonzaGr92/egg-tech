// 1 -  Declarando una variable
var saludo = "Hola mundo";
console.log(saludo);

// 2 - Comprobando el tipado dinamico
saludo = 2;
console.log(saludo);

// 3 - Declarando variables con const y let
const PI = 3.14;
let some = "variable";

// 4 - Creando un objeto de javascript
let animal = {
    especie: 'Mamifero',
    sexo: 'Hembra',
    edad: '5 vueltas a la tierra',
    altura: 1.20,
    peso: 10,
    alimentacion: ['asado', 'ensalada', 'otros'],
    getPeso: function() {
        return 'No se';
    }
};

// 5 - Agregando propiedades adicionales al objeto
animal.nombre = 'Lorem';
animal['color'] = 'Marron';

// 6 - Creando una lista
let frutas = ['pera', 'manzana', 'banana', 'mango'];

// 7 - Creando una lista mixta
let puntaje = ['Juan', 2, 'Facundo', 3, 'German', 6];

// 8 - Creando una lista de objetos
let zoologico = [
    {
        especie: 'Mamifero',
        sexo: 'Hembra',
        edad: '5 vueltas a la tierra',
        altura: 1.20,
        peso: 10,
        alimentacion: ['asado', 'ensalada', 'otros'] 
    },
    {
        especie: 'Oviparo',
        sexo: 'Macho',
        edad: '2 vueltas a la tierra',
        altura: 1.00,
        peso: 15,
        alimentacion: ['lechuga', 'pasto', 'palta'] 
    }
];

// 9 - Creando las filas de una tabla para mostrar 8 en el html
let html = '';
for (const animal of zoologico) {
    html += '<tr>';
    html += `<td>${animal.especie}</td>`;
    html += `<td>${animal.sexo}</td>`;
    html += `<td>${animal.edad}</td>`;
    html += `<td>${animal.altura}</td>`;
    html += `<td>${animal.peso}</td>`;
    html += '</tr>';
}

// 10 - Insertando el codigo generado en el html
document.getElementById('inserteAqui').innerHTML = html;

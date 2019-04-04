/**
 * Copyright 2010 Google Inc.
 * Licensed under the Apache License, Version 2.0
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Google's Python Class
 * http://code.google.com/edu/languages/google-python-class/
 */
package wordcount;

import java.util.Scanner;

/**
 * Wordcount exercise.
 *
 * El metodo main() ya fue configurado para llamar a los metodos print_words() y
 * print_top() en funcion de lo que se ingrese por consola.
 *
 * 1. Para la opcion --count, se ejecuta el metodo print_words(filename). Funcion que 
 * cuenta cuantas repeticiones ocurren para cada palabra: 
 * palabra1 cantidad1 palabra2 cantidad2 ...
 *
 * Imprime la lista anterior ordenada alfabeticamente. Guarda cada palabra en minuscula, 
 * de este modo 'The' y 'the' deben contar como la misma palabra.
 *
 * 2. Para la opcion --topcount, se ejecuta el metodo print_top(filename) el cual es similar
 * a print_words() pero imprime solo las primeras 20 palabras mas frecuentes en orden
 * de mayor ocurrencia a menor.
 *
 * Consulte como leer un archivo de texto en el siguiente enlace
 * http://chuwiki.chuidiang.org/index.php?title=Lectura_y_Escritura_de_Ficheros_en_Java
 *
 * Flujo de trabajo: No construyas todo el programa a la primera. Desarrolla etapas intermedias
 * por logros y ve imprimiendo los datos progresivamente. Cuando lo hayas validado,
 * continua desarrollando la siguiente etapa.
 *
 * Opcional: crea una funcion de ayuda para evitar duplicar codigo en
 * print_words() y print_top().
 *
 * @author Gonzalo Grassi
 */

public class Wordcount {

    /**
     * +++your code here+++ .
     * 
     * Define las funciones print_words(filename) y print_top(filename)
     * Prodrias crear una funcion de ayuda para leer el archivo y retornar 
     * un hash ya construido con la lista de palabra/contador. Despues print_words() y
     * print_top() podrian llamar a esta funcion.
     *
     *
     * Las opciones --count o --topcount llamara las funciones
     * print_words() o print_top() que definaas.
    
    /**
     * @param filename
     */
    public static void print_words(String filename){
        
    }
    
    /**
     * @param filename
     */
    public static void print_top(String filename){
        
    }
    
    public static void main(String[] args) {
        
        Scanner scan = new Scanner(System.in);
        
        System.out.println("Selecciona una opcion {--count | --topcount}");
        String option = scan.nextLine();
        
        System.out.println("Ingrese la ruta del archivo");
        String filename = scan.nextLine();
        
        if (option.isEmpty() || filename.isEmpty()){
            System.out.println("usage: {--count | --topcount} file"); 
            System.exit(1);
        }
                       
        switch (option) {
            case "--count":
                print_words(filename);
                break;
            case "--topcount":
                print_top(filename);
                break;
            default:
                System.out.println("unknown option: " + option);
                System.exit(1);
        }
          
    }
}

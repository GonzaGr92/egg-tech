/**
 * Copyright 2010 Google Inc.
 * Licensed under the Apache License, Version 2.0
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Google's Python Class
 * http://code.google.com/edu/languages/google-python-class/
 */

package mimic;

import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

/**
 * Mimic pyquick.
 * 
 * Lea el archivo especificado en la línea de comando.
 * Haga un simple split() sobre el espacio en blanco para obtener todas las palabras en el archivo.
 * 
 * Cree un diccionario "mímico" que asigne cada palabra que aparece en el archivo
 * a una lista de todas las palabras que siguen inmediatamente a esa palabra en el archivo.
 * La lista de palabras puede estar en cualquier orden y debe incluir
 * duplicados Así, por ejemplo, la clave "y" podría tener la lista
 * ["así", "mejor", "entonces", "despues", ...] listado
 * todas las palabras que vinieron después de "y" en el texto.
 * 
 * Con el diccionario mímico, es bastante fácil crear texto al azar
 * que imite el original. Imprima una palabra, luego mire
 * que palabras podrían venir después y elija una al azar para
 * el siguiente trabajo.
 * Utilice la cadena vacía como la primera palabra para empezar.
 * Si alguna vez nos quedamos atrapados con una palabra que no está en el diccionario,
 * volver a la cadena vacía para mantener la dinamica en movimiento.
 *
 * Nota: Puede utilizar un método random que elija un elemento aleatorio.
 * de una lista no vacía.
 * 
 * Para mas diversión, alimente su programa a sí mismo como entrada.
 *
 * @author Gonzalo Grassi
 */
public class Mimic {


    public static Map mimic_dict(String filename){
        //"""Returns mimic dict mapping each word to list of words which follow it."""
        //# +++your code here+++
        return new HashMap();
    }


    public static void print_mimic(Map mimic_dict, String word) {
        //"""Given mimic dict and start word, prints 200 random words."""
        //# +++your code here+++   
    }

    //Provided main(), calls mimic_dict() and mimic()
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        System.out.println("Ingrese la ruta del archivo");
        String filename = scan.nextLine();
        
        if (filename.isEmpty()){
            System.out.println("usage: ./mimic.py"); 
            System.exit(1);
        }

        Map dict = mimic_dict(filename);
        print_mimic(dict, "");
    }
    
    
    
}

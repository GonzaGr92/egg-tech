/**
# Copyright 2010 Google Inc.
# Licensed under the Apache License, Version 2.0
# http://www.apache.org/licenses/LICENSE-2.0

# Google's Python Class
# http://code.google.com/edu/languages/google-python-class/
*/
package hello;

import java.util.Scanner;

/**
 * Un pequeño programa de java para checkear que Java esta funcionando.
 * Prueba ejecutar este programa y luego ingresando un nombre.
 * Deberia mostrarte:
 *  Hello <nombre> -o- Hello World -> En el caso de que no ingreses ningun nombre.
 * Prueba con cambiar el 'Hello' por 'Howdy' y ejecuta nuevamente.
 * 
 * @author Gonzalo Grassi
*/

public class Hello {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("Ingrese su nombre: ");
        String input = scanner.nextLine();
        
        String name;
        if (input.length() > 0){
          name = input;
        } else {
          name = "World";
        }
        
        System.out.println("Hello " + name);
    }  
}

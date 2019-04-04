/**
 * Copyright 2010 Google Inc.
 * Licensed under the Apache License, Version 2.0
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Google's Python Class
 * http://code.google.com/edu/languages/google-python-class/
 */

package strings;

/**
 * Ejercicios basicos de String.
 * 
 * Completa el codigo para las funciones a continuación. 
 * El metodo main() ya fue configurado para 
 * ejecutar las funciones con diferentes parametros de entrada,
 * repondiendo 'OK' cuando cada ejecucion de la funcion fue correcta.
 * El codigo inicial para cada funcion incluye un 'return'
 * el cual es solo un placeholder para tu funcion.
 * Hay disponible una extension en String2.java
 * 
 * @author Gonzalo Grassi
*/

public class String1 {
    
    /** A. donuts
     * 
     * @param count
     * @return String
     * 
     * Dado un int count con la cantidad de donuts, retorna un String
     * con el formato 'Number of donuts: <count>', donde <count> es el numero
     * enviado como parametro. Sin embargo, si <count> es 10 o mas, usa la palabra 'many'
     * en lugar del valor de count.
     * Por ejemplo: 
     * donuts(5) retorna 'Number of donuts: 5'
     * donuts(23) retorna 'Number of donuts: many'
     * 
    */
    
    public static String donuts(int count){
        // +++your code here+++
        return "";
    }

    /**
     * B. both_ends
     * 
     * @param s
     * @return String
     * 
     * Dado un String s, retorna un String contruido con los 2 primeros
     * y los ultimos 2 caracteres del String original,
     * Por ejemplo: 
     * 'spring' cambia por 'spng'. 
     * Sin embargo, si el tamaño del String 
     * es menor que 2, retorna una cadena vacia ("").
    */
    public static String both_ends(String s){
        //+++your code here+++
        return "";
    }
        

    /**
     * C. fix_start
     * 
     * @param s
     * @return String
     * 
     * Dado un String s, retorna un String
     * donde todas las coincidencias del primer caracter tienen que
     * ser cambiados por '*', excepto el mismo primer caracter.
     * Por ejemplo: 
     * 'babble' cambia por 'ba**le'
     * Asume que tamaño del String es siempre mayor o igual a 1.
    */
            
    public static String fix_start(String s){
        // +++your code here+++
        return "";
    }
      

    /** 
     * D. MixUp
     * 
     * @param a
     * @param b
     * @return String
     * 
     * Dado los Strings a y b, retorna un solo String con a y b separados
     * por un espacio '<a> <b>', y con los 2 primeros caracteres de cada String cambiados.
     * Por ejemplo: 
     *   'mix', pod' -> 'pox mid'
     *   'dog', 'dinner' -> 'dig donner'
     * Asume que el tamaño de a y b siempre es mayor o igual a 2.
    */
    
    public static String mix_up(String a, String b){
      // +++your code here+++
      return "";  
    }
      
    /**
     * Provided main() calls the above functions with interesting inputs,
     * using test() to check if each result is correct or not.
    */
    public static void main(String[] args) {
        //Each line calls methods, compares its result to the expected for that call.
        
        System.out.println("donuts");
        
        test(donuts(4), "Number of donuts: 4");
        test(donuts(9), "Number of donuts: 9");
        test(donuts(10), "Number of donuts: many");
        test(donuts(99), "Number of donuts: many");

        System.out.println("both_ends");
        
        test(both_ends("spring"), "spng");
        test(both_ends("Hello"), "Helo");
        test(both_ends("a"), "");
        test(both_ends("xyz"), "xyyz");

        System.out.println( "fix_start");
        
        test(fix_start("babble"), "ba**le");
        test(fix_start("aardvark"), "a*rdv*rk");
        test(fix_start("google"), "goo*le");
        test(fix_start("donut"), "donut");

        System.out.println("mix_up");
        test(mix_up("mix", "pod"), "pox mid");
        test(mix_up("dog", "dinner"), "dig donner");
        test(mix_up("gnash", "sport"), "spash gnort");
        test(mix_up("pezzy", "firm"), "fizzy perm");
    }
    
    /**
     * Provided simple test() function used in main() to print
     * what each function returns vs. what it's supposed to return.
    */
    public static void test(String got, String expected){
        String prefix;
        if (got.equals(expected)){
          prefix = " OK ";
        } else {
          prefix = "  X ";
        }
      
        System.out.println(prefix + " got: " + got + " expected: " + expected);
    }
}

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
 * Ejercicios adiciones.
 *
 * Completa el codigo para las funciones a continuación. 
 * El metodo main() ya fue configurado para 
 * ejecutar las funciones con diferentes parametros de entrada,
 * repondiendo 'OK' cuando cada ejecucion de la funcion fue correcta.
 * El codigo inicial para cada funcion incluye un 'return'
 * el cual es solo un placeholder para tu funcion.
 * 
 * @author Gonzalo Grassi
 */

public class String2 {

    /**
     * D. verbing 
     * 
     * @param s
     * @return String
     * 
     * Dado un String, si el tamaño es al menos 3, añade 'ing' al final.
     * Al menos que ya termine en 'ing', en cuyo caso añade 'ly' al final. 
     * Si el tamaño del String menor a 3, no apliques cambios.
     * Retorna el String resultante en cada caso.
     */
    public static String verbing(String s) {
        // +++your code here+++
        return "";
    }

    /**
     * E. not_bad 
     * 
     * @param s
     * @return String
     * 
     * Dado un String, encuentra la primer coincidencia de
     * 'not' y 'bad'. Si 'bad' esta despues de 'not', remplaza el substring completo
     * 'not'...'bad' con 'good'. 
     * Por ejemplo:
     * 'This dinner is not that bad!' cambia por: 'This dinner is good!'
     * Retorna el String resultante.
     */
    public static String not_bad(String s) {
        // +++your code here+++
        return "";
    }

    /**
     * F. front_back 
     * 
     * @param a
     * @param b
     * @return String
     * 
     * Considera la divsion a la mitad un String.
     * Si el largo es par significa que las dos mitades resultantes (front y back) son iguales,
     * en cambio si el largo es impar el caracter extra debe ir en el front.
     * Por ejemplo: 'abcde',
     * El front es 'abc', y el back 'de'. 
     * 
     * Dado 2 Strings, a y b,
     * retorna un String con el siguente formato 
     * a-front + b-front + a-back + b-back
     */
    public static String front_back(String a, String b) {
        // +++your code here+++
        return "";
    }

    /**
     * Provided main() calls the above functions with interesting inputs, using
     * test() to check if each result is correct or not.
     */
    public static void main(String[] args) {
        System.out.println("verbing");
        test(verbing("hail"), "hailing");
        test(verbing("swiming"), "swimingly");
        test(verbing("do"), "do");

        System.out.println("not_bad");
        test(not_bad("This movie is not so bad"), "This movie is good");
        test(not_bad("This dinner is not that bad!"), "This dinner is good!");
        test(not_bad("This tea is not hot"), "This tea is not hot");
        test(not_bad("It's bad yet not"), "It's bad yet not");

        System.out.println("front_back");
        test(front_back("abcd", "xy"), "abxcdy");
        test(front_back("abcde", "xyz"), "abcxydez");
        test(front_back("Kitten", "Donut"), "KitDontenut");
    }

    /**
     * Provided simple test() function used in main() to print what each
     * function returns vs what it's supposed to return.
     */
    public static void test(String got, String expected) {
        String prefix;
        if (got.equals(expected)) {
            prefix = " OK ";
        } else {
            prefix = "  X ";
        }

        System.out.println(prefix + " got: " + got + " expected: " + expected);
    }
}

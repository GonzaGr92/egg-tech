/**
 * Copyright 2010 Google Inc.
 * Licensed under the Apache License, Version 2.0
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Google's Python Class
 * http://code.google.com/edu/languages/google-python-class/
 */
package lists;

/**
 * Ejericios basicos de listas. 
 * 
 * Completa el codigo para las funciones a continuación. 
 * El metodo main() ya fue configurado para 
 * ejecutar las funciones con diferentes parametros de entrada,
 * repondiendo 'OK' cuando cada ejecucion de la funcion fue correcta.
 * El codigo inicial para cada funcion incluye un 'return'
 * el cual es solo un placeholder para tu funcion.
 * Hay disponible una extension en List2.java
 * 
 *
 * @author Gonzalo Grassi
 */
public class List1 {

    /**
     * A. match_ends 
     * 
     * @param list
     * @return int
     * 
     * Dada una lista de palabras, retorne la cantidad de palabras en las cuales 
     * su tamaño sea al menos y el primer y ultimo caracter sean iguales 
     * 
     */
    public static int match_ends(String[] list) {
        return 0;
    }

    /**
     * B. front_x 
     * 
     * @param list
     * @return String[]
     * 
     * Dada una lista de palabras, retorna una lista con las palabras
     * ordenadas, pero ordenando al principio las palabras que comiencen con 'x'.
     * Por ejemplo:
     * ['mix', 'xyz', 'apple', 'xanadu', 'aardvark'] resulta en ['xanadu', 'xyz', 'aardvark', 'apple', 'mix'] 
     * 
     * Consejo: Puede ser resulto creando 2 listas y ordenando cada una antes de combinarlas.
     */
    public static String[] front_x(String[] list) {
        String[] array = new String[list.length];
        return array;
    }

    /**
     * C. sort_last 
     * 
     * @param tuple
     * @return int[][]
     * 
     * Dada una matriz de enteros de (n x 2), retorne una lista ordenada
     * en forma ascendiente por el ultimo elemento de cada fila. 
     * Por Ejemplo:
     * [(1, 7), (1, 3),(4, 5), (2, 2)] resulta en [(2, 2), (1, 3), (4, 5), (1, 7)] 
     * 
     */
    public static int[][] sort_last(int[][] tuple) {
        int[][] matriz = new int[tuple.length][tuple[0].length];
        return matriz;
    }

    /**
     * Provided main() calls the above functions with interesting inputs,
     * using Util.test() to check if each result is correct or not.
    */
    public static void main(String[] args) {
       
        System.out.println("match_ends");
        Util.test(match_ends(new String[]{"aba", "xyz", "aa", "x", "bbb"}), 3);
        Util.test(match_ends(new String[]{"", "x", "xy", "xyx", "xx"}), 2);
        Util.test(match_ends(new String[]{"aaa", "be", "abc", "hello"}), 1);
        
        System.out.println("front_x");
        Util.test(front_x(new String[]{"bbb", "ccc", "axx", "xzz", "xaa"}), new String[]{"xaa", "xzz", "axx", "bbb", "ccc"});
        Util.test(front_x(new String[]{"ccc", "bbb", "aaa", "xcc", "xaa"}), new String[]{"xaa", "xcc", "aaa", "bbb", "ccc"}); 
        Util.test(front_x(new String[]{"mix", "xyz", "apple", "xanadu", "aardvark"}), new String[]{"xanadu", "xyz", "aardvark", "apple", "mix"});
        
        System.out.println("sort_last");
        Util.test(sort_last(new int[][]{{1, 3}, {3, 2}, {2, 1}}), new int[][]{{2, 1}, {3, 2}, {1, 3}});
        Util.test(sort_last(new int[][]{{2, 3}, {1, 2}, {3, 1}}), new int[][]{{3, 1}, {1, 2}, {2, 3}}); 
        Util.test(sort_last(new int[][]{{1, 7}, {1, 3}, {4, 5}, {2, 2}}), new int[][]{{2, 2}, {1, 3}, {4, 5}, {1, 7}});
        
    }
}

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
 * Additional basic list exercises
 *
 * @author Gonzalo Grassi
 */
public class List2 {

    /**
     * D. remove_adjacent
     * 
     * @param nums
     * @return int[]
     * 
     * Dada una lista de numeros, retorne una lista que filtre los valores repetidos
     * Por ejemplo:
     * [1, 2, 2, 3] resulta [1, 2, 3].
     */
    public static int[] remove_adjacent(int[] nums) {
        // +++your code here+++
        int[] array = new int[nums.length];
        return array;
    }

    /**
     * E. linear_merge
     * 
     * @param list1
     * @param list2
     * @return String[]
     * 
     * Dada dos listas de palabras ordenadas de manera incremental, 
     * crea y retorna una nueva lista con las palabras de ambas ordenadas de 
     * forma incremental. 
     */
    public static String[] linear_merge(String[] list1, String[] list2) {
        // +++your code here+++
        String[] array = new String[list1.length];
        return array;
    }
    
    /**
     * Provided main() calls the above functions with interesting inputs,
     * using Util.test() to check if each result is correct or not.
    */
    public static void main(String[] args) {
        System.out.println("remove_adjacent");
        Util.test(remove_adjacent(new int[]{1, 2, 2, 3}), new int[]{1, 2, 3});
        Util.test(remove_adjacent(new int[]{2, 2, 3, 3, 3}), new int[]{2, 3});
        Util.test(remove_adjacent(new int[]{}), new int[]{});
 
        System.out.println("linear_merge");
        Util.test(linear_merge(new String[]{"aa", "xx", "zz"}, new String[]{"bb", "cc"}), new String[]{"aa", "bb", "cc", "xx", "zz"});
        Util.test(linear_merge(new String[]{"aa", "xx"}, new String[]{"bb", "cc", "zz"}), new String[]{"aa", "bb", "cc", "xx", "zz"});
        Util.test(linear_merge(new String[]{"aa", "aa"}, new String[]{"aa", "bb", "bb"}), new String[]{"aa", "aa", "aa", "bb", "bb"});
    }
}

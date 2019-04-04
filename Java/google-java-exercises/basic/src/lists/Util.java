/**
 * Copyright 2010 Google Inc.
 * Licensed under the Apache License, Version 2.0
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Google's Python Class
 * http://code.google.com/edu/languages/google-python-class/
 */

package lists;

import java.util.Arrays;

/**
 * Simple provided test() function used in main() to print what each
 * function returns vs what it's supposed to return.
 * 
 * @author Gonzalo Grassi
 */

public class Util {

    public static void test(int got, int expected) {
        String prefix;
        if (got == expected) {
            prefix = " OK ";
        } else {
            prefix = " X ";
        }

        System.out.println(prefix + " got: " + got + " expected: " + expected);
    }
    
    public static void test(String[] got, String[] expected) {
        String prefix;
        if (Arrays.equals(got, expected)) {
            prefix = " OK ";
        } else {
            prefix = " X ";
        }

        System.out.println(prefix + " got: " + print(got) + " expected: " + print(expected));
    }
    
    public static void test(int[] got, int[] expected) {
        String prefix;
        if (Arrays.equals(got, expected)) {
            prefix = " OK ";
        } else {
            prefix = " X ";
        }

        System.out.println(prefix + " got: " + print(got) + " expected: " + print(expected));
    }

    public static void test(int[][] got, int[][] expected) {
        String prefix;

        if (compareMatrix(got, expected)) {
            prefix = " OK ";
        } else {
            prefix = " X ";
        }

        System.out.println(prefix + " got: " + print(got) + " expected: " + print(expected));
    }
    
    public static void test(String[][] got, String[][] expected) {
        String prefix;

        if (compareMatrix(got, expected)) {
            prefix = " OK ";
        } else {
            prefix = " X ";
        }

        System.out.println(prefix + " got: " + print(got) + " expected: " + print(expected));
    }
    
    private static boolean compareMatrix(int[][] arr1, int[][] arr2) {
        if (arr1 == null) {
            return (arr2 == null);
        }

        if (arr2 == null) {
            return false;
        }

        if (arr1.length != arr2.length) {
            return false;
        }
        
        for (int i = 0; i < arr1.length; i++) {
            if (!Arrays.equals(arr1[i], arr2[i])) {
                return false;
            }
        }
        return true;
    }
    
    private static boolean compareMatrix(String[][] arr1, String[][] arr2) {
        if (arr1 == null) {
            return (arr2 == null);
        }

        if (arr2 == null) {
            return false;
        }

        if (arr1.length != arr2.length) {
            return false;
        }
        
        for (int i = 0; i < arr1.length; i++) {
            if (!Arrays.equals(arr1[i], arr2[i])) {
                return false;
            }
        }
        return true;
    }
    
    private static String print(int[] vector) {
        if (vector == null) {
            return null;
        } 
        
        String conversion []  = new String[vector.length];
        for (int i = 0; i < vector.length; i++) {
            conversion[i] = Integer.toString(vector[i]);
        }
        
        return print(conversion);  
    }
    
    private static String print(String[] vector) {
        if (vector == null) {
            return null;
        } 
        
        return ("[" + String.join(", ", vector) + "]");   
    }
    
    private static String print(int[][] matriz) {
        if(matriz == null){
            return null;
        }
        
        String conversion [][]  = new String[matriz.length][matriz[0].length];
        for (int i = 0; i < matriz.length; i++) {
            for (int j = 0; j < matriz[0].length; j++) {
                try {
                    conversion[i][j] = Integer.toString(matriz[i][j]);
                } catch (Exception e) {
                }
            }
        }
        return print(conversion);
    }
    
    private static String print(String[][] matriz) {
        if (matriz == null){
            return null;
        }
        
        String [] reduce = new String[matriz.length];
        for (int i = 0; i < matriz.length; i++) {
            reduce[i] =  "(" + String.join(",", matriz[i]) + ")";
        }
        return ("[" + String.join(", ", reduce) + "]");
    }
}

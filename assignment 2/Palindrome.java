/*
 * Write the Palindrome program inside the main method
 * according to the assignment description.
 * 
 * To compile:
 *        javac Palindrome.java
 * To execute:
 *        java Palindrome 5 4 6 6 4 5
 * 
 * DO NOT change the class name
 * DO NOT use System.exit()
 * DO NOT change add import statements
 * DO NOT add project statement
 * 
 */

public class Palindrome {
    public static void main(String[] args) {
        // WRITE YOUR CODE HERE

        int m1 = Integer.parseInt(args[0]);
        int m2 = Integer.parseInt(args[1]);
        int m3 = Integer.parseInt(args[2]);
        int m4 = Integer.parseInt(args[3]);
        int m5 = Integer.parseInt(args[4]);
        int m6 = Integer.parseInt(args[5]);

        System.out.println((m1 == m6)&&(m2 == m5)&&(m3 == m4));
    }
}

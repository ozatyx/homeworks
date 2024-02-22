/*
 *
 * Write the Buses program inside the main method
 * according to the assignment description.
 * 
 * To compile:
 *        javac Buses.java
 * To execute:
 *        java Buses 7302
 * 
 * DO NOT change the class name
 * DO NOT use System.exit()
 * DO NOT change add import statements
 * DO NOT add project statement
 * 
 */

/*    You might have noticed that each Rutgers campus bus has its own four-digit number. Suppose that the sum:
        of an LX buses’ digits are always even.
        of an H buses’ digits are always odd.

    Write the program to read an integer input and display LX or H depending on which bus route it belongs to. The program displays ERROR if the input is negative and ends the program (does not ask for the input again).
    Note: You can use modulus to extract the last digit of a number.
    Assume: the input value used to test your program is a 4-digit integer.

    java Buses 7302
    LX

    java Buses 6432
    H

    java Buses -1432
    ERROR

 */

public class Buses {
    public static void main(String[] args) {
        int num = Integer.parseInt(args[0]);
        int tot = 0;

        if (num < 0){
            
            System.out.println("ERROR");


        } else{

            for(int i = 0; i<4; i++){

                tot = num%10 + tot;
                num = num/10;

            }

            if (tot%2 == 0){

                System.out.println("LX");

            } else{

                System.out.println("H");
            }

        }

        

        
        // WRITE YOUR CODE HERE
    }
}

/*
 *  
 * Write the DogWalker program inside the main method
 * according to the assignment description.
 * 
 * To compile:
 *        javac DogWalker.java
 * To execute:
 *        java DogWalker 5
 * 
 * DO NOT change the class name
 * DO NOT use System.exit()
 * DO NOT change add import statements
 * DO NOT add project statement
 * 
 *
 */

 /*     This program will simulate the behavior of a dog walker, and your dog, moving randomly in the city.

        Imagine that the city is a two-dimensional grid of points.
        At each step, the walker randomly moves north, south, east, or west with probability equal to 1/4, independent of previous moves.
            Use Math.random() to generate a random number between 0.0 and 1.0

    Write a program DogWalker.java that takes an integer command-line argument n and simulates the motion of a walker randomly taking n steps.

        Print the location at each step (including the starting point), treating the starting point as the origin (0, 0).
        Also, print the square of the final squared Euclidean distance from the origin as double. The euclidean distance lets us you how far from the starting point (home) your dog is after n steps.

    Note 1: you do not need arrays for this problem, just keep track of the x and y coordinates during the random walk.
    Note 2: in the example below the walker takes 20 steps; there are 21 printed locations. The first location is the starting point (0,0). */
    
public class DogWalker {

    /**
     * @param args
     */
    public static void main(String[] args) {

       // WRITE YOUR CODE HERE
       int steps = Integer.parseInt(args[0]);
       int x = 0;
       int y = 0;
       int dir;
       System.out.println("("+x+","+y+")");

       for(int i = 0; i<steps; i++){

        

        dir = prob();


        //north == 0, east == 1, south == 2, west == 3

        switch (dir){
            case 0:
            y++;
            break;
            case 1:
            x++;
            break;
            case 2:
            y--;
            break;
            case 3:
            x--;
            break;
        }

        System.out.println("("+x+","+y+")");

       }
       double sqD = Math.pow(x, 2) + Math.pow(y, 2);
       System.out.println("Squared distance = " + sqD);

			   
    }

    public static int prob(){

        int prb = (int)(Math.random()*100)/25;
        if (prb <= 1){
            prb = 0;
        } else if (prb <= 2){
            prb = 1;
        } else if (prb <= 3){
            prb = 2;
        } else {
            prb = 3;
        }
        
        return prb;


    }
}

import java.util.Arrays;

public class StaircaseBuilder {
    public static void main(String[] args){

        
        int width = Integer.parseInt(args[0]);
        int bricks = Integer.parseInt(args[1]);
        char[][] stair = new char[width][width];
        int curHeight = width-1;

        for(int col = 0; col <= width-1; col++){
            for(int row = width-1; row >= 0; row--){
                    if((row >= curHeight)&&(bricks>0)){
                        stair[row][col] = "X".charAt(0);
                        bricks--;
                    }else{
                        stair[row][col] = " ".charAt(0);
                        
                    }
            }
            curHeight--;
        }

        for(int row = 0; row <= width -1; row++){

            for(int col = 0; col <= width-1; col++){

                System.out.print(stair[row][col]);
            }

            System.out.println("");
        }

        System.out.println("Bricks remaining: " + bricks);

        }
        

    }

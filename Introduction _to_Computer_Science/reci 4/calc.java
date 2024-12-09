public class calc {
    public static void main(String args[]){
        StdOut.println("enter n:");
        int x = StdIn.readInt();
        double rad = 0.5;
        for(int i = 0; i<=x; i++){
            if(i%2 == 0){
                StdDraw.setPenColor(StdDraw.GRAY);
            } else{
                StdDraw.setPenColor(StdDraw.BLACK);
            }

            StdDraw.circle(0.2,0.2,rad);
            rad = rad/2;



        }

        
    }

}
public class AirParticles {
    public static double findHighestLevel(double[] communities){

        int rows = communities.length;
        double max = 0;
        for(int i = 1; i < rows; i++){
            max = communities[i];
            if (max < communities[i-1]){
                max = communities[i];
            }

        }

        return max;
    }
        
}

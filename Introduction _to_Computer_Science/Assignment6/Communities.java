public class Communities {
    
    /*
     * Variables that hold the column index for a specific data point 
     * in the data contained in the double[][]
     * 
     * The final keyword implies that the variable cannot be changed.
     * The static keyword implies that class-level scope. We'll learn 
     * non static later in the course.
     * 
     * These variable can be used ANYWHERE in this file.
     */ 

    // Racial Demographics
    static final int RD_BLACK              = 0;
    static final int RD_NATIVE_AMERICAN    = 1;
    static final int RD_ASIAN              = 2;
    static final int RD_NATIVE_HAWAIAN     = 3;
    static final int RD_TWO_OR_MORE        = 4;
    static final int RD_WHITE              = 5;
    static final int RD_HISP_OR_LATINO     = 6;
    static final int RD_OTHER              = 7;

    // Age
    static final int AGE_UNDER_10      = 8;
    static final int AGE_10_TO_64      = 9;
    static final int AGE_OVER_64       = 10;

    static final int TOTAL_POPULATION  = 11;

    // health
    static final int HLT_FLOOD_RISK    = 12;
    static final int HLT_FIRE_RIST     = 13;
    static final int HLT_PM2_5         = 14;
    static final int HLT_ASTHMA        = 15;
    static final int HLT_DIABETES      = 16;
    static final int HLT_HEART_DISEASE = 17;
    static final int HLT_LIFE_EXPECT   = 18;

    // economics
    static final int ECON_UNEMPLOYEMENT = 19;
    static final int ECON_LOW_INCOME    = 20;
    static final int ECON_DISADVANTAGED = 21;

    /*
     * ******* DO NOT EDIT ********
     * 
     * Reads a file and stores the data into a 2D array
     * of doubles in the same order that the data appear in
     * the file.
     * 
     * See the file format in the assignment description.
     * 
     * @return the data array containing the file's information.
     */
    public static double[][] readDataFromFile (String dataFile) {

        StdIn.setFile(dataFile);                        // opens the file to read
        String[] line = StdIn.readLine().split(","); 
        int nbrCommunities = Integer.parseInt(line[0]);
        
        // create the array to hold the data
        double[][] cData = new double[nbrCommunities][22];

        for ( int c = 0; c < nbrCommunities; c++ ) {

            // Each line contains the data for ONE community.
            // Reads one line, extracting each comma separated field.
            String[] oneCommunity = StdIn.readLine().split(","); 

            // Store the data into the array
            // racial demographics
            cData[c][RD_BLACK]           = Double.parseDouble(oneCommunity[RD_BLACK]);
            cData[c][RD_NATIVE_AMERICAN] = Double.parseDouble(oneCommunity[RD_NATIVE_AMERICAN]);
            cData[c][RD_ASIAN]           = Double.parseDouble(oneCommunity[RD_ASIAN]);
            cData[c][RD_NATIVE_HAWAIAN]  = Double.parseDouble(oneCommunity[RD_NATIVE_HAWAIAN]);
            cData[c][RD_TWO_OR_MORE]     = Double.parseDouble(oneCommunity[RD_TWO_OR_MORE]);
            cData[c][RD_WHITE]           = Double.parseDouble(oneCommunity[RD_WHITE]);
            cData[c][RD_HISP_OR_LATINO]  = Double.parseDouble(oneCommunity[RD_HISP_OR_LATINO]);
            cData[c][RD_OTHER]           = Double.parseDouble(oneCommunity[RD_OTHER]);

            // age
            cData[c][AGE_UNDER_10] = Double.parseDouble(oneCommunity[AGE_UNDER_10]);
            cData[c][AGE_10_TO_64] = Double.parseDouble(oneCommunity[AGE_10_TO_64]);
            cData[c][AGE_OVER_64]  = Double.parseDouble(oneCommunity[AGE_OVER_64]);

            cData[c][TOTAL_POPULATION] = Double.parseDouble(oneCommunity[TOTAL_POPULATION]);

            // health
            cData[c][HLT_FLOOD_RISK] = Double.parseDouble(oneCommunity[HLT_FLOOD_RISK]);
            cData[c][HLT_FIRE_RIST]  = Double.parseDouble(oneCommunity[HLT_FIRE_RIST]);
            cData[c][HLT_PM2_5]      = Double.parseDouble(oneCommunity[HLT_PM2_5]);
            cData[c][HLT_ASTHMA]      = Double.parseDouble(oneCommunity[HLT_ASTHMA]);
            cData[c][HLT_DIABETES]      = Double.parseDouble(oneCommunity[HLT_DIABETES]);
            cData[c][HLT_HEART_DISEASE] = Double.parseDouble(oneCommunity[HLT_HEART_DISEASE]);
            cData[c][HLT_LIFE_EXPECT]      = Double.parseDouble(oneCommunity[HLT_LIFE_EXPECT]);

            cData[c][ECON_UNEMPLOYEMENT] = Double.parseDouble(oneCommunity[ECON_UNEMPLOYEMENT]);
            cData[c][ECON_LOW_INCOME]    = Double.parseDouble(oneCommunity[ECON_LOW_INCOME]);
            cData[c][ECON_DISADVANTAGED] = Double.parseDouble(oneCommunity[ECON_DISADVANTAGED]);
        }
        return cData;
    }

    /*
     * Returns the PM 2.5 level for the community at row community.
     * 
     * Pre-condition: the data array is not empty.
     * 
     * @data      array containing the communities' data.
     * @community the community's row index. 
     * @return    the PM 2.5 level for the community at community row.
     */
    public static double getPM25Level (double[][] data, int commnunity) {

	// WRITE YOUR CODE HERE


	    return data[commnunity][14]; // replace this line
    }


    /*
     * Returns the average life expectancy amongst all communities.
     * 
     * Pre-condition: the data array is not empty.
     * 
     * @data       array containing the communities' data.
     * @return     the average.
     */
    public static double findAverageLifeExpectancy(double[][] data) {
        
        // WRITE YOUR CODE HERE
        int comNum = data.length;
        double avg = 0;
        for(int rows = 0; rows<comNum; rows++){
            avg = avg + data[rows][18]; 
        }
        avg = avg/comNum;
        return avg; // replace this line
    }



    /*
     *
     * Finds the community that contains the highest number of cases of 
     * a certain health issue. Retuns the number of cases.
     * 
     * Pre-condition: the data array is not empty.
     * 
     * @data          array containing the communities' data.
     * @healthIssue   is either 'H' (heart disease), 'D' (diabetes), or 'A' (asthma).
     * @return        the highest number of cases of health issue.
     */
    public static double highestPopulationWithHealthIssue (double[][] data, char healthIssue) {
        int len = data.length;
        double[] cat = new double[len];
         // WRITE YOUR CODE HERE
        switch (healthIssue) {
            case 'A':
                    for(int rows = 0; rows<len; rows++){
                        cat[rows] = data[rows][15];
                    }
                    break;

            case 'D':
                    for(int rows = 0; rows<len; rows++){
                        cat[rows] = data[rows][16];
                    }
                    break;

            case 'H':
                    for(int rows = 0; rows<len; rows++){
                        cat[rows] = data[rows][17];
                    }
                    break;
        }
        double maxVal = cat[0];
        for(int i = 1; i < cat.length; i++){
            if (maxVal < cat[i]){
                maxVal = cat[i];
            }
        }
        return maxVal; // replace this line
    }

    /*
     * Returns the number of communities that have a percentage of the racial demographic
     * population higher than or equal the threshold.
     * 
     * Pre-condition: the data array is not empty.
     * 
     * @data                 array containing the communities' data.
     * @columnIndex          column index of the racial demographic being investigated.
     * @percentageThreshold  function looks for communities with at least threshold demographics. Number between 1-100.
     * @isDisadvantage       true if searching for disadvantaged communities.
     * @return               the number of communities.
     */
    public static int numberOfCommunities (double[][] data, int columnIndex, double percentageThreshold, boolean isDisadvantage) {
        int len = data.length;
        int count = 0;
        if(isDisadvantage){
            for(int row = 0; row < len; row++){
                if(data[row][21] == 1){
                    if(data[row][columnIndex]*100 >= percentageThreshold){
                        count++;
                    }
                }
            }
        }else{
            for(int row = 0; row < len; row++){
                if(data[row][21] == 0){
                    if(data[row][columnIndex]*100 >= percentageThreshold){
                        count++;
                    }
                }
            }
        }
         // WRITE YOUR CODE HERE

        return count; //replace this line
    }

    /*
     * Returns the percentage of the largest racial demographic in the community.
     * Returns a value between 0 and 100.
     * 
     * Pre-condition: the data array is not empty.
     * 
     * @data       array containing the communities' data.
     * @community  the row (which refers to one community) being investigated.
     * @return     the percentage of the largest racial demographic in the community.
     */
    public static double largestRacialDemographic(double[][] data, int community) {

        // WRITE YOUR CODE HERE
        double maxVal = data[community][0];
        for(int col = 1; col < 7; col++){
            if(maxVal < data[community][col]){
                maxVal = data[community][col];
            }
        }
        return maxVal*100; // replace this line
    }

    /*
     * Returns the row index (of the community) with the largest population
     * that is low income and disadvantaged.
     * 
     * Pre-condition: the data array is not empty.
     * 
     * @data       array containing the communities' data.
     * @return     row index of the community.
     */
    public static int mostPopulatedDisadvantagedWithLowIncome(double[][] data) {
        
        // WRITE YOUR CODE HERE
        int rows = data.length;
        double maxVal = 0.0;
        int maxInd = 0;
        for(int row = 0; row<rows; row++){
            if((data[row][20] == 1)&&(data[row][21] == 1)){
                if(maxVal < data[row][11]){
                    maxVal = data[row][11];
                    maxInd = row;
                }
            }
        }
        return maxInd; // replace this line
    }


    public static void main (String[] args) {

        // Update the main function to test your functions

        double[][] data = readDataFromFile("CommunitiesData.csv");
        
        int community = 12;
        StdOut.printf("\nPM 2.5 Level (community %d): %.2f\n", community, getPM25Level(data, community));
        StdOut.printf("Avg Life expectancy: %.2f years\n", findAverageLifeExpectancy(data));

        StdOut.printf("Community with higest cases of heart disease: %.0f cases\n", highestPopulationWithHealthIssue(data, 'H'));
        StdOut.printf("Community with higest cases of diabetes: %.0f cases\n", highestPopulationWithHealthIssue(data, 'D'));  
        StdOut.printf("Community with higest cases of asthma: %.0f cases\n", highestPopulationWithHealthIssue(data, 'A'));  

        StdOut.printf("Number of communities: %d\n", numberOfCommunities(data, RD_BLACK, 10, false));

        community = 4;
        StdOut.printf("Largest demographic (community %d): %.2f percent\n",community, largestRacialDemographic(data, community));

        StdOut.printf("Most populated community with low income: %d\n", mostPopulatedDisadvantagedWithLowIncome(data));
    }
}

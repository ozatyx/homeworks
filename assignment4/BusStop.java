public class BusStop{
    public static void main(String[] args){

        int len = args.length;
        char stopChoose = args[len-1].charAt(0);

        for(int i = 0; i <= (len-2); i++){
            char c = args[i].charAt(0);
            if (c == stopChoose){

                System.out.println(i+1);
                break;

            } else if (i == len-2){
                System.out.println(-1);
                break;
            }
        }



    }
}
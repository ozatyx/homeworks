package fibonacci;

public class fib {

    public static int fibo(int n){
        if(n == 1 || n == 2){
            return 1;
        }else{
            return fibo(n-1)+fibo(n-2);
        }
    }
    public static void main(String args[]){
        System.out.println(fibo(4));
        System.out.println(printRow)
    }
}

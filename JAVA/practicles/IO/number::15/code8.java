import java.util.*;

class Demo{
        public static void main(String[] args){

                Scanner sc = new Scanner(System.in);

                System.out.print("Input=");
                int Input = sc.nextInt();

                int reverse=0;
                while(Input!=0){
                        int digit=Input%10;
                        reverse=reverse*10 + digit;
                        Input/=10;
                }
                System.out.print(reverse);
        }
}

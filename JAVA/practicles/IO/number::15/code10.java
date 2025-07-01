import java.util.*;

class Demo{
        public static void main(String[] args){

                Scanner sc = new Scanner(System.in);

                System.out.print("Input=");
                int Input = sc.nextInt();

                int reverse=0;
                int original=Input;
                while(Input!=0){
                        int remainder=Input%10;
                        reverse=reverse*10 + remainder;
                        Input/=10;
                }
                if(original==reverse){
                System.out.print(original +"is palidrome number");
                }
                else{
                        System.out.print(original +"is not palidrome number");
                }
        }
}

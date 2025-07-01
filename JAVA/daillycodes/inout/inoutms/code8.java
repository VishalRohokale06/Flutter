import java.util.*;

class Demo{
        public static void main(String[] args){

                Scanner sc=new Scanner(System.in);
                System.out.println("Enter num1: ");
                int num1=sc.nextInt();
                System.out.println("Enter num2: ");
                int num2=sc.nextInt();
                int sum=0;
                for(int i=num1;i<=num2;i++){
			sum+=i;
		}
                System.out.print(sum +",");
        }
}

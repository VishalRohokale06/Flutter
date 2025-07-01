import java.util.*;

class Demo{
        public static void main(String[] args){
                Scanner sc = new Scanner(System.in);
                System.out.println("Enter a number:");
                int num = sc.nextInt();
                int temp = num;
		int digit = 0;
		int mul =1;
		int sum=0;

		while(num>0){
			digit=num%10;
		}
		while(digit>1){
			mul=mul*digit;
			digit--;
		}
		while(digit>1){
			num/=10;
			sum=sum+num;
		}
		if(sum==temp){
			System.out.print(num+"is a Strong Number.");
		}
		else{
			System.out.print(num+"is a not Strong Number.");
		}
	}
}

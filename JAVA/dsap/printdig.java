import java.util.*;

class Digit{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);

		int num = sc.nextInt();
		int rev=0;
		while(num>0){
			int dig=num%10;
		        rev=rev*10+dig;
			num/=10;
		}
		while(rev>0){
			int dig=rev%10;
			System.out.println(dig);
			rev/=10;
		}
	}
}

import java.util.*;

class Demo{
	public static void main(String[] args){

		Scanner sc = new Scanner(System.in);

		int num=sc.nextInt();
	
		int op=1;	//original position
		int rev=0;
		while(num>0){
			int odig=num%10;
			int id=op; //inverted digit
			int ip=odig; //inverted position
			rev+= id*(int)Math.pow(10,ip-1);
			num/=10;
			op++;
		}
		System.out.println(rev);
	}
}

import java.util.*;

class Demo{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);

		System.out.println("num:");
		int num = sc.nextInt();
		System.out.println("base:");
		int base = sc.nextInt();
		System.out.println("convertedto base:");
		int cbase = sc.nextInt();

		System.out.println("Conveted no is:"+converNum(num,base,cbase));
	}

	public static int converNum(int num,int b,int cb){
		int p=1;
		int rev=0;
		while(num>0){
			int dig = num%cb;
			num/=cb;
			rev += dig*p;
			p *= b;
		}
		return rev;
	}
}

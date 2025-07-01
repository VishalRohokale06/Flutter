import java.util.*;

class Demo{

	public static int freNum(int num,int val){
		int rev=0;
		int p=1;
		while(num>0){
			int digit = num%val;
			rev+=digit*p;
			num/=val;
			p=p*10;
		}
		return rev;
	}

	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		int num = sc.nextInt();
		int dig = sc.nextInt();
		System.out.println(freNum(num,dig));
	}
}

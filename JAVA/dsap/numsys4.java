import java.util.*;

class baseAdd{
	public static void main(String[] args){

		Scanner sc = new Scanner(System.in);

		int num1=sc.nextInt();
		int num2=sc.nextInt();
		int base=sc.nextInt();

		System.out.println(getSum(num1,num2,base));
	}

	public static int getSum(int n1,int n2,int b){
		int rv=0;
		int c=0;
		int p=1;

		while(n1>0 || n2>0 || c>0){
			int d1 = n1%10;
			int d2 = n2%10;
			n1/=10;
			n2/=10;

			int s = d1+d2+c;
			c = s/b;
			s = s%b;

			rv += s*p;
			p*=10;
		}
		return rv;
	}
}

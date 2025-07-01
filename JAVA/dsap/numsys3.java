import java.util.*;

class Demo{
	public static void main(String[] args){

		Scanner sc = new Scanner(System.in);

		System.out.println("Enter num:");
		int num = sc.nextInt();
		System.out.println("Enter base:");
		int base = sc.nextInt();
		System.out.println("Enter converted to base:");
		int cbase = sc.nextInt();

		int cnum = convNum(num,base,cbase);
		System.out.println(cnum);
	}

	public static int convNum(int num,int base,int cbase){
		int atod = anybasetoDecimal(num,base);
		int dtoa = decimaltoAnybase(atod,cbase);
		return dtoa;
	}

	public static int anybasetoDecimal(int num,int b){
		int p=1;
		int revd=0;
		while(num>0){
			int dig=num%10;
			num/=10;
			revd += dig*p;
			p*=b;
		}
		return revd;
	}
	public static int decimaltoAnybase(int num,int b){
		int rev=0;
		int p=1;
		while(num>0){
			int dig=num%b;
			num/=b;
			rev += dig*p;
			p=p*10;
		}
		return rev;
	}
}

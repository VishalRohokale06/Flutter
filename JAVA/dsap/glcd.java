import java.util.*;

class Demo{
	public static void main(String[] args){
		Scanner sc=new Scanner(System.in);
		int n1=sc.nextInt();
		int n2=sc.nextInt();

<<<<<<< HEAD
		int on1=n1;
		int on2=n2;
=======
>>>>>>> 616e8b94e6ea3b6b73f4e21838371a989f7dbd13
		int rem=0;
		while(n1%n2!=0){
			rem=n1%n2;
			n1=n2;
			n2=rem;
		}
		int gcd = n2;
<<<<<<< HEAD
		int lcd=(on1*on2)/gcd;
=======
		int lcd=(n1*n2)/gcd;
>>>>>>> 616e8b94e6ea3b6b73f4e21838371a989f7dbd13
		System.out.println(gcd);
		System.out.println(lcd);
	}
}

import java.util.*;
import java.io.*;

class Demo{
	public static void main(String[] args)throws IOException{
		Scanner sc = new Scanner(System.in);

		int i = sc.nextInt();
		sc.nextLine();
	        double d = sc.nextDouble();
		sc.nextLine();
		char ch = sc.nextLine().charAt(0);
		float f = sc.nextFloat();
		sc.nextLine();
		String s = sc.nextLine();

		System.out.println(i);
		System.out.println(s);
		System.out.println(ch);
		System.out.println(d);
	}
}

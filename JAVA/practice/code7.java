import java.util.*;

class Demo{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);

		for(int i=0;i<3;i++){
			String str = sc.next();
			int x = sc.nextInt();
			//sc.nextLine();
			System.out.printf("%-15s%03d%n",str,x);
		}
		System.out.println();
	}
}

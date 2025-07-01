import java.util.*;

class Demo{
	public static void main(String[] args){

		Scanner sc = new Scanner(System.in);

		System.out.print("rows=");
		int rows = sc.nextInt();

		for(int i=1;i<=rows;i++){
			for(int space=1;space<=rows-i;space++){
				System.out.print("* ");
			}
			int num=rows;
			for(int j=1;j<=i;j++){
				System.out.print(num+" ");
				num--;
			}
		System.out.println();
		}
	}
}

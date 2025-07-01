import java.util.*;

class Demo{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);

		System.out.print("Rows =");
		int rows = sc.nextInt();

		//int ch = 64+rows;

		for(int i=1;i<=rows;i++){
		int ch = 64+rows;
			for(int space=1;space<i;space++){
				System.out.print(" "+" ");
			}
			for(int j=i;j<=rows;j++){
				System.out.print((char)ch+" ");
				ch--;
			}
			System.out.println();
		}
	}

}

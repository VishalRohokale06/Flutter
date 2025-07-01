import java.util.*;

class Demo{
	public static void main(String[] args){

		Scanner sc = new Scanner(System.in);

		System.out.print("Number of rows = ");
		int rows = sc.nextInt();

		int ch=64+rows;
		int num=rows;

		for(int i=1;i<=rows;i++){
			for(int j=1;j<=rows;j++){
				System.out.print((char)ch+""+num+" ");
			num--;
			}
			num=num+rows+1;
			System.out.println();
		}
	}
}

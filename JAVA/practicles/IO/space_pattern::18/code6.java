import java.util.*;

class Demo{
	public static void main(String[] args){

		Scanner sc = new Scanner(System.in);

		System.out.print("Rows=");
		int rows=sc.nextInt();

		int num=rows;

		for(int i=rows;i>0;i--){
			for(int space=rows;space>i;space--){
				System.out.print("*"+" ");
			}
			for(int j=1;j<=i;j++){
				System.out.print(num+" ");
			}
			num--;
			System.out.println();
		}
	}
}

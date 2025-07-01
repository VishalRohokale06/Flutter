import java.util.*;

class Demo{
	public static void main(String[] args){

		Scanner sc = new Scanner(System.in);

		System.out.print("rows=");
		int rows = sc.nextInt();

		int num=1;
		for(int i=rows;i>0;i--){

			for(int space=i;space>1;space--){
				System.out.print("*");
			}

			for(int j=1;j<=num;j++){
				System.out.print(j);
			}
			num++;
			System.out.println();
		}
	
	}
}

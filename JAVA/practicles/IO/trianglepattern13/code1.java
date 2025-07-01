import java.util.*;

class Demo{
	public static void main(String[] args){

		Scanner sc = new Scanner(System.in);
		System.out.print("Rows = ");
		int rows = sc.nextInt();
		int num=1;

		for(int i=rows;i>0;i--){
			int temp=num;
			for(int j=1;j<=i;j++){
				System.out.print(temp+" ");
				temp++;
			}
			num++;
		System.out.println();
		}
	}
}


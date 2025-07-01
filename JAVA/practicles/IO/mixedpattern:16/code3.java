import java.util.*;

class Demo{
	public static void main(String[] args){

		Scanner sc = new Scanner(System.in);

		System.out.print("Number of rows = ");
		int rows = sc.nextInt();

	
		for(int i=1;i<=rows;i++){
			int ch = 64+rows;
			int num=1;
			for(int j=1;j<=rows;j++){
				if(i%2==1){
					System.out.print((char)ch+" ");
				}
				else
					System.out.print(num+" ");
				ch--;
				num++;
			}
			System.out.println();
		}
	}
}


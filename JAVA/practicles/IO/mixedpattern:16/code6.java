import java.util.*;

class Demo{
	public static void main(String[] args){

		Scanner sc = new Scanner(System.in);

		System.out.print("Rows=");
		int rows = sc.nextInt();

		for(int i=1;i<=rows;i++){
		int num=rows;
		int ch = 96+rows;
			for(int j=1;j<=i;j++){
				if(i%2==1){
					System.out.print((char)ch+" ");
				}
				else{
					System.out.print(num+" ");
				}
				ch--;
				num--;
			}
			System.out.println();
		}
	}
}

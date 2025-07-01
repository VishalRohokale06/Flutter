import java.util.*;

class Demo{
	public static void main(String[] args){

		Scanner sc = new Scanner(System.in);

		System.out.print("Rows=");
		int rows = sc.nextInt();

	        int temp=0;
		for(int i=rows;i>=1;i--){
			temp+=i;
		}
		int ch=64+temp;
		for(int i=rows;i>=1;i--){
			for(int j=1;j<=i;j++){
				System.out.print((char)ch+" ");
			ch--;
			}

			System.out.println();
		}
	}
}

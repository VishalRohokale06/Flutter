import java.util.*;

class Demo{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);

		System.out.print("Rows =");
		int row = sc.nextInt();
		//int num = row + 1;
		char ch = 'a';

		for(int i=1;i<=row;i++){
		        int num = row + 1;
			for(int j=1;j<=i;j++){
				if(j%2==1){
					System.out.print(num+" ");
				}
				else{
					System.out.print(ch+" ");
					ch++;
				}
			}
			System.out.println();
		}
	}
}




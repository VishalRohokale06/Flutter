import java.util.*;

class Demo{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);

		System.out.print("Rows =");
		int row = sc.nextInt();

		for(int i=row;i>0;i--){
		int num=1;
		char ch='a';
			for(int j=1;j<=i;j++){
				if(j%2==1){
					System.out.print(num+" ");
					num++;
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

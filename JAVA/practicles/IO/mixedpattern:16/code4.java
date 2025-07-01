import java.util.*;

class Demo{
	public static void main(String[] args){

		Scanner sc = new Scanner(System.in);

		System.out.print("Rows= ");
		int rows = sc.nextInt();

		int num=rows;
		int temp=rows-1;
		int d = rows;

		for(int i=1;i<=rows;i++){
			for(int j=1;j<=i;j++){
				//if(i%2==0){
					System.out.print(num+" ";
					num=num+d;
				}
			System.out.println();
			num=temp;
			d=temp;
			temp--;
			}
		}
	}



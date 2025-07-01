import java.util.*;

class Demo{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);

		int rows = sc.nextInt();
		
		for(int i=1;i<=rows;i++){
			for(int j=rows;j>0;j--){
				if(i==j){
					System.out.print("*\t");
				}else{
					System.out.print("\t");
				}
			}
			System.out.println();
		}
	}
}

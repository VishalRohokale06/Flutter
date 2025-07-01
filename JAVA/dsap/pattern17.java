import java.util.*;

class Demo{
	public static void main(String[] args){

		Scanner sc = new Scanner(System.in);

		int rows = sc.nextInt();
		int spc=rows/2;
		int str=1;

		for(int i=1;i<=rows;i++){
			for(int sp=1;sp<=spc;sp++){
				if(i==rows/2+1){
					System.out.print("*\t");
				}else{
					System.out.print("\t");
				}
			}
			for(int j=1;j<=str;j++){
				System.out.print("*\t");
			}
			if(i<=rows/2){
				str++;
			}else{
				str--;
			}
			System.out.println();
		}
	}
}

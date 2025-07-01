import java.util.*;

class Demo{
	public static void main(String[] args){

		Scanner sc = new Scanner(System.in);

		int rows = sc.nextInt();
		int str = rows;	
		int spc = 0;

		for(int i=1;i<=rows;i++){
			for(int sp=1;sp<=spc;sp++){
				System.out.print("\t");
			}
			for(int j=1;j<=str;j++){
				if(i>1 && i<=rows/2 && j>1 && j<str){
					System.out.print("\t");
				}else{
					System.out.print("*\t");
				}
			}

			if(i<=rows/2){
				spc++;
				str-=2;
			}else{
				spc--;
				str+=2;
			}
			System.out.println();
		}
	}
}

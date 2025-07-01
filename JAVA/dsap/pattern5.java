import java.util.*;

class Demo{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);

		int rows = sc.nextInt();
		int spc = rows/2;
		int st = 1;

		for(int i=1;i<=rows;i++){
			for(int sp=1;sp<=spc;sp++){
				System.out.print("\t");
			}
			for(int j=1;j<=st;j++){
				System.out.print("*\t");
			}

			if(i<=rows/2){
				spc--;
				st+=2;
			}else{
				spc++;
				st-=2;
			}
			System.out.println();
		}
	}
}

import java.util.*;

class Demo{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);

		int rows=sc.nextInt();
		int spc = 1;
		int str = rows/2+1;

		for(int i=1;i<=rows;i++){
			for(int j=1;j<=str;j++){
				System.out.print("*\t");
			}
			for(int sp=1;sp<=spc;sp++){
				System.out.print("\t");
			}
			for(int k=1;k<=str;k++){
                                System.out.print("*\t");
                        }
			if(i<=rows/2){
				str--;
				spc+=2;
			}else{
				str++;
				spc-=2;
			}
			System.out.println();
		}
	}
}

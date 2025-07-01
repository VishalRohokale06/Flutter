import java.util.*;

class Demo{
	public static void main(String[] args){

		Scanner sc = new Scanner(System.in);

		int rows = sc.nextInt();
		int spc= 2*rows-3;
		int str =1;

		for(int i=1;i<=rows;i++){
			int val=1;
			for(int j=1;j<=str;j++){
				System.out.print(val+"\t");
				val++;
			}
			for(int sp=1;sp<=spc;sp++){
				System.out.print("\t");
			}
			if(i==rows){
				str--;
				val--;
			}
			for(int j=1;j<=str;j++){
				System.out.print(--val+"\t");
			}
			str++;
			spc-=2;
			System.out.println();
		}
	}
}


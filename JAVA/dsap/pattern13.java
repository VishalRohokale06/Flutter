import java.util.*;

class Demo{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);

		int rows=sc.nextInt();

		for(int i=0;i<rows;i++){
			int icj=1;
			for(int j=0;j<=i;j++){
				System.out.print(icj+"\t");
				int icjp1 = icj*(i-j)/(j+1);
				icj=icjp1;
			}
			System.out.println();
		}
	}
}

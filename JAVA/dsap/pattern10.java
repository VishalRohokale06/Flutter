import java.util.*;

class Demo{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);

		int rows = sc.nextInt();
		int osp = rows/2;
		int isp = -1;

		for(int i=1;i<=rows;i++){
			for(int sp=1;sp<=osp;sp++){
				System.out.print("\t");
			}
			System.out.print("*\t");
			for(int sp=1;sp<=isp;sp++){
                                System.out.print("\t");
                        }

			if(i>1 && i<rows){
				System.out.print("*\t");
			}

			if(i<=rows/2){
				osp--;
				isp+=2;
			}else{
				osp++;
				isp-=2;
			}
			System.out.println();
		}
	}
}

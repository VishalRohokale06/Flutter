import java.util.*;

class Demo{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		
		int rows=sc.nextInt();
		int spc=rows/2;
		int str=1;
		int num=1;

		for(int i=1;i<=rows;i++){
			int cval=num;
			for(int sp=1;sp<=spc;sp++){
				System.out.print("\t");
			}
			for(int j=1;j<=str;j++){
				System.out.print(cval+"\t");
				if(j<=str/2){
					cval++;
				}else{
					cval--;
				}
			}

			if(i<=rows/2){
				spc--;
				str+=2;
				num++;
			}else{
				spc++;
				str-=2;
				num--;
			}
			System.out.println();
		}
	}
}

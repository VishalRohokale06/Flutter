import java.util.*;

class Demo{
        public static void main(String[] args){
                Scanner sc = new Scanner(System.in);

                System.out.print("Rows =");
                int row = sc.nextInt();
                int num;

		if(row%2==0){
			num=(row*row/2)+row/2;
		}
		else{
			num=(row*(row+1)/2);
		}

                for(int i=row;i>0;i--){
                        for(int j=1;j<=i;j++){
                                System.out.print((char)(num+64)+"   ");
                                num--;
                        }
                System.out.println();
                }
        }
}

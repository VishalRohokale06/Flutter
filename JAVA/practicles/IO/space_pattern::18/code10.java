import java.util.*;

class Demo{
        public static void main(String[] args){
                Scanner sc = new Scanner(System.in);

                System.out.print("Rows =");
                int rows = sc.nextInt();

		int r = rows;

                for(int i=1;i<=rows;i++){
                int f=r%2;
                        for(int space=1;space<i;space++){
                                System.out.print(" "+" ");
                        }
                        for(int j=i;j<=rows;j++){
				if(f==0){
                                System.out.print((j+64)+" ");
				f=1;
				}
				else{
					System.out.print((char)(j+64)+" ");
					f=0;
                        }
			}
			r--;
                        System.out.println();
                }
        }

}

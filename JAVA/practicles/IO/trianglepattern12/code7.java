import java.util.*;

class Demo{
        public static void main(String[] args){

                Scanner sc=new Scanner(System.in);

                System.out.print("Rows=");
                int rows=sc.nextInt();
		char ch='a';

                for(int i=1;i<=rows;i++){
                        for(int j=1;j<=i;j++){
                                if(j%2==1){									System.out.print(i+" ");
				}
				else{
					System.out.print(ch+" "); 			                           ch++;
			}
			}
                        System.out.println();
        }

	}
}


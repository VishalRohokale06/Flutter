import java.util.*;
class Demo{
        public static void main(String[] args){
                Scanner sc=new Scanner(System.in);

                System.out.print("Rows=");
                int rows=sc.nextInt();
		int r=rows;

                int num=65;

                  for(int i=rows;i>=1;i--){
                  //int num=65;

                        for(int j=1;j<=i;j++){
				if(r%2==0){
                                System.out.print(num+" ");
				}

				else{

                                System.out.print((char)num+" ");
				}
                                num++;
				r--;
                        }
                        System.out.println();
                        num=num-(i-1);
			r=r+(i-1);
                }
        }
}

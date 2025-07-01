import java.util.*;
class SquareDemo{
        public static void main(String[]args){
                Scanner sc=new Scanner(System.in);
                System.out.println("Enter no.of rows :");
                int row=sc.nextInt();
                
                int ch1=96+row;
                int num=row;

                for(int i=1;i<=row;i++){

                        for(int j=1;j<=row;j++){

			if(i%2==1){
                                if(j%2==1){
                                        System.out.print((char)ch1 +"\t");
                                }
                                	else{

                                        System.out.print(num +"\t");
                                }
				}
				else{
					if(j%2==0){
                                        System.out.print((char)ch1 +"\t");
                                }
                                	else{

                                        System.out.print(num +"\t");
                                }
				}
                                num++;
                               
                               ch1++;
                       }
                        System.out.println();
                }
        }
}

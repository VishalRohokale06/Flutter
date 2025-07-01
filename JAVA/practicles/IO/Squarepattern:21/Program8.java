import java.util.*;
class SquarePatternDemo{

        public static void main(String[]args){
                Scanner sc=new Scanner(System.in);
                System.out.println("Enter no.of rows : ");
                int Row=sc.nextInt();

		int num=1;

                
                for(int i=1;i<=Row;i++){

			int ch=64+Row;

                        for(int j=1;j<=Row;j++){

			if(i%2==1){

                                if(j%2==1){
                                        System.out.print("#" +"   ");

                                }

                                else{
                                        System.out.print((char)ch-- +"   ");
                                }
			}
			else{
                                
                                if(j%3==0){
                                        System.out.print("#" +"   ");

                                }

                                else{
                                        System.out.print((char)ch-- +"   ");
                                }
			}
			num++;

                        }
                        System.out.println();
                }
        }
}

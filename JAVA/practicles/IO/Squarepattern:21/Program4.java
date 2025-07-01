import java.util.*;
class SquarePatternDemo{

        public static void main(String[]args){
                Scanner sc=new Scanner(System.in);
                System.out.println("Enter no.of rows : ");
                int Row=sc.nextInt();

                int num=Row;
		int ch=64+Row;
                for(int i=1;i<=Row;i++){



                        for(int j=1;j<=Row;j++){

                                if(num%Row==0){
                                        System.out.print((char)ch +" ");

                                }
                             
                                else{
                                        System.out.print(num +" ");
                                }
                                num++;
				ch++;

                        }
                        System.out.println();
                }
        }
}

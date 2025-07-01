import java.util.*;
class SquarePatternDemo{

        public static void main(String[]args){
                Scanner sc=new Scanner(System.in);
                System.out.println("Enter no.of rows : ");
                int Row=sc.nextInt();

                int num=Row;
                for(int i=1;i<=Row;i++){

                        

                        for(int j=1;j<=Row;j++){

                                if(num%3==0){
                                        System.out.print(num*3 +" ");
                                        
                                }
                                else if(num%5==0){
                                        System.out.print(num*5 +" ");
                                }
				else{
					System.out.print(num +" ");
				}
				num++;

                        }
                        System.out.println();
                }
        }
}

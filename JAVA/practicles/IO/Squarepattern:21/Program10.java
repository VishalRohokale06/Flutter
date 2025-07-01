import java.util.*;
class SquarePatternDemo{                                                                                                                                                                                                                                                                                                       public static void main(String[]args){
                Scanner sc=new Scanner(System.in);
                System.out.println("Enter no.of rows : ");
                int Row=sc.nextInt();
                
                for(int i=1;i<=Row;i++){
			int num=Row;
			int ch=64+Row;			
                        for(int j=1;j<=Row;j++){
                                if(i%2==1){
                                        if(j%2==0){

                                        System.out.print((char)ch+"\t");
                                        }


                                else{
                                        System.out.print(num +"\t");
                                }
                                }
                                else{
                                                
                                        System.out.print((char)ch+"\t");
                                }
				ch--;
				num--;
                                

                }                                                                                                                                                                   System.out.println();                                                                                                                               }
        }                                                                                                                                                   }

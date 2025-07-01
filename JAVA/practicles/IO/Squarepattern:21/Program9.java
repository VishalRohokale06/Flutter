import java.util.*;
class SquarePatternDemo{                                                                                                                                                                                                                                                                                                        public static void main(String[]args){
                Scanner sc=new Scanner(System.in);
                System.out.println("Enter no.of rows : ");
                int Row=sc.nextInt();                                                                                                                       
                int num=Row;
                for(int i=1;i<=Row;i++){                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                for(int j=1;j<=Row;j++){                                                                                                            
                                if(i%2==0){
					if(j%2!=0){

                                        System.out.print((j*3)+"\t");
					}

                                                                                                                                                                                            else{
                                        System.out.print((j*2)+"\t");
                                }
				}
				else{
					         if(j%2!=0){
                                                                                                                                                                                                    System.out.print((j*2)+"\t");                                                                                                                               }
                                else{
                                        System.out.print((j*3)+"\t");
                                }
				}
                                
		}
                        System.out.println();                                                                                                                               }
        }                                                                                                                                                   }                                     

import java.util.*;
class SquarePatternDemo{                                                                                                                                                                                                                                                                                                        public static void main(String[]args){
                Scanner sc=new Scanner(System.in);
                System.out.println("Enter no.of rows : ");
                int Row=sc.nextInt();                                                                                                                       
                int num=Row;
                for(int i=1;i<=Row;i++){                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                for(int j=1;j<=Row;j++){
		     		int ch=64+i;	
		       	if(Row%2==0){
					
				if(num%2==1){
                                        System.out.print((char)ch +" ");                                                                                                                                                                                                                                                                                 }

                                                                                                                                                                                            else{
                                        System.out.print(num+" ");
                                }
			}



				else{
					if(num%2==0){
						System.out.print(num +" ");
					}
					else{
						System.out.print((char)ch +" ");

					}
				}

                                num++;                                                                                                                                                                                                                                                                                                          }
                        System.out.println();                                                                                                                               }
        }                                                                                                                                                   }                                     

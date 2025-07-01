import java.util.*;
class SquareDemo{
        public static void main(String[]args){
                Scanner sc=new Scanner(System.in);
                System.out.println("Enter no.of rows :");
                int row=sc.nextInt();

                
            
       		int num=row;
       
       
        	for(int i=1;i<=row;i++){

           	 int num1 =num*(row-i+1);

          	  for(int j=1;j<=row;j++){

                	if(j%2==0){

                    	System.out.print("@" +"\t");

                	}
               	 else{
                	    System.out.print(num1+"\t");
               	 }
                	    num1-=i;
                
               	 num++;
                	}
                
                  System.out.println();
                }
                    

                }
        
}          

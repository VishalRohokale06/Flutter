import java.util.*;
class PyramidDemo{
        public static void main(String[]args){
                Scanner sc =new Scanner(System.in);
                System.out.print("Enter the row:");
                int row=sc.nextInt();


                
                for(int i=1;i<=row;i++){
			int num=1;

                       for(int sp=row;sp>i;sp--){

                System.out.print("\t");
                       }



                for(int j=1;j<=i*2-1;j++){
			if(i>j){
				System.out.print(num++ +"\t");
			}
			else{
				
				System.out.print(num-- +"\t");

                      }
		}

              System.out.println();
                }

        }
}

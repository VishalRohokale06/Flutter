import java.util.*;

class Demo{
        public static void main(String[] args){
                Scanner sc = new Scanner(System.in);

                System.out.print("Rows =");
                int rows = sc.nextInt();
                int ch1=64+rows;
                int ch2=95+rows;

                for(int i=1;i<=rows;i++){
                        for(int j=1;j<=rows-i+1;j++){
                                if(i%2==1){
                                        System.out.print((char)ch1+" ");
                                        ch1--;
			
                                }
                                else{
                                        System.out.print((char)ch2+" ");
                                        ch2--;
				}
			}
			ch1=ch1;
			System.out.println();
		}
	}
}
     

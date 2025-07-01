import java.util.*;

class Demo{
        public static void main(String[] args){

                Scanner sc=new Scanner(System.in);

                System.out.print("Rows=");
                int rows=sc.nextInt();
                
		int ch=65;

                for(int i=1;i<=rows;i++){
                        int num=1;
                        for(int j=1;j<=i;j++){
                                if(i%2==1){
                                        System.out.print(num+" ");
                                }
                                else{
                                        System.out.print((char)ch+" ");
                                }
                                ch++;
				num++;
                        }
                        System.out.println();
                }
        }
}

import java.util.*;

class Demo{
        public static void main(String[] args){

                Scanner sc=new Scanner(System.in);

                System.out.print("Rows=");
                int rows=sc.nextInt();

                for(int i=1;i<=rows;i++){

                        int smallch=96+rows;
			int capch = 64+rows;

                        for(int j=1;j<=i;j++){
                                if(i%2==1){
                                        System.out.print((char)smallch+" ");
                                }
                                else{
                                        System.out.print((char)capch+" ");
                                }
                                smallch--;
				capch--;
                        }
                        System.out.println();
                }
        }
}

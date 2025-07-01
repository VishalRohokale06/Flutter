import java.util.*;
class Demo{
        public static void main(String[] args){
                Scanner sc=new Scanner(System.in);

                System.out.print("Rows=");
                int rows=sc.nextInt();

                //int num=64+rows;

                  for(int i=rows;i>=1;i--){
                  int num=64+rows;

                        for(int j=1;j<=i;j++){

                                System.out.print((char)num+" ");
                                num--;
                        }
                        System.out.println();
                        //num=num-(i-1);
                }
        }
}

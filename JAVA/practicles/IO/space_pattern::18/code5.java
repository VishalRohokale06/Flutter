import java.util.*;

class Demo{
        public static void main(String[] args){

                Scanner sc = new Scanner(System.in);

                System.out.print("rows=");
                int rows = sc.nextInt();

                for(int i=1;i<=rows;i++){
                        for(int space=1;space<=rows-i;space++){
                                System.out.print(" "+"\t");
                        }
                        //int num=rows;
                        //int product=1;
                        for(int j=1;j<=i;j++){
                          //      product=rows*num;
                                System.out.print((i*j)+"\t");
                                //num++;
                        
			}
			//num--;
                System.out.println();
                }
        }
}

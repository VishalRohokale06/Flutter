import java.util.*;

class Demo{
        public static void main(String[] args){
                Scanner sc = new Scanner(System.in);

                System.out.print("Rows =");
                int rows = sc.nextInt();
                int num=rows;
                int ch = 63+rows;

                for(int i=1;i<=rows;i++){
                        for(int j=1;j<=rows-i+1;j++){
                                if(i%2==1){
                                        System.out.print(num+" ");
                                        num--;
                                }
                                else{
                                        System.out.print((char)ch+" ");
                                        ch--;
                                }
                        }
                        num=rows-i;
                        System.out.println();
                }

        }
}

import java.util.*;

class Demo{
        public static void main(String[] args){

                Scanner sc = new Scanner(System.in);

                System.out.print("rows=");
                int rows = sc.nextInt();

		int ch = 64+rows;
		int num=1;
		for(int i=1;i<=rows;i++){
                        for(int space=1;space<=rows-i;space++){
                                System.out.print("*"+" ");
                        }
		       // int ch = 64;
                        for(int j=num;j>=1;j--){
				ch=ch+j;
                                System.out.print((char)ch+" ");
                                ch++;
                       }
                System.out.println();
		num++;
		ch=ch-num;

                }
        }
}

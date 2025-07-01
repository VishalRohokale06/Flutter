import java.util.*;

class Demo{
        public static void main(String[] args){

                Scanner sc = new Scanner(System.in);

                System.out.print("Rows=");
                int rows = sc.nextInt();
		int flag=0;
                for(int i=rows;i>=1;i--){
                int num=1;
		int ch=64+i;
                        for(int j=1;j<=i;j++){
				if(flag%2==0){
					System.out.print(num+" ");
				}
				else{
                                System.out.print((char)ch+" ");
				ch--;
				}
				num++;
                        }
				flag++;
                        System.out.println();
                }
        }
}

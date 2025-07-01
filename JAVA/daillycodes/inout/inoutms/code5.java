import java.util.*;

class Demo{
        public static void main(String[] args){

                Scanner sc=new Scanner(System.in);
                System.out.println("Enter number: ");
                int num=sc.nextInt();

                if(num%2==0){
                System.out.print(num+ "is present in the table of 16");
		}
		else{
			System.out.println(num+ "is not present in the table of 16");
		}
        }
}


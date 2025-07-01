import java.util.*;

class Demo{
        public static void main(String[] args){
                Scanner sc = new Scanner(System.in);
                int arr[] = {2,5,2,7,8,9,2};

                System.out.print("Specify number :");
                int num = sc.nextInt();
                int flag=0;
		int count =0;

                for(int i=0;i<arr.length;i++){
                        if(num==arr[i]){
                                flag=1;
				count++;
                        }
                }
                if(flag==0){

                                System.out.println("num "+num+ " not found in array");

                        }
		else{
			System.out.println("Number " +num+ " occurred " +count +" times in an array ");
                }

        }
}



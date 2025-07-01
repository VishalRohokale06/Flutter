import java.util.*;

class Demo{
        public static void main(String[] args){
                Scanner sc = new Scanner(System.in);
                System.out.println("Enter size :");
                int size = sc.nextInt();
                System.out.println("Enter the elemment of array :");
                char arr[] = new char[size];
		char ch='a';
		char ch2='z';

                for(int i=0;i<size;i++){
                        arr[i]=sc.next().charAt(0);
                }
		System.out.println("Array:");
                for(int i=0;i<size;i++){
                        if(ch<arr[i] && arr[i]<ch2){
                            System.out.println(arr[i]);
                        }
			else{
                           System.out.println("#");
        }
}
	}
}


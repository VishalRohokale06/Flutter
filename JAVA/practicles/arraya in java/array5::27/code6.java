import java.util.*;

class Demo{
        public static void main(String[] args){
                Scanner sc = new Scanner(System.in);
                System.out.println("Enter the size of array:");                             int size=sc.nextInt();
                System.out.println("Enter the element of array:");
                int arr[] = new int[size];
                //int num=arr[0];
                int ele=0;                                                                                                                                                for(int i=0;i<size;i++){                                                            arr[i]=sc.nextInt();                                                }                                                                                                                                                       for(int i=0;i<size;i++){                                                            if(arr[i]%2==1){
                            ele=i;
                            break;
		}
		}
                System.out.println("First prime number found at index "+ele);
	}
}

import java.util.*;

class Demo{
        public static void main(String[] args){
                Scanner sc = new Scanner(System.in);
                System.out.println("Enter size of the array:");
                int size = sc.nextInt();
                System.out.println("Enter elements of the array:");
                int arr[] = new int[size];
                int min1=arr[0];
		int min2=arr[0];

                for(int i=0;i<size;i++){
                        arr[i]=sc.nextInt();
                }

                for(int i=1;i<size;i++){
                        if(min1>arr[i]){
                                min1=arr[i];
                        }
		}
                for(int i=1;i<size;i++){
			if(arr[i]>min1 && min2>arr[i]){
				min2=arr[i];
			}
                
		}
		System.out.println(min2);

        }
}

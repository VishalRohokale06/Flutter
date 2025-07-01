import java.util.*;

class Demo{
        public static void main(String[] args){
                Scanner sc = new Scanner(System.in);
                System.out.println("Enter Size :");
		int size=sc.nextInt();
		System.out.println("Enter the element of array :");
		int arr[] = new int[size];
		int min=arr[0];
		int max=arr[0];

		for(int i=0;i<size;i++){
			arr[i]=sc.nextInt();
		}

		for(int i=1;i<size;i++){
			if(arr[i]<min){
				min=arr[i];
		}
		}
		for(int i=1;i<size;i++){
			if(max<arr[i]){
				max=arr[i];
			}
		}
		int diff=max-min;
		System.out.println(diff);
	}
}


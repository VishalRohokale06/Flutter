import java.util.*;

class Demo{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter size :");
		int size = sc.nextInt();
		System.out.println("Enter the element in the array is :");
		int arr[] = new int[size];
		int max=arr[0];
		int max2=arr[0];

		for(int i=0;i<size;i++){
			arr[i]=sc.nextInt();
		}

		for(int i=1;i<size;i++){
			if(max<arr[i]){
				max=arr[i];
			}
		}
		for(int i=1;i<size;i++){
			if(max>arr[i] && max2<=arr[i]){
				max2=arr[i];
			}
		}
		System.out.println("The second largest element in the array is: "+max2);
	}
}
				

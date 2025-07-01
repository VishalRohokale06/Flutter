import java.util.*;

class Demo{
	public static void main(String[] args){
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter the size of the array:");
		int size = sc.nextInt();
	        System.out.println("Enter the elements of the array:");
		int arr[] = new int[size];
		int temp=0;

		for(int i=0;i<size;i++){
			arr[i]=sc.nextInt();
		}
		System.out.println("Reversed array:");
		for(int i=arr.length-1;i>=0;i--){
			//temp=arr[i];
			//arr[i]=arr[size-1-i];
			//arr[size-1-i]=temp;
		System.out.println(arr[i]);
		}
}
}


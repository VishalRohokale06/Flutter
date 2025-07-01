import java.util.*;

class Demo{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter size :");
		int size = sc.nextInt();
		System.out.println("Enter elements:");
		int arr[] = new int[size];
		int max=arr[0];
		int temp=0;

		for(int i=0;i<size;i++){
			arr[i]=sc.nextInt();
		}
		for(int i=0;i<size;i++){
			if(max<arr[i]){
				max=arr[i];
				temp=i;
			}
		}
		System.out.println("Maximum number in the array is found at pos " +temp+ " is " +max);
	}
}


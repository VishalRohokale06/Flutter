import java.util.*;

class Demo{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);

		System.out.println("Enter Size:");
		int size = sc.nextInt();
		int arr[] = new int[size];

		System.out.println("Enter array elements:");
		for(int i=0;i<arr.length;i++){
			arr[i]=sc.nextInt();
		}

		int sum=0;
		System.out.println("Give array elements:");
		for(int i=0;i<arr.length;i++){
                        System.out.println(arr[i]);
			sum+=arr[i];
                }
		System.out.println("Sum of array:"+sum);
	}
}

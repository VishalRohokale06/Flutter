import java.util.*;

class Demo{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter size :");
		int size = sc.nextInt();
		System.out.println("Enter arrya element :");
		int arr[] = new int[size];
		int sum=0;

		for(int i=0;i<size;i++){
			arr[i]=sc.nextInt();
		}

		for(int i=0;i<size;i++){
			sum+=arr[i];
		}
		int avg=sum/size;
		System.out.print("Array elements' average is :"+avg);
	}
}

			


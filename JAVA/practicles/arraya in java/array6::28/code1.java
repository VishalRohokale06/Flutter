import java.util.*;

class Demo{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter the size of the array:");
		int size = sc.nextInt();
		System.out.println("Enter the elements of the array:");
		int arr[] = new int[size];
		int num = arr[0];
		int flag=0;

		for(int i=0;i<size;i++){
			arr[i]=sc.nextInt();
		}

		for(int i=1;i<size;i++){
			if(num>arr[i]){
				num=arr[i];
				 flag=1;
			}
			else{
				num=arr[i];
				 flag=0;
			}
		}
		if(flag==1){
			System.out.println("Given array is in descending order.");
		}
		else{
			System.out.println("Given array is not in descending order.");

	}
	}

}


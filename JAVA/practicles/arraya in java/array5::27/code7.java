import java.util.*;

class Demo{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter size of the array:");
		int size = sc.nextInt();
		System.out.println("Enter elements of the array:");
		int arr[] = new int[size];
		int ele=0;

		for(int i=0;i<size;i++){
			arr[i]=sc.nextInt();
		}
                 
		System.out.print("Composite numbers in an array are:");
		for(int i=0;i<size;i++){
			if(arr[i]%2==0){
				System.out.print(arr[i] +",");
			}
		}

	}
}


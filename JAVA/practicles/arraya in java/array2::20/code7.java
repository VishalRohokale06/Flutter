import java.util.*;

class Demo{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter size :");
		int size = sc.nextInt();
		System.out.println("enter elements :");
		int arr[] = new int[size];
		
		for(int i=0;i<size;i++){
			arr[i]=sc.nextInt();
		}
		System.out.println("Array elements are :");
		for(int i=0;i<size;i++){
			if(size%2==0){
				System.out.println(arr[i]);
				i++;
			}
			else{
			System.out.println(arr[i]);
			}
		}
	}
}

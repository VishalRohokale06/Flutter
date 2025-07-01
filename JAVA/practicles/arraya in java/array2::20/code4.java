import java.util.*;

class Demo{
	public static void main(String[] args){

		Scanner sc = new Scanner(System.in);

		System.out.print("Enter the size :");
		int size = sc.nextInt();

		System.out.println("Enter element :");
		int arr[] = new int[size];

		for(int i=0;i<size;i++){
			arr[i]=sc.nextInt();
		}
		System.out.println("Enter the number to search in array :");
		int num = sc.nextInt();

		for(int i=0;i<size;i++){
			if(num==arr[i]){
				System.out.print(num +" found at index "+i);
			}
		}
		
	
	}
}

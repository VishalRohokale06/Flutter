import java.util.*;

class Demo{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter thr size of the array :");
		int size = sc.nextInt();
		System.out.println("Enter the element of array :");
		int arr[] = new int[size];
		int count=0;

		for(int i=0;i<size;i++){
			arr[i]=sc.nextInt();
		}
		System.out.println("Enter the number to check:");
		int num = sc.nextInt();
		for(int i=0;i<size;i++){
			if(num==arr[i]){
				count++;
			}
		}
		if(count>2){
		System.out.println(num+" occurs more than 2 times in the array.");
	}
	}
}


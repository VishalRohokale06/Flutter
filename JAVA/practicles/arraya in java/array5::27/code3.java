import java.util.*;

class Demo{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter size of array:");
		int size = sc.nextInt();
		System.out.println("Enter the elements of the array:");
		int arr[] = new int[size];
		int flag=0;
		int temp=0;

		for(int i=0;i<size;i++){
			arr[i]=sc.nextInt();
		}

		for(int i=0;i<size/2;i++){
			if((arr[i])==arr[size-1-i]){
				flag=1;
			}
			else{
				flag=0;
			
			}
			}
		if(flag==1){
		System.out.println("The given array is a palindrome array.");
		}
		else{
			System.out.println("The given array is not palindrome array.");
		}
	}

}



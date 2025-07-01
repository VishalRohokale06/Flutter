import java.util.*;

class Demo{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter the size of the array:");
		int size = sc.nextInt();
		System.out.println("Enter the elements of the array:");
		int arr[] = new int[size];

		for(int i=0;i<size;i++){
			arr[i]=sc.nextInt();
		}
		for(int i=0;i<size;i++){
			int fact = 1;
			for(int j=1;j<=arr[i];j++){
				fact*=j;
			}
			System.out.print(fact);
			if (i!=size-1){
				System.out.print(", ");
			}
			//else{
			//System.out.print(fact+", ");
		//}
		}

	}
}

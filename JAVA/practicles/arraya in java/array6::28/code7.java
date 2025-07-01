import java.util.*;

class Demo{
	public static void main(String[] args){
	Scanner sc = new Scanner(System.in);

	System.out.println("Enter size :");
	int size=sc.nextInt();
	System.out.println("Enter array element :");
	int arr[] = new int[size];

	for(int i=0;i<size;i++){
		arr[i]=sc.nextInt();
	}

	for(int i=0;i<size;i++){
		if(arr[i]>65 && arr[i]<97){
			System.out.println((char)arr[i]);
		}
		else{
			System.out.println(arr[i]);
		}
	}
}
}

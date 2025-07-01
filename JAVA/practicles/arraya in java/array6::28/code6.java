import java.util.*;

class Demo{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);

		int arr[]={5,10,16,20,25,30,35,4,8,12,16,20};

		System.out.print("Enter key :");
		int key = sc.nextInt();

		for(int i=0;i<arr.length;i++){
			if(arr[i]%key==0){
				System.out.println("An element multiple of "+key+" found at index :" +i);
			}
		}
	}
}

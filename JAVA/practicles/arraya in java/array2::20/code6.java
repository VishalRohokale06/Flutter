import java.util.*;

class Demo{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter size :");
		int size = sc.nextInt();
		System.out.println("Enter element :");
		int arr[] = new int[size];
		int pro = 1;

		for(int i=0;i<size;i++){
			arr[i] = sc.nextInt();
		}
		for(int i=0;i<size;i++){
			if(i%2==1){
				pro*=arr[i];
			}
		}
		System.out.println("product of odd indexed elements :"+pro);
	}
}




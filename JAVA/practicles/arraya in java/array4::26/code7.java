import java.util.*;

class Demo{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter the size of the array:");
		int size = sc.nextInt();
		System.out.println("Enter the elements of the array:");
		char arr[] = new char[size];

		for(int i=0;i<size;i++){
			arr[i]=sc.next().charAt(0);
		}
		for(int i=0;i<size;i++){
					System.out.print(Character.toUpperCase(arr[i])+"  ");
		
}
}
}





import java.util.Scanner;

class ArrayDemo{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);

		System.out.println("Enter array of size:");
		int size = sc.nextInt();
		int arr[] = new int[size];
		System.out.println("Size of an Array: "+arr.length);
	}
}

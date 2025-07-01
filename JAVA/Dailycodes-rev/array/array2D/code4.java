import java.util.*;

class TwoDArray{
	public static void main(String[] args){

		Scanner sc = new Scanner(System.in);

		System.out.println("Enter size for rows & colums :");

		int row = sc.nextInt();
		int column = sc.nextInt();

		int arr[][] = new int[row][column];

		System.out.println("Enter array elements:");
		for(int i=0;i<arr.length;i++){
			for(int j=0;j<arr.length;j++){
				arr[i][j] = sc.nextInt();
			}
		}
		System.out.println("Array elements are:");
		for(int i=0;i<arr.length;i++){
			for(int j=0;j<arr.length;j++){
				System.out.print(arr[i][j]+" ");
			}
			System.out.println();
		}
	}
}

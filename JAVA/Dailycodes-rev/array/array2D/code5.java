import java.util.*;

class TwoDArray{
	public static void main(String[] args){

		Scanner sc = new Scanner(System.in);

		System.out.println("Enter row & column :");

		int row = sc.nextInt();
		int col = sc.nextInt();
		int arr[][] = new int[row][col];

		System.out.println("Enter elements of array:");
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

		System.out.println(arr[1][1]);
		System.out.println(arr[1]);
		System.out.println(arr);
	}
}

import java.util.*;

class TwoDarray{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);

		System.out.println("Enter size for rows and cols:");
		int row = sc.nextInt();
		int col = sc.nextInt();
		int arr[][] = new int[row][col];
		System.out.println("Enter array elements :");

		for(int i=0 ;i<arr.length;i++){
			for(int j=0;j<arr[i].length;j++){
				arr[i][j] = sc.nextInt();
			}
		}
		System.out.println("Array element are:");
		for(int i=0;i<arr.length;i++){
			for(int j=0;j<arr[i].length;j++){
				System.out.println(arr[i][j]+" ");
			}
			System.out.println();
		}
	}
}

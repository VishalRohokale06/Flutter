import java.util.*;

class Demo{
	public static void main(String[] args){

		Scanner sc = new Scanner(System.in);

		System.out.println("Enter size of rows and columns:");
		int rows = sc.nextInt();
		int cols = sc.nextInt();
		
		int arr[][]=new int[rows][cols];

		System.out.println("Enter array elements:");
		for(int i=0;i<rows;i++){
			for(int j=0;j<cols;j++){
				arr[i][j]=sc.nextInt();
			}
		}
		System.out.println("Array elements are:");
		for(int i=0;i<rows;i++){
                        for(int j=0;j<cols;j++){
                                System.out.print(arr[i][j]+"\t");
                        }
			System.out.println();
                }
		 System.out.println(arr);
		 System.out.println(arr[1]);
	}
}

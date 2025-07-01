import java.util.*;

class Demo{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		int arr[] = {1,5,9,8,7,6};

		System.out.println("Specify number :");
		int num = sc.nextInt();
		int flag=0;

		for(int i=0;i<arr.length;i++){
			if(num==arr[i]){
				flag=1;
				
				System.out.println("num "+num+ " occured at index :"+i);
				break;
			}
		}
		if(flag==0){
		
				System.out.println("num "+num+ " not found in array");

			}
		}
	}




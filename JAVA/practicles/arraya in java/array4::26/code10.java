import java.util.*;

class Demo{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter size:");
		int size=sc.nextInt();
		System.out.println("Enter element:");
		char arr[]= new char[size];

		for(int i=0;i<size;i++){
			arr[i]=sc.next().charAt(0);
		}
		System.out.println("Enter character key :");
		char ch=sc.next().charAt(0);

		for(int i=0;i<size;i++){
			if(ch!=arr[i]){
				System.out.println(arr[i]);
			}
			else{
				break;
			}
		}
	}
}



import java.util.*;

class Demo{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter size :");
		int size = sc.nextInt();
		System.out.println("Enter the elemment of array :");
		char arr[] = new char[size];
		int count=0;

		for(int i=0;i<size;i++){
			arr[i]=sc.next().charAt(0);
		}
		System.out.println("Enter character to check:");
		char ch=sc.next().charAt(0);
		for(int i=0;i<size;i++){
			if(ch==arr[i]){
				count++;
			}
		}
		System.out.println(ch+" occurs "+count+" times in given arraay.");
	}
}


import java.util.*;

class Demo{
	public static void main(String[] args){

		Scanner sc = new Scanner(System.in);

		System.out.print("Enter size:");
		int size = sc.nextInt();
		int[] num = new int[size];

		for(int i=0;i<size;i++){
			num[i] = sc.nextInt();
		}
		for(int i=0;i<size;i++){
			if(i%2==1){
				System.out.println(num[i]+"is an odd indexed element");
			}
		}
	}
}

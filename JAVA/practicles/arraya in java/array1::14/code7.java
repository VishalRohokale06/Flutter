import java.util.*;

class Demo{
	public static void main(String[] args){

		Scanner sc = new Scanner(System.in);

		System.out.print("Enter size:");
		int size = sc.nextInt();
		int num[] = new int[size];

		for(int i=0;i<size;i++){
			num[i] = sc.nextInt();
		}
		for(int i=0;i<size;i++){
			if(num[i]%4==0){
				System.out.println(num[i]+ " is divisible by 4 and its index is " +i);
			}
		}
	}
}

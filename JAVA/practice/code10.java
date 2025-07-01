import java.util.*;

class Demo{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		int sum = 0;

		System.out.println("Size");

		int size = sc.nextInt();
		int num[] = new int[size];

		for(int i=0;i<size;i++){
			num[i] = sc.nextInt();
		}

		for(int i=0;i<size;i++){
			if(num[i]%2==1){
				sum += num[i];
			}
		}
		System.out.println(sum);
	}
}

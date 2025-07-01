import java.util.*;

class Demo{
	public static void main(String[] args){

		Scanner sc = new Scanner(System.in);

		System.out.print("Enter size:");
		int size = sc.nextInt();
		int[] num = new int[size];

	for(int i=0;i<size;i++){
		num[i]=sc.nextInt();
	}
	int sum=0;
	for(int i=0;i<size;i++){
	
		if(num[i]%2==1){
		sum=sum+num[i];
	}
	}
	System.out.print("sum of odd elements:"+sum);
	}
}


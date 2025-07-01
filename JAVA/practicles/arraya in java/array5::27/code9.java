import java.util.*;

class Demo{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter the Number:");
		long num=sc.nextLong();
		long arr[] = new long[10];
                
		int j=0;
		while(num!=0){
			long rem = num%10;
			arr[j]=rem+1;
			num=num/10;
			//j++;
		}
		for(int i=9;i>=0;i--){
			System.out.print(arr[i]+" , ");
		}
	}
}
		

import java.util.*;

class Prime{
	public static void main(String[] args){

		Scanner sc = new Scanner(System.in);

		System.out.println("lowno:");
		int low = sc.nextInt();

		System.out.println("highno:");
                int high = sc.nextInt();

		for(int i=low;i<=high;i++){
			int num=i;
			int count=0;
			for(int j=2;j*j<=num;j++){
				if(num%j==0){
					count++;
					break;
				}
			}
			if(count==0){
				System.out.println(num);
			}
		}
	}
}


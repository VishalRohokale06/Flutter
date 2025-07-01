import java.util.*;

class Prime{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);

		System.out.println("Take no:");
		int num = sc.nextInt();
		int count=0;

		for(int i=2;i*i<=num;i++){
			if(num%i==0){
				count++;
				break;
			}
		}
		if(count>0){
			System.out.println("Not Prime");
		}
		else{
                        System.out.println("Prime");
                }
	}
}

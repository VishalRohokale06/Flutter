import java.util.*;

class Demo{

	public static int freNum(int num,int val){
		int count=0;
		while(num>0){
			int digit = num%10;
			if(val==digit){
				count++;
			}
			num/=10;
		}
		return count;
	}

	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		int num = sc.nextInt();
		int dig = sc.nextInt();
		System.out.println(freNum(num,dig));
	}
}

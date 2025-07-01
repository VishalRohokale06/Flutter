import java.util.*;

class Demo{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);

		int num = sc.nextInt();
		int rno = sc.nextInt(); //rotation of no

		int temp=num;
		int count=0;

		while(temp>0){
			temp/=10;
			count++;
		}
		System.out.println(count);
		rno=rno%count;
		if(rno<0){
			rno+=count;
		}
		
		int div=1;
		int mul=1;
		for(int i=1;i<=count;i++){
			if(i<=rno){
				div*=10;
			}else{
				mul*=10;
			}
		}

		int q = num/div; //quetiont
		int r = num%div; //remainder

		int ans = r*mul + q;
		System.out.println(ans);
	}
}

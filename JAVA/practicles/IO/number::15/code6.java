import java.util.*;

class Demo{
	public static void main(String[] args){

		Scanner sc = new Scanner(System.in);

		System.out.print("Input=");
		int Input = sc.nextInt();

		int fact = 1;
		for(int i=1;i<=Input;i++){
			fact=fact*i;
		}
		System.out.print(fact);
	}
}

import java.util.*;

class Demo{
	public static void main(String[] args){

		Scanner sc = new Scanner(System.in);

		System.out.print("Input=");
		int Input=sc.nextInt();

			if(Input%2!=0){
				System.out.print(Input+" is a prime number");
			}
			else{
				System.out.print(Input+" is not a prime number");
			}
	}
}

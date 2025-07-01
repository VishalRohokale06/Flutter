import java.util.*;
class Demo{
	static void fun(){
		Scanner sc = new Scanner(System.in);

		int x=0;
		int y=0;
		try{
		x = sc.nextInt();
		y = sc.nextInt();
		}catch(Exception n){
			System.out.println("IO Mismatch");
		}

		System.out.println("In Fun");
		try{
			System.out.println(x/y);
		}catch(ArithmeticException e){
			System.out.println("Enter value again");
			y = sc.nextInt();
			try{
                        System.out.println(x/y);
                }catch(ArithmeticException a){
                        System.out.println("Enter value again");
                        y = sc.nextInt();
                        System.out.println(x/y);
                }
		}
		System.out.println("End fun");
	}
	public static void main(String[] args){
		System.out.println("Start Main");
		fun();
		System.out.println("End Main");
	}
}

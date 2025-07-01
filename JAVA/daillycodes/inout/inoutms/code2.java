import java.util.*;

class Demo{
	public static void main(String[] args){

		Scanner sc = new Scanner(System.in);
		System.out.print("Enter age: ");
		int age=sc.nextInt();
		//System.out.print("Enter age: ");

		if(age>=18){
			System.out.println("Voter is eligible for voting.");
		}
		else if(age<18 && age>0){
			System.out.println("Voter is not eligible for voting.");
		}
		else{
			System.out.println("Invalid Voter.");
		}
	}
}


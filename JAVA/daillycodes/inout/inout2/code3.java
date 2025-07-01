import java.util.*;

class ScannerDemo{
	public static void main(String[] args){

		Scanner sc=new Scanner(System.in);

		System.out.println("Enter name:");
		String name=sc.next();

		System.out.println("Enter College name:");
                String clgname=sc.next();

		System.out.println("Enter student id:");
                int studid=sc.nextInt();

		System.out.println("Enter CGPA:");
                Float marks=sc.nextFloat();


		System.out.println("Student name:"+ name);

		System.out.println("College name:"+clgname);

		System.out.println("I'd:" +studid);

		System.out.println("Marks:"+marks);
	}
}

import java.util.Scanner;

class Demo{
public static void main(String[] args){
	Scanner sc = new Scanner(System.in);

	System.out.println("Enter name:");
	String name = sc.next();

	System.out.println("Enter clgName:");
        String clgName = sc.next();

	System.out.println("Enter student Id:");
        int studId = sc.nextInt();

	System.out.println("Enter CGPA:");
        float marks = sc.nextFloat();

	System.out.println("Student Name :"+name);
	System.out.println("Student clgName :"+ clgName);
	System.out.println("Student Id :"+studId);
	System.out.println("Student CGPA :"+ marks);

}
}

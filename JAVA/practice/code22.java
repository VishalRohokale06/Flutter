import java.util.*;
class Demo{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);

		System.out.println("Name:");
		String name = sc.nextLine();

		System.out.println("wing:");
                char wing = sc.nextLine().charAt(0);

		System.out.println("flatNo:");
                int flatNo = sc.nextInt();

		System.out.println("Name:"+name);
		System.out.println("wing:"+wing);
		System.out.println("flatNo:"+flatNo);
	}
}

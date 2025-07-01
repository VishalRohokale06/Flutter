import java.util.*;

class InputDemo{
        public static void main(String[] args){
                Scanner sc = new Scanner(System.in);

		String name = sc.nextLine();
		char ch = sc.nextLine().charAt(0);
		int age = Integer.parseInt(sc.nextLine());

		System.out.println(name);
		System.out.println(ch);
		System.out.println(age);
	}
}

import java.util.Scanner;
import java.util.StringTokenizer;

class TokenDemo{
	public static void main(String[] args){

		Scanner sc = new Scanner(System.in);

		System.out.println("Enter Player Name:");
		String name = sc.nextLine();

		StringTokenizer st = new StringTokenizer(name," ");

		while(st.hasMoreTokens()){
			System.out.println(st.nextToken());
		}

	}
}

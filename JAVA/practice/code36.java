import java.util.*;

class TokenDemo{
	public static void main(String[] args){

		Scanner sc = new Scanner(System.in);

		System.out.println("Enter No");
		String no = sc.nextLine();

		StringTokenizer st = new StringTokenizer(no,"@#");

		while(st.hasMoreTokens()){
			System.out.println(st.nextToken());
		}
	}
}

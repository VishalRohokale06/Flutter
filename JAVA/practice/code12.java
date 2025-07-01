import java.util.*;

class Demo{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);

		int n = sc.nextInt();
		char ch[] = new char[n];

		for(int i=0;i<n;i++){
			ch[i] = sc.next().charAt(0);
		}

		for(int i=0;i<n;i++){
			System.out.println(ch[i]);
		}
	}
}


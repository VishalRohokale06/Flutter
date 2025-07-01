import java.util.*;

class Demo{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);

		char[] vowel = {'a','e','i','o','u','A','E','I','O','U'};

		int n = sc.nextInt();

		char ch[] = new char[n];

		for(int i=0;i<n;i++){
			ch[i] = sc.next().charAt(0);
		}

		for(int i=0;i<n;i++){
			for(int j=0;j<vowel.length;j++){
				if(ch[i] == vowel[j]){
					System.out.println(ch[i]+"at"+i);
				}
			}
		}
	}
}

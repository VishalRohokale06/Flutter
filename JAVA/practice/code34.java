import java.util.*;

class TokenDemo{
	public static void main(String[] args){

		Scanner sc = new Scanner(System.in);

		System.out.println("Enter player info:");
		String pInfo = sc.nextLine();

		StringTokenizer st = new StringTokenizer(pInfo," ");
		
		String str1 = st.nextToken();
		/*String str2 = st.nextToken();
		String str3 = st.nextToken();
		String str4 = st.nextToken();

		System.out.println("Player Name: "+str1);
		System.out.println("Player JerNo: "+str2);
		System.out.println("Player Avg: "+str3);
		System.out.println("Player Grade: "+str4);*/
		System.out.println("Player Name: "+str1);
/*
	}
}


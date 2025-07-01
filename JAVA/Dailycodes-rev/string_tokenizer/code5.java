import java.util.*;

class SingleLine{
	public static void main(String[] args){

		String str = "Core,2,web";

		StringTokenizer st = new StringTokenizer(str,",");

		while(st.hasMoreTokens()){
			System.out.println(st.nextToken()+",");
		}
	}
}

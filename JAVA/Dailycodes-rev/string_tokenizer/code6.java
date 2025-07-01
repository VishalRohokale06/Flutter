import java.util.*;

class Demo{
	public static void main(String[] args){

		String str = "true false";
		StringTokenizer st = new StringTokenizer(str," ");

		while(st.hasMoreTokens()){
			boolean b = Boolean.parseBoolean(st.nextToken());
			System.out.println(b);
		}
	}
}

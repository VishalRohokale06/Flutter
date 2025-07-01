import java.util.*;

class Demo{
	public static void main(String[] args){

		String str = "1 2 3";
		StringTokenizer st = new StringTokenizer(str," ");

		while(st.hasMoreElements()){
			int x = Integer.parseInt(st.nextToken());
			System.out.println(x);
		}
	}
}

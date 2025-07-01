import java.util.*;

class Demo{
	public static void main(String[] args){

		String str = "2.3 3.3 4.4";
		StringTokenizer st = new StringTokenizer(str,".");
		System.out.println(st.countTokens());
	}
}

//4
//"2"."3 3"."3 4"."4"

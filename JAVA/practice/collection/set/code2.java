import java.util.*;

class HashSetDemo{
	public static void main(String[] args){
		LinkedHashSet hs = new LinkedHashSet();

		hs.add(10);
		hs.add(20);
		hs.add(10);
		hs.add(30);
		hs.add(16);
		hs.add(50);
		hs.add(40);

		System.out.println(hs);
	}
}

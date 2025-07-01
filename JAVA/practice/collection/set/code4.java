import java.util.*;

class HashSetDemo{
	public static void main(String[] args){

		ArrayList al = new ArrayList();

		al.add(10);
		al.add(10);
		al.add(10);
		al.add(10);
		System.out.println(al);

		HashSet hs = new HashSet(al);
		System.out.println(hs);

		al.addAll(hs);
		System.out.println(al);
	}
}

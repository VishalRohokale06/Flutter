import java.util.*;

class HashSetDemo{
	public static void main(String[] args){

		Set s = new LinkedHashSet();

		s.add(10);
		s.add(20);
		s.add(30);
		s.add(40);
		s.add(50);
		s.add(50);

		System.out.println(s);

		s.remove(25);
		System.out.println(s);

		System.out.println(s.size());

		System.out.println(s.contains(20));

		s.clear();
		System.out.println(s);
	}
}

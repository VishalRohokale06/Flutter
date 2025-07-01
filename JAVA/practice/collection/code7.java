import java.util.*;

class SortedDemo{
	public static void main(String[] args){

		NavigableSet ss = new TreeSet();

		ss.add(10);
		ss.add(20);
		ss.add(40);
		ss.add(70);
		ss.add(30);
		ss.add(50);
		ss.add(60);

		System.out.println(ss);
		System.out.println(ss.lower(60));
		System.out.println(ss.floor(50));
		System.out.println(ss.ceiling(50));
		System.out.println(ss.higher(50));
		System.out.println(ss.pollFirst());
	}
}

import java.util.*;

class SortedDemo{
	public static void main(String[] args){

		SortedSet ss = new TreeSet();

		ss.add(10);
		ss.add(20);
		ss.add(40);
		ss.add(70);
		ss.add(30);
		ss.add(50);
		ss.add(60);

		System.out.println(ss);
		System.out.println(ss.subSet(20,60));
		System.out.println(ss.headSet(50));
		System.out.println(ss.tailSet(50));
		System.out.println(ss.first());
		System.out.println(ss.last());
	}
}

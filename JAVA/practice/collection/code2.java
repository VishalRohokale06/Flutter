import java.util.*;

class ArrayDemo{
	public static void main(String[] args){
		List al = new ArrayList();

		al.add(10);
		al.add(20);
		al.add("Shashi");
		al.add(10.20);

		System.out.println(al);

		al.add(50);
		System.out.println(al);

		System.out.println(al.contains(20));

		System.out.println(al.get(4));

		System.out.println(al.isEmpty());

	 	System.out.println(al.remove(4));

		System.out.println(al);

		al.set(2,"Badhe");
		System.out.println(al);
		System.out.println(al.size());
		al.clear();
		System.out.println(al);
	}
}

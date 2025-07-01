import java.util.*;

class ArrayListMethods extends ArrayList{
	public static void main(String[] args){

		ArrayListMethods al = new ArrayListMethods();

		al.add(10);
		al.add(20);
		al.add(30);
		al.add(40);
		al.add(50);
                al.add(20);
                al.add(30);

		System.out.println(al);
		System.out.println(al.indexOf(30));
		System.out.println(al.lastIndexOf(30));
		al.trimToSize();
		System.out.println(al);

		ArrayList al1 = new ArrayList();
		al1.add("Kanha");
		al1.add("Kanha");
		al1.add("Kanha");

		al.addAll(al1);
		System.out.println(al);
		al.removeRange(3,7);
		System.out.println(al);
		al.removeAll(al1);
		System.out.println(al);
	}
}

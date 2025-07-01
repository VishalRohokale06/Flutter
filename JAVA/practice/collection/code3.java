import java.util.*;

class ListMethods{
	public static void main(String[] args){
		List al = new ArrayList();

		al.add(10);
		al.add(20);
		al.add("Shashi");
		al.add("Kanha");
		al.add(10.22);

		System.out.println(al);
		System.out.println(al.contains(30));

		al.add(3,"Rahul");

		System.out.println(al);
		System.out.println(al.isEmpty());

		al.remove(1);
		System.out.println(al.remove("Shashi"));
		System.out.println(al);
	}
}

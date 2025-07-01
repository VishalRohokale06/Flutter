import java.util.*;

class HashSetDemo{
	public static void main(String[] args){

		HashSet hs = new HashSet();

		hs.add(10);
		hs.add(20);
		hs.add(30);
		hs.add(50);
		hs.add(20);
		hs.add(50);
		hs.add(40);

		System.out.println(hs);

		HashSet hs1 = new HashSet();

                hs1.add("Rahul");
                hs1.add("Shashi");
                hs1.add("Vishal");
                hs1.add("Vedant");
                hs1.add("Shashi");
                hs1.add("Rahul");
                hs1.add("Kanha");

                System.out.println(hs1);
	}
}



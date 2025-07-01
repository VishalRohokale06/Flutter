import java.util.*;

class Demo{
	public static void main(String[] args){
		Vector v = new Vector();

		v.addElement("Ashish");
		v.addElement("Kanha");
		v.addElement(10);
		v.addElement("Rahul");
		v.addElement("Shashi");

		ListIterator cursor = v.listIterator();

		while(cursor.hasNext()){
			System.out.println(cursor.next());
		}

		while(cursor.hasPrevious()){
			System.out.println(cursor.previous());
		}
	}
}

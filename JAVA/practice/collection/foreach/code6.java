import java.util.*;

class Demo{
	public static void main(String[] args){

		Vector v = new Vector();

		v.addElement(10);
		v.addElement(20);
		v.addElement("Shshi");
		v.addElement(40);
		v.addElement(50);

		Iterator cursor = v.iterator();

		while(cursor.hasNext()){
			System.out.println(cursor.next());
		}
	}
}

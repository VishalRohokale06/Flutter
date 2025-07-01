import java.util.*;

class Demo{
	public static void main(String[] args){

		Vector v = new Vector();

		v.addElement(10);
		v.addElement(20);
		v.addElement(30);
		v.addElement(40);

		//System.out.println(v);

		Enumeration cursor = v.elements();

		while(cursor.hasMoreElements()){
			System.out.println(cursor.nextElement());
		}
	}
}

import java.util.*;

class MapMethods{
	public static void main(String[] args){
		Map m = new HashMap();

		m.put("M","Meta");
		m.put("A","Amazon");
		m.put("A","Apple");
		m.put("N","Netflix");
		m.put("G","Google");

		System.out.println(m);
		m.remove("G");
		System.out.println(m);
	}
}

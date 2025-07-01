//IdentityHashMap -> Reference vr chalto

import java.util.*;

class IdentityDemo{
	public static void main(String[] args){

		IdentityHashMap hm = new IdentityHashMap();

		hm.put(new Integer(10),"Ashish");
		hm.put(new Integer(10),"rshish");
		hm.put(new Integer(10),"sshish");
		hm.put(new Integer(10),"tshish");

		System.out.println(hm);
	}
}

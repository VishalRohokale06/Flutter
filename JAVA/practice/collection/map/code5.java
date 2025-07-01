//weaked hashmap


import java.util.*;

class Demo{
	int data;
	Demo(int data){
		this.data = data;
	}
	public void finalize(){
		System.out.println("In finalize:"+data);
	}
}

class WeakDemo{
	public static void main(String[] args){
		WeakHashMap whm = new WeakHashMap();

		Demo obj1 = new Demo(10);
		Demo obj2 = new Demo(20);
		Demo obj3 = new Demo(30);

		
		whm.put(obj1,"x");
		whm.put(obj1,"y");
		whm.put(obj1,"z");

		System.out.println(whm);

		obj1=null;
		obj2=null;

		System.gc();
		System.out.println(whm);
	}
}

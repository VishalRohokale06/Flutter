import java.util.*;

class Demo{
	int data;
	Demo(int data){
		this.data=data;
	}
	public String toString(){
		return data+" ";
	}
}

class HashMapDemo{
	public static void main(String[] args){

		HashMap hm = new HashMap();

		Demo obj1 = new Demo(10);
		Demo obj2 = new Demo(20);
		Demo obj3 = new Demo(30);

		hm.put(obj1,"first");
		hm.put(obj2,"second");
		hm.put(obj3,"third");

		System.out.println(hm);
	}
}

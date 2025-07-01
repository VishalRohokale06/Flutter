interface Parent{
	default void marry(){
		System.out.println("In PMarry");
	}
//	void carrier();
}
class Child1 implements Parent{
//	public abstract void carrier();

	public void marry(){
		//System.out.println("Shradha");
	}
}

class Child2 extends Child1{
	public void carrier(){
		System.out.println("Hacker");
	}
	public static void main(String[] args){
		Child2 obj = new Child2();
		obj.marry();
		obj.carrier();
		Parent obj1 = new Child1();
		obj1.marry();
	}
}

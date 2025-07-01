class Parent{
	int x = 10;
	Parent(){
		System.out.println("Parent con");
	}
	void fun(){
		System.out.println("In fun-p");
	}
}

class Child extends Parent{
	int x = 20;
	Child(){
		super();

		System.out.println("Child con");
		System.out.println(x);
		System.out.println(super.x);
	}
	void fun(){
		System.out.println("In fun-c");
		super.fun();
	}
	public static void main(String[] args){
		Child obj = new Child();
		obj.fun();
	}
}

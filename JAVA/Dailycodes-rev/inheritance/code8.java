class Parent{
	int x = 10;
	Parent(){
		System.out.println("Parent Constructor");
	}
	void fun(){
		System.out.println("In fun parent");
	}
}

class Child extends Parent{
	int x = 20;
	Child(){
		System.out.println("Child Constrictor");
	}
	void fun(){
		System.out.println("In fun child");
	}

	public static void main(String[] args){
		Child obj = new Child();
		System.out.println(obj.x);
		obj.fun();
	}
}


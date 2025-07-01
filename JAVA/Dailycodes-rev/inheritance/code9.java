class Parent{
	int x = 10;
	Parent(){
		System.out.println("Parent Const");
	}
	void fun(){
		System.out.println("In fun-P");
	}
}
class Child extends Parent{
	int x = 20;
	Child(){
		System.out.println("Child Const");
		System.out.println(x);
		System.out.println(super.x);
	}
	void fun(){
		System.out.println("In fun-c");
	}
	public static void main(String[] args){
		Child obj = new Child();
	}
}

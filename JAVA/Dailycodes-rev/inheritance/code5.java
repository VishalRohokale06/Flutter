class Parent{
	int x = 10;
	int y = 20;
	Parent(){
		System.out.println("Parent Const");
	}
}
class Child extends Parent{
	int x = 30;
	int y = 40;
	Child(){
		System.out.println("Child Const");
	}

	public static void main(String[] args){
		Child obj = new Child();
		System.out.println(obj.x);
		System.out.println(obj.y);
	}
}

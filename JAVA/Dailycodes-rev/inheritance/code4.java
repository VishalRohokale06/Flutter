class Parent{
	int x =10;
	int y = 20;

	Parent(){
		System.out.println("Parnt Constructor");
	}
}
class Child extends Parent{
	Child(){
		System.out.println("Child COnstructor");
	}
}

class Client{
	public static void main(String[] args){
		Child obj = new Child();
		System.out.println(obj.x);
		System.out.println(obj.y);
	}
}

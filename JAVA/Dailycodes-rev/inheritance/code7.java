class Parent{
	int x = 10;
	int y = 20;
	Parent(){
		System.out.println("IN parent");
	}
}
class Child extends Parent{
	int x = 30;
	int y = 40;
	Child(){
		System.out.println("In child");
		System.out.println(x);
		System.out.println(y);
		System.out.println(super.x);
		System.out.println(super.y);
	}
	public static void main(String[] args){
		Child obj = new Child();
	}
}
		

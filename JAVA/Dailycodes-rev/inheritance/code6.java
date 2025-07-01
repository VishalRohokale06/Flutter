class Parent{
	int x = 10;
	int y = 20;
	Parent(){
		System.out.println("In Parent");
	}
}
class Child extends Parent{
	int x = super.x;
	int y = 40;
	Child(){
		System.out.println("In Child");
	}

	public static void main(String[] args){
		Child obj = new Child();
		System.out.println(obj.super.x);      //error
		//System.out.println(obj.x);
		//System.out.println(obj.y);
	}
}

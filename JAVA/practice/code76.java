class Parent{
	static void fun(){
		System.out.println("In fun");
	}
}
class Child extends Parent{
	static void fun(){
                System.out.println("In fun-child");
        }
}
class Client{
	public static void main(String[] args){
	//	Parent.fun();
		Parent obj = new Parent();
		obj.fun();
	}
}

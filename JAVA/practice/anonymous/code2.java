class Demo{
	void fun(){
		System.out.println("In fun");
	}
}
class DemoChild{
        void fun(){
                System.out.println("In demochildfun");
        }
}
class Clien{
	public static void main(String[] a){
	Demo obj = new Demo();
	obj.fun();
	DemoChild obj1 = new DemoChild();
	obj1.fun();
	Demo obj3 = new DemoChild();
	obj3.fun();
}
}

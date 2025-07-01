class Demo{
	int x=10;
	static int y=20;
	static{
		System.out.println("In Static Block");
	}
	void fun(){
		System.out.println("Non-static fun");
	}
	static void run(){
                System.out.println("Non-static run");
        } 
}

class DemoChild extends Demo{
	DemoChild(){
		System.out.println("In DemoChild Constructor");
	}
	public static void main(String[] args){
		Demo obj = new Demo();
		obj.fun();
		obj.run();
		DemoChild obj1 = new DemoChild();
	}
}

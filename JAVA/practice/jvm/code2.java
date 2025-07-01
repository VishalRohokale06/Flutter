class Demo{
	int x=10;
	static int y=20;
	static{
		System.out.println("In Static Block-Demo");
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
}

class Client{
	static{
		System.out.println("In Static Block-Client");
	}
	public static void main(String[] args){
		System.out.println("In main");
		//Demo obj = null;
			//new Demo();
		//obj.fun();
		Demo.run();
		//DemoChild obj1 = new DemoChild();
	}
}

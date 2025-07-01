class Demo{
	Demo(){
		System.out.println("Demo Constructor");
	}
	void fun(){
		System.out.println("In fun");
	}
	public void finalize(){
		System.out.println("In finalize");
	}
}

class Client{
	public static void main(String[] args)throws InterruptedException{
		System.out.println("Start main");
		Demo obj = new Demo();
		obj.fun();
		obj=null;
		
		Demo obj1 = new Demo();
                obj1.fun();
                obj1=null;

		System.gc();
		Thread.sleep(2000);
		System.out.println("End main");
	}
}

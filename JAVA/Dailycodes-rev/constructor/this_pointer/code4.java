class Demo{
	int x = 10;
	static int y = 20;

	void fun(){
		System.out.println("In fun");
	}

	static void run(){
		System.out.println("In run");
	}

	public static void main(String[] args){
		Demo obj = new Demo();
		System.out.println(obj.x);
		System.out.println(obj.y);
		obj.fun();
		obj.run();
	}
}

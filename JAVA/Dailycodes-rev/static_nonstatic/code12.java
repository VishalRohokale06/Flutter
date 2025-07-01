class Demo{
	int x = 10;
	static int y = 20;

	void fun(){

		//System.out.println(Demo.x);
		System.out.println(y);
		run();
	}

	static void run(){
		System.out.println("In run");
	}

	public static void main(String[] args){
		Demo obj = new Demo();
		obj.fun();
	}
}



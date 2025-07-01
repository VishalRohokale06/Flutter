class Demo{
	Demo(){
		System.out.println("In Demo");
	}
	static int x = initializeX();
	int y= initializeY();
	int initializeY(){
		System.out.println("Y");
		return 10;
	}
	{
		System.out.println("Instance block");
	}
	void run(){
                System.out.println("In run");
        }

	static int initializeX(){
		System.out.println("X");
		return 10;
	}
	static{
		System.out.println("Static Block1");
	}
	static void fun(){
		System.out.println("In fun");
	}
	public static void main(String[] args){
		Demo obj = new Demo();
		System.out.println("In main");
	}
}

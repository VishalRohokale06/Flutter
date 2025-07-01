class Demo{
	Demo(){
		System.out.println("In Demo");
	}

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

	public static void main(String[] args){
		Demo obj = new Demo();
		obj.run();
		System.out.println("In main");
	}
}

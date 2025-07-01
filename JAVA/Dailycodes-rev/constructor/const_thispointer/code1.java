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
		System.out.println(y);
		run();
	}
}

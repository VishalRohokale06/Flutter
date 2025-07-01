class Demo{
	Demo(){
		System.out.println("Demo Constructor");
	}
	public void finalize(){
		System.out.println("Object gheun jatoy");
	}
}

class Client{
	static void fun(){
		Demo obj1 = new Demo();
		Demo obj2 = new Demo();
	}
	public static void main(String[] args){
		System.out.println("Start Main");
		fun();
		System.out.println("End Main");
	}
}

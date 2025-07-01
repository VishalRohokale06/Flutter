class Client{
	static void fun(int x){
		if(x==10){
			Demo obj = new Demo();
		}
	}
	public static void main(String[] args)throws InterruptedException{
		System.out.println("Start Main");
		fun(10);
		Thread.sleep(5000);
		System.out.println("End Main");
	}
}

class Demo{
	Demo(){
		System.out.println("Demo Constructor");
	}
	public void finallize(){
		System.out.println("Object gheun jato");
	}
}

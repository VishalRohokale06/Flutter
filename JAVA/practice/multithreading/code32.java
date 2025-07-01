class Client{
	public static void main(String[] args){
		//ThreadDemo td = new ThreadDemo();
		//Thread t1 = new Thread(td);
		//t1.start();
		Runnable ref = ()->{
				System.out.println(Thread.currentThread().getName());
		};
		Thread t1 = new Thread(ref);
		t1.start();
		System.out.println(Thread.currentThread().getName());
	}
}

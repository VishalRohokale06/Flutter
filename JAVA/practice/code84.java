class ThreadDemo extends Thread{
	public void run(){
		for(int i=1;i<=5;i++){
			System.out.println(Thread.currentThread().getName());
		//	Thread.sleep(2000);
		}
	}
	public static void main(String[] args)throws InterruptedException{
		System.out.println("Start Main");
		System.out.println(Thread.currentThread().getName());
		ThreadDemo obj = new ThreadDemo();
		obj.start();
		for(int i=0;i<5;i++){
			System.out.println(Thread.currentThread().getName());
			Thread.sleep(2000);
		}
	}
}

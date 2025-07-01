class ThreadDemo extends Thread{
	public void run(){
		System.out.println(Thread.currentThread().getName());
		for(int i=0;i<5;i++){
			System.out.println("In run");
		}
	}
	public static void main(String[] args)throws InterruptedException{
		System.out.println("Start main");
		ThreadDemo obj = new ThreadDemo();
		obj.start();
		for(int i=0;i<5;i++){
                                System.out.println("Before Sleep");
                }
//		Thread.sleep(2000);
		for(int i=0;i<5;i++){
				System.out.println("In Main");
		}
	}
}

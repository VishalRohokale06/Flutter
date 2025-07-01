class ThreadDemo extends Thread{
	public void run()throws InterruptedException{
		for(int i=0;i<10;i++){
			System.out.println("In run");
			Thread.sleep(2000);
		}
	}
}

class Demo{
	public static void main(String[] args)throws InterruptedException{
		ThreadDemo t1 = new ThreadDemo();
		t1.start();
		for(int i=0;i<10;i++){
                        System.out.println("In Main");
			Thread.sleep(2000);
                }
	}
}

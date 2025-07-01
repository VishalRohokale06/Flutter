class ThreadDemo extends Thread{
	static Thread mainThread = null;
	public void run(){
		for(int i=0;i<5;i++){
			System.out.println("In run");
			try{
				mainThread.join();
			}catch(Exception ie){
				ie.printStackTrace();
			}
		}
	}
	public static void main(String[] args)throws InterruptedException{
		mainThread = Thread.currentThread();
		System.out.println(mainThread);

		ThreadDemo t1 = new ThreadDemo();
		t1.start();
		for(int i=0;i<5;i++){
                        System.out.println("In main");
			t1.join();
                }
	}
}

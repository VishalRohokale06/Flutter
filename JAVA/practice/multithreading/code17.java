class ThreadDemo extends Thread{
	public void run(){
		for(int i=0;i<5;i++){
			System.out.println("In run");
			try{
				Thread.sleep(2000);
			}catch(Exception ie){
				ie.printStackTrace();
			}
		}
	}
}

class Demo{
	public static void main(String[] args)throws InterruptedException{
		ThreadDemo t1 = new ThreadDemo();
		t1.start();
		//Thread.currentThread()
		t1.join();
		for(int i=0;i<5;i++){
                        System.out.println("In main");
                }
	}
}

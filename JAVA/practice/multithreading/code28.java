class ThreadDemo extends Thread{
	public void run(){
	//	for(int i=0;i<5;i++){
	//		System.out.println(getName());
			//Thread.sleep(2000);
			/*try{
				Thread.sleep(2000);
			}catch(Exception ie){

		}*/
			if(Thread.currentThread().isDaemon()){
				System.out.println("Daemon");
			}else{
				System.out.println("Normal");
			}
	//	}
	}
}

class Client{
	public static void main(String[] args){
		ThreadDemo t1 = new ThreadDemo();
		ThreadDemo t2 = new ThreadDemo();
		ThreadDemo t3 = new ThreadDemo();
		t2.setDaemon(true);

		t1.start();
		t2.start();
		t3.start();
	}
}

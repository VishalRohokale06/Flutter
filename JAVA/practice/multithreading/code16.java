class ThreadDemo extends Thread{
	public void run(){
		for(int i=0;i<5;i++){
			System.out.println("In run");
		}
	}
}

class Demo{
	public static void main(String[] args){
		ThreadDemo t1 = new ThreadDemo();
		t1.start();
		Thread.yield();
		for(int i=0;i<5;i++){
                        System.out.println("In main");
                }
	}
}

class ThreadDemo extends Thread{
	public void run(){
		for(int i=0;i<10;i++){
			//System.out.println("In run-ThreadDemo");
			System.out.println(Thread.currentThread().getName());
		}
	}
}

class MyThread extends Thread{
	public void run(){
		for(int i=0;i<10;i++){
			System.out.println(Thread.currentThread().getName());
			//System.out.println("In run");
		}
	}
}

class Clients{
	public static void main(String[] args){
		MyThread mt = new MyThread();
		ThreadDemo td = new ThreadDemo();
		mt.start();
		td.start();
		/*for(int i=0;i<10;i++){
                        System.out.println("In Main");
                }*/
	}
}

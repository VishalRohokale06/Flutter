class ThreadDemo extends Thread{
	public void run(){
		System.out.println(getPriority());
		System.out.println(Thread.currentThread().getPriority());
	}
}

class Client{
	public static void main(String[] args){
		System.out.println(Thread.currentThread().getPriority());
		ThreadDemo t = new ThreadDemo();
		System.out.println(t.getPriority());
		t.start();
	}
}


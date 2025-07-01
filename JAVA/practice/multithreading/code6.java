class ThreadName extends Thread{
	public void run(){
		System.out.println(Thread.currentThread());
		System.out.println(Thread.currentThread().getName());
		System.out.println(getName());
	}
}

class Client{
	public static void main(String[] args){
		ThreadName t1 = new ThreadName();
		t1.start();
	}
}

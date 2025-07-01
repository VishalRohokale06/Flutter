class ThreadDemo extends Thread{
	ThreadDemo(String str){
		super(str);
	}
	public void run(){
		System.out.println(Thread.currentThread());
	}
}

class Demo{
	public static void main(String[] args){
		System.out.println(Thread.currentThread().getName());
		ThreadDemo t1 = new ThreadDemo("Vishal");
		t1.start();
		System.out.println(t1.getName());
		System.out.println(Thread.currentThread().getName());
	}
}

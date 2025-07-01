class ThreadDemo extends Thread{
	public void run(){
		System.out.println(getPriority());
		System.out.println(Thread.currentThread().getName());
		System.out.println(10/0);
	}
}

class Demo{
	public static void main(String[] args){
		//System.out.println(Thread.currentThread().getName());
		Thread.currentThread().setPriority(7);
		ThreadDemo t1 = new ThreadDemo();
		t1.setName("VR");
		t1.setPriority(3);
		t1.start();
		//System.out.println(Thread.currentThread().getName());
		//System.out.println(t1.getPriority());
		//System.out.println(Thread.currentThread().getPriority());
	}
}

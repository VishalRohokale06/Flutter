class MyThread extends Thread{
	public void run(){
		for(int i=0;i<5;i++){
			System.out.println(Thread.currentThread().getName());
		}
	}
}

class Client{
	public static void main(String[] args){
		MyThread mt = new MyThread();
		mt.start();

		MyThread mt1 = new MyThread();
		mt1.start();

		MyThread mt2 = new MyThread();
                mt2.start();
	}
}

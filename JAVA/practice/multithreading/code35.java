class Client{
	public static void main(String[] args){
		Runnable ref = () -> {
				System.out.println(Thread.currentThread().getName());
		};
		Thread t1 = new Thread(ref);
		t1.start();
		System.out.println(Thread.currentThread().getName());
	}
}

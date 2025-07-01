class ThreadDemo extends Thread{
        public static void main(String[] args)throws InterruptedException{
                System.out.println("Start Main");
                System.out.println(Thread.currentThread().getName());
                ThreadDemo obj = new ThreadDemo();
                obj.start();
                System.out.println(Thread.currentThread().getName());
        }
	public void run(){
                System.out.println(Thread.currentThread().getName());                                                           }
}

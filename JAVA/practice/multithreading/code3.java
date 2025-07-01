class ThreadDemo{
	static void fun() throws InterruptedException{
		for(int i=0;i<5;i++){
			System.out.println("In fun");
			Thread.sleep(2000);
		}
	}
	public static void main(String[] args)throws InterruptedException{
		System.out.println("Start Main");
		fun();
		for(int i=0;i<5;i++){
                        System.out.println("In fun");
                        Thread.sleep(2000);
                }
		System.out.println("End Main");
	}
}


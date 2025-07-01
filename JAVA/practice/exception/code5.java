class Demo{
	Demo()throws InterruptedException{
		System.out.println("In Constructor");
		Thread.sleep(3000);
		System.out.println("End Constructor");
	}
        public static void main(String[] args)throws InterruptedException{
                System.out.println("Start Main");
		Demo obj = new Demo();
		Thread.sleep(5000);
		System.out.println("End Main");
	}
}

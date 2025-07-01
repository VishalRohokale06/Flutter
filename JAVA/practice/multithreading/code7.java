class NameDemo extends Thread{
	NameDemo(String str){
		super(str);
	}
	public void run(){
		System.out.println(getName());
		System.out.println(Thread.currentThread().getName());
	}
}

class Client{
	public static void main(String[] args){
		System.out.println(Thread.currentThread().getName());
		NameDemo t1 = new NameDemo("Shashi");
		t1.start();
		System.out.println(t1.getName());
	}
}

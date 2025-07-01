class NameDemo extends Thread{
	public void run(){
		System.out.println(getName());
		System.out.println(Thread.currentThread().getName());
	}
}

class Client{
	public static void main(String[] args){
		System.out.println(Thread.currentThread().getName());
		NameDemo t = new NameDemo();
		t.setName("VR");
		t.start();
		System.out.println(t.getName());
		System.out.println(Thread.currentThread().getName());
	}
}

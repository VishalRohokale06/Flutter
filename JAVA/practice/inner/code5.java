class Outer{
	static int x=10;
	int y=20;
	static void run(){
		System.out.println("In static run");
	}
	void fun(){
		System.out.println("In ns fun");
	}
	class Inner{
		int x=20;
		Inner(){
			System.out.println(x);
			run();
		}
	}
}

class Client{
	public static void main(String[] args){
		Outer.Inner obj = new Outer().new Inner();
	}
}

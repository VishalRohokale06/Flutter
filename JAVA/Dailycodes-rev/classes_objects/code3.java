//ACCESS SPECIFIER 

class DemoOne{
	private int x = 10;
	int y = 20;

	private void fun(){
		System.out.println("In fun");
	}

	void run(){
		System.out.println("In run");}

	public static void main(String[] args){
		DemoOne obj = new DemoOne();

		System.out.println(obj.x);
	}
}

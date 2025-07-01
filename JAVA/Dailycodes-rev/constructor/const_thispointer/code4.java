class Demo{
	int x = 10;
	int y = 20;

	Demo(){
		System.out.println("In constructor");
	}

	void disp(){
		System.out.println(x);
		System.out.println(y);
	}
}

class Client{
	public static void main(String[] args){
		Demo obj = new Demo();
		obj.disp();
	}
}

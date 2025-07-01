class Demo{
	int x = 10;
	Demo(){
		System.out.println("In constructor");
		return;
	}
	void fun(){
		System.out.println("In fun");
	}
}

class ConstrDemo{
	public static void main(String[] args){
		System.out.println("Start Main");
		Demo obj = new Demo();
		System.out.println("End Main");
	}
}

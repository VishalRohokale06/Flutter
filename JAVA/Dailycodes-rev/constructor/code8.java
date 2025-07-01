class Demo{
	Demo(){
		System.out.println();
	}
	void fun(){
		System.out.println("In fun");
	}
}

class ConstDemo{
	public static void main(String[] args){
		System.out.println("Start Main");
		Demo obj = new Demo();
		System.out.println("In End Main");
	}
}

class Demo{
	Demo(int x){
		System.out.println("in Cons");
	}
	void fun(){
		System.out.println("In fun");
	}
}

class ConstrDemo{
	public static void main(String[] args){
		System.out.println("Start Main");
		Demo obj = new Demo(10);
		System.out.println("End Main");
	}
}

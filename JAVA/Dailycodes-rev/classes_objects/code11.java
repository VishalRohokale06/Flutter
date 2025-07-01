class Xyz{
	void gun(){
		System.out.println("In gun");
	}
	void fun(int x){
		System.out.println("In fun");
		System.out.println(x);
	}
}

class Demo{
	void run(int i, float f){
		System.out.println("In run");
		System.out.println(i);
		System.out.println(f);
	}
	public static void main(String[] args){
		Xyz obj2 = new Xyz();
		obj2.gun();
		obj2.fun(10);

		Demo obj = new Demo();
		obj.run(10,20.2f);
	}
}

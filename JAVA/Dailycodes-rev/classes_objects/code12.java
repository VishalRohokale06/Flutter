class Demo{
	void fun(int x,int y){
		System.out.println("In fun");
		System.out.println(x);
		System.out.println(y);
	}
	void run(double a,double b){
		System.out.println("In run");
		System.out.println(a);
		System.out.println(b);
	}
	public static void main(String[] args){
		Demo obj = new Demo();
			obj.fun('A','B');
			obj.run(10.1,10.333);
	}
}

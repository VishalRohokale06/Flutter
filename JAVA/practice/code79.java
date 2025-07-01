class Demo{
	static void fun(int x,int y){
		System.out.println("Start-Fun");
		System.out.println(x/y);
                System.out.println("End-Fun");
	}
	public static void main(String[] rg){
		System.out.println("Start");
			fun(10,0);
		System.out.println("End");
	}
}

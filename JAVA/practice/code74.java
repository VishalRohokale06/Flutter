interface Demo{
	default void demo(){
		System.out.println("Demo demo");
	}
}
class Outer implements Demo{
	public static void main(String[] args){
		Demo obj = new Demo();
		/*{
			public void demo(){
				System.out.println("Outer Demo");
			}
		}*/
		obj.demo();
	}
}

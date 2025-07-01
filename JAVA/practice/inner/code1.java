class Outer{
	void fun(){
		class Inner{
			Inner(){
				System.out.println("Inner const");
			}
		}
		Inner obj = new Inner();
	}
	public static void main(String[] args){
		Outer obj = new Outer();
		obj.fun();
	}
}

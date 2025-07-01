class Outer{
	void fun(){
		class Inner{
		}
	}
	void run(){
		System.out.println("In run");

		class Inner1{
			Inner1(){
				System.out.println("Innner1 con");
			}
		}
	}
	Inner obj = new Inner();
	obj.run();
	public static void main(String[] args){
		Outer obj = new Inner();
	}
}


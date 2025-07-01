class Outer{
	void fun(){
		class Inner{
			Inner(){
				System.out.println("Inner const");
			}
		}
	}
	void run(){
		class Inner1{

		}
		class Inner2{

		}
		Inner1 obj = new Inner1();
	}
	Inner obj1 = new Inner();
	obj1.run();

	public static void main(String[] args){
		Outer obj = new Outer();
		obj.fun();
	}
}


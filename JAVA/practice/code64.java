class Outer{
	Outer(){
		System.out.println("Outer const");
	}
	class Inner1{
		Inner1(int x){
			System.out.println("Inner1 const");
		}
		class Inner2{
         	       	Inner2(int x){
                      	  System.out.println("Inner2 const");
			}
		}
	}
	public static void main(String[] args){
/*		Outer obj1 = new Outer();
		Inner1 obj2 = obj1.new Inner1(10);
		Inner1.Inner2 obj3 = obj2.new Inner2(20);
*/
		Inner1.Inner2 obj = new Outer().new Inner1(10).new Inner2(10);
	}
}

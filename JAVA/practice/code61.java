class Outer{
	int x=10;
	class Inner{
	}
	 public static void main(String[] args){
                Outer obj = new Outer();
                Inner obj1 = obj.new Inner();
                //Inner obj1 = new Outer().new Inner();
        }
}
/*class Demo{
	public static void main(String[] args){
		//Outer obj = new Outer();
		//Outer.Inner obj1 = obj.new Inner();
		Outer.Inner obj1 = new Outer().new Inner();
	}
}*/

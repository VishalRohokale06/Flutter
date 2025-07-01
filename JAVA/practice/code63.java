class Outer{
	int x=10;
	Outer(int x){
		System.out.println(x);
		System.out.println(this.x);
	}
	class Inner{
		int x=30;
		Inner(int x){
			System.out.println(x);
			System.out.println(this.x);
			System.out.println(Outer.this.x);
		}
	}
	public static void main(String[] args){
		Outer obj = new Outer(20);
		Inner obj1 = obj.new Inner(40);
	}
}

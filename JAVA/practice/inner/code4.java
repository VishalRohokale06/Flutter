class Outer{
	static int x=10;
	static int y=20;
	static class Inner{
		Inner(){
		Outer obj = new Outer();
			System.out.println(x);
		}
	}
	public static void main(String[] args){
		Inner obj = new Inner();
	}
}

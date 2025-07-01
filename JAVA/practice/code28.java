class Demo{
	public static void main(String[] args){

		String str = new String("Vishal");
		System.out.println(System.identityHashCode(str));

		str=str+"Rohokale";
		System.out.println(System.identityHashCode(str));
	}
}

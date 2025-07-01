class Demo{
	public static void main(String[] args){
		String str1 = "Vishal";
		String str2 = new String("Vishal");
		String str3 = "Vishal";
                String str4 = new String("Vishal");

		System.out.println(str1);
		System.out.println(str2);
		System.out.println(str3);
                System.out.println(str4);

		System.out.println(System.identityHashCode(str1));
		System.out.println(System.identityHashCode(str2));
		System.out.println(System.identityHashCode(str3));
                System.out.println(System.identityHashCode(str4));
	}
}

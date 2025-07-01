class Demo{
	public static void main(String[] args){
		String str1 = "Vishal";
		String str2 = str1;

		System.out.println(System.identityHashCode(str1));
		System.out.println(System.identityHashCode(str2));
	}
}

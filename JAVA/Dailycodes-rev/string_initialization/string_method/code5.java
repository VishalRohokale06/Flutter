class CompareToStringDemo{
	public static void main(String[] args){

		String str1 = "Vishal";
		String str2 = "VISHAL";
		String str3 = "Anuj";
		String str4 = "Vishal";

		
		System.out.println(str1.compareTo(str2));
		System.out.println(str1.compareTo(str3));
		System.out.println(str1.compareTo(str4));
	}
}

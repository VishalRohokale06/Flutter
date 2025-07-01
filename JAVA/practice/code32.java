class Demo{
	public static void main(String[] args){
		String str1 = "Ashish";
		String str2 = "Ashisa";
		String str3 = " Ashish iVVV";

		System.out.println(str1.indexOf('h'));
		System.out.println(str1.indexOf('h',3));
		System.out.println(str1.indexOf('x'));

		System.out.println(str1.replace('h','x'));
		System.out.println(str1.substring(2,5));
		System.out.println(str1.toLowerCase());
		System.out.println(str1.toUpperCase());
		System.out.println(str3.trim());
	}
}

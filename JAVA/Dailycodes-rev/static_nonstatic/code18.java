import java.io.*;

class InputDemo{
	public static void main(String[] args)throws IOException{
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

		System.out.println("Enter your name :");
		String name = br.readLine();
		System.out.println("Enter your SocityName :");
		String scName = br.readLine();
		//int age = Integer.parseInt(br.readLine());
		System.out.println("Enter your wing :");
		char wing = (char)br.read();
		br.skip(1);
		System.out.println("Enter your flat no :");
		int flatNo = Integer.parseInt(br.readLine());

		System.out.println("Your Name :" +name);
		System.out.println("Your SocityName :"+scName);
	        System.out.println("Your wing :"+wing);
		System.out.println("Your flat no :"+flatNo);
	}
}

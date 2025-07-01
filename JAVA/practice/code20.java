import java.io.*;

class Demo{
	public static void main(String[] args)throws IOException{
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

		System.out.println("Enter your name:");
		String name = br.readLine();

		System.out.println("Enter your age:");
                int age =Integer.parseInt(br.readLine());

		System.out.println("Enter your cmpName:");
                String cmpName = br.readLine();

		System.out.println("Name:"+name);
		System.out.println("Age:"+age);
		System.out.println("cmpName:"+cmpName);
	}
}


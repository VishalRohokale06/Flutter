import java.io.*;

class Demo{
	public static void main(String[] args)throws IOException{

		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

		System.out.println("Enter your name:");
		String name = br.readLine();

		System.out.println("Enter your clgName:");
                String clgName = br.readLine();

		System.out.println("Enter wing:");
                char wing = (char)br.read();

		br.skip(1);

		System.out.println("Enter flat no:");
                int flatno = Integer.parseInt(br.readLine());

		System.out.println("Name:"+name);
		System.out.println("clgName:"+clgName);
		System.out.println("Wing:"+wing);
		System.out.println("FlatNo:"+flatno);
	}
}

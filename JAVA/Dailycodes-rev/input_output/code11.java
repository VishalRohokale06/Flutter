import java.io.*;

class InputDemo{
	public static void main(String[] args)throws IOException{
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		String name = br.readLine();
		System.out.println(name);
		String cmpName = br.readLine();
		System.out.println(cmpName);
	}
}

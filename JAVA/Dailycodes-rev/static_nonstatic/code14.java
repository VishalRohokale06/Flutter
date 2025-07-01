import java.io.*;

class InputDemo{
	public static void main(String[] args)throws IOException{

		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

		String name = br.readLine();
		char wing = (char)br.read();

                System.out.println(name);
                System.out.println(wing);
	}
}

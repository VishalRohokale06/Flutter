import java.io.*;

class InputDemo{
	public static void main(String[] args)throws IOException{
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		String name = br.readLine();
		String scName = br.readLine();
		char wing = br.readLine().charAt(0);
		int fltNo = Integer.parseInt(br.readLine());


		System.out.println(name);
		System.out.println(scName);
		System.out.println(wing);
		System.out.println(fltNo);
	}
}

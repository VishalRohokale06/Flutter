import java.io.*;

class InputDemo{
	public static void main(String[] args)throws IOException{
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		String cmpName = br.readLine();
		int empId = Integer.parseInt(br.readLine());

		System.out.println(cmpName);
		System.out.println(empId);
	}
}

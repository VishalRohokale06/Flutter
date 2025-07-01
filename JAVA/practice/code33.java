import java.io.*;

class Demo{
	public static void main(String[] args)throws IOException{

		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

		System.out.println("Enter cmpName");
		String cmpName = br.readLine();
		br.close();

		System.out.println("Enter cmpCode");
		char cmpCode = br.readLine().charAt(0);
		
		System.out.println("Enter empNo");
		int empNo = Integer.parseInt(br.readLine());

		System.out.println("Enter wing:");
		char wing = (char) br.read();
		br.skip(1);

		System.out.println("Enter cmpLocation");
		String cmpLoc = br.readLine();

		System.out.println("cmpName:"+cmpName);
		System.out.println("cmpCode:"+cmpCode);
		System.out.println("empNo:"+empNo);
		System.out.println("wing:"+wing);
		System.out.println("cmpLocation:"+cmpLoc);
	}
}



import java.io.*;

class Demo{
	public static void main(String[] a)throws IOException{
		
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

		System.out.println("Enter Name1:");
		String str1=br.readLine();
		br.close();

		System.out.println("Enter Name2:");
                String str2=br.readLine();
	}
}

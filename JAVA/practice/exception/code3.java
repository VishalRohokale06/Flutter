import java.io.*;

class Demo{
	public static void main(String[] args){
		
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		try{
			br.close();
		}catch(Exception e){}
		String str = null;
		try{
			str = br.readLine();
		}catch(Exception e){
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
	}
}

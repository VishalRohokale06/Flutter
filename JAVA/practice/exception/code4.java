import java.io.*;

class Demo{
	public static void main(String[] args)throws IOException{

		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

		int x=0;
		int y=0;

		System.out.println("Enter value of x & y");
		try{
			x=Integer.parseInt(br.readLine());
			y=Integer.parseInt(br.readLine());
			System.out.println(x/y);
		}catch(IOException ioe){
			System.out.println("Connection Closed");
		}catch(NumberFormatException nfe){
			System.out.println("Wrong Input");
		}catch(ArithmeticException ae){
			System.out.println("Please enter y value again");
			y=Integer.parseInt(br.readLine());
			System.out.println(x/y);
		}finally{
			System.out.println("Clean up code");
		}
		System.out.println("End Main");
	}
}
	

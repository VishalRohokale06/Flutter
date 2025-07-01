import java.io.*;

class Demo{
	public static void main(String[] args){

		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

		int x=0;
		int y=0;

		try{
			x=Integer.parseInt(br.readLine());
			y=Integer.parseInt(br.readLine());
			Thread.sleep(5000);
			System.out.println(x/y);
		}catch(IOException ioe){
			System.out.println("IOException block");
		}catch(NumberFormatException nfe){
                        System.out.println("NumberFormatException block");
                }catch(ArithmeticException ioe){
                        System.out.println("ArithmeticException block");
                } 
		catch(InterruptedException ioe){
                        System.out.println("InterruptedException block");
                }
		finally{
			System.out.println("In finally block");
		}
	}
}

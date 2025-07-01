import java.io.*;
class Demo extends RuntimeException{
	Demo(String str){
	super(str);
	}

}
class Clien{
	public static void main(String[] args){

		System.out.println("Start code");
		try{
			throw new Demo("Vishal");
		}catch(Exception e){
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		//System.out.println("End code")
		}
}

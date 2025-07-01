import java.io.*;

class MyException extends Exception{
	MyException(String str){
		super(str);
	}
}
class Client{
	public static void main(String[] args){
		try{
			throw new MyException("Swatche exception");
		}catch(MyException ioe){
			ioe.printStackTrace();
		}
	}
}

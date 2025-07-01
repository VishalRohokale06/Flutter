import java.io.*;

class FileNotFoundEx{
	public static void main(String[] args)throws FileNotFoundException,IOException{

		File fl = new File("abc.txt");
		FileReader fr = new FileReader(fl);

		System.out.println(fr.read());
	}
}

import java.io.*;

class FileDemo{
	public static void main(String[] args)throws IOException{

		File fobj = new File("Incubators.txt");
		fobj.createNewFile();

		File dobj = new File("Java2025");
		dobj.mkdir();

		File fidobj = new File(dobj,"C2W.txt");
		fidobj.createNewFile();
	}
}

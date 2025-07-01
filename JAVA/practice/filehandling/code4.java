import java.io.*;

class FileRead{
	public static void main(String[] args)throws IOException{

	FileReader fr = new FileReader("Incubator.txt");
	int ch;
	while((ch=fr.read()) != -1){
		System.out.print((char)ch);
	}
	fr.close();
	}
}

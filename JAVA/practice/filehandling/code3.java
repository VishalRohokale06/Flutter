import java.io.*;

class FileWrite{
	public static void main(String[] args)throws IOException{
		FileWriter obj = new FileWriter("Incubator.txt",true);
		obj.write("Flutter\n");
		obj.write("SpringBoot\n");
		obj.write("ReactJs\n");
		obj.close();
	}
}

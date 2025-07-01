import java.io.*;

class DirList{
	public static void main(String[] args)throws IOException{
		//File fobj = new File("/home/vishal/vishal_core2web_java/JAVA/practice/filehandling");
		File fobj = new File("./../filehandling");
		String names[] = fobj.list();
		System.out.println(fobj.isDirectory());
		for(int i=0;i<names.length;i++){
			System.out.println(names[i]);
		}
	}
}

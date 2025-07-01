import java.io.*;

class InputDemo{
        public static void main(String[] args)throws IOException{

                //InputStreamReader isr = new InputStreamReader(System.in);
                BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

                String name = br.readLine();
                System.out.println("Name:"+name);

                String compName = br.readLine();
                System.out.println("CompName:"+compName);
        }

}

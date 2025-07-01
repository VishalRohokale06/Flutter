import java.io.*;

class InputDemo{
        public static void main(String[] args)throws IOException{

                BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

                String name = br.readLine();
                int fltNo = Integer.parseInt(br.readLine());
                char wing = (char)br.read();
		br.skip(1);
                System.out.println("Enter flNo");
                int flNo = Integer.parseInt(br.readLine());


                System.out.println(name);
                System.out.println(wing);
                System.out.println(fltNo);
                System.out.println(flNo);
        }
}

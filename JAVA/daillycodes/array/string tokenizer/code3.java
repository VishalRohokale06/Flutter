import java.io.*;

class InputDemo{
        public static void main(String[] args)throws IOException{

                BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

                System.out.println("Enter your name");
                String name = br.readLine();
                System.out.println("Enter society name");
                String socName = br.readLine();
                System.out.println("Enter wing");
                char wing = br.readLine();
                System.out.println("Enter flatNo");
                String flatNo = br.readLine();
        }
}

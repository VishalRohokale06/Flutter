import java.io.*;

class InputDemo{
        public static void main(String[] args)throws IOException{

                BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

                System.out.print("Enter company name:");
                String cmpName = br.readLine();

                System.out.print("Enter eployee id:");
                int empId = Integer.parseInt(br.readLine());

                System.out.print("Enter eployee name:");
                String empName = br.readLine();

                System.out.println("Company Name:"+cmpName);
                System.out.println("Eployee name:"+empName);
		System.out.println("Eployee id:"+empId);
        }
}

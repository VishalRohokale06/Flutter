import java.io.*;

class InputDemo{
	public static void main(String[] args)throws IOException{

		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

		System.out.print("Enter company name:");
		String cmpName = br.readLine();

		System.out.print("Enter employee name:");
		String empName = br.readLine();

		System.out.print("Enter empl id:");
		int emplid = Integer.parseInt(br.readLine());


		System.out.print("Enter emp Salary:");
		double sal = Double.parseDouble(br.readLine());


		System.out.println("Company name:"+ cmpName);
		System.out.println("Employee name:"+ empName);
		System.out.println("Employee Id:"+emplid);
		System.out.println("Employee salary"+sal);
	}
}

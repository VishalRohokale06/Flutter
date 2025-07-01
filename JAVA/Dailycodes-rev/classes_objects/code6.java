import Company.TechInfo;
import Employee.EmployeeInfo;

class Demo{
	public static void main(String[] args){
		TechInfo ti = new TechInfo();
		ti.techStack();
		EmployeeInfo ei = new EmployeeInfo();
		System.out.println(ei.empId);
		System.out.println(ei.empName);
		System.out.println(ei.empSal);
		System.out.println(ei.devType);
	}
}

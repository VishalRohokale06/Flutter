import java.io.*;

class Employee implements Serializable{
	int empId;
	String empName;

	Employee(int empId,String empName){
		this.empId = empId;
		this.empName=empName;
	}
}

class SerialDemo{
	public static void main(String[] args)throws IOException{

		FileOutputStream fos = new FileOutputStream("EmployeeData.txt");
		ObjectOutputStream oos = new ObjectOutputStream(fos);

		Employee obj1 = new Employee(1,"Kanha");
		Employee obj2 = new Employee(2,"Vishal");

		oos.writeObject(obj1);
		oos.writeObject(obj2);

		oos.close();
		fos.close();
	}
}

class DeserialDemo{
	public static void main(String[] args)throws Exception{
		
		FileInputStream fis = new FileInputStream("EmployeeData.txt");
		ObjectInputStream ois = new ObjectInputStream(fis);

		Employee fObj1 = (Employee)ois.readObject();
		Employee fObj2 = (Employee)ois.readObject();

		System.out.println(fObj1.empId);
		System.out.println(fObj1.empName);
		System.out.println(fObj2.empId);
		System.out.println(fObj2.empName);
	}
}

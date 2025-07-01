import java.io.*;

class Employee implements Serializable{
	int empId;
	String empName;
	Employee(int empId,String empName){
		this.empId = empId;
		this.empName = empName;
	}
}

class SerializeDemo{
	public static void main(String[] args)throws IOException{

		FileOutputStream fos = new FileOutputStream("Employee.txt");
		ObjectOutputStream oos = new ObjectOutputStream(fos);

		Employee obj1 = new Employee(1,"Rahul");
		Employee obj2 = new Employee(2,"Kanha");

		oos.writeObject(obj1);
		oos.writeObject(obj2);

		oos.close();
		fos.close();
	}
}

class DeserializeDemo{
	public static void main(String[] args)throws Exception{

	FileInputStream fis = new FileInputStream("Employee.txt");
	ObjectInputStream ois = new ObjectInputStream(fis);

	Employee fObj1 = (Employee)ois.readObject();
	Employee fObj2 = (Employee)ois.readObject();

	System.out.println(fObj1.empId);
	System.out.println(fObj1.empName);
	System.out.println(fObj2.empId);
	System.out.println(fObj2.empName);
	}
}


import java.util.*;

class Demo implements Comparable<Demo>{
	int empId;
	String empName;
	float empSal;

	Demo(int empId,String empName,float empSal){
		this.empId = empId;
		this.empName = empName;
		this.empSal = empSal;
	}

	public int compareTo(Demo obj){
		return Integer.compare(this.empId,obj.empId);
	}

	public String toString(){
		return "empId:"+empId  +" empName:"+empName +" empSalary:"+empSal;
	}

}

class SortedDemo{
	public static void main(String[] args){

		TreeSet ts = new TreeSet();

		ts.add(new Demo(10,"Vishal",11.11f));
		ts.add(new Demo(22,"Ram", 22.22f));
		ts.add(new Demo(3,"Soham",33.33f));

		System.out.println(ts);
	}
}

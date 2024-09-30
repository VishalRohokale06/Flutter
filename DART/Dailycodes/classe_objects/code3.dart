class Employee{

int empId = 5;
String empName = "Vishal";
double empSal = 3.3;

void empInfo(){

print("Employee No : $empId");
print("Employee Name : $empName");
print("Employee Salary : $empSal");
}
}

void main(){

Employee obj = new Employee();
obj.empInfo();

Employee eobj = Employee();
eobj.empInfo();

new Employee().empInfo();

Employee().empInfo();
}

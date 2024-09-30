class Employee{

int empId = 5;
String empName = "Ashu";
double empSal = 2.5;

void empInfo(){
print("Employee Id : $empId");
print("Employee Name : $empName");
print("Employee Salary : $empSal");
}
}

void main(){
Employee eobj = Employee();
eobj.empInfo();
}

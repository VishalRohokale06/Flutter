class Employee{

int? empId;
String? empName;
double? empSal;

void empInfo(){

print("Employee No : $empId");
print("Employee Name : $empName");
print("Employee Salary : $empSal");
}
}

void main(){

Employee obj = new Employee();
obj.empInfo();

obj.empId = 10;
obj.empName = "VED";
obj.empSal = 2.5;

obj.empInfo();
}

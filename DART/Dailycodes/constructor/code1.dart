class Employee{

int? empId;
String? empName;
double? empSal;

Employee(int empId, String empName , double empSal){
empId = empId;
empName = empName;
empSal = empSal;
}
}

void main(){
Employee obj = Employee(18,"Virat",3.3);
print(obj.empId);
print(obj.empName);
print(obj.empSal);
}


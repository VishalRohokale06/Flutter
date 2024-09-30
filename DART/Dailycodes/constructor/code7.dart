class Employee{

int? empId;
String? empName;
double? empSal;

Employee(){
print("No-arg Constructor");
}

Employee.para(int empId , String empName , double empSal){
print("In Parameterised Constructor");
}
}

void main(){
Employee obj = Employee();
Employee obj1 = Employee.para(10,"Bhavesh",3.5);
}

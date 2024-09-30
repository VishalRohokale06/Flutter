class Parent{
int? empId;
int? age;

Parent({this.age,this.empId}){
print("Parent Constructor");
print(empId);
print(age);
}
}

class Child extends Parent{
Child({super.age,super.empId}){
print("Child Constructor");
print(age);
print(empId);
}
}

void main(){
Child obj = Child(age:20,empId:30);
}

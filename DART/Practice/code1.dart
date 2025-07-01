void main(){

List<Student> students = [

  Student('Rivan',10),
  Student('Ram',20),
  Student('Rana',30),
  Student('Ritu',40),
];
 
print(students);
}

class Student{

final String name;
final int marks;

Student(this.name,this.marks);

@override
String toString() {
     return '$name,$marks';
}
}

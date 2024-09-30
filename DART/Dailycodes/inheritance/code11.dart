class Parent{
int? x ;
int? y ;

Parent(){
print("Parent Constructor");
print(x);
print(y);
}
}

class Child extends Parent{
Child(){
print("Child Constructor");
print(x);
print(y);
}
}

void main(){
Child obj = Child();
}


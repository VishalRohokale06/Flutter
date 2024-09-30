class Parent{
int x = 10;
Parent(){
print("Parent Constructor");
print(x);
}
}

class Child extends Parent{
Child(){
print("Child Constructor");
print(x);
}
}

void main(){
Child obj = Child();
}

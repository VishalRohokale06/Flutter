class Parent{
int x = 10;
Parent(){
print("Parent Constructor");
print(this.x);
print(x);
}
}

class Child extends Parent{
int x = 20;
Child(){
print("Child Constructor");
print(super.x);
print(x);
}
}

void main(){
Child obj = Child();
}

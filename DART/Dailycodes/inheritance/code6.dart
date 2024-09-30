class Parent{
int x = 10;
Parent(){
print("Parent Constructor");
}
}

class Child extends Parent{
static int y = 20;
Child(){
print("Child Constructor");
print(x);
print(y);
}
}

void main(){
Child obj = Child();
}

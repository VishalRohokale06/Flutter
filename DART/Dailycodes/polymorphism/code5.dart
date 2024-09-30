abstract class Parent{
void marry();
}

class Child extends Parent{
void marry(){
print("Alia Bhat");
}
}
void main(){
Parent obj = Child();
obj.marry();
}


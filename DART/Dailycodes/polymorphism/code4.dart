class Demo{
}

class DemoChild extends Demo{
}

class Parent{
void career(){
print("Family Business");
}
Demo marry(){
print("Deepika Padukone");
return Demo();
}
}

class Child extends Parent{
DemoChild marry(){
print("Allia Bhat");
return DemoChild();
}
}

void main(){
Child obj = Child();
obj.career();
obj.marry();
}
